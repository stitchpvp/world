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

#ifndef __Traits__
#define __Traits__

#include <vector>
#include "../../common/types.h"
#include "../../common/EQPacket.h"
#include "../client.h"

struct TraitData
{
	int32 spellID ;
	int8 level;
	int8 classReq;
	int8 raceReq;
	bool isInate;
	bool isFocusEffect;
	int8 tier;
	int8 group;
};

#define TRAITS_ATTRIBUTES	0
#define TRAITS_COMBAT		1
#define TRAITS_NONCOMBAT	2
#define TRAITS_POOLS		3
#define TRAITS_RESIST		4
#define TRAITS_TRADESKILL	5

class MasterTraitList
{
public:
	MasterTraitList();
	~MasterTraitList();

	/// <summary>Sorts the traits for the given client and creats and sends the trait packet.</summary>
	/// <param name='client'>The Client calling this function</param>
	/// <returns>EQ2Packet*</returns>
	EQ2Packet* GetTraitListPacket(Client* client);

	/// <summary>Add trait data to the global list.</summary>
	/// <param name='data'>The trait data to add.</param>
	void AddTrait(TraitData* data);

	/// <summary>Get the total number of traits in the global list.</summary>
	int Size();

	/// <summary>Get the trait data for the given spell.</summary>
	/// <param name='spellID'>Spell ID to get trait data for.</param>
	TraitData* GetTrait(int32 spellID);

	/// <summary>Empties the master trait list</summary>
	void DestroyTraits();
private:
	vector <TraitData*> TraitList;
	Mutex MMasterTraitList;
};

#endif