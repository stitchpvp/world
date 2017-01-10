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

#include "AltAdvancement.h"
#include "../../common/ConfigReader.h"
#include "../../common/Log.h"
#include "../Spells.h"
#include "../classes.h"
#include "../Rules/Rules.h"
#include <map>

extern ConfigReader configReader;
extern MasterSpellList master_spell_list;
extern Classes classes;
extern RuleManager rule_manager;
extern MasterAANodeList master_tree_nodes;

MasterAAList::MasterAAList()
{
	MMasterAAList.SetName("MasterAAList::AAList");
}

MasterAAList::~MasterAAList()
{
	DestroyAltAdvancements();
}

void MasterAAList::AddAltAdvancement(AltAdvanceData* data) {
	MMasterAAList.writelock(__FUNCTION__, __LINE__);
	AAList.push_back(data);
	MMasterAAList.releasewritelock(__FUNCTION__, __LINE__);
}

int MasterAAList::Size() {
	return AAList.size();
}

// Jabantiz: Probably a better way to do this but can't think of it right now
AltAdvanceData* MasterAAList::GetAltAdvancement(int32 spellID) {
	vector<AltAdvanceData*>::iterator itr;
	AltAdvanceData* data = NULL;

	MMasterAAList.readlock(__FUNCTION__, __LINE__);
	for (itr = AAList.begin(); itr != AAList.end(); itr++) {
		if ((*itr)->spellID == spellID) {
			data = (*itr);
			break;
		}
	}
	MMasterAAList.releasereadlock(__FUNCTION__, __LINE__);

	return data;
}

void MasterAAList::DestroyAltAdvancements() {
	MMasterAAList.writelock(__FUNCTION__, __LINE__);
	vector<AltAdvanceData*>::iterator itr;
	for (itr = AAList.begin(); itr != AAList.end(); itr++)
		safe_delete(*itr);
	AAList.clear();
	MMasterAAList.releasewritelock(__FUNCTION__, __LINE__);
}

MasterAANodeList::MasterAANodeList() {
}

MasterAANodeList::~MasterAANodeList() {
	DestroyTreeNodes();
}

void MasterAANodeList::AddTreeNode(TreeNodeData* data) {
	TreeNodeList.push_back(data);
}

void MasterAANodeList::DestroyTreeNodes() {
	vector<TreeNodeData*>::iterator itr;
	for (itr = TreeNodeList.begin(); itr != TreeNodeList.end(); itr++)
		safe_delete(*itr);
	TreeNodeList.clear();
}

int MasterAANodeList::Size() {
	return TreeNodeList.size();
}

vector<TreeNodeData*> MasterAANodeList::GetTreeNodes() {
	return TreeNodeList;
}

