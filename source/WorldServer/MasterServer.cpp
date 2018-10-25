#include "MasterServer.h"
#include "net.h"
#include "WorldDatabase.h"
#include "World.h"

extern volatile bool RunLoops;
extern WorldDatabase database;
extern ZoneAuth zone_auth;
extern ZoneList zone_list;

MasterServer::MasterServer() {
  tcpc = new TCPConnection(false);
}

MasterServer::~MasterServer() {
  safe_delete(tcpc);
}

bool MasterServer::Connect() {
  char errbuf[TCPConnection_ErrorBufferSize];
  memset(errbuf, 0, TCPConnection_ErrorBufferSize);

  if (tcpc->Connect("localhost", 9050, errbuf)) {
    return true;
  } else {
    return false;
  }
}

bool MasterServer::Process() {
  ServerPacket* pack = nullptr;

  while ((pack = tcpc->PopPacket())) {
    switch (pack->opcode) {
    case ServerOP_MSAuthPlayer: {
      ServerMSAuthPlayer_Struct* utwr = (ServerMSAuthPlayer_Struct*)pack->pBuffer;
      int32 access_key = 1337;
      char* character_name = database.GetCharacterName(utwr->char_id);
      if (character_name != 0) {
        ZoneAuthRequest* zar = new ZoneAuthRequest(utwr->account_id, character_name, access_key);
        zar->SetTimeStamp(Timer::GetUnixTimeStamp() + 10000000);
        zar->setFirstLogin(true);
        zone_auth.AddAuth(zar);
        safe_delete_array(character_name);
      }

      break;
    }

    case ServerOP_MSKickPlayer: {
      ServerMSKickPlayer_Struct* data = reinterpret_cast<ServerMSKickPlayer_Struct*>(pack->pBuffer);

      shared_ptr<Client> client = zone_list.GetClientByCharID(data->char_id);

      if (client && client->getConnection()) {
        client->getConnection()->SendDisconnect();
      }

      break;
    }

    case ServerOP_MSShutdown: {
      RunLoops = false;
      break;
    }

    default: {
      printf("wat");
    }
    }
  }

  return true;
}

void MasterServer::SayHello() {
  ServerPacket* pack = new ServerPacket(ServerOP_MSHello, sizeof(ServerMSInfo_Struct));
  ServerMSInfo_Struct* msi = (ServerMSInfo_Struct*)pack->pBuffer;
  strcpy(msi->hello, "hell");
  tcpc->SendPacket(pack);
  safe_delete(pack);
}
