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
#include <assert.h>
#include "../../common/debug.h"
#include "../../common/Log.h"
#include "../../common/database.h"
#include "Recipe.h"
#include "../../common/ConfigReader.h"
#include "../Items/Items.h"

extern ConfigReader configReader;
extern MasterItemList master_item_list;

Recipe::Recipe() {
	id = 0;
	book_id = 0;
	memset(name, 0, sizeof(name));
	memset(book_name, 0, sizeof(book_name));
	memset(book, 0, sizeof(book));
	memset(device, 0, sizeof(device));
	level = 0;
	tier = 0;
	icon = 0;
	skill = 0;
	technique = 0;
	knowledge = 0;
	classes = 0;
	unknown2 = 0;
	unknown3 = 0;
	unknown4 = 0;
}

Recipe::~Recipe() {
	map<int8, RecipeProducts*>::iterator itr;
	for (itr = products.begin(); itr != products.end(); itr++)
		safe_delete(itr->second);
}

Recipe::Recipe(Recipe *in){
	assert(in);
	id = in->GetID();
	book_id = in->GetBookID();
	strncpy(name, in->GetName(), sizeof(name));
	strncpy(book_name, in->GetBookName(), sizeof(book_name));
	strncpy(book, in->GetBook(), sizeof(book));
	strncpy(device, in->GetDevice(), sizeof(device));
	level = in->GetLevel();
	tier = in->GetTier();
	icon = in->GetIcon();
	skill = in->GetSkill();
	technique = in->GetTechnique();
	knowledge = in->GetKnowledge();
	classes = in->GetClasses();
	unknown2 = in->GetUnknown2();
	unknown3 = in->GetUnknown3();
	unknown4 = in->GetUnknown4();
}

MasterRecipeList::MasterRecipeList() {
	m_recipes.SetName("MasterRecipeList::recipes");
}

MasterRecipeList::~MasterRecipeList() {
	ClearRecipes();
}

bool MasterRecipeList::AddRecipe(Recipe *recipe) {
	bool ret = false;
	int32 id;

	assert(recipe);

	id = recipe->GetID();
	m_recipes.writelock(__FUNCTION__, __LINE__);
	if (recipes.count(id) == 0) {
		recipes[id] = recipe;
		ret = true;
	}
	m_recipes.releasewritelock(__FUNCTION__, __LINE__);

	return ret;
}

Recipe * MasterRecipeList::GetRecipe(int32 recipe_id) {
	Recipe *ret = 0;

	m_recipes.readlock(__FUNCTION__, __LINE__);
	if (recipes.count(recipe_id) > 0)
		ret = recipes[recipe_id];
	m_recipes.releasereadlock(__FUNCTION__, __LINE__);

	return ret;
}

Recipe* MasterRecipeList::GetRecipeByName(const char* name) {
	Recipe* ret = 0;
	map<int32, Recipe*>::iterator itr;

	m_recipes.readlock(__FUNCTION__, __LINE__);
	for (itr = recipes.begin(); itr != recipes.end(); itr++) {
		if (::ToLower(string(name)) == ::ToLower(string(itr->second->GetName()))) {
			ret = itr->second;
			break;
		}
	}
	m_recipes.releasereadlock(__FUNCTION__, __LINE__);

	return ret;
}

void MasterRecipeList::ClearRecipes() {
	map<int32, Recipe *>::iterator itr;

	m_recipes.writelock(__FUNCTION__, __LINE__);
	for (itr = recipes.begin(); itr != recipes.end(); itr++)
		safe_delete(itr->second);
	recipes.clear();
	m_recipes.releasewritelock(__FUNCTION__, __LINE__);
}

int32 MasterRecipeList::Size() {
	int32 ret;

	m_recipes.readlock(__FUNCTION__, __LINE__);
	ret = (int32)recipes.size();
	m_recipes.releasereadlock(__FUNCTION__, __LINE__);

	return ret;
}

vector<Recipe*>* MasterRecipeList::GetRecipes(const char* book_name) {
	vector<Recipe*>* ret = new vector<Recipe*>;
	map<int32, Recipe *>::iterator itr;

	m_recipes.writelock(__FUNCTION__, __LINE__);
	for (itr = recipes.begin(); itr != recipes.end(); itr++) {
		if (::ToLower(string(book_name)) == ::ToLower(string(itr->second->GetBook())))
			ret->push_back(itr->second);
	}
	m_recipes.releasewritelock(__FUNCTION__, __LINE__);

	return ret;
}

