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
#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include "../../common/types.h"
#include "IRCMessage.h"

IRCMessage::IRCMessage(const char *message, ...) {
	int n, size = 512;
	va_list ap;

	len = 0;
	serialized = false;

	while (true) {
		//allocate our buffer
		this->message = new char[size];

		//print the format into the buffer
		va_start(ap, message);
		n = vsnprintf(this->message, size, message, ap);
		va_end(ap);

		//did we write what we needed to?
		if (n > -1 && n < size)
			break;

#ifdef _WIN32
		size *= 2;	//double the buffer
#else
		if (n > -1)
			size = n + 1;	//we know exactly how many bytes to write
		else
			size *= 2;	//double the buffer
#endif

		safe_delete_array(this->message);
	}
}

IRCMessage::~IRCMessage() {
	if (message != NULL)
		safe_delete_array(message);
}

const char * IRCMessage::Serialize() {
	char *buf;

	if (message == NULL || serialized)
		return message;

	//allocate enough room for the /r/n, and of course the null
	len = strlen(message) + 3;
	buf = new char[len];
	snprintf(buf, len, "%s\r\n", message);

	//now copy back into our true buffer
	safe_delete_array(message);
	message = new char[len];
	strncpy(message, buf, len);

	//and finally free our temporary buffer
	safe_delete_array(buf);

	//we don't want to do this process again if for some reason Serialize() is called again
	serialized = true;
	
	//we don't want to include the trailing null in the length
	len--;

	return message;
}