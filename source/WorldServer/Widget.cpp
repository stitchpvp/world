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

#include "Widget.h"
#include "../common/ConfigReader.h"
#include "Spells.h"
#include "World.h"
#include "../common/Log.h"
#include "ClientPacketFunctions.h"

extern World world;
extern ConfigReader configReader;
extern MasterSpellList master_spell_list;

Widget::Widget(){
	widget_id = 0;
	widget_x = 0;
	widget_y = 0;
	widget_z = 0;
	action_spawn = 0;
	action_spawn_id = 0;
	linked_spawn = 0;
	linked_spawn_id = 0;
	appearance.pos.state = 1;
	appearance.encounter_level = 0;
	spawn_type = 2;
	appearance.activity_status = 64;
	include_location = true;
	include_heading = true;
	is_open = false;
	widget_type = 0;
	open_heading = -1;
	closed_heading = -1;
	open_y = 0;
	open_x = 0;
	open_z = 0;
	close_x = 0;
	close_z = 0;
	movement_index = 0;
	movement_interrupted = false;
	resume_movement = true;
	attack_resume_needed = false;
	multi_floor_lift = false;
	MMovementLoop.SetName("Widget::MMovementLoop");
	last_movement_update = Timer::GetCurrentTime2();
}
Widget::~Widget(){

}

int32 Widget::GetWidgetID(){
	return widget_id;
}

EQ2Packet* Widget::serialize(Player* player, int16 version){
	opcode = EQOpcodeManager[GetOpcodeVersion(version)]->EmuToEQ(OP_EqCreateSignWidgetCmd);
	return spawn_serialize(player, version);
}

void Widget::SetWidgetID(int32 val){
	widget_id = val;
}

void  Widget::SetWidgetX(float val){
	widget_x = val;
}

float Widget::GetWidgetX(){
	return widget_x;
}

void  Widget::SetWidgetY(float val){
	widget_y = val;
}

float Widget::GetWidgetY(){
	return widget_y;
}

void  Widget::SetWidgetZ(float val){
	widget_z = val;
}

float Widget::GetWidgetZ(){
	return widget_z;
}

void Widget::SetWidgetIcon(int8 val){
	appearance.icon = val;
}
void Widget::SetOpenDuration(int16 val){
	open_duration = val;
}
int16 Widget::GetOpenDuration(){
	return open_duration;
}

Widget*	Widget::Copy(){
	Widget* new_spawn = new Widget();
	if(GetOpenY() > 0)
		appearance.pos.state = 0;
	if(GetSizeOffset() > 0){
		int8 offset = GetSizeOffset()+1;
		sint32 tmp_size = size + (rand()%offset - rand()%offset);
		if(tmp_size < 0)
			tmp_size = 1;
		else if(tmp_size >= 0xFFFF)
			tmp_size = 0xFFFF;
		new_spawn->size = (int16)tmp_size;
	}
	else
		new_spawn->size = size;
	new_spawn->SetMerchantID(merchant_id);
	new_spawn->SetMerchantType(merchant_type);
	new_spawn->SetPrimaryCommands(&primary_command_list);
	new_spawn->primary_command_list_id = primary_command_list_id;
	new_spawn->SetSecondaryCommands(&secondary_command_list);
	new_spawn->secondary_command_list_id = secondary_command_list_id;
	new_spawn->database_id = database_id;
	memcpy(&new_spawn->appearance, &appearance, sizeof(AppearanceData));
	new_spawn->SetWidgetID(widget_id);
	new_spawn->SetWidgetX(widget_x);
	new_spawn->SetWidgetY(widget_y);
	new_spawn->SetWidgetZ(widget_z);
	new_spawn->SetIncludeHeading(include_heading);
	new_spawn->SetIncludeLocation(include_location);
	new_spawn->SetOpenY(open_y);
	new_spawn->SetCloseY(close_y);
	new_spawn->SetOpenDuration(open_duration);
	if(GetOpenSound())
		new_spawn->SetOpenSound(GetOpenSound());
	if(GetCloseSound())
		new_spawn->SetCloseSound(GetCloseSound());
	new_spawn->SetOpenHeading(open_heading);
	new_spawn->SetClosedHeading(closed_heading);
	new_spawn->SetWidgetType(widget_type);
	new_spawn->SetActionSpawnID(action_spawn_id);
	new_spawn->SetLinkedSpawnID(linked_spawn_id);
	new_spawn->SetTransporterID(GetTransporterID());
	new_spawn->SetHouseID(GetHouseID());
	new_spawn->SetCloseX(GetCloseX());
	new_spawn->SetCloseZ(GetCloseZ());
	new_spawn->SetOpenX(GetOpenX());
	new_spawn->SetOpenZ(GetOpenZ());
	new_spawn->SetMultiFloorLift(multi_floor_lift);
	return new_spawn;
}