PlayerRecipeList::PlayerRecipeList(){
}

PlayerRecipeList::~PlayerRecipeList(){
	ClearRecipes();
}

bool PlayerRecipeList::AddRecipe(Recipe *recipe){
	assert(recipe);

	if(recipes.count(recipe->GetID()) == 0){
		recipes[recipe->GetID()] = recipe;
		return true;
	}
	return false;
}

Recipe * PlayerRecipeList::GetRecipe(int32 recipe_id){
	if (recipes.count(recipe_id) > 0)
		return recipes[recipe_id];
	return 0;
}

void PlayerRecipeList::ClearRecipes(){
	map<int32, Recipe *>::iterator itr;

	for (itr = recipes.begin(); itr != recipes.end(); itr++)
		safe_delete(itr->second);
	recipes.clear();
}

MasterRecipeBookList::MasterRecipeBookList(){
	m_recipeBooks.SetName("MasterRecipeBookList::recipeBooks");
}

MasterRecipeBookList::~MasterRecipeBookList(){
	ClearRecipeBooks();
}

bool MasterRecipeBookList::AddRecipeBook(Recipe *recipe){
	bool ret = false;
	int32 id = 0;

	assert(recipe);

	id = recipe->GetBookID();
	m_recipeBooks.writelock(__FUNCTION__, __LINE__);
	if(recipeBooks.count(id) == 0){
		recipeBooks[id] = recipe;
		ret = true;
	}
	m_recipeBooks.releasewritelock(__FUNCTION__, __LINE__);
	return ret;
}

Recipe * MasterRecipeBookList::GetRecipeBooks(int32 recipebook_id){
	Recipe *ret = 0;

	m_recipeBooks.readlock(__FUNCTION__, __LINE__);
	if (recipeBooks.count(recipebook_id) > 0)
		ret = recipeBooks[recipebook_id];
	m_recipeBooks.releasereadlock(__FUNCTION__, __LINE__);

	return ret;
}

void MasterRecipeBookList::ClearRecipeBooks(){
	map<int32, Recipe *>::iterator itr;

	m_recipeBooks.writelock(__FUNCTION__, __LINE__);
	for (itr = recipeBooks.begin(); itr != recipeBooks.end(); itr++)
		safe_delete(itr->second);
	recipeBooks.clear();
	m_recipeBooks.releasewritelock(__FUNCTION__, __LINE__);
}

int32 MasterRecipeBookList::Size(){
	int32 ret = 0;

	m_recipeBooks.readlock(__FUNCTION__, __LINE__);
	ret = (int32)recipeBooks.size();
	m_recipeBooks.releasereadlock(__FUNCTION__, __LINE__);

	return ret;
}

EQ2Packet* MasterRecipeList::GetRecipePacket(int32 recipe_id, Client* client, bool display, int8 packet_type){
	Recipe *recipe = GetRecipe(recipe_id);
	if(recipe){
		LogWrite(TRADESKILL__DEBUG, 5, "Recipes", "Recipe ID: %u Recipe Name: %s", recipe->GetID(), recipe->GetName());
		return recipe->SerializeRecipe(client, recipe, display, packet_type);
	}
	return 0;
}

PlayerRecipeBookList::PlayerRecipeBookList(){
}

PlayerRecipeBookList::~PlayerRecipeBookList(){
	ClearRecipeBooks();
}

bool PlayerRecipeBookList::AddRecipeBook(Recipe *recipe){
	assert(recipe);

	if(recipeBooks.count(recipe->GetBookID()) == 0){
		recipeBooks[recipe->GetBookID()] = recipe;
		return true;
	}
	return false;
}

Recipe * PlayerRecipeBookList::GetRecipeBook(int32 recipebook_id){
	if(recipeBooks.count(recipebook_id) > 0)
		return recipeBooks[recipebook_id];
	return 0;
}

bool PlayerRecipeBookList::HasRecipeBook(int32 book_id) {
	if (recipeBooks.count(book_id) > 0)
		return true;
	return false;
}

