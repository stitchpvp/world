#include "NPC.h"
#include "Player.h"
#include "PVP.h"
#include "Rules/Rules.h"
#include "zoneserver.h"

extern RuleManager rule_manager;

int16 Player::GetFame() {
	return GetInfoStruct()->fame;
}

void Player::SetFame(sint16 value) {
	if (value < 0) {
		GetInfoStruct()->fame = 0;
	} else {
		GetInfoStruct()->fame = value;
	}
}

bool PVP::CanAttack(Player* attacker, Spawn* target)
{
	if (PVP::IsEnabled(attacker->GetZone())) {
		Entity* entity_target = static_cast<Entity*>(target);

		if (target->IsPet())
			entity_target =  static_cast<NPC*>(target)->GetOwner();

		// Alignment of 0 is currently "neutral"
		// Not attackable by either - only meant for GM, perhaps.
		if (entity_target->GetAlignment() == 0)
			return false;

		return (attacker->GetAlignment() != entity_target->GetAlignment());
	} else {
		return false;
	}
}

//5 points for a kill of the same rank (solo), 10 points for a kill of a rank higher (solo) and loss would be the same

string PVP::GetRank(Player* player)
{
	string title = "";
	
	if (!PVP::IsEnabled())
		return title;

	int16 fame = player->GetFame();

	if (fame >= 750) {
		title = "Dreadnaught";
	} else if (fame >= 500) {
		title = "Champion";
	} else if (fame >= 350) {
		title = "Destroyer";
	} else if (fame >= 200) {
		title = "Slayer";
	} else if (fame >= 100) {
		title = "Hunter";
	}

	return title;
}

int PVP::GetRankIndex(Player* player) {
	const char* rank = PVP::GetRank(player).c_str();

	if (strcmp(rank, "Dreadnaught") == 0) {
		return 5;
	} else if (strcmp(rank, "Champion") == 0) {
		return 4;
	} else if (strcmp(rank, "Destroyer") == 0) {
		return 3;
	} else if (strcmp(rank, "Slayer") == 0) {
		return 2;
	} else if (strcmp(rank, "Hunter") == 0) {
		return 1;
	} else {
		return 0;
	}
}

bool PVP::IsEnabled(ZoneServer* zone)
{
	if (zone && rule_manager.HasZoneRuleSet(zone->GetZoneID())) {
		return rule_manager.GetGlobalRule(R_PVP, AllowPVP)->GetBool() && rule_manager.GetZoneRule(zone->GetZoneID(), R_PVP, AllowPVP)->GetBool();
	} else {
		return rule_manager.GetGlobalRule(R_PVP, AllowPVP)->GetBool();
	}
}
