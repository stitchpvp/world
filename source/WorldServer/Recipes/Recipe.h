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
#ifndef RECIPE_H_
#define RECIPE_H_

#include "../../common/types.h"
#include "../../common/Mutex.h"
#include <string.h>
#include <map>

using namespace std;

struct RecipeProducts {
	int32	product_id;
	int32	byproduct_id;
	int8	product_qty;
	int8	byproduct_qty;
};

class Recipe {
public:
	Recipe();
	Recipe(Recipe *in);
	virtual ~Recipe();

	EQ2Packet *SerializeRecipe(Client *client, Recipe *recipe, bool display, int8 packet_type = 0, int8 sub_packet_type = 0, const char *struct_name = 0);
	void SetID(int32 id) {this->id = id;}
	void SetBookID(int32 book_id) {this->book_id = book_id;}
	void SetName(const char *name) {strncpy(this->name, name, sizeof(this->name));}
	void SetBookName(const char *book_name) {strncpy(this->book_name, book_name, sizeof(this->book_name));}
	void SetBook(const char *book) {strncpy(this->book, book, sizeof(this->book));}
	void SetDevice(const char *device) {strncpy(this->device, device, sizeof(this->device));}
	void SetLevel(int8 level) {this->level = level;}
	void SetTier(int8 tier) {this->tier = tier;}
	void SetIcon(int16 icon) {this->icon = icon;}
	void SetSkill(int32 skill) {this->skill = skill;}
	void SetTechnique(int32 technique) {this->technique = technique;}
	void SetKnowledge(int32 knowledge) {this->knowledge = knowledge;}
	void SetClasses(int32 classes) {this->classes = classes;}
	void SetUnknown2(int32 unknown2) {this->unknown2 = unknown2;}
	void SetUnknown3(int32 unknown3) {this->unknown3 = unknown3;}
	void SetUnknown4(int32 unknown4) {this->unknown4 = unknown4;}
	void SetProductID(int32 itemID) { product_item_id = itemID; }
	void SetProductQuantity(int8 qty) { product_qty = qty; }
	void SetProductName(const char* productName) { strncpy(product_name, productName, sizeof(product_name)); }
	void SetBuildComponentTitle(const char* title) { strncpy(build1_comp_title, title, sizeof(build1_comp_title)); }
	void SetBuild2ComponentTitle(const char* title) { strncpy(build2_comp_title, title, sizeof(build2_comp_title)); }
	void SetBuild3ComponentTitle(const char* title) { strncpy(build3_comp_title, title, sizeof(build3_comp_title)); }
	void SetBuild4ComponentTitle(const char* title) { strncpy(build4_comp_title, title, sizeof(build4_comp_title)); }
	void SetFuelComponentTitle(const char* title) { strncpy(fuel_comp_title, title, sizeof(fuel_comp_title)); }
	void SetPrimaryComponentTitle(const char* title) { strncpy(primary_build_comp_title, title, sizeof(primary_build_comp_title)); }
	void SetBuild1ComponentQuantity(int8 qty) { build_comp_qty = qty; }
	void SetBuild2ComponentQuantity(int8 qty) { build2_comp_qty = qty; }
	void SetBuild3ComponentQuantity(int8 qty) { build3_comp_qty = qty; }
	void SetBuild4ComponentQuantity(int8 qty) { build4_comp_qty = qty; }
	void SetFuelComponentQuantity(int8 qty) { fuel_comp_qty = qty; }

	int32 GetID() {return id;}
	int32 GetBookID() {return book_id;}
	const char * GetName() {return name;}
	const char * GetBookName() {return book_name;}
	const char * GetBook() {return book;}
	const char * GetDevice() {return device;}
	int8 GetLevel() {return level;}
	int8 GetTier() {return tier;}
	int16 GetIcon() {return icon;}
	int32 GetSkill() {return skill;}
	int32 GetTechnique() {return technique;}
	int32 GetKnowledge() {return knowledge;}
	int32 GetClasses() {return classes;}
	int32 GetUnknown2() {return unknown2;}
	int32 GetUnknown3() {return unknown3;}
	int32 GetUnknown4() {return unknown4;}

