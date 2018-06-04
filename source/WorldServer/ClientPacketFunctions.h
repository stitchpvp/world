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
#pragma once
#include "client.h"

struct HouseZone;
struct PlayerHouse;
struct HeroicOP;

class ClientPacketFunctions
{
public:
	static void SendFinishedEntitiesList ( shared_ptr<Client> client );

	static void SendLoginDenied ( shared_ptr<Client> client );
	static void SendLoginAccepted ( shared_ptr<Client> client );

	static void SendCommandList ( shared_ptr<Client> client );

	static void SendGameWorldTime ( shared_ptr<Client> client );

	static void SendCharacterData ( shared_ptr<Client> client );
	static void SendCharacterSheet ( shared_ptr<Client> client );
	static void SendSkillBook ( shared_ptr<Client> client );
	static void SendTraitList ( shared_ptr<Client> client );
	static void SendAbilities ( shared_ptr<Client> client );
	static void SendClassAA ( shared_ptr<Client> client );

	static void SendCommandNamePacket ( shared_ptr<Client> client );

	static void SendQuickBarInit ( shared_ptr<Client> client );

	static void SendMOTD ( shared_ptr<Client> client );

	static void SendCharacterMacros(shared_ptr<Client> client);

	static void SendUpdateSpellBook ( shared_ptr<Client> client );

	static void SendLoginCommandMessages ( shared_ptr<Client> client );

	static void SendSkillSlotMappings(shared_ptr<Client> client);

	static void SendRestartZoneMsg(shared_ptr<Client> client);

	static void SendServerControlFlags(shared_ptr<Client> client, int8 param, int8 param_val, int8 value);

	static void SendInstanceList(shared_ptr<Client> client);

	static void SendZoneChange(shared_ptr<Client> client, char* zone_ip, int16 zone_port, int32 key);

	static void SendStateCommand(shared_ptr<Client> client, int32 spawn_id, int32 state);

	/* Tradeskills (/Tradeskills/TradeskillsPackets.cpp) */
	static void SendCreateFromRecipe(shared_ptr<Client> client, int32 recipeID);
	static void SendItemCreationUI(shared_ptr<Client> client, Recipe* recipe);
	static void StopCrafting(shared_ptr<Client> client);
	static void CounterReaction(shared_ptr<Client> client, bool countered);

	static void SendAchievementList(shared_ptr<Client> client);

	/* Housing (/Housing/HousingPackets.cpp) */
	static void SendHousePurchace(shared_ptr<Client> client, HouseZone* hz, int32 spawnID);
	static void SendBaseHouseWindow(shared_ptr<Client> client, HouseZone* hz, PlayerHouse* ph, int32 spawnID);
	static void SendHouseVisitWindow(shared_ptr<Client> client, vector<PlayerHouse*> houses);

	/* Heroic OP's (/HeroicOp/HeroicOpPackets.cpp) */
	static void SendHeroicOPUpdate(shared_ptr<Client> client, HeroicOP* ho);

	//UI updates for trigger count and damage remaining on maintained spells
	static void SendMaintainedExamineUpdate(shared_ptr<Client> client, int8 slot_pos, int32 update_value, int8 update_type);
};

