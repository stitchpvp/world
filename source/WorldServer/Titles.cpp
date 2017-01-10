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
#include <string.h>
#include "Titles.h"
#include "../common/MiscFunctions.h"

Title::Title(){
	id = 0;
	memset(name, 0, sizeof(name));
	prefix = 0;
	save_needed = false;
}

Title::Title(Title* title){
	id = title->id;
	strncpy(name, title->GetName(), sizeof(name));
	prefix = title->prefix;
	save_needed = title->save_needed;
}

Title::~Title(){
}

MasterTitlesList::MasterTitlesList(){
}

MasterTitlesList::~MasterTitlesList(){
	Clear();
}

void MasterTitlesList::Clear(){
	map<int32, Title*>::iterator itr;
	for(itr = titles_list.begin(); itr != titles_list.end(); itr++)
		safe_delete(itr->second);
	titles_list.clear();
}

void MasterTitlesList::AddTitle(Title* title){
	assert(title);
	if(titles_list.count(title->GetID()) == 0)
		titles_list[title->GetID()] = title;
}

int32 MasterTitlesList::Size(){
	return titles_list.size();
}

Title* MasterTitlesList::GetTitle(int32 id){
	if(titles_list.count(id) > 0)
		return titles_list[id];
	else
		return 0;
}

Title* MasterTitlesList::GetTitleByName(const char* title_name){
	Title* title = 0;
	map<int32, Title*>::iterator itr;
	for(itr = titles_list.begin(); itr != titles_list.end(); itr++){
		Title* current_title = itr->second;
		if(::ToLower(string(current_title->GetName())) == ::ToLower(string(title_name))){
			title = current_title;
			break;
		}
	}
	return title;
}

map<int32, Title*>* MasterTitlesList::GetAllTitles(){
	return &titles_list;
}

PlayerTitlesList::PlayerTitlesList(){
}

PlayerTitlesList::~PlayerTitlesList(){
	list<Title*>::iterator itr;
	for (itr = player_titles_list.begin(); itr != player_titles_list.end(); itr++)
		safe_delete(*itr);
}

Title* PlayerTitlesList::GetTitle(int32 index){
	list<Title*>::iterator itr;
	Title* title = 0;
	Title* ret = 0;
	for(itr = player_titles_list.begin(); itr != player_titles_list.end(); itr++){
		title = *itr;
		if(title->GetID() == index){
			ret = title;
			break;
		}
	}
	return ret;
}

list<Title*>* PlayerTitlesList::GetAllTitles(){
	return &player_titles_list;
}

void PlayerTitlesList::Add(Title* title){
	player_titles_list.push_back(title);
}