	int32 GetProductID() { return product_item_id; }
	const char* GetProductTitle() { return product_name; }
	int8 GetProductQuantity() { return product_qty; }
	const char* GetPrimaryBuildComponentTitle() { return primary_build_comp_title; }
	const char*	GetBuild1ComponentTitle() { return build1_comp_title; }
	const char* GetBuild2ComponentTitle() { return build2_comp_title; }
	const char* GetBuild3ComponentTitle() { return build3_comp_title; }
	const char* GetBuild4ComponentTitle() { return build4_comp_title; }
	const char* GetFuelComponentTitle() { return fuel_comp_title; }
	int8 GetBuild1ComponentQuantity() { return build_comp_qty; }
	int8 GetBuild2ComponentQuantity() { return build2_comp_qty; }
	int8 GetBuild3ComponentQuantity() { return build3_comp_qty; }
	int8 GetBuild4ComponentQuantity() { return build4_comp_qty; }
	int8 GetFuelComponentQuantity() { return fuel_comp_qty; }

	///<summary>Add a build component to this recipe</summary>
	///<param name="itemID">Item id of the component</param>
	///<param name="slot">Slot id for this component</param>
	void AddBuildComp(int32 itemID, int8 slot);

	// int8 = slot, vector = itemid
	map<int8, vector<int32> > components;

	// int8 = stage, RecipeProducts = products/byproducts for this stage
	map<int8, RecipeProducts*> products;

	int8 GetHighestStage() { return highestStage; }
	void SetHighestStage(int8 val) { highestStage = val; }

private:
	int32 id;
	int32 book_id;
	char name[256];
	char book_name[256];
	char book[256];
	char device[30];
	int8 level;
	int8 tier;
	int16 icon;
	int32 skill;
	int32 technique;
	int32 knowledge;
	int32 classes;
	int32 unknown2;
	int32 unknown3;
	int32 unknown4;

	int32	product_item_id;
	char	product_name[256];
	int8	product_qty;
	char	primary_build_comp_title[256];
	char	build1_comp_title[256];
	char	build2_comp_title[256];
	char	build3_comp_title[256];
	char	build4_comp_title[256];
	char	fuel_comp_title[256];
	int8	build_comp_qty;
	int8	build2_comp_qty;
	int8	build3_comp_qty;
	int8	build4_comp_qty;
	int8	fuel_comp_qty;
	int8	highestStage;
	
};

class MasterRecipeList {
public:
	MasterRecipeList();
	virtual ~MasterRecipeList();

	bool AddRecipe(Recipe *recipe);
	Recipe * GetRecipe(int32 recipe_id);
	void ClearRecipes();
	int32 Size();
	EQ2Packet* GetRecipePacket(int32 recipe_id, Client *client = 0, bool display = false, int8 packet_type = 0);
	
	/// <summary>Gets all the recipes for the given book name</summary>
	/// <param name="book_name">Book name to get recipes for</param>
	/// <returns>A vector of all the recipes for the given book</returns>
	vector<Recipe*>* GetRecipes(const char* book_name);
	
	/// <summary>Gets a recipe with the given name</summary>
	/// <param name='name'>The name of the recipe to get</param>
	/// <returns>Recipe* whos name matches the given name</returns>
	Recipe* GetRecipeByName(const char* name);

private:
	Mutex m_recipes;
	map<int32, Recipe *> recipes;
};

class MasterRecipeBookList {
public:
	MasterRecipeBookList();
	virtual ~MasterRecipeBookList();

	bool AddRecipeBook(Recipe *recipe);
	Recipe * GetRecipeBooks(int32 recipe_id);
	void ClearRecipeBooks();
	int32 Size();

private:
	Mutex m_recipeBooks;
	map<int32, Recipe *> recipeBooks;
};

class PlayerRecipeList {
public:
	PlayerRecipeList();
	virtual ~PlayerRecipeList();

	bool AddRecipe(Recipe *recipe);
	Recipe * GetRecipe(int32 recipe_id);
	void ClearRecipes();
	int32 Size();

	map<int32, Recipe *> * GetRecipes() {return &recipes;}

private:
	map<int32, Recipe *> recipes;
};

class PlayerRecipeBookList {
public:
	PlayerRecipeBookList();
	virtual ~PlayerRecipeBookList();

	bool AddRecipeBook(Recipe *recipe);
	bool HasRecipeBook(int32 book_id);
	Recipe * GetRecipeBook(int32 recipe_id);
	void ClearRecipeBooks();
	int32 Size();

	map<int32, Recipe *> * GetRecipeBooks() {return &recipeBooks;}

private:
	map<int32, Recipe *> recipeBooks;
};
#endif