void Widget::SetIncludeLocation(bool val){
	include_location = val;
}
bool Widget::GetIncludeLocation(){
	return include_location;
}
void Widget::SetIncludeHeading(bool val){
	include_heading = val;
}
bool Widget::GetIncludeHeading(){
	return include_heading;
}
float Widget::GetOpenHeading(){
	return open_heading;
}
void Widget::SetOpenHeading(float val){
	open_heading = val;
}
float Widget::GetClosedHeading(){
	return closed_heading;
}
void Widget::SetClosedHeading(float val){
	closed_heading = val;
}
float Widget::GetOpenY(){
	return open_y;
}
void Widget::SetOpenY(float val){
	open_y = val;
}
float Widget::GetCloseY(){
	return close_y;
}
void Widget::SetCloseY(float val){
	close_y = val;
}
bool Widget::IsOpen(){
	return is_open;
}
int8 Widget::GetWidgetType(){
	return widget_type;
}
void Widget::SetWidgetType(int8 val){
	widget_type = val;
}
int32 Widget::GetActionSpawnID(){
	return action_spawn_id;
}
void Widget::SetActionSpawnID(int32 id){
	action_spawn_id = id;
}
int32 Widget::GetLinkedSpawnID(){
	return linked_spawn_id;
}
void Widget::SetLinkedSpawnID(int32 id){
	linked_spawn_id = id;
}
const char* Widget::GetOpenSound(){
	if(open_sound.length() > 0)
		return open_sound.c_str();
	else
		return 0;
}
void Widget::SetOpenSound(const char* name){
	open_sound = string(name);
}
const char* Widget::GetCloseSound(){
	if(close_sound.length() > 0)
		return close_sound.c_str();
	else
		return 0;
}
void Widget::SetCloseSound(const char* name){
	close_sound = string(name);
}

void Widget::HandleTimerUpdate(){
	if(GetOpenX() != 0 || GetOpenY() != 0 || GetOpenZ() != 0)
		return; //This Widget is a lift, return.
	else if (widget_type == WIDGET_TYPE_DOOR && is_open)
		HandleUse(0, "");
}

void Widget::OpenDoor(){
	if(GetOpenHeading() >= 0)
		SetHeading(GetOpenHeading());
	float openX = GetOpenX();
	float openY = GetOpenY();
	float openZ = GetOpenZ();
	if(openX != 0 || openY != 0 || openZ != 0 ){
		//This door is a lift, calculate coords and add movement location
		float x = GetX();
		float y = GetY();
		float z = GetZ();

		if(openX != 0)
			x = openX;
		if(openY != 0)
			y = openY;
		if(openZ != 0)
			z = openZ;

		AddRunningLocation(x, y, z, 4);

		float diff = GetDistance(GetX(), GetY(), GetZ(), x, y, z);
		if(diff < 0)
			diff*=-1;
		GetZone()->AddWidgetTimer(this, diff / 4);
	}
	else
		SetActivityStatus(0);
	is_open = true;
	if(open_duration > 0)
		GetZone()->AddWidgetTimer(this, open_duration);
}
void Widget::CloseDoor(){
	if(GetClosedHeading() > 0)
		SetHeading(GetClosedHeading());
	else if(GetOpenHeading() >= 0)
		SetHeading(GetSpawnOrigHeading());

	//If door is not a lift, return
	if(GetCloseX() == 0 && GetCloseY() == 0 && GetCloseZ() == 0 && GetOpenX() == 0 && GetOpenY() == 0 && GetOpenZ() == 0){
		SetActivityStatus(64);
		is_open = false;
		return;
	}

	//This door is a lift
	float x = GetSpawnOrigX();
	float y = GetSpawnOrigY();
	float z = GetSpawnOrigZ();

	if(GetCloseX() != 0)
		x = GetCloseX();
	if(GetCloseY() != 0)
		y = GetCloseY();
	if(GetCloseZ() != 0)
		z = GetCloseZ();
	
	AddRunningLocation(x, y, z, 4);

	float diff = GetDistance(GetX(), GetY(), GetZ(), x, y, z);

	if(diff < 0)
		diff*=-1;
	GetZone()->AddWidgetTimer(this, diff / 4);

	is_open = false;
}

