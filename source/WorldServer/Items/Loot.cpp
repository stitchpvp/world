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
#include "Loot.h"
#include "../client.h"
#include "../../common/ConfigReader.h"
#include "../classes.h"
#include "../../common/debug.h"
#include "../zoneserver.h"
#include "../Skills.h"
#include "../classes.h"
#include "../World.h"
#include "../LuaInterface.h"
#include "../../common/Log.h"
#include "../Entity.h"
#include "../Rules/Rules.h"

extern Classes classes;
extern ConfigReader configReader;
extern MasterSkillList master_skill_list;
extern RuleManager rule_manager;


// JA: storing loot-related functions here til I find them all :/

/*
void Combat::AddLooter(Entity* victim, Entity* attacker){
	MLooters.writelock(__FUNCTION__, __LINE__);
	if(attacker->IsPlayer()){
		PlayerGroup* group = ((Player*)attacker)->GetGroup();
		if(group && group->members.size() > 0){
			deque<GroupMemberInfo*>::iterator itr;
			for(itr = group->members.begin(); itr != group->members.end(); itr++)
				looters[victim].push_back((*itr)->client->GetPlayer());
		}
		else
			looters[victim].push_back(attacker);
	}
	MLooters.releasewritelock(__FUNCTION__, __LINE__);
}

void Combat::ClearLooters(Entity* spawn){
	MLooters.writelock(__FUNCTION__, __LINE__);
	looters.erase(spawn);
	MLooters.releasewritelock(__FUNCTION__, __LINE__);
}

bool Combat::CheckLootAllowed(Entity* dead, Entity* spawn){
	if(!spawn || !dead || dead->GetHP() > 0)
		return false;
	bool ret = false;
	MLooters.readlock(__FUNCTION__, __LINE__);
	if(looters.count(dead) > 0){
		vector<Entity*>::iterator itr;
		for(itr = looters[dead].begin(); itr != looters[dead].end(); itr++){
			if(*itr == spawn){
				ret = true;
				break;
			}
		}
		
	}
	MLooters.releasereadlock(__FUNCTION__, __LINE__);
	return ret;
}



bool Client::HandleLootItem(Entity* entity, Item* item){
	if(!item){
		SimpleMessage(CHANNEL_COLOR_YELLOW, "Unable to find item to loot!");
		return false;
	}
	if(player->item_list.HasFreeSlot() || player->item_list.CanStack(item)){
		if(player->item_list.AssignItemToFreeSlot(item)){
			int8 type = CHANNEL_COLOR_LOOT;
			if(GetVersion() >= 973 && GetVersion() <= 1000)
				type = CHANNEL_COLOR_NEW_LOOT;
			else if(GetVersion() >= 973)
				type = CHANNEL_COLOR_NEWEST_LOOT;			
			if(entity)
				Message(type, "You loot \\aITEM %u 0:%s\\/a from the corpse of %s", item->details.item_id, item->name.c_str(), entity->GetName());
			else
				Message(type, "You found a \\aITEM %u 0:%s\\/a", item->details.item_id, item->name.c_str());
			Guild* guild = player->GetGuild();
			if (guild && item->details.tier >= ITEM_TAG_LEGENDARY) {
				char adjective[32];
				int8 type;
				memset(adjective, 0, sizeof(adjective));
				if (item->details.tier >= ITEM_TAG_MYTHICAL) {
					strncpy(adjective, "Mythical", sizeof(adjective) - 1);
					type = GUILD_EVENT_LOOTS_MYTHICAL_ITEM;
				}
				else if (item->details.tier >= ITEM_TAG_FABLED) {
					strncpy(adjective, "Fabled", sizeof(adjective) - 1);
					type = GUILD_EVENT_LOOTS_FABELED_ITEM;
				}
				else {
					strncpy(adjective, "Legendary", sizeof(adjective) - 1);
					type = GUILD_EVENT_LOOTS_LEGENDARY_ITEM;
				}
				guild->AddNewGuildEvent(type, "%s has looted the %s \\aITEM %u 0:%s\\/a", Timer::GetUnixTimeStamp(), true, player->GetName(), adjective, item->details.item_id, item->name.c_str());
				guild->SendMessageToGuild(type, "%s has looted the %s \\aITEM %u 0:%s\\/a", player->GetName(), adjective, item->details.item_id, item->name.c_str());
			}
			CheckPlayerQuestsItemUpdate(item);
			return true;
		}
		else
			SimpleMessage(CHANNEL_COLOR_RED, "Could not find free slot to place item.");	
	}
	else
		SimpleMessage(CHANNEL_COLOR_YELLOW, "Unable to loot item: Inventory is FULL.");
	return false;
}

bool Client::HandleLootItem(Entity* entity, int32 item_id){
	if(!entity)
		return false;
	return HandleLootItem(entity, entity->LootItem(item_id));
}

void Client::HandleLoot(EQApplicationPacket* app){
	PacketStruct* packet = configReader.getStruct("WS_LootType", GetVersion());
	if(packet){
		packet->LoadPacketData(app->pBuffer, app->size);
		int32 loot_id = packet->getType_int32_ByName("loot_id");
		bool loot_all = (packet->getType_int8_ByName("loot_all") == 1);
		safe_delete(packet);
		int32 item_id = 0;
		Item* item = 0;
		Spawn* spawn = GetCurrentZone()->GetSpawnByID(loot_id);
		if(player->HasPendingLootItems(loot_id)){
			Item* master_item = 0;
			if(loot_all){
				vector<Item*>* items = player->GetPendingLootItems(loot_id);
				if(items){
					for(int32 i=0;loot_all && i<items->size();i++){
						master_item = items->at(i);
						if(master_item){
							item = new Item(master_item);
							if(item){
								loot_all = HandleLootItem(0, item);
								if(loot_all)
									player->RemovePendingLootItem(loot_id, item->details.item_id);
							}
						}
					}
					safe_delete(items);
				}
			}
			else{
				packet = configReader.getStruct("WS_LootItem", GetVersion());
				if(packet){
					packet->LoadPacketData(app->pBuffer, app->size);
					item_id = packet->getType_int32_ByName("item_id");
					vector<Item*>* items = player->GetPendingLootItems(loot_id);
					if(items){
						for(int32 i=0;i<items->size();i++){
							master_item = items->at(i);
							if(master_item && master_item->details.item_id == item_id){
								item = new Item(master_item);
								if(item && HandleLootItem(0, item))
									player->RemovePendingLootItem(loot_id, item->details.item_id);
								break;
							}
						}
						safe_delete(items);
					}
					safe_delete(packet);
				}
			}
			EQ2Packet* outapp = player->SendInventoryUpdate(GetVersion());
			if(outapp)
				QueuePacket(outapp);
			Loot(0, player->GetPendingLootItems(loot_id), (Entity*)spawn);
		}
		else{
			if(spawn && spawn->IsEntity() && GetCurrentZone()->GetCombat()->CheckLootAllowed((Entity*)spawn, player)){
				if(loot_all){
					while(loot_all && ((item_id = ((Entity*)spawn)->GetLootItemID()) > 0)){
						loot_all = HandleLootItem((Entity*)spawn, item_id);
					}
				}
				else{
					packet = configReader.getStruct("WS_LootItem", GetVersion());
					if(packet){
						packet->LoadPacketData(app->pBuffer, app->size);
						item_id = packet->getType_int32_ByName("item_id");
						HandleLootItem((Entity*)spawn, item_id);
						safe_delete(packet);
					}
				}
				EQ2Packet* outapp = player->SendInventoryUpdate(GetVersion());
				if(outapp)
					QueuePacket(outapp);
				Loot((Entity*)spawn);
				if(!((Entity*)spawn)->HasLoot()){
					CloseLoot();
					if(((Entity*)spawn)->IsNPC())
						GetCurrentZone()->RemoveDeadSpawn(spawn);
				}
			}
			else{
				if(!spawn){
					LogWrite(WORLD__ERROR, 0, "World", "Unknown id of %u when looting!", loot_id);
					SimpleMessage(CHANNEL_COLOR_YELLOW, "Unable to find spawn to loot!");
				}
				else
					SimpleMessage(CHANNEL_COLOR_YELLOW, "You are not unable to loot that at this time.");
			}
		}
	}
}


void Client::SendPendingLoot(int32 total_coins, Entity* entity){
	if(entity)
		Loot(total_coins, player->GetPendingLootItems(entity->GetID()), entity);
}

void Client::CloseLoot(){
	PacketStruct* packet = configReader.getStruct("WS_CloseWindow", GetVersion());
	packet->setDataByName("window_id", 4);
	EQ2Packet* outapp = packet->serialize();
//	DumpPacket(outapp);
	QueuePacket(outapp);
	safe_delete(packet);
}

string Client::GetCoinMessage(int32 total_coins){
	if(total_coins == 0)
		return " 0 Copper";
	char tmp[64] = {0};
	string message = "";
	int32 val = 0;
	if(total_coins >= 1000000){
		val = total_coins / 1000000;
		total_coins -= 1000000 * val;
		sprintf(tmp, " %u Platinum", val);
		message.append(tmp);
		memset(tmp, 0, 64);
	}
	if(total_coins >= 10000){
		val = total_coins / 10000;
		total_coins -= 10000 * val;
		sprintf(tmp, " %u Gold", val);
		message.append(tmp);
		memset(tmp, 0, 64);
	}
	if(total_coins >= 100){
		val = total_coins / 100;
		total_coins -= 100 * val;
		sprintf(tmp, " %u Silver", val);
		message.append(tmp);
		memset(tmp, 0, 64);
	}
	if(total_coins > 0){
		sprintf(tmp, " %u Copper", (int32)total_coins);
		message.append(tmp);
	}
	return message;
}

void Client::Loot(int32 total_coins, vector<Item*>* items, Entity* entity){
	if(!entity){
		CloseLoot();
		return;
	}
	if(total_coins > 0){
		player->AddCoins(total_coins);
		//PlaySound("coin_cha_ching");
		string message = "";
		if(entity->GetHP() == 0){
			message = "You loot ";
			entity->SetLootCoins(0);
		}
		else
			message = "You receive ";
		message.append(GetCoinMessage(total_coins));
		if(entity->GetHP() == 0)
			message.append(" from the corpse of ").append(entity->GetName());
		int8 type = CHANNEL_COLOR_LOOT;
		if(GetVersion() >= 973)
			type = CHANNEL_COLOR_NEW_LOOT;
		SimpleMessage(type, message.c_str());
	}
	if(!items || items->size() == 0)
		CloseLoot();
	PacketStruct* packet = configReader.getStruct("WS_UpdateLoot", GetVersion());
	if(packet){
		vector<Item*>::iterator itr;
		int32 packet_size = 0;
		if(items && items->size() > 0){
			packet->setDataByName("loot_count", items->size());
			packet->setDataByName("display", 1);
		}
		packet->setDataByName("unknown2", 1);
		packet->setDataByName("unknown3", 0x3C);
		packet->setDataByName("loot_id", entity->GetID());
		EQ2Packet* tmpPacket = packet->serialize();
		packet_size += tmpPacket->size;
		uchar* data = 0;
		if(items && items->size() > 0){
			data = new uchar[items->size()*1000 + packet_size];
			memset(data, 0, items->size()*1000 + packet_size);
		}
		else{
			data = new uchar[packet_size];
			memset(data, 0, packet_size);
		}
		uchar* ptr = data;
		memcpy(ptr, tmpPacket->pBuffer, tmpPacket->size);
		ptr += tmpPacket->size;
		safe_delete(tmpPacket);
		Item* item = 0;
		if(items && items->size() > 0){
			for(itr = items->begin(); itr != items->end(); itr++){
				item = *itr;
				memcpy(ptr, &item->details.item_id, sizeof(int32));
				ptr += sizeof(int32);
				packet_size += sizeof(int32);

				tmpPacket = item->serialize(GetVersion(), true, GetPlayer(), false, 1, 0, false, true);
				if(GetVersion() >= 860){
					memcpy(ptr, tmpPacket->pBuffer + 11, tmpPacket->size - 11);
					ptr += tmpPacket->size - 11;
					packet_size += tmpPacket->size - 11;
				}
				else{
					memcpy(ptr, tmpPacket->pBuffer + 10, tmpPacket->size - 10);
					ptr += tmpPacket->size - 10;
					packet_size += tmpPacket->size - 10;
				}
				safe_delete(tmpPacket);
			}
		}
		packet_size -= sizeof(int32);
		memcpy(data, &packet_size, sizeof(int32));
		packet_size += sizeof(int32);
		EQ2Packet* outapp = new EQ2Packet(OP_ClientCmdMsg, data, packet_size);
		//DumpPacket(outapp);
		QueuePacket(outapp);
		safe_delete_array(data);
		safe_delete(packet);
	}
}

void Client::Loot(Entity* entity){
	if(GetCurrentZone()->GetCombat()->CheckLootAllowed(entity, GetPlayer())){
		int32 total_coins = entity->GetLootCoins();
		entity->LockLoot();
		Loot(total_coins, entity->GetLootItems(), entity);
		entity->UnlockLoot();
	}
	else
		SimpleMessage(CHANNEL_COLOR_YELLOW, "You are not allowed to loot at this time.");
}


bool Player::HasPendingLootItems(int32 id){
	return (pending_loot_items.count(id) > 0 && pending_loot_items[id].size() > 0);
}

bool Player::HasPendingLootItem(int32 id, int32 item_id){
	return (pending_loot_items.count(id) > 0 && pending_loot_items[id].count(item_id) > 0);
}
vector<Item*>* Player::GetPendingLootItems(int32 id){
	vector<Item*>* ret = 0;
	if(pending_loot_items.count(id) > 0){
		ret = new vector<Item*>();
		map<int32, bool>::iterator itr;
		for(itr = pending_loot_items[id].begin(); itr != pending_loot_items[id].end(); itr++){
			if(master_item_list.GetItem(itr->first))
				ret->push_back(master_item_list.GetItem(itr->first));
		}
	}
	return ret;
}

void Player::RemovePendingLootItem(int32 id, int32 item_id){
	if(pending_loot_items.count(id) > 0){
		pending_loot_items[id].erase(item_id);
		if(pending_loot_items[id].size() == 0)
			pending_loot_items.erase(id);
	}
}

void Player::RemovePendingLootItems(int32 id){
	if(pending_loot_items.count(id) > 0)
		pending_loot_items.erase(id);
}

void Player::AddPendingLootItems(int32 id, vector<Item*>* items){
	if(items){
		Item* item = 0;
		for(int32 i=0;i<items->size();i++){
			item = items->at(i);
			if(item)
				pending_loot_items[id][item->details.item_id] = true;
		}
	}
}*/


