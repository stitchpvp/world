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

#include "Traits.h"
#include "../../common/ConfigReader.h"
#include "../../common/Log.h"
#include "../Spells.h"
#include "../WorldDatabase.h"
#include <map>

extern ConfigReader configReader;
extern MasterSpellList master_spell_list;
extern WorldDatabase database;

MasterTraitList::MasterTraitList(){
	MMasterTraitList.SetName("MasterTraitList::TraitList");
}

MasterTraitList::~MasterTraitList(){
	DestroyTraits();
}

void MasterTraitList::AddTrait(TraitData* data){
	MMasterTraitList.writelock(__FUNCTION__, __LINE__);
	TraitList.push_back(data);
	MMasterTraitList.releasewritelock(__FUNCTION__, __LINE__);
}

int MasterTraitList::Size(){
	return TraitList.size();
}

EQ2Packet* MasterTraitList::GetTraitListPacket (Client* client)
{
	if (!client) {
		LogWrite(SPELL__ERROR, 0, "Traits", "GetTraitListPacket called with an invalid client");
		return 0;
	}
	// Sort the Data
	if (Size() == 0)
		return NULL;

	map <int8, map <int8, vector<TraitData*> > > SortedTraitList;
	map <int8, map <int8, vector<TraitData*> > >::iterator itr;
	map <int8, vector<TraitData*> >::iterator itr2;
	vector<TraitData*>::iterator itr3;

	map <int8, vector<TraitData*> > ClassTraining;
	map <int8, vector<TraitData*> > RaceTraits;
	map <int8, vector<TraitData*> > InnateRaceTraits;
	map <int8, vector<TraitData*> > FocusEffects;

	MMasterTraitList.readlock(__FUNCTION__, __LINE__);
	
	for (int i=0; i < Size(); i++) {

		// Sort Character Traits
		if (TraitList[i]->classReq == 255 && TraitList[i]->raceReq == 255 && !TraitList[i]->isFocusEffect) {

			itr = SortedTraitList.lower_bound(TraitList[i]->group);
			if (itr != SortedTraitList.end() && !(SortedTraitList.key_comp()(TraitList[i]->group, itr->first))) {

				itr2 = (itr->second).lower_bound(TraitList[i]->level);
				if (itr2 != (itr->second).end() && !((itr->second).key_comp()(TraitList[i]->level, itr2->first))) {
					((itr->second)[itr2->first]).push_back(TraitList[i]);
					//LogWrite(SPELL__INFO, 0, "Traits", "Added Trait: %u Tier %i", TraitList[i]->spellID, TraitList[i]->tier);
				}
				else {
					vector<TraitData*> tempVec;
					tempVec.push_back(TraitList[i]);
					(itr->second).insert(make_pair(TraitList[i]->level, tempVec));
					//LogWrite(SPELL__INFO, 0, "Traits", "Added Trait: %u Tier %i", TraitList[i]->spellID, TraitList[i]->tier);
				}
			}
			else {
				map <int8, vector<TraitData*> > tempMap;
				vector <TraitData*> tempVec;
				tempVec.push_back(TraitList[i]);
				tempMap.insert(make_pair(TraitList[i]->level, tempVec));
				SortedTraitList.insert(make_pair(TraitList[i]->group, tempMap));
				//LogWrite(SPELL__INFO, 0, "Traits", "Added Trait: %u Tier %i", TraitList[i]->spellID, TraitList[i]->tier);
			}
		}
		// Sort Class Training
		if (TraitList[i]->classReq == client->GetPlayer()->GetAdventureClass() && !TraitList[i]->isFocusEffect) {
			itr2 = ClassTraining.lower_bound(TraitList[i]->level);
			if (itr2 != ClassTraining.end() && !(ClassTraining.key_comp()(TraitList[i]->level, itr2->first))) {
				(itr2->second).push_back(TraitList[i]);
			}
			else {
				vector<TraitData*> tempVec;
				tempVec.push_back(TraitList[i]);
				ClassTraining.insert(make_pair(TraitList[i]->level, tempVec));
			}
		}
		// Sort Racial Abilities
		if (TraitList[i]->raceReq == client->GetPlayer()->GetRace() && !TraitList[i]->isInate) {
			itr2 = RaceTraits.lower_bound(TraitList[i]->group);
			if (itr2 != RaceTraits.end() && !(RaceTraits.key_comp()(TraitList[i]->group, itr2->first))) {
				(itr2->second).push_back(TraitList[i]);
			}
			else {
				vector<TraitData*> tempVec;
				tempVec.push_back(TraitList[i]);
				RaceTraits.insert(make_pair(TraitList[i]->group, tempVec));
			}
		}
		// Sort Innate Racial Abilities
		if (TraitList[i]->raceReq == client->GetPlayer()->GetRace() && TraitList[i]->isInate) {
			itr2 = InnateRaceTraits.lower_bound(TraitList[i]->group);
			if (itr2 != InnateRaceTraits.end() && !(InnateRaceTraits.key_comp()(TraitList[i]->group, itr2->first))) {
				(itr2->second).push_back(TraitList[i]);
			}
			else {
				vector<TraitData*> tempVec;
				tempVec.push_back(TraitList[i]);
				InnateRaceTraits.insert(make_pair(TraitList[i]->group, tempVec));
			}
		}
		// Sort Focus Effects
		if ((TraitList[i]->classReq == client->GetPlayer()->GetAdventureClass() || TraitList[i]->classReq == 255) && TraitList[i]->isFocusEffect) {
			int8 j = 0;
			itr2 = FocusEffects.lower_bound(TraitList[i]->group);
			if (itr2 != FocusEffects.end() && !(FocusEffects.key_comp()(TraitList[i]->group, itr2->first))) {
				
				(itr2->second).push_back(TraitList[i]);
				//LogWrite(SPELL__INFO, 0, "Traits", "Added Focus Effect: %u Tier: %i", TraitList[i]->spellID, TraitList[i]->tier);
				j++;
			}
			else {
				vector<TraitData*> tempVec;
				tempVec.push_back(TraitList[i]);
				FocusEffects.insert(make_pair(TraitList[i]->group, tempVec));
				//LogWrite(SPELL__INFO, 0, "Traits", "Added Focus Effect: %u Tier %i", TraitList[i]->spellID, TraitList[i]->tier);
			}
		}
	}

	MMasterTraitList.releasereadlock(__FUNCTION__, __LINE__);

	int16 version = 1;
	int8 count = 0;
	int8 index = 0;
	int8 num_traits = 0;
	int8 traits_size = 0;
	int8 num_focuseffects = 0;
	char sTrait [20];
	char temp [20];
	
	version = client->GetVersion();

	// Jabantiz: Get the value for num_traits in the struct (num_traits refers to the number of rows not the total number of traits)
	for (itr = SortedTraitList.begin(); itr != SortedTraitList.end(); itr++) {
		num_traits += (itr->second).size();
	}

	PacketStruct* packet = configReader.getStruct("WS_TraitsList", version);
	packet->setArrayLengthByName("num_traits", num_traits);

	for (itr = SortedTraitList.begin(); itr != SortedTraitList.end(); itr++) {

		for (itr2 = itr->second.begin(); itr2 != itr->second.end(); itr2++, index++) {
			traits_size += (itr2->second).size();
			count = 0;
			Spell* tmp_spell = 0;
			packet->setArrayDataByName("trait_level", (*itr2).first, index);
			packet->setArrayDataByName("trait_line", 255, index);
			//LogWrite(SPELL__INFO, 0, "AA", "Character Traits Size...%i ", traits_size);
			for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, count++) {
				// Jabantiz: cant have more then 5 traits per line
				if (count > 4)
					break;

				strcpy(sTrait, "trait");
				itoa(count, temp, 10);
				strcat(sTrait, temp);

				strcpy(temp, sTrait);
				strcat(sTrait, "_icon");
				tmp_spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
				if (tmp_spell)
					packet->setArrayDataByName(sTrait, tmp_spell->GetSpellIcon(), index);
				else
					LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);

				strcpy(sTrait, temp);
				strcat(sTrait, "_icon2");
				packet->setArrayDataByName(sTrait, 65535, index);

				strcpy(sTrait, temp);
				strcat(sTrait, "_id");
				packet->setArrayDataByName(sTrait, (*itr3)->spellID, index);

				strcpy(sTrait, temp);
				strcat(sTrait, "_name");
				if (tmp_spell)
					packet->setArrayDataByName(sTrait, tmp_spell->GetName(), index);
				else
					LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);

				if (client->GetPlayer()->HasSpell((*itr3)->spellID, (*itr3)->tier))
					packet->setArrayDataByName("trait_line", count, index);
			}
			// Jabantiz: If less then 5 fill the rest of the line with FF FF FF FF FF FF FF FF FF FF FF FF
			while (count < 5) {
				strcpy(sTrait, "trait");
				itoa(count, temp, 10);
				strcat(sTrait, temp);
				strcpy(temp, sTrait);
				strcat(sTrait, "_icon");
				packet->setArrayDataByName(sTrait, 65535, index); // FF FF
				strcpy(sTrait, temp);
				strcat(sTrait, "_icon2");
				packet->setArrayDataByName(sTrait, 65535, index); // FF FF
				strcpy(sTrait, temp);
				strcat(sTrait, "_id");
				packet->setArrayDataByName(sTrait, 0xFFFFFFFF, index);
				strcpy(sTrait, temp);
				strcat(sTrait, "_unknown");
				packet->setArrayDataByName(sTrait, 0xFFFFFFFF, index);
				strcpy(sTrait, temp);
				strcat(sTrait, "_name");
				packet->setArrayDataByName(sTrait, "", index);
				count++;
			}
		}
	}
	// Class Training portion of the packet
	packet->setArrayLengthByName("num_trainings", ClassTraining.size());
	index = 0;
	for (itr2 = ClassTraining.begin(); itr2 != ClassTraining.end(); itr2++, index++) {
		count = 0;
		Spell* tmp_spell = 0;
		packet->setArrayDataByName("training_level", itr2->first, index);
		packet->setArrayDataByName("training_line", 255, index);

		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, count++) {
			// Jabantiz: cant have more then 5 traits per line
			if (count > 4)
				break;

			strcpy(sTrait, "training");
			itoa(count, temp, 10);
			strcat(sTrait, temp);

			strcpy(temp, sTrait);
			strcat(sTrait, "_icon");
			tmp_spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			if (tmp_spell)
				packet->setArrayDataByName(sTrait, tmp_spell->GetSpellIcon(), index);
			else
				LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);

			strcpy(sTrait, temp);
			strcat(sTrait, "_icon2");
			if (tmp_spell)
				packet->setArrayDataByName(sTrait, tmp_spell->GetSpellIconBackdrop(), index);
			else
				LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);

			strcpy(sTrait, temp);
			strcat(sTrait, "_id");
			packet->setArrayDataByName(sTrait, (*itr3)->spellID, index);

			strcpy(sTrait, temp);
			strcat(sTrait, "_name");
			if (tmp_spell)
				packet->setArrayDataByName(sTrait, tmp_spell->GetName(), index);
			else
				LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);

			if (client->GetPlayer()->HasSpell((*itr3)->spellID, (*itr3)->tier))
				packet->setArrayDataByName("training_line", count, index);
		}
		// Jabantiz: If less then 5 fill the rest of the line with FF FF FF FF FF FF FF FF FF FF FF FF
		while (count < 5) {
			strcpy(sTrait, "training");
			itoa(count, temp, 10);
			strcat(sTrait, temp);
			strcpy(temp, sTrait);
			strcat(sTrait, "_icon");
			packet->setArrayDataByName(sTrait, 65535, index); // FF FF
			strcpy(sTrait, temp);
			strcat(sTrait, "_icon2");
			packet->setArrayDataByName(sTrait, 65535, index); // FF FF
			strcpy(sTrait, temp);
			strcat(sTrait, "_id");
			packet->setArrayDataByName(sTrait, 0xFFFFFFFF, index);
			strcpy(sTrait, temp);
			strcat(sTrait, "_unknown");
			packet->setArrayDataByName(sTrait, 0xFFFFFFFF, index);
			strcpy(sTrait, temp);
			strcat(sTrait, "_name");
			packet->setArrayDataByName(sTrait, "", index);
			count++;
		}
	}
	// Racial Traits
	packet->setArrayLengthByName("num_sections", RaceTraits.size());
	index = 0;
	string tempStr;
	int8 num_selections = 0;
	for (itr2 = RaceTraits.begin(); itr2 != RaceTraits.end(); itr2++, index++) {
		count = 0;
		Spell* tmp_spell = 0;
		switch (itr2->first)
		{
		case TRAITS_ATTRIBUTES:
			tempStr = "Attributes";
			break;
		case TRAITS_COMBAT:
			tempStr = "Combat";
			break;
		case TRAITS_NONCOMBAT:
			tempStr = "Noncombat";
			break;
		case TRAITS_POOLS:
			tempStr = "Pools";
			break;
		case TRAITS_RESIST:
			tempStr = "Resist";
			break;
		case TRAITS_TRADESKILL:
			tempStr = "Tradeskill";
			break;
		default:
			tempStr = "Unknown";
			break;
		}
		packet->setArrayDataByName("section_name", tempStr.c_str(), index);
		packet->setSubArrayLengthByName("num_traditions", (itr2->second).size(), index);

		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, count++) {
			if (client->GetPlayer()->HasSpell((*itr3)->spellID, (*itr3)->tier))	{
				num_selections++;
				packet->setSubArrayDataByName("tradition_selected", 1, index, count);
			}
			else {
				packet->setSubArrayDataByName("tradition_selected", 0, index, count);
			}
			tmp_spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			if (tmp_spell){
				packet->setSubArrayDataByName("tradition_icon", tmp_spell->GetSpellIcon(), index, count);
				packet->setSubArrayDataByName("tradition_icon2", tmp_spell->GetSpellIconBackdrop(), index, count);
				packet->setSubArrayDataByName("tradition_id", (*itr3)->spellID, index, count);
				packet->setSubArrayDataByName("tradition_name", tmp_spell->GetName(), index, count);
			}
			else
				LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);
		}
	}
	int8 num_available_selections = client->GetPlayer()->GetLevel() / 10;
	if (num_selections < num_available_selections)
		packet->setDataByName("allow_select", num_available_selections - num_selections);
	else
		packet->setDataByName("allow_select", 0);

	// Innate Racial Traits
	index = 0;

	// total number of Innate traits
	num_traits = 0;
	for (itr2 = InnateRaceTraits.begin(); itr2 != InnateRaceTraits.end(); itr2++) {
		num_traits += (itr2->second).size();
	}
	packet->setArrayLengthByName("num_abilities", num_traits);
	for (itr2 = InnateRaceTraits.begin(); itr2 != InnateRaceTraits.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			Spell* innate_spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			if (innate_spell) {
				packet->setArrayDataByName("ability_icon", innate_spell->GetSpellIcon(), index);
				packet->setArrayDataByName("ability_icon2", innate_spell->GetSpellIconBackdrop(), index);
				packet->setArrayDataByName("ability_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("ability_name", innate_spell->GetName(), index);
			}
			else
				LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);
		}
	}

	if (client->GetVersion() >= 1188) {
		// total number of Focus Effects
		num_focuseffects = 0;
		index = 0;
		for (itr2 = FocusEffects.begin(); itr2 != FocusEffects.end(); itr2++) {
			num_focuseffects += (itr2->second).size();
		}
		packet->setArrayLengthByName("num_focuseffects", num_focuseffects);
		for (itr2 = FocusEffects.begin(); itr2 != FocusEffects.end(); itr2++) {
			for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
				Spell* spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
				if (spell) {
					packet->setArrayDataByName("focus_icon", spell->GetSpellIcon(), index);
					packet->setArrayDataByName("focus_icon2", spell->GetSpellIconBackdrop(), index);
					packet->setArrayDataByName("focus_spell_crc", (*itr3)->spellID, index);
					packet->setArrayDataByName("focus_name", spell->GetName(), index);
				}
				else
					LogWrite(SPELL__ERROR, 0, "Traits", "Could not find SpellID %u and Tier %i in Master Spell List (line: %i)", (*itr3)->spellID, (*itr3)->tier, __LINE__);
			}
		}
		packet->setDataByName("unknown",0);
	}
	LogWrite(SPELL__PACKET, 0, "Traits", "Dump/Print Packet in func: %s, line: %i", __FUNCTION__, __LINE__);
