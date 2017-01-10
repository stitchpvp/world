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
#ifndef IRC_IRCREPLYCODES_H_
#define IRC_IRCREPLYCODES_H_

//the following are eq2emu specific irc reply codes
#define IRC_CONNECT_SUCCESS				0
#define IRC_CONNECT_ALREADY_CONNECTED	1	//already connected to this server
#define IRC_CONNECT_NO_NICK				2	//a nick was never given
#define IRC_CONNECT_WINSOCK_INIT		3	//couldn't initialize winsock
#define IRC_CONNECT_WINSOCK_VERSION		4	//couldn't find the version of winsock we want
#define IRC_CONNECT_SOCKET				5	//couldn't create a socket
#define IRC_CONNECT_NO_HOST				6	//couldn't find the hostname
#define IRC_CONNECT_FAIL				7	//failure connecting
#define IRC_CONNECT_SOCKET_OPT			8	//couldn't set socket options

#define IRC_JOIN_CHANNEL_SUCCESS	0
#define IRC_JOIN_CHANNEL_ALREADY_IN	1	//already in the channel

#define IRC_LEAVE_CHANNEL_SUCCESS	0
#define IRC_LEAVE_CHANNEL_NOT_IN	1	//was never in the channel

#define IRC_SAY_SUCCESS	0
#define IRC_SAY_NOT_IN	1	//was never the channel

#endif