NPC* Entity::DropChest() {
	// Check to see if treasure chests are disabled in the rules
	if (rule_manager.GetGlobalRule(R_World, TreasureChestDisabled)->GetBool())
		return 0;

	NPC* chest = 0;

	chest = new NPC();
	chest->SetAttackable(0);
	chest->SetShowLevel(0);
	chest->SetShowName(1);
	chest->SetTargetable(1);

	// Set the brain to a blank brain so it does nothing
	chest->SetBrain(new BlankBrain(chest));
	// Set the x, y, z, heading, location (grid id) to that of the dead spawn
	chest->SetX(GetX());
	chest->SetY(GetY());
	chest->SetZ(GetZ());
	// heading needs to be GetHeading() - 180 so the chest faces the proper way
	chest->SetHeading(GetHeading() - 180);
	chest->SetLocation(GetLocation());
	// Set the primary command to loot and the secondary to disarm
	chest->AddPrimaryEntityCommand("loot", 10.0f, "loot", "", 0, 0);
	chest->AddSecondaryEntityCommand("Disarm", 10.0f, "Disarm", "", 0, 0);
	// 32 = loot icon for the mouse
	chest->SetIcon(32);
	// 1 = show the right click menu
	chest->SetShowCommandIcon(1);

	int8 highest_tier = 0;
	vector<Item*>::iterator itr;	
	for (itr = GetLootItems()->begin(); itr != GetLootItems()->end(); ) {
		if ((*itr)->details.tier >= ITEM_TAG_UNCOMMON) {
			if ((*itr)->details.tier > highest_tier)
				highest_tier = (*itr)->details.tier;

			// Add the item to the chest
			chest->AddLootItem((*itr)->details.item_id, (*itr)->details.count);
			// Remove the item from the corpse
			itr = GetLootItems()->erase(itr);
		}
		else
			itr++;
	}

	/*4034 = small chest | 5864 = treasure chest | 5865 = ornate treasure chest | 4015 = exquisite chest*/
	if (highest_tier >= ITEM_TAG_FABLED) {
		chest->SetModelType(4015); 
		chest->SetName("Exquisite Chest");
	}
	else if (highest_tier >= ITEM_TAG_LEGENDARY) {
		chest->SetModelType(5865);
		chest->SetName("Ornate Chest");
	}
	else if (highest_tier >= ITEM_TAG_TREASURED) {
		chest->SetModelType(5864);
		chest->SetName("Treasure Chest");
	}
	else if (highest_tier >= ITEM_TAG_UNCOMMON) {
		chest->SetModelType(4034);
		chest->SetName("Small Chest");
	}
	else
		safe_delete(chest);	

	return chest;
}