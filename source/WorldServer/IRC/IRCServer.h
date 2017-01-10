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
#ifndef IRC_SERVER_H_
#define IRC_SERVER_H_

#include "../client.h"
#include "IRCChannel.h"
#include "IRCMessage.h"

//maximum host length for an irc server
#define IRC_HOST_LEN_MAX	256

//maximum nick name on an irc server for the client
#define IRC_NICK_LEN_MAX	32

class IRCServer {
public:
	IRCServer();
	IRCServer(int32 character_id, const char *host, short port, const char *nick);
	IRCServer(const char *host, short port, const char *nick);
	virtual ~IRCServer();

	const char * GetHost() {return host;}
	short GetPort() {return port;}
	bool IsConnected() {return connected;}
	vector<IRCChannel* > * GetChannels() {return &channels;}
	IRCChannel * GetChannel(const char *channel_name);
	IRCChannel * GetChannel(int32 channel_index);

	int Connect();
	void Disconnect();
	int JoinChannel(const char *channel_name);
	int LeaveChannel(const char *channel_name);
	int Say(const char *channel_name, const char *message);
	int Say(int32 channel_index, const char *message);

	bool Process();

private:
	int32 character_id;
	char host[IRC_HOST_LEN_MAX + 1];	//host (eg. irc.myircserver.com)
	short port;							//port (default is typically 6667)
	char nick[IRC_NICK_LEN_MAX + 1];
	int sockfd;							//socket used to connect to the irc server
	vector<IRCChannel *> channels;
	bool connected;
	void ProcessLine(Client *client, const char *line);
	void Send(IRCMessage *message);
	void HandlePing();
	void Say(IRCChannel *channel, const char *message);
	bool m_globalServer;
};

#endif
