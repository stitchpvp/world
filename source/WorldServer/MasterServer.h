#pragma once

#include "../common/TCPConnection.h"
#include "client.h"
#include <memory>

class MasterServer {
public:
  MasterServer();
  ~MasterServer();

  bool Connect();
  bool Connected() { return tcpc->Connected(); }
  bool Process();
  void SayHello(int32 zone_id);
  void PlayerOnline(int32 character_id);
  void PlayerOffline(int32 character_id);
  void ZoneRequest(shared_ptr<Client>, int32 zone_id);
  void Tell(const char* from, const char* to, const char* message);

private:
  TCPConnection* tcpc;
};