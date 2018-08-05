//
// Created by tyrbo on 8/5/18.
//

#include "Tournament.h"
#include "zoneserver.h"

Tournament::Tournament() {
    state = TOURNAMENT_REGISTERING;
}

void Tournament::AddStartingPoint(float x, float y, float z) {
    Loc starting_point = {x, y, z};
    starting_points.push_back(starting_point);
}

void Tournament::SetEndingPoint(float x, float y, float z) {
    Loc end_point = {x, y, z};
    ending_point = end_point;
}

bool Tournament::AddParticipant(int32 character_id) {
    if (participants.count(character_id) > 0) {
        return false;
    }

    participants.insert(character_id);

    return true;
}

int8 Tournament::GetTournamentStatus() {
    return state;
}

void Tournament::Start() {
    state = TOURNAMENT_WAITING;

    BeginMatch();
}

void Tournament::BeginMatch() {
    int8 i = 0;

    for (auto participant : participants) {
        Player* player = manager->GetZone()->GetPlayerByID(participant);

        if (player) {
            Loc point = starting_points[i];
            shared_ptr<Client> client = manager->GetZone()->GetClientBySpawn(player);

            player->SetX(point.x);
            player->SetY(point.y);
            player->SetZ(point.z);

            EQ2Packet* app = player->Move(point.x, point.y, point.z, client->GetVersion());

            if (app) {
                client->QueuePacket(app);
            }
        }
    }
}