EQ2Packet* MasterAAList::GetAAListPacket(Client* client)
{

	/*
	-- OP_DispatchESMsg --
	5/24/2011 20:54:15
	199.108.12.165 -> 192.168.0.197
	0000:	00 38 3B 00 00 00 FF A3 02 FF FF FF FF 00 00 00 .8;.............
	0010:	00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
	0020:	00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
	0030:	00 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 ................
	0040	00                                              .
	*/

	uchar blah[] = {0xFF,0xE8,0x01,
0x00, //unknown
0x07,0x00,0x00,0x00, //unknown2
0x07,0x00,0x57,0x61,0x72,0x72,0x69,0x6F,0x72, //class_title_tab
0x0C,0x00, //unknown3
0x64,0x00,0x00,0x00, //max_class_aa
0xFD,0x74,0xB6,0x73, //class_id
0x00, //kos_req
0x00,0x00,0x00,0x00, //num_class_items

0x0B,0x00,0x00,0x00, //unknown10
0x11,0x00,0x00,0x00, //class_points_spent
0x00,0x00,0x3B,0x81,0x01,0x00, //unknown11
0x00,0x00, //unknown12
0x00,0x00, //unknown13
0x00,0x00,0x00,0x00, //unknown14
0x00,0x00, //unknown15
0x00,0x00,0x00,0x00,0x00,0x00,0x00, //unknown16
0x09,0x00,0x42,0x65,0x72,0x73,0x65,0x72,0x6B,0x65,0x72, //subclass_title_tab
0x0E,0x00, //unknown17
0x64,0x00,0x00,0x00, //max_subclass_aa
0x5F,0xD6,0xAF,0x50, //subclass_id
0x00, //eof_req
0x00,0x00,0x00,0x00, //num_subclass_items

0x0C,0x00,0x00,0x00, //unknown20
0x08,0x00,0x00,0x00, //subclass_points_spent
0x00,0x00,0x3B,0x81,0x03,0x14, //unknown21
0x00,0x00,0x00, //unknown22
0x1D,0x00,0x3A,0x63,0x65,0x31,0x38,0x36,0x34,0x63,0x37,0x66,0x35,0x33,0x66,0x65,0x62,0x37,0x62,0x5F,0x31,0x3A,0x42,0x65,0x72,0x73,0x65,0x72,0x6B,0x65,0x72, //unknown23
0x01,0x00,0x00,0x00, //unknown24
0x1D,0x00,0x3A,0x63,0x65,0x31,0x38,0x36,0x34,0x63,0x37,0x35,0x66,0x39,0x34,0x61,0x32,0x64,0x37,0x5F,0x31,0x3A,0x45,0x78,0x70,0x65,0x72,0x74,0x69,0x73,0x65, //unknown25
0x00,0x00,0x00,0x00,0x00,0x00, //unknown26
0x07,0x00,0x53,0x68,0x61,0x64,0x6F,0x77,0x73, //shadows_tab_title
0x2C,0x00, //unknown27
0x46,0x00,0x00,0x00, //max_shadows_aa
0x53,0x88,0x59,0x62, //shadows_id
0x00, //rok_req
0x00,0x00,0x00,0x00, //num_shadow_items

0x0E,0x00,0x00,0x00, //unknown30
0x00,0x00,0x00,0x00, //shadows_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown31
0x00,0x00,0x00, //unknown32
0x00,0x00, //uknown33
0x00,0x00,0x00,0x00, //unknown34
0x00,0x00, //unknown35
0x00,0x00,0x00,0x00,0x00,0x00, //unknown36
0x06,0x00,0x48,0x65,0x72,0x6F,0x69,0x63, //heroic_tab_title
0x48,0x00, //unknown37
0x32,0x00,0x00,0x00, //max_heroic_aa
0xC0,0x6B,0xFC,0x3C, //heroic_id
0x01, //heroic_dov_req
0x00,0x00,0x00,0x00, //num_heroic_items

0x10,0x00,0x00,0x00, //unknown40
0x00,0x00,0x00,0x00, //heroic_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown41
0x00,0x00,0x00, //unknown42
0x00,0x00, //unknown43
0x00,0x00,0x00,0x00, //unknown44
0x00,0x00, //unknown45
0x00,0x00,0x00,0x00,0x00,0x00, //unknown46
0x0A,0x00,0x54,0x72,0x61,0x64,0x65,0x73,0x6B,0x69,0x6C,0x6C, //tradeskill_tab_title
0x49,0x00, //unknown47
0x28,0x00,0x00,0x00, //max_tradeskill_aa
0x1E,0xDB,0x41,0x2F, //tradeskill_id
0x00, //exp_req
0x00,0x00,0x00,0x00, //num_tradeskill_items

0x00,0x00,0x00,0x00, //unknown50
0x00,0x00,0x00,0x00, //tradeskill_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown51
0x00,0x00,0x00, //unknown52
0x00,0x00, //unknown53
0x00,0x00,0x00,0x00, //unknown54
0x00,0x00, //unknown55
0x03,0x00,0x00,0x00,0x00,0x00, //unknown56
0x08,0x00,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65, //prestige_tab_title
0x67,0x00, //unknown57
0x19,0x00,0x00,0x00, //max_prestige_aa
0xC6,0xA8,0x83,0xBD, //prestige_id
0x01, //prestige_dov_req
0x00,0x00,0x00,0x00, //num_prestige_items

0x10,0x00,0x00,0x00, //unknown60
0x00,0x00,0x00,0x00, //prestige_points_spent
0x00,0x00,0x3B,0x81,0x03,0x06, //unknown61
0x00,0x00,0x00, //unknown62
0x1D,0x00,0x3A,0x34,0x39,0x33,0x64,0x65,0x62,0x62,0x33,0x65,0x36,0x37,0x38,0x62,0x39,0x37,0x37,0x5F,0x35,0x35,0x3A,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65, //unknown63
0x01,0x00,0x00,0x00, //unknown64
0x27,0x00,0x3A,0x34,0x39,0x33,0x64,0x65,0x62,0x62,0x33,0x65,0x36,0x61,0x38,0x62,0x62,0x37,0x39,0x5F,0x31,0x32,0x3A,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65,0x20,0x45,0x78,0x70,0x65,0x72,0x74,0x69,0x73,0x65, //unknown65
0x02,0x00,0x00,0x00,0x00,0x00, //unknown66
0x13,0x00,0x54,0x72,0x61,0x64,0x65,0x73,0x6B,0x69,0x6C,0x6C,0x20,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65, //tradeskill_prestige_tab_title
0x79,0x00, //unknown67
0x19,0x00,0x00,0x00, //max_tradeskill_prestige_aa
0x18,0x2C,0x0B,0x74, //tradeskill_prestige_id
0x01, //coe_req
0x00,0x00,0x00,0x00, //num_tradeskill_prestige_items

0x12,0x00,0x00,0x00, //unknown70
0x00,0x00,0x00,0x00, //tradeskill_prestige_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown71
0x00,0x00,0x00, //unknown72
0x00,0x00, //unknown73
0x00,0x00,0x00,0x00, //unknown74
0x00,0x00, //unknown75
0x04,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00, //unknown76
0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00, //unknown77
0x01, //num_templates
0x64, //template_unknown1
0x03,0x00,0x4E,0x65,0x77, //template_name
0x00, //template_unknown2
0x00,0x00}; //num_tabs

			return (new EQ2Packet(OP_AdventureList, blah, sizeof(blah)));
}

