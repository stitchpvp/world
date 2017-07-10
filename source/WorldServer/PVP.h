#pragma once

#include <string>
#include "Player.h"

class PVP {
public:
	static bool CanAttack(Player*, Spawn*);
	static std::string GetRank(Player*);
	static bool IsEnabled();
};