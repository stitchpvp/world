//
// Created by tyrbo on 8/5/18.
//

#ifndef WORLD_TOURNAMENT_H
#define WORLD_TOURNAMENT_H

#include <atomic>
#include <set>
#include <vector>

#include "../common/types.h"
#include "Spawn.h"

#define TOURNAMENT_REGISTERING 0;
#define TOURNAMENT_WAITING 1;
#define TOURNAMENT_FIGHTING 2;

struct Loc {
    float x;
    float y;
    float z;
};

class Tournament {
public:
    Tournament();
    void Start();
    void BeginMatch();

    void AddStartingPoint(float x, float y, float z);
    void SetEndingPoint(float x, float y, float z);
    bool AddParticipant(int32 character_id);
    int8 GetTournamentStatus();

    void SetManager(Spawn* spawn) {
        manager = spawn;
    }

private:
    Spawn* manager = nullptr;

    Loc ending_point;

    set<int32> participants;
    vector<Loc> starting_points;

    atomic<int8> state;
};

#endif //WORLD_TOURNAMENT_H
