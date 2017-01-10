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

#ifndef __RACETYPES_H__
#define __RACETYPES_H__

#include "../../common/types.h"
#include <map>

#define DRAGONKIND			1
#define DRAGON				2
#define DRAKE				3
#define DRAKOTA				4
#define DROAG				5
#define FAEDRAKE			6
//FLYINGSNAKE  Defined in natural as well, think is a better fit there then here
#define SOKOKAR				7
#define WURM				8
#define WYRM				9
#define WYVERN				10

#define FAY					11
#define ARASAI_NPC			12
#define BIXIE				13
#define BROWNIE				14
#define DRYAD				15
#define FAE_NPC				16
#define FAIRY				17
#define SIREN				18
#define SPIRIT				19
#define SPRITE				20
#define TREANT				21
#define WISP				22

#define MAGICAL				23
#define AMORPH				24
#define CONSTRUCT			25
#define ANIMATION			26
#define BONEGOLEM			27
#define BOVOCH				28
#define CARRIONGOLEM		29
#define CLAYGOLEM			30
#define CUBE				31
#define DERVISH				32
#define DEVOURER			33
#define GARGOYLE			34
#define GOLEM				35
#define GOO					36
#define HARPY				37
#define IMP					38
#define LIVINGSTATUE		39
#define MANNEQUIN			40
#define MIMIC				41
#define MOPPET				42
#define NAGA				43
#define NAYAD				44
#define OOZE				45
#define RUMBLER				46
#define RUSTMONSTER			47
#define SATYR				48
#define SCARECROW			49
#define SPHEROID			50
#define TENTACLETERROR		51
#define TOME				52
#define UNICORN				53
#define WOODELEMENTAL		54

#define MECHANIMAGICAL		55
#define CLOCKWORK			56
#define IRONGUARDIAN		57

#define NATURAL				58
#define ANIMAL				59
#define AQUATIC				60
#define AVIAN				61
#define CANINE				62
#define EQUINE				63
#define FELINE				64
#define INSECT				65
#define PRIMATE				66
#define REPTILE				67
#define ANEMONE				68
#define APOPHELI			69
#define ARMADILLO			70
#define BADGER				71
#define BARRACUDA			72
#define BASILISK			73
#define BAT					74
#define BEAR				75
#define BEAVER				76
#define BEETLE				77
#define BOVINE				78
#define BRONTOTHERIUM		79
#define BRUTE				80
#define CAMEL				81
#define CAT					82
#define CENTIPEDE			83
#define CERBERUS			84
#define CHIMERA				85
#define CHOKIDAI			86
#define COBRA				87
#define COCKATRICE			88
#define CRAB				89
#define CROCODILE			90
#define DEER				91
#define DRAGONFLY			92
#define DUCK				93
#define EEL					94
#define ELEPHANT			95
#define FLYINGSNAKE			96
#define FROG				97
#define GOAT				98
#define GORILLA				99
#define GRIFFIN				100
#define HAWK				101
#define HIVEQUEEN			102
#define HORSE				103
#define HYENA				104
#define KHOALRAT			105
#define KYBUR				106
#define LEECH				107
#define LEOPARD				108
#define LION				109
#define LIZARD				110
#define MAMMOTH				111
#define MANTARAY			112
#define MOLERAT				113
#define MONKEY				114
#define MYTHICAL			115
#define OCTOPUS				116
#define OWLBEAR				117
#define PIG					118
#define PIRANHA				119
#define RAPTOR				120
#define RAT					121
#define RHINOCEROS			122
#define ROCKCRAWLER			123
#define SABERTOOTH			124
#define SCORPION			125
#define SEATURTLE			126
#define SHARK				127
#define SHEEP				128
#define SLUG				129
#define SNAKE				130
#define SPIDER				131
#define STIRGE				132
#define SWORDFISH			133
#define TIGER				134
#define TURTLE				135
#define VERMIN				136
#define VULRICH				137
#define WOLF				138
#define YETI				139