#if EQDEBUG >= 9
	packet->PrintPacket();
#endif

	EQ2Packet* data = packet->serialize();
	EQ2Packet* outapp = new EQ2Packet(OP_ClientCmdMsg, data->pBuffer, data->size);
	//DumpPacket(outapp);
	safe_delete(packet);
	safe_delete(data);
	return outapp;
}

// Jabantiz: Probably a better way to do this but can't think of it right now
TraitData* MasterTraitList::GetTrait(int32 spellID) {
	vector<TraitData*>::iterator itr;
	TraitData* data = NULL;

	MMasterTraitList.readlock(__FUNCTION__, __LINE__);
	for (itr = TraitList.begin(); itr != TraitList.end(); itr++) {
		if ((*itr)->spellID == spellID) {
			data = (*itr);
			break;
		}
	}
	MMasterTraitList.releasereadlock(__FUNCTION__, __LINE__);

	return data;
}

void MasterTraitList::DestroyTraits(){
	MMasterTraitList.writelock(__FUNCTION__, __LINE__);
	vector<TraitData*>::iterator itr;
	for (itr = TraitList.begin(); itr != TraitList.end(); itr++)
		safe_delete((*itr));
	TraitList.clear();
	MMasterTraitList.releasewritelock(__FUNCTION__, __LINE__);
}
