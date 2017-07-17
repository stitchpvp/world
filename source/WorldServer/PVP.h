#pragma once

#include <string>
#include "Player.h"

class PVP {
public:
	static bool CanAttack(Player*, Spawn*);
	static string GetRank(Player*);
	static int GetRankIndex(Player* player);
	static bool IsEnabled(ZoneServer* zone = 0);
};