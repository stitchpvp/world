#include "NPC.h"
#include "PVP.h"
#include "Rules/Rules.h"

extern RuleManager rule_manager;

bool PVP::CanAttack(Player* attacker, Spawn* target)
{
	if (PVP::IsEnabled()) {
		Entity* entity_target = (Entity*)target;

		if (target->IsPet())
			entity_target =  ((NPC*)target)->GetOwner();

		// Alignment of 0 is currently "neutral"
		// Not attackable by either - only meant for GM, perhaps.
		if (entity_target->GetAlignment() == 0)
			return false;

		return (attacker->GetAlignment() != entity_target->GetAlignment());
	} else {
		return false;
	}
}

std::string PVP::GetRank(Player* player)
{
	return "Hunter";
}

bool PVP::IsEnabled()
{
	return rule_manager.GetGlobalRule(R_PVP, AllowPVP)->GetBool();
}
