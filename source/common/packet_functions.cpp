/*  
    EQ2Emulator:  Everquest II Server Emulator
    Copyright (C) 2007  EQ2EMulator Development Team (http://www.eq2emulator.net)

    This file is part of EQ2Emulator.

    EQ2Emulator is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    EQ2Emulator is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with EQ2Emulator.  If not, see <http://www.gnu.org/licenses/>.
*/
#include "../common/debug.h"
#include <iostream>
#include <iomanip>
#include <string.h>
#include <zlib.h>
#include "packet_dump.h"
#include "EQStream.h"
#include "packet_functions.h"

#ifndef WIN32
	#include <netinet/in.h>
#endif

using namespace std;

#define eqemu_alloc_func Z_NULL
#define eqemu_free_func Z_NULL


int DeflatePacket(unsigned char* in_data, int in_length, unsigned char* out_data, int max_out_length) {
#ifdef REUSE_ZLIB
	static bool inited = false;
	static z_stream zstream;
    int zerror;
    
    if(in_data == NULL && out_data == NULL && in_length == 0 && max_out_length == 0) {
    	//special delete state
    	deflateEnd(&zstream);
    	return(0);
    }
    if(!inited) {
		zstream.zalloc    = eqemu_alloc_func;
		zstream.zfree     = eqemu_free_func;
		zstream.opaque    = Z_NULL;
		deflateInit(&zstream, Z_FINISH);
    }
	
	zstream.next_in   = in_data;
	zstream.avail_in  = in_length;
/*	zstream.zalloc    = Z_NULL;
	zstream.zfree     = Z_NULL;
	zstream.opaque    = Z_NULL;
	deflateInit(&zstream, Z_FINISH);*/
	zstream.next_out  = out_data;
	zstream.avail_out = max_out_length;
	zerror = deflate(&zstream, Z_FINISH);
	
	deflateReset(&zstream);
	
	if (zerror == Z_STREAM_END)
	{
//		deflateEnd(&zstream);
		return zstream.total_out;
	}
	else
	{
//		zerror = deflateEnd(&zstream);
		return 0;
	}
#else
	if(in_data == NULL) {
		return(0);
	}
	
	z_stream zstream;
    int zerror;
	
	zstream.next_in   = in_data;
	zstream.avail_in  = in_length;
	zstream.zalloc    = eqemu_alloc_func;
	zstream.zfree     = eqemu_free_func;
	zstream.opaque    = Z_NULL;
	deflateInit(&zstream, Z_FINISH);
	zstream.next_out  = out_data;
	zstream.avail_out = max_out_length;
	zerror = deflate(&zstream, Z_FINISH);
	
	if (zerror == Z_STREAM_END)
	{
		deflateEnd(&zstream);
		return zstream.total_out;
	}
	else
	{
		zerror = deflateEnd(&zstream);
		return 0;
	}
#endif
}

uint32 InflatePacket(uchar* indata, uint32 indatalen, uchar* outdata, uint32 outdatalen, bool iQuiet) {
#ifdef REUSE_ZLIB
	static bool inited = false;
	static z_stream zstream;
    int zerror;
    
    if(indata == NULL && outdata == NULL && indatalen == 0 && outdatalen == 0) {
    	//special delete state
    	inflateEnd(&zstream);
    	return(0);
    }
    if(!inited) {
		zstream.zalloc    = eqemu_alloc_func;
		zstream.zfree     = eqemu_free_func;
		zstream.opaque    = Z_NULL;
		inflateInit2(&zstream, 15);
    }

	zstream.next_in		= indata;
	zstream.avail_in	= indatalen;
	zstream.next_out	= outdata;
	zstream.avail_out	= outdatalen;
	zstream.zalloc    = eqemu_alloc_func;
	zstream.zfree     = eqemu_free_func;
	zstream.opaque		= Z_NULL;
	
	i = inflateInit2( &zstream, 15 ); 
	if (i != Z_OK) { 
		return 0;
	}
	
	zerror = inflate( &zstream, Z_FINISH );
	
	inflateReset(&zstream);
	
	if(zerror == Z_STREAM_END) {
		return zstream.total_out;
	}
	else {
		if (!iQuiet) {
			cout << "Error: InflatePacket: inflate() returned " << zerror << " '";
			if (zstream.msg)
				cout << zstream.msg;
			cout << "'" << endl;
			//DumpPacket(indata-16, indatalen+16);
		}
		
		if (zerror == -4 && zstream.msg == 0)
		{
			return 0;
		}
		
		return 0;
	}
#else
	if(indata == NULL)
		return(0);
	
	z_stream zstream;
	int zerror = 0;
	int i;
	
	zstream.next_in		= indata;
	zstream.avail_in	= indatalen;
	zstream.next_out	= outdata;
	zstream.avail_out	= outdatalen;
	zstream.zalloc    = eqemu_alloc_func;
	zstream.zfree     = eqemu_free_func;
	zstream.opaque		= Z_NULL;
	
	i = inflateInit2( &zstream, 15 ); 
	if (i != Z_OK) { 
		return 0;
	}
	
	zerror = inflate( &zstream, Z_FINISH );
	
	if(zerror == Z_STREAM_END) {
		inflateEnd( &zstream );
		return zstream.total_out;
	}
	else {
		if (!iQuiet) {
			cout << "Error: InflatePacket: inflate() returned " << zerror << " '";
			if (zstream.msg)
				cout << zstream.msg;
			cout << "'" << endl;
			//DumpPacket(indata-16, indatalen+16);
		}
		
		if (zerror == -4 && zstream.msg == 0)
		{
			return 0;
		}
		
		zerror = inflateEnd( &zstream );
		return 0;
	}
#endif
}

int32 roll(int32 in, int8 bits) {
	return ((in << bits) | (in >> (32-bits)));
}

int64 roll(int64 in, int8 bits) {
	return ((in << bits) | (in >> (64-bits)));
}

int32 rorl(int32 in, int8 bits) {
	return ((in >> bits) | (in << (32-bits)));
}

int64 rorl(int64 in, int8 bits) {
	return ((in >> bits) | (in << (64-bits)));
}

int32 CRCLookup(uchar idx) {
	if (idx == 0)
		return 0x00000000;
	
	if (idx == 1)
		return 0x77073096;
	
	if (idx == 2)
		return roll(CRCLookup(1), 1);
	
	if (idx == 4)
		return 0x076DC419;
    
	for (uchar b=7; b>0; b--) {
		uchar bv = 1 << b;
		
		if (!(idx ^ bv)) {
			// bit is only one set
			return ( roll(CRCLookup (4), b - 2) );
		}
		
		if (idx&bv) {
			// bit is set
			return( CRCLookup(bv) ^ CRCLookup(idx&(bv - 1)) );
		}
	}
	
	//Failure
	return false;
}

uint32 GenerateCRC(int32 b, int32 bufsize, uchar *buf) {
	int32 CRC = (b ^ 0xFFFFFFFF);
	int32 bufremain = bufsize;
	uchar* bufptr = buf;
	
	while (bufremain--) {
		CRC = CRCLookup((uchar)(*(bufptr++)^ (CRC&0xFF))) ^ (CRC >> 8);
	}
	
	return (htonl (CRC ^ 0xFFFFFFFF));
}