#define PLANAR				140
#define ABOMINATION			141
#define AIRELEMENTAL		142
#define AMYGDALAN			143
#define AVATAR				144
#define CYCLOPS				145
#define DEMON				146
#define DJINN				147
#define EARTHELEMENTAL		148
#define EFREETI				149
#define ELEMENTAL			150
#define ETHEREAL			151
#define ETHERPINE			152
#define EVILEYE				153
#define FIREELEMENTAL		154
#define GAZER				155
#define GEHEIN				156
#define GEONID				157
#define GIANT				158
#define SALAMANDER			159
#define SHADOWEDMAN			160
#define SPHINX				161
#define SPORE				162
#define SUCCUBUS			163
#define VALKYRIE			164
#define VOIDBEAST			165
#define WATERELEMENTAL		166
#define WRAITH				167

#define PLANT				168
#define CARNIVOROUSPLANT	169
#define CATOPLEBAS			170
#define MANTRAP				171
#define ROOTABOMINATION		172
#define ROOTHORROR			173
#define SUCCULENT			174

#define SENTIENT			175
#define ASHLOK				176
#define AVIAK				177
#define BARBARIAN_NPC		178
#define BIRDMAN				179
#define BOARFIEND			180
#define BUGBEAR				181
#define BURYNAI				182
#define CENTAUR				183
#define COLDAIN				184
#define DAL					185
#define DARKELF_NPC			186
#define DIZOK				187
#define DRACHNID			188
#define DRAFLING			189
#define DROLVARG			190
#define DWARF_NPC			191
#define ERUDITE_NPC			192
#define ETTIN				193
#define FREEBLOOD_NPC		194
#define FROGLOK_NPC			195
#define FROSTFELLELF		196
#define FUNGUSMAN			197
#define GNOLL				198
#define GNOME_NPC			199
#define GOBLIN				200
#define GRUENGACH			201
#define HALFELF_NPC			202		// Not on the list from wikia but all other races were here so added them
#define HALFLING_NPC		203
#define HIGHELF_NPC			204		// Not on the list from wikia but all other races were here so added them
#define HOLGRESH			205
#define HOOLUK				206
#define HUAMEIN				207
#define HUMAN_NPC			208
#define HUMANOID			209
#define IKSAR_NPC			210
#define KERIGDAL			211
#define KERRAN_NPC			212
#define KOBOLD				213
#define LIZARDMAN			214
#define MINOTAUR			215
#define OGRE_NPC			216
#define ORC					217
#define OTHMIR				218
#define RATONGA_NPC			219
#define RAVASECT			220
#define RENDADAL			221
#define ROEKILLIK			222
#define SARNAK_NPC			223
#define SKORPIKIS			224
#define SPIROC				225
#define TROGLODYTE			226
#define TROLL_NPC			227
#define ULTHORK				228
#define VULTAK				229
#define WOODELF_NPC			230
#define WRAITHGUARD			231
#define YHALEI				232

#define UNDEAD				233
#define GHOST				234
#define GHOUL				235
#define GUNTHAK				236
#define HORROR				237
#define MUMMY				238
#define SHINREEORCS			239
#define SKELETON			240
#define SPECTRE				241
#define VAMPIRE_NPC			242
#define ZOMBIE				243

#define WERE				244
#define AHROUNWEREWOLVES	245
#define LYKULAKWEREWOLVES	246
#define WEREWOLF			247
 

class MasterRaceTypeList {
public:
	MasterRaceTypeList();
	~MasterRaceTypeList();

	/// <summary>Add a race type define to the list</summary>
	/// <param name='model_id'>The id of the model</param>
	/// <param name=raceType_id'>The id of the race type</param>
	void AddRaceType(int16 model_id, int16 raceType_id);

	/// <summary>Gets the race type for the given model</summary>
	/// <param name='model_id'>The model id to get the race type for</param>
	int16 GetRaceType(int16 model_id);

	/// <summary>Gets the base race type for the given model</summary>
	/// <param name='model_id'>The model id to get the base race type for</param>
	int16 GetRaceBaseType(int16 model_id);

private:
	// model id, race type id
	map<int16, int16> m_raceList;
};

#endif