void MasterAAList::DisplayAA(Client* client) {
	map <int8, vector<TreeNodeData*> >::iterator itr_tree2;
	vector<TreeNodeData*>::iterator itr_tree3;
	map <int8, vector<TreeNodeData*> > Nodes;
	vector<TreeNodeData*> TreeNodeList = master_tree_nodes.GetTreeNodes();

	for (int x = 0; x < TreeNodeList.size(); x++)
	{
		int8 class_id = client->GetPlayer()->GetInfoStruct()->class3;

		if (TreeNodeList[x]->classID == class_id)
		{
			itr_tree2 = Nodes.lower_bound(TreeNodeList[x]->classID);
			if (itr_tree2 != Nodes.end() && !(Nodes.key_comp()(TreeNodeList[x]->classID, itr_tree2->first)))
			{
				(itr_tree2->second).push_back(TreeNodeList[x]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added AA Tree node ID: %u", TreeNodeList[x]->treeID);
			}
			else
			{
				vector<TreeNodeData*> tmpVec;
				tmpVec.push_back(TreeNodeList[x]);
				Nodes.insert(make_pair(TreeNodeList[x]->classID, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added AA Tree node ID: %u", TreeNodeList[x]->treeID);
			}
		}
	}

	map <int8, vector<AltAdvanceData*> >::iterator itr2;
	vector<AltAdvanceData*>::iterator itr3;

	map <int8, vector<AltAdvanceData*> > ClassTab;
	map <int8, vector<AltAdvanceData*> > SubclassTab;
	map <int8, vector<AltAdvanceData*> > ShadowsTab;
	map <int8, vector<AltAdvanceData*> > HeroicTab;
	map <int8, vector<AltAdvanceData*> > TradeskillTab;
	map <int8, vector<AltAdvanceData*> > PrestigeTab;
	map <int8, vector<AltAdvanceData*> > TradeskillPrestigeTab;

	MMasterAAList.readlock(__FUNCTION__, __LINE__);
	// Get Tree Node ID's
	map <int8, int8> node_id;
	for (itr_tree2 = Nodes.begin(); itr_tree2 != Nodes.end(); itr_tree2++) {
		int8 x = 0;
		for (itr_tree3 = itr_tree2->second.begin(); itr_tree3 != itr_tree2->second.end(); itr_tree3++, x++) {
			node_id[x] = (*itr_tree3)->treeID;
		}
	}
	
	for (int i =0; i < Size(); i++) {
		if (AAList[i]->group == node_id[AA_CLASS]) {
			itr2 = ClassTab.lower_bound(AAList[i]->group);
			if (itr2 != ClassTab.end() && !(ClassTab.key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				ClassTab.insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Subclass Tab
		if (AAList[i]->group == node_id[AA_SUBCLASS]) {
			itr2 = SubclassTab.lower_bound(AAList[i]->group);
			if (itr2 != SubclassTab.end() && !(SubclassTab.key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				SubclassTab.insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Shadows Tab
		if (AAList[i]->group == node_id[AA_SHADOW]) {
			itr2 = ShadowsTab.lower_bound(AAList[i]->group);
			if (itr2 != ShadowsTab.end() && !(ShadowsTab.key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				ShadowsTab.insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Heroic Tab
		if (AAList[i]->group == node_id[AA_HEROIC]) {
			itr2 = HeroicTab.lower_bound(AAList[i]->group);
			if (itr2 != HeroicTab.end() && !(HeroicTab.key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				HeroicTab.insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Tradeskill Tab
		if (AAList[i]->group == node_id[AA_TRADESKILL]) {
			itr2 = TradeskillTab.lower_bound(AAList[i]->group);
			if (itr2 != TradeskillTab.end() && !(TradeskillTab.key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				TradeskillTab.insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Prestige Tab
		if (AAList[i]->group == node_id[AA_PRESTIGE]) {
			itr2 = PrestigeTab.lower_bound(AAList[i]->group);
			if (itr2 != PrestigeTab.end() && !(PrestigeTab.key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				PrestigeTab.insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for TradeskillPrestige Tab
		if (AAList[i]->group == node_id[AA_TRADESKILL_PRESTIGE]) {
			itr2 = TradeskillPrestigeTab.lower_bound(AAList[i]->group);
			if (itr2 != TradeskillPrestigeTab.end() && !(TradeskillPrestigeTab.key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				TradeskillPrestigeTab.insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
	}

	int16	version = 1;
	int8	num_class_items = 0;
	int8	num_subclass_items = 0;
	int8	num_shadow_items = 0;
	int8	num_heroic_items = 0;
	int8	num_tradeskill_items = 0;
	int8	num_prestige_items = 0;
	int8	num_tradeskillprestige_items = 0;
	int8	index = 0;
	Spell*	spell = 0;
	int8	current_rank = 0;
	int32	class_node_id = 0;

	if (client)
		version = client->GetVersion();

	// Get the value for num_class_items based on size of ClassTab vector
	for (itr2 = ClassTab.begin(); itr2 != ClassTab.end(); itr2++) {
		num_class_items += (itr2->second).size();
	}
	//LogWrite(SPELL__INFO, 0, "AA", "ClassTab Size...%i ", num_class_items);
	PacketStruct* packet = configReader.getStruct("WS_AdventureList", version);
	packet->setDataByName("unknown2", 8);
	packet->setDataByName("unknown3", 4);
	packet->setDataByName("class_tab_title", classes.GetClassNameCase(classes.GetSecondaryBaseClass(client->GetPlayer()->GetAdventureClass())).c_str());
	packet->setDataByName("class_tab_id", node_id[AA_CLASS]);
	packet->setDataByName("max_class_aa", rule_manager.GetGlobalRule(R_Player, MaxClassAA)->GetInt32());
	packet->setDataByName("kos_req", 0);
	packet->setArrayLengthByName("num_class_items", num_class_items);
	for (itr2 = ClassTab.begin(); itr2 != ClassTab.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			//current_rank = client->GetPlayer()->GetSpellTier((*itr3)->spellID);
			if (index == 0)
				class_node_id = (*itr3)->spellID;
			//if (spell) {
				packet->setArrayDataByName("class_parent_id", (*itr3)->rankPrereqID, index);
				packet->setArrayDataByName("class_parent_req_tier", (*itr3)->rankPrereq, index);
				packet->setArrayDataByName("class_spell_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("class_spell_name", (*itr3)->name.c_str(), index);
				packet->setArrayDataByName("class_unknown3", 3, index);
				packet->setArrayDataByName("class_spell_description", (*itr3)->description.c_str(), index);
				packet->setArrayDataByName("class_icon", (*itr3)->icon, index);
				packet->setArrayDataByName("class_icon2",(*itr3)->icon2, index);
				packet->setArrayDataByName("class_current_rank", current_rank, index); // TODO: need to get this value from the DB
				packet->setArrayDataByName("class_max_rank", (*itr3)->maxRank , index);
				packet->setArrayDataByName("class_rank_cost", (*itr3)->rankCost, index);
				packet->setArrayDataByName("class_unknown4", 1, index);
				packet->setSubArrayLengthByName("class_unknown5_num_items", 5, 0);
				packet->setSubArrayDataByName("class_unknown5", 308397057, 0, 0);
				packet->setSubArrayDataByName("class_unknown5", 3215564363, 0, 1);
				packet->setSubArrayDataByName("class_unknown5", 445192837, 0, 2);
				packet->setSubArrayDataByName("class_unknown5", 3345493294, 0, 3);
				packet->setSubArrayDataByName("class_unknown5", 696953971, 0, 4);
				packet->setSubArrayDataByName("class_unknown6", 4294967295, index);
				packet->setArrayDataByName("class_classification1", (*itr3)->class_name.c_str(), index);
				packet->setArrayDataByName("class_points_req", (*itr3)->req_points, index);
				packet->setArrayDataByName("class_classification2", (*itr3)->subclass_name.c_str(), index);
				packet->setArrayDataByName("class_col", (*itr3)->col, index);
				packet->setArrayDataByName("class_row", (*itr3)->row, index);
				packet->setArrayDataByName("class_line_title", (*itr3)->line_title.c_str(), index);
				packet->setArrayDataByName("class_unknown9", 258, index);
				packet->setArrayDataByName("class_points_to_unlock", (*itr3)->req_tree_points, index);
			//}
			//else
				//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
		}
	}
	packet->setDataByName("class_id", class_node_id);
	packet->setDataByName("unknown10", 11);
	packet->setDataByName("class_points_spent", 34);
	packet->setDataByName("unknown11", 0, 0);
	packet->setDataByName("unknown11", 0, 1);
	packet->setDataByName("unknown11", 1, 2);
	//packet->setDataByName("unknown12", 1, 0);
	//packet->setDataByName("unknown12", 2, 1);
	packet->setDataByName("subclass_tab_title", classes.GetClassNameCase(client->GetPlayer()->GetAdventureClass()).c_str());
	packet->setDataByName("unknown17", 15);
	packet->setDataByName("subclass_tab_id", node_id[AA_SUBCLASS]);
	packet->setDataByName("max_subclass_aa", rule_manager.GetGlobalRule(R_Player, MaxSubclassAA)->GetInt32());
	packet->setDataByName("subclass_id", 7850);
	packet->setDataByName("eof_req", 0);
	// Get the value for num_subclass_items based on size of SubclassTab vector
	for (itr2 = SubclassTab.begin(); itr2 != SubclassTab.end(); itr2++) {
		num_subclass_items += (itr2->second).size();
	}
	index = 0;
	//LogWrite(SPELL__INFO, 0, "AA", "SubclassTab Size...%i ", num_subclass_items);
	packet->setArrayLengthByName("num_subclass_items", num_subclass_items);
	for (itr2 = SubclassTab.begin(); itr2 != SubclassTab.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			//if (spell) {
				packet->setArrayDataByName("subclass_parent_id", (*itr3)->rankPrereqID, index);
				packet->setArrayDataByName("subclass_parent_req-tier", (*itr3)->rankPrereq, index);
				packet->setArrayDataByName("subclass_spell_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("subclass_spell_name", (*itr3)->name.c_str(), index);
				packet->setArrayDataByName("subclass_spell_description", (*itr3)->description.c_str(), index);
				packet->setArrayDataByName("subclass_icon", (*itr3)->icon, index);
				packet->setArrayDataByName("subclass_icon2",(*itr3)->icon2, index);
				packet->setArrayDataByName("subclass_current_rank", 0, index); // TODO: need to get this value from the DB
				packet->setArrayDataByName("subclass_max_rank", (*itr3)->maxRank , index);
				packet->setArrayDataByName("subclass_rank_cost", (*itr3)->rankCost, index);
				packet->setArrayDataByName("subclass_classification1", (*itr3)->class_name.c_str(), index);
				packet->setArrayDataByName("subclass_points_req", (*itr3)->req_points, index);
				packet->setArrayDataByName("subclass_classification2", (*itr3)->subclass_name.c_str(), index);
				packet->setArrayDataByName("subclass_col", (*itr3)->col, index);
				packet->setArrayDataByName("subclass_row", (*itr3)->row, index);
				packet->setArrayDataByName("subclass_line_title", (*itr3)->line_title.c_str(), index);
			//}
			//else
				//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
		}
	}
	packet->setDataByName("unknown20", 12);
	packet->setDataByName("subclass_points_spent", 27);
	packet->setDataByName("unknown21", 5123, 2);
	packet->setDataByName("unknown23", ":ce1864c762c1fdc_1:Guardian");
	packet->setDataByName("unknown24", 1);
	packet->setDataByName("unknown25", ":ce1864c75f94a2d7:Expertise");
	packet->setDataByName("shadows_tab_title", "Shadows");
	packet->setDataByName("unknown27", 45);
	packet->setDataByName("shadows_tab_id", node_id[AA_SHADOW]);
	packet->setDataByName("max_shadows_aa", rule_manager.GetGlobalRule(R_Player, MaxShadowsAA)->GetInt32());
	packet->setDataByName("shadows_id", 7060);
	packet->setDataByName("rok_req", 0);
	// Get the value for num_shadow_items based on size of ShadowsTab map
	for (itr2 = ShadowsTab.begin(); itr2 != ShadowsTab.end(); itr2++) {
		num_shadow_items += (itr2->second).size();
	}
	index = 0;
	//LogWrite(SPELL__INFO, 0, "AA", "ShadowTab Size...%i ", num_shadow_items);
	packet->setArrayLengthByName("num_shadows_items", num_shadow_items);
	for (itr2 = ShadowsTab.begin(); itr2 != ShadowsTab.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			//if (spell)
			//{
				packet->setArrayDataByName("tso_parent_id", (*itr3)->rankPrereqID, index);
				packet->setArrayDataByName("tso_parent_req_tier", (*itr3)->rankPrereq, index);
				packet->setArrayDataByName("tso_spell_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("tso_spell_name", (*itr3)->name.c_str(), index);
				packet->setArrayDataByName("tso_spell_description", (*itr3)->description.c_str(), index);
				packet->setArrayDataByName("tso_icon", (*itr3)->icon, index);
				packet->setArrayDataByName("tso_icon2", (*itr3)->icon2, index);
				packet->setArrayDataByName("tso_current_rank", 0, index); // TODO: need to get this value from the DB
				packet->setArrayDataByName("tso_max_rank", (*itr3)->maxRank , index);
				packet->setArrayDataByName("tso_rank_cost", (*itr3)->rankCost, index);
				packet->setArrayDataByName("tso_classification1", (*itr3)->class_name.c_str(), index);
				packet->setArrayDataByName("tso_points_req", (*itr3)->req_points, index);
				packet->setArrayDataByName("tso_classification2", (*itr3)->subclass_name.c_str(), index);
				packet->setArrayDataByName("tso_col", (*itr3)->col, index);
				packet->setArrayDataByName("tso_row", (*itr3)->row, index);
				packet->setArrayDataByName("tso_line_title", (*itr3)->line_title.c_str(), index);
			//}
			//else
				//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
		}
	}
	packet->setDataByName("unknown30", 14);
	packet->setDataByName("shadows_points_spent", 41);
	packet->setDataByName("unknown31", 3, 2);
	packet->setDataByName("heroic_tab_title", "Heroic");
	packet->setDataByName("unknown37", 64);
	packet->setDataByName("heroic_tab_id", node_id[AA_HEROIC]);
	packet->setDataByName("max_heroic_aa", rule_manager.GetGlobalRule(R_Player, MaxHeroicAA)->GetInt32());
	packet->setDataByName("heroic_id", 7088);
	packet->setDataByName("heroic_dov_req", 0);
	// Get the value for num_heroic_items based on size of HeroicTab map
	for (itr2 = HeroicTab.begin(); itr2 != HeroicTab.end(); itr2++) {
		num_heroic_items += (itr2->second).size();
	}
	index = 0;
	//LogWrite(SPELL__INFO, 0, "AA", "HeroicTab Size...%i ", num_heroic_items);
	packet->setArrayLengthByName("num_heroic_items", num_heroic_items);
	for (itr2 = HeroicTab.begin(); itr2 != HeroicTab.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			//if (spell)
			//{
				packet->setArrayDataByName("heroic_parent_id", (*itr3)->rankPrereqID, index);
				packet->setArrayDataByName("heroic_parent_req_tier", (*itr3)->rankPrereq, index);
				packet->setArrayDataByName("heroic_spell_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("heroic_spell_name", (*itr3)->name.c_str(), index);
				packet->setArrayDataByName("heroic_spell_description", (*itr3)->description.c_str(), index);
				packet->setArrayDataByName("heroic_icon", (*itr3)->icon, index);
				packet->setArrayDataByName("heroic_icon2", (*itr3)->icon2, index);
				packet->setArrayDataByName("heroic_current_rank", 0, index); // TODO: need to get this value from the DB
				packet->setArrayDataByName("heroic_max_rank", (*itr3)->maxRank , index);
				packet->setArrayDataByName("heroic_rank_cost", (*itr3)->rankCost, index);
				packet->setArrayDataByName("heroic_classification1", (*itr3)->class_name.c_str(), index);
				packet->setArrayDataByName("heroic_points_req", (*itr3)->req_points, index);
				packet->setArrayDataByName("heroic_classification2", (*itr3)->subclass_name.c_str(), index);
				packet->setArrayDataByName("heroic_col", (*itr3)->col, index);
				packet->setArrayDataByName("heroic_row", (*itr3)->row, index);
				packet->setArrayDataByName("heroic_line_title", (*itr3)->line_title.c_str(), index);
			//}
			//else
				//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
		}
	}
	packet->setDataByName("unknown40", 16);
	packet->setDataByName("heroic_points_spent", 12);
	packet->setDataByName("unknown41", 3, 2);
	packet->setDataByName("tradeskill_tab_title", "Tradeskill");
	packet->setDataByName("unknown47", 73);
	packet->setDataByName("tradeskill_tab_id", node_id[AA_TRADESKILL]);
	packet->setDataByName("max_tradeskill_aa", rule_manager.GetGlobalRule(R_Player, MaxTradeskillAA)->GetInt32());
	packet->setDataByName("tradeskill_id", 7321);
	packet->setDataByName("exp_req", 0);
	// Get the value for num_tradeskill_items based on size of TradeskillTab map
	for (itr2 = TradeskillTab.begin(); itr2 != TradeskillTab.end(); itr2++) {
		num_tradeskill_items += (itr2->second).size();
	}
	index = 0;
	//LogWrite(SPELL__INFO, 0, "AA", "TradeskillTab Size...%i ", num_tradeskill_items);
	packet->setArrayLengthByName("num_tradeskill_items", num_tradeskill_items);
	for (itr2 = TradeskillTab.begin(); itr2 != TradeskillTab.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			//if (spell)
			//{
				packet->setArrayDataByName("tradeskill_parent_id", (*itr3)->rankPrereqID, index);
				packet->setArrayDataByName("tradeskill_parent_req_tier", (*itr3)->rankPrereq, index);
				packet->setArrayDataByName("tradeskill_spell_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("tradeskill_spell_name", (*itr3)->name.c_str(), index);
				packet->setArrayDataByName("tradeskill_spell_description", (*itr3)->description.c_str(), index);
				packet->setArrayDataByName("tradeskill_icon", (*itr3)->icon, index);
				packet->setArrayDataByName("tradeskill_icon2", (*itr3)->icon2, index);
				packet->setArrayDataByName("tradeskill_current_rank", 0, index); // TODO: need to get this value from the DB
				packet->setArrayDataByName("tradeskill_max_rank", (*itr3)->maxRank , index);
				packet->setArrayDataByName("tradeskill_rank_cost", (*itr3)->rankCost, index);
				packet->setArrayDataByName("tradeskill_classification1", (*itr3)->class_name.c_str(), index);
				packet->setArrayDataByName("tradeskill_points_req", (*itr3)->req_points, index);
				packet->setArrayDataByName("tradeskill_classification2", (*itr3)->subclass_name.c_str(), index);
				packet->setArrayDataByName("tradeskill_col", (*itr3)->col, index);
				packet->setArrayDataByName("tradeskill_row", (*itr3)->row, index);
				packet->setArrayDataByName("tradeskill_line_title", (*itr3)->line_title.c_str(), index);
			//}
			//else
				//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
		}
	}
	packet->setDataByName("tradeskill_points_spent", client->GetPlayer()->GetTradeskillAA());
	packet->setDataByName("unknown51", 3, 2);
	packet->setDataByName("unknown56", 3, 0);
	packet->setDataByName("prestige_tab_title", "Prestige");
	packet->setDataByName("unknown57", 104);
	packet->setDataByName("prestige_tab_id", node_id[AA_PRESTIGE]);
	packet->setDataByName("max_prestige_aa", rule_manager.GetGlobalRule(R_Player, MaxPrestigeAA)->GetInt32());
	packet->setDataByName("prestige_id", 7890);
	packet->setDataByName("prestige_dov_req", 0);
	// Get the value for num_prestige_items based on size of PrestigeTab map
	for (itr2 = PrestigeTab.begin(); itr2 != PrestigeTab.end(); itr2++) {
		num_prestige_items += (itr2->second).size();
	}
	index = 0;
	//LogWrite(SPELL__INFO, 0, "AA", "PrestigeTab Size...%i ", num_prestige_items);
	packet->setArrayLengthByName("num_prestige_items", num_prestige_items);
	for (itr2 = PrestigeTab.begin(); itr2 != PrestigeTab.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			//if (spell)
			//{
				packet->setArrayDataByName("prestige_parent_id", (*itr3)->rankPrereqID, index);
				packet->setArrayDataByName("prestige_parent_req_tier", (*itr3)->rankPrereq, index);
				packet->setArrayDataByName("prestige_spell_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("prestige_spell_name", (*itr3)->name.c_str(), index);
				packet->setArrayDataByName("prestige_spell_description", (*itr3)->description.c_str(), index);
				packet->setArrayDataByName("prestige_icon", (*itr3)->icon, index);
				packet->setArrayDataByName("prestige_icon2", (*itr3)->icon2, index);
				packet->setArrayDataByName("prestige_current_rank", 0, index); // TODO: need to get this value from the DB
				packet->setArrayDataByName("prestige_max_rank", (*itr3)->maxRank , index);
				packet->setArrayDataByName("prestige_rank_cost", (*itr3)->rankCost, index);
				packet->setArrayDataByName("prestige_classification1", (*itr3)->class_name.c_str(), index);
				packet->setArrayDataByName("prestige_points_req", (*itr3)->req_points, index);
				packet->setArrayDataByName("prestige_classification2", (*itr3)->subclass_name.c_str(), index);
				packet->setArrayDataByName("prestige_col", (*itr3)->col, index);
				packet->setArrayDataByName("prestige_row", (*itr3)->row, index);
				packet->setArrayDataByName("prestige_line_title", (*itr3)->line_title.c_str(), index);
			//}
			//else
				//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
		}
	}
	packet->setDataByName("unknown60", 16);
	packet->setDataByName("prestige_points_spent", client->GetPlayer()->GetPrestigeAA());
	packet->setDataByName("unknown61", 1539, 2);
	packet->setDataByName("unknown63", ":493debb3e678b977_127:Prestige");
	packet->setDataByName("unknown64", 1);
	packet->setDataByName("unknown65", ":493debb3e6a8bb79_28:Prestige Expertise");
	packet->setDataByName("unknown66", 2, 0);
	packet->setDataByName("tradeskill_prestige_tab_title", "Tradeskill Prestige");
	packet->setDataByName("unknown67", 121);
	packet->setDataByName("tradeskill_prestige_tab_id", node_id[AA_TRADESKILL_PRESTIGE]);
	packet->setDataByName("max_tradeskill_prestige_aa", rule_manager.GetGlobalRule(R_Player, MaxTradeskillPrestigeAA)->GetInt32());
	packet->setDataByName("tradeskill_prestige_id", 7352);
	packet->setDataByName("coe_req", 0);
	// Get the value for num_tradeskillprestige_items based on size of TradeskillPrestigeTab map
	for (itr2 = TradeskillPrestigeTab.begin(); itr2 != TradeskillPrestigeTab.end(); itr2++) {
		num_tradeskillprestige_items += (itr2->second).size();
	}
	index = 0;
	//LogWrite(SPELL__INFO, 0, "AA", "TradeskillPrestigeTab Size...%i ", num_tradeskillprestige_items);
	packet->setArrayLengthByName("num_tradeskill_prestige_items", num_tradeskillprestige_items);
	for (itr2 = TradeskillPrestigeTab.begin(); itr2 != TradeskillPrestigeTab.end(); itr2++) {
		for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
			//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
			//if (spell)
			//{
				packet->setArrayDataByName("tradeskill_prestige_parent_id", (*itr3)->rankPrereqID, index);
				packet->setArrayDataByName("tradeskill_prestige_parent_req_tier", (*itr3)->rankPrereq, index);
				packet->setArrayDataByName("tradeskill_prestige_spell_id", (*itr3)->spellID, index);
				packet->setArrayDataByName("tradeskill_prestige_spell_name", (*itr3)->name.c_str(), index);
				packet->setArrayDataByName("tradeskill_prestige_spell_description", (*itr3)->description.c_str(), index);
				packet->setArrayDataByName("tradeskill_prestige_icon", (*itr3)->icon, index);
				packet->setArrayDataByName("tradeskill_prestige_icon2", (*itr3)->icon2, index);
				packet->setArrayDataByName("tradeskill_prestige_current_rank", 0, index); // TODO: need to get this value from the DB
				packet->setArrayDataByName("tradeskill_prestige_max_rank", (*itr3)->maxRank , index);
				packet->setArrayDataByName("tradeskill_prestige_rank_cost", (*itr3)->rankCost, index);
				packet->setArrayDataByName("tradeskill_prestige_classification1", (*itr3)->class_name.c_str(), index);
				packet->setArrayDataByName("tradeskill_prestige_points_req", (*itr3)->req_points, index);
				packet->setArrayDataByName("tradeskill_prestige_classification2", (*itr3)->subclass_name.c_str(), index);
				packet->setArrayDataByName("tradeskill_prestige_col", (*itr3)->col, index);
				packet->setArrayDataByName("tradeskill_prestige_row", (*itr3)->row, index);
				packet->setArrayDataByName("tradeskill_prestige_line_title", (*itr3)->line_title.c_str(), index);
			//}
			//else
				//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
		}
	}
	packet->setDataByName("unknown70", 18);
	packet->setDataByName("tradeskill_prestige_points_spent", client->GetPlayer()->GetTradeskillPrestigeAA());
	packet->setDataByName("unknown71", 3, 2);
	packet->setDataByName("unknown76", 4, 0);
	packet->setDataByName("dragon_tab_title", "Dragon");
	packet->setDataByName("unknown77", 127);
	packet->setDataByName("dragon_tab_id", node_id[AA_DRAGON]);
	packet->setDataByName("max_dragon_points", rule_manager.GetGlobalRule(R_Player, MaxDragonAA)->GetInt32());
	packet->setDataByName("dradon_id", 1479577987);
	packet->setDataByName("tov_req", 0);
	//packet->setDataByName("unknown48", 19, 0);
	//packet->setDataByName("unknown48", 30, 4);
	//packet->setDataByName("unknown48", 1, 12);
	//packet->setDataByName("unknown48", 30, 31);
	//packet->setDataByName("unknown48", 1, 37);
	//packet->setDataByName("unknown48", 255, 39);
	//packet->setDataByName("unknown48", 255, 40);
	//packet->setDataByName("unknown48", 255, 41);
	packet->setDataByName("unknown48", 255, 42);
	//packet->setDataByName("unknown48", 20, 43);


	packet->setArrayLengthByName("num_templates", 7);
	packet->setArrayDataByName("template_name", "Unused Slot 1", 0);
	packet->setArrayDataByName("template_name", "Unused Slot 2", 1);
	packet->setArrayDataByName("template_name", "Unused Slot 3", 2);
	packet->setArrayDataByName("template_name", "Basic Leveling Profile - Solo", 3);
	packet->setArrayDataByName("template_name", "Basic Leveling Profile - Group", 4);
	packet->setArrayDataByName("template_name", "Basic Leveling Profile - PVP", 5);
	packet->setArrayDataByName("template_name", "New", 6);
	//packet->PrintPacket();

	EQ2Packet* data = packet->serialize();
	EQ2Packet* app = new EQ2Packet(OP_AdventureList, data->pBuffer, data->size);
	//DumpPacket(app);
	client->QueuePacket(app);
	safe_delete(packet);
	safe_delete(data);
}