void PlayerRecipeBookList::ClearRecipeBooks(){
	map<int32, Recipe*>::iterator itr;

	for(itr = recipeBooks.begin(); itr != recipeBooks.end(); itr++)
		safe_delete(itr->second);
	recipeBooks.clear();
}

EQ2Packet * Recipe::SerializeRecipe(Client *client, Recipe *recipe, bool display, int8 packet_type, int8 subpacket_type, const char *struct_name){
	int16 version = 1;
	if(client)
		version = client->GetVersion();
	if(!struct_name)
		struct_name = "WS_ExamineRecipeInfo";
	PacketStruct *packet = configReader.getStruct(struct_name, version);
	if(display)
		packet->setSubstructDataByName("info_header", "show_name", 1);
	else
		packet->setSubstructDataByName("info_header", "show_popup", 1);
	if(packet_type > 0)
		packet->setSubstructDataByName("info_header", "packettype", packet_type*256 + 0xFE);
	else
		if(version == 1096)
			packet->setSubstructDataByName("info_header", "packettype",0x35FE);
		if(version >= 57048)
			packet->setSubstructDataByName("info_header", "packettype",0x48FE);
	if(subpacket_type == 0)
		subpacket_type = 0x02;
	packet->setSubstructDataByName("info_header", "packetsubtype", subpacket_type);

	packet->setSubstructDataByName("recipe_info", "id", recipe->GetID());
	packet->setSubstructDataByName("recipe_info", "unknown", 3);
	packet->setSubstructDataByName("recipe_info", "level", recipe->GetLevel());
	packet->setSubstructDataByName("recipe_info", "technique", recipe->GetTechnique());
	packet->setSubstructDataByName("recipe_info", "skill_level", 50);
	packet->setSubstructDataByName("recipe_info", "knowledge", recipe->GetKnowledge());
	packet->setSubstructDataByName("recipe_info", "device", recipe->GetDevice());
	packet->setSubstructDataByName("recipe_info", "icon", recipe->GetIcon());
	packet->setSubstructDataByName("recipe_info", "unknown3", 1);
	packet->setSubstructDataByName("recipe_info", "adventure_id", 0xFF);
	packet->setSubstructDataByName("recipe_info", "tradeskill_id", client ? client->GetPlayer()->GetTradeskillClass() : 0);
	packet->setSubstructDataByName("recipe_info", "unknown4", 100);
	packet->setSubstructDataByName("recipe_info", "unknown4aa", 1);
	packet->setSubstructDataByName("recipe_info", "unknown5a", 20);
	packet->setSubstructDataByName("recipe_info", "product_classes", recipe->GetClasses());
	packet->setSubstructDataByName("recipe_info", "show_previous", 15);
	packet->setSubstructDataByName("recipe_info", "previous1_icon", 186);
	packet->setSubstructDataByName("recipe_info", "previous1_name", "Basic Coal");
	packet->setSubstructDataByName("recipe_info", "previous1_qty", 1);
	packet->setSubstructDataByName("recipe_info", "previous1_item_id", 4142);
	packet->setSubstructDataByName("recipe_info", "previous1_item_crc", -853046774);
	packet->setSubstructDataByName("recipe_info", "previous2_icon", 186);
	packet->setSubstructDataByName("recipe_info", "previous2_name", "Basic Coal");
	packet->setSubstructDataByName("recipe_info", "previous2_qty", 1);
	packet->setSubstructDataByName("recipe_info", "previous2_item_id", 4142);
	packet->setSubstructDataByName("recipe_info", "previous2_item_crc", -853046774);
	packet->setSubstructDataByName("recipe_info", "previous3_icon", 186);
	packet->setSubstructDataByName("recipe_info", "previous3_name", "Basic Coal");
	packet->setSubstructDataByName("recipe_info", "previous3_qty", 1);
	packet->setSubstructDataByName("recipe_info", "previous3_item_id", 4142);
	packet->setSubstructDataByName("recipe_info", "previous3_item_crc", -853046774);
	packet->setSubstructDataByName("recipe_info", "firstbar_icon", 186);
	packet->setSubstructDataByName("recipe_info", "firstbar_name", "Basic Coal");
	packet->setSubstructDataByName("recipe_info", "firstbar_qty", 1);
	packet->setSubstructDataByName("recipe_info", "firstbar_item_id", 4142);
	packet->setSubstructDataByName("recipe_info", "firstbar_item_crc", -853046774);
	packet->setSubstructDataByName("recipe_info", "secondbar_icon", 186);
	packet->setSubstructDataByName("recipe_info", "secondbar_name", "Basic Coal");
	packet->setSubstructDataByName("recipe_info", "secondbar_qty", 1);
	packet->setSubstructDataByName("recipe_info", "secondbar_item_id", 4142);
	packet->setSubstructDataByName("recipe_info", "secondbar_item_crc", -853046774);
	packet->setSubstructDataByName("recipe_info", "thirdbar_icon", 198);
	packet->setSubstructDataByName("recipe_info", "thirdbar_name", "severed elm");
	packet->setSubstructDataByName("recipe_info", "thirdbar_qty", 1);
	packet->setSubstructDataByName("recipe_info", "thirdbar_item_id", 12098);
	packet->setSubstructDataByName("recipe_info", "thirdbar_item_crc", -2065846136);
	//item = master_item_list.GetItemByName(recipe->GetName());
	//if(item) {
		packet->setSubstructDataByName("recipe_info", "product_icon", 189); //item->details.icon);
		packet->setSubstructDataByName("recipe_info", "product_name", "pristine simple candelabra"); //item->name);
		packet->setSubstructDataByName("recipe_info", "product_qty", 1);
		packet->setSubstructDataByName("recipe_info", "product_item_id", 64876); //item->details.item_id);
		packet->setSubstructDataByName("recipe_info", "product_item_crc", -601021372); //item->details.item_crc);
	//}
	packet->setSubstructDataByName("recipe_info", "byproduct_icon", 11);
	packet->setSubstructDataByName("recipe_info", "byproduct_id", 0xFFFFFFFF);
	packet->setSubstructDataByName("recipe_info", "primary_comp", "Raw Tin");
	packet->setSubstructDataByName("recipe_info", "primary_qty_avail", 132);
	packet->setSubstructArrayLengthByName("recipe_info", "num_comps", 3);
	packet->setArrayDataByName("build_comp", "Raw Elm", 0);
	packet->setArrayDataByName("build_comp_qty", 1, 0);
	packet->setArrayDataByName("build_comp_qty_avail", 24, 0);
	packet->setArrayDataByName("build_comp", "Raw Root", 1);
	packet->setArrayDataByName("build_comp_qty", 1, 1);
	packet->setArrayDataByName("build_comp_qty_avail", 16, 1);
	packet->setArrayDataByName("build_comp", "Raw Tin", 2);
	packet->setArrayDataByName("build_comp_qty", 1, 2);
	packet->setArrayDataByName("build_comp_qty_avail", 15, 2);
	packet->setSubstructDataByName("recipe_info", "fuel_comp", "Basic Coal");
	packet->setSubstructDataByName("recipe_info", "fuel_comp_qty", 1);
	packet->setSubstructDataByName("recipe_info", "fuel_comp_qty_avail", 10);
	packet->setSubstructDataByName("recipe_info", "build_comp_qty_avail_flag", 1);
	packet->setSubstructDataByName("recipe_info", "unknown6", 4, 0);
	packet->setSubstructDataByName("recipe_info", "min_product", 1);
	packet->setSubstructDataByName("recipe_info", "max_product", 1);
	packet->setSubstructDataByName("recipe_info", "available_flag", 4);
	packet->setSubstructDataByName("recipe_info", "not_commissionable", 1);
	packet->setSubstructDataByName("recipe_info", "recipe_name", recipe->GetName());
	packet->setSubstructDataByName("recipe_info", "recipe_description", "The art of sculpting metal into a candelabra.");
	//packet->PrintPacket();
	EQ2Packet* data = packet->serialize();
	EQ2Packet* app = new EQ2Packet(OP_ClientCmdMsg, data->pBuffer, data->size);
	safe_delete(packet);
	safe_delete(data);
	//DumpPacket(app);
	return app;
}

void Recipe::AddBuildComp(int32 itemID, int8 slot) {
	components[slot].push_back(itemID);
}
