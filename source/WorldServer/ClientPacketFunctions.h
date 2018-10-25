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

class ClientPacketFunctions {
public:
  static void SendFinishedEntitiesList(const shared_ptr<Client>& client);

  static void SendLoginDenied(const shared_ptr<Client>& client);
  static void SendLoginAccepted(const shared_ptr<Client>& client);

  static void SendCommandList(const shared_ptr<Client>& client);

  static void SendGameWorldTime(const shared_ptr<Client>& client);

  static void SendCharacterData(const shared_ptr<Client>& client);
  static void SendCharacterSheet(const shared_ptr<Client>& client);
  static void SendSkillBook(const shared_ptr<Client>& client);
  static void SendTraitList(const shared_ptr<Client>& client);
  static void SendAbilities(const shared_ptr<Client>& client);
  static void SendClassAA(const shared_ptr<Client>& client);

  static void SendCommandNamePacket(const shared_ptr<Client>& client);

  static void SendQuickBarInit(const shared_ptr<Client>& client);

  static void SendMOTD(const shared_ptr<Client>& client);

  static void SendCharacterMacros(const shared_ptr<Client>& client);

  static void SendUpdateSpellBook(const shared_ptr<Client>& client);

  static void SendLoginCommandMessages(const shared_ptr<Client>& client);

  static void SendSkillSlotMappings(const shared_ptr<Client>& client);

  static void SendRestartZoneMsg(const shared_ptr<Client>& client);

  static void SendServerControlFlags(const shared_ptr<Client>& client, int8 param, int8 param_val, int8 value);

  static void SendInstanceList(const shared_ptr<Client>& client);

  static void SendZoneChange(const shared_ptr<Client>& client, char* zone_ip, int16 zone_port, int32 key);

  static void SendStateCommand(const shared_ptr<Client>& client, int32 spawn_id, int32 state);

  /* Tradeskills (/Tradeskills/TradeskillsPackets.cpp) */
  static void SendCreateFromRecipe(const shared_ptr<Client>& client, int32 recipeID);
  static void SendItemCreationUI(const shared_ptr<Client>& client, Recipe* recipe);
  static void StopCrafting(const shared_ptr<Client>& client);
  static void CounterReaction(const shared_ptr<Client>& client, bool countered);

  static void SendAchievementList(const shared_ptr<Client>& client);

  /* Housing (/Housing/HousingPackets.cpp) */
  static void SendHousePurchace(const shared_ptr<Client>& client, HouseZone* hz, int32 spawnID);
  static void SendBaseHouseWindow(const shared_ptr<Client>& client, HouseZone* hz, PlayerHouse* ph, int32 spawnID);
  static void SendHouseVisitWindow(const shared_ptr<Client>& client, vector<PlayerHouse*> houses);

  /* Heroic OP's (/HeroicOp/HeroicOpPackets.cpp) */
  static void SendHeroicOPUpdate(const shared_ptr<Client>& client, HeroicOP* ho);

  //UI updates for trigger count and damage remaining on maintained spells
  static void SendMaintainedExamineUpdate(const shared_ptr<Client>& client, int8 slot_pos, int32 update_value, int8 update_type);
};
