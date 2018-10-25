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
  static void SendFinishedEntitiesList(const unique_ptr<Client>& client);

  static void SendLoginDenied(const unique_ptr<Client>& client);
  static void SendLoginAccepted(const unique_ptr<Client>& client);

  static void SendCommandList(const unique_ptr<Client>& client);

  static void SendGameWorldTime(const unique_ptr<Client>& client);

  static void SendCharacterData(const unique_ptr<Client>& client);
  static void SendCharacterSheet(const unique_ptr<Client>& client);
  static void SendSkillBook(const unique_ptr<Client>& client);
  static void SendTraitList(const unique_ptr<Client>& client);
  static void SendAbilities(const unique_ptr<Client>& client);
  static void SendClassAA(const unique_ptr<Client>& client);

  static void SendCommandNamePacket(const unique_ptr<Client>& client);

  static void SendQuickBarInit(const unique_ptr<Client>& client);

  static void SendMOTD(const unique_ptr<Client>& client);

  static void SendCharacterMacros(const unique_ptr<Client>& client);

  static void SendUpdateSpellBook(const unique_ptr<Client>& client);

  static void SendLoginCommandMessages(const unique_ptr<Client>& client);

  static void SendSkillSlotMappings(const unique_ptr<Client>& client);

  static void SendRestartZoneMsg(const unique_ptr<Client>& client);

  static void SendServerControlFlags(const unique_ptr<Client>& client, int8 param, int8 param_val, int8 value);

  static void SendInstanceList(const unique_ptr<Client>& client);

  static void SendZoneChange(const unique_ptr<Client>& client, const char* zone_ip, int16 zone_port, int32 key);

  static void SendStateCommand(const unique_ptr<Client>& client, int32 spawn_id, int32 state);

  /* Tradeskills (/Tradeskills/TradeskillsPackets.cpp) */
  static void SendCreateFromRecipe(const unique_ptr<Client>& client, int32 recipeID);
  static void SendItemCreationUI(const unique_ptr<Client>& client, Recipe* recipe);
  static void StopCrafting(const unique_ptr<Client>& client);
  static void CounterReaction(const unique_ptr<Client>& client, bool countered);

  static void SendAchievementList(const unique_ptr<Client>& client);

  /* Housing (/Housing/HousingPackets.cpp) */
  static void SendHousePurchace(const unique_ptr<Client>& client, HouseZone* hz, int32 spawnID);
  static void SendBaseHouseWindow(const unique_ptr<Client>& client, HouseZone* hz, PlayerHouse* ph, int32 spawnID);
  static void SendHouseVisitWindow(const unique_ptr<Client>& client, vector<PlayerHouse*> houses);

  /* Heroic OP's (/HeroicOp/HeroicOpPackets.cpp) */
  static void SendHeroicOPUpdate(const unique_ptr<Client>& client, HeroicOP* ho);

  //UI updates for trigger count and damage remaining on maintained spells
  static void SendMaintainedExamineUpdate(const unique_ptr<Client>& client, int8 slot_pos, int32 update_value, int8 update_type);
};
