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
#ifndef IRC_IRC_H_
#define IRC_IRC_H_

#include <map>
#include "../../common/types.h"
#include "../../common/Mutex.h"
#include "IRCServer.h"

using namespace std;

class IRC {
public:
	IRC();
	virtual ~IRC();

	void SetRunning(bool running) {this->running = running;}
	bool IsRunning() {return running;}
	int32 GetNumServers();

	static const char * GetSafeChannelName(const char *channel_name);

	void Start();
	void Process();

	void ConnectToServer(Client *client, const char *host, short port, const char *nick = NULL);
	void ConnectToGlobalServer(const char *host, short port, const char *nick = NULL);
	void DisconnectFromServer(Client *client);
	void DisconnectFromGlobalServer();
	void JoinChannel(Client *client, const char *channel_name);
	void LeaveChannel(Client *client, const char *channel_name);
	void ListChannels(Client *client);
	void Say(Client *client, const char *channel_name, const char *message);
	void Say(Client *client, int32 channel_index, const char *message);

	IRCServer* GetServer(Client* client);

	IRCServer* GetGlobalServer() { return m_globalServer; }

private:
	bool running;
	Mutex m_servers;
	map<int32, IRCServer *> servers;
	IRCServer* m_globalServer;
};

#endif