void Widget::ProcessUse(){
	if((GetOpenY() != 0 || GetOpenX() != 0 || GetOpenZ() != 0) && GetZone()->HasWidgetTimer(this)) //this door is a lift and in use, wait until it gets to the 
		return;
	if(is_open) //close
		CloseDoor();
	else //open
		OpenDoor();
	if(is_open){
		if(GetOpenSound())
			GetZone()->PlaySoundFile(0, GetOpenSound(), widget_x, widget_y, widget_z);
	}
	else	
		if(GetCloseSound())
			GetZone()->PlaySoundFile(0, GetCloseSound(), widget_x, widget_y, widget_z);
}

void Widget::HandleUse(Client* client, string command){
	vector<TransportDestination*>* destinations = 0;
	//The following check disables the use of doors and other widgets if the player does not meet the quest requirements
	//If this is from a script ignore this check (client will be null)
	if (client) {
		bool meets_quest_reqs = MeetsSpawnAccessRequirements(client->GetPlayer());
		if (!meets_quest_reqs && (GetQuestsRequiredOverride() & 2) == 0)
			return;
		else if (meets_quest_reqs && appearance.show_command_icon != 1)
			return;
	}

	if (client && GetTransporterID() > 0)
		destinations = GetZone()->GetTransporters(GetTransporterID());
	if (destinations)
		client->ProcessTeleport(this, destinations, GetTransporterID());
	else if (widget_type == WIDGET_TYPE_DOOR){
		Widget* widget = this;
		if (!action_spawn && action_spawn_id > 0){
			Spawn* spawn = GetZone()->GetSpawnByDatabaseID(action_spawn_id);
			if (spawn && spawn->IsWidget())
				action_spawn = (Widget*)spawn;
		}
		if (!linked_spawn && linked_spawn_id > 0){
			Spawn* spawn = GetZone()->GetSpawnByDatabaseID(linked_spawn_id);
			if (spawn && spawn->IsWidget())
				linked_spawn = (Widget*)spawn;
		}
		if (linked_spawn){
			widget = linked_spawn;
			ProcessUse(); //fire the first door, then fire the linked door below
		}
		else if (action_spawn) {
			widget = action_spawn;
			if (!widget->linked_spawn && widget->linked_spawn_id > 0) {
				Spawn* spawn = GetZone()->GetSpawnByDatabaseID(widget->linked_spawn_id);
				if (spawn && spawn->IsWidget())
					widget->linked_spawn = (Widget*)spawn;
			}

			if (widget->linked_spawn)
				widget->linked_spawn->ProcessUse();
		}
		widget->ProcessUse();
	}
	else if (client && m_houseID > 0 && strncasecmp("access", command.c_str(), 6) == 0) {
		// Used a door to enter a house
		HouseZone* hz = world.GetHouseZone(m_houseID);
		int32 id = client->GetPlayer()->GetIDWithPlayerSpawn(this);
		PlayerHouse* ph = 0;
		if (hz)
			ph = world.GetPlayerHouseByHouseID(client->GetPlayer()->GetCharacterID(), hz->id);
		if (ph) {
			ClientPacketFunctions::SendBaseHouseWindow(client, hz, ph, id);
		}
		else {
			if (hz)
				ClientPacketFunctions::SendHousePurchace(client, hz, id);
		}
	}
	else if (client && strncasecmp("access", command.c_str(), 6) == 0 && GetZone()->GetInstanceType() > 0) {
		// Used a door within a house
		PlayerHouse* ph = world.GetPlayerHouseByInstanceID(GetZone()->GetInstanceID());
		if (ph) {
			HouseZone* hz = world.GetHouseZone(ph->house_id);
			if (hz) {
				int32 id = client->GetPlayer()->GetIDWithPlayerSpawn(this);
				ClientPacketFunctions::SendBaseHouseWindow(client, hz, ph, id);
			}
		}
	}
	else if (client && m_houseID > 0 && strncasecmp("visit", command.c_str(), 6) == 0) {
		ClientPacketFunctions::SendHouseVisitWindow(client, world.GetAllPlayerHousesByHouseID(m_houseID));
	}
	else if (client && command.length() > 0) {
		EntityCommand* entity_command = FindEntityCommand(command);
		if (entity_command)
			client->GetCurrentZone()->ProcessEntityCommand(entity_command, client->GetPlayer(), client->GetPlayer()->GetTarget());
	}
}