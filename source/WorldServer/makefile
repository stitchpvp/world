APP=eq2world
SF= ../common/Condition.o \
../common/ConfigReader.o \
../common/CRC16.o \
../common/Crypto.o \
../common/DatabaseNew.o \
../common/DatabaseResult.o \
../common/dbcore.o \
../common/emu_opcodes.o \
../common/EQEMuError.o \
../common/Log.o \
../common/md5.o \
../common/misc.o \
../common/MiscFunctions.o \
../common/Mutex.o \
../common/opcodemgr.o \
../common/packet_dump.o \
../common/packet_functions.o \
../common/PacketStruct.o \
../common/RC4.o \
../common/TCPConnection.o \
../common/timer.o \
../common/unix.o \
../common/xmlParser.o \
.obj/debug.o \
.obj/database.o \
.obj/EQStream.o \
.obj/EQStreamFactory.o \
.obj/EQPacket.o \
Achievements/Achievements.o \
Achievements/AchievementsDB.o \
AltAdvancement/AltAdvancement.o \
AltAdvancement/AltAdvancementDB.o \
Chat/Chat.o \
Chat/ChatDB.o \
Chat/ChatChannel.o \
classes.o \
client.o \
ClientPacketFunctions.o \
Collections/Collections.o \
Collections/CollectionsDB.o \
Combat.o \
Commands/Commands.o \
Commands/CommandsDB.o \
Commands/ConsoleCommands.o \
Entity.o \
Factions.o \
GroundSpawn.o \
Guilds/Guild.o \
Guilds/GuildDB.o \
HeroicOp/HeroicOp.o \
HeroicOp/HeroicOpDB.o \
HeroicOp/HeroicOpPackets.o \
Housing/HousingDB.o \
Housing/HousingPackets.o \
IRC/IRC.o \
IRC/IRCChannel.o \
IRC/IRCMessage.o \
IRC/IRCServer.o \
Items/Items.o \
Items/ItemsDB.o \
Items/Loot.o \
Items/LootDB.o \
Languages.o \
LoginServer.o \
LuaFunctions.o \
LuaInterface.o \
net.o \
NPC.o \
NPC_AI.o \
Object.o \
Player.o \
PlayerGroups.o \
Quests.o \
races.o \
RaceTypes/RaceTypes.o \
RaceTypes/RaceTypesDB.o \
Recipes/Recipe.o \
Recipes/RecipeDB.o \
Rules/Rules.o \
Rules/RulesDB.o \
Sign.o \
Skills.o \
Spawn.o \
Spells.o \
SpellProcess.o \
Titles.o \
Tradeskills/Tradeskills.o \
Tradeskills/TradeskillsDB.o \
Tradeskills/TradeskillsPackets.o \
Traits/Traits.o \
Widget.o \
World.o \
WorldDatabase.o \
zoneserver.o


CC=g++
LINKER=gcc
DFLAGS=-DEQ2 -DWORLD -DDEBUG -DNO_PIDLOG
WFLAGS=-w -Wfatal-errors
COPTS=$(WFLAGS) -g -O -pthread -pipe -DFX -D_GNU_SOURCE -DINVERSEXY $(DFLAGS) -I/usr/include/mysql -I/usr/mysql/include -I./LUA/include
LINKOPTS=-rdynamic -L. -lstdc++ -lm -lz -L/usr/lib/mysql -L/usr/mysql/lib -lmysqlclient -llua5.1 -ldl
all: $(APP)

$(APP): $(SF)
	$(LINKER) $(COPTS) $(OBJS) $^ $(LINKOPTS) -o $@

clean:
	rm -f $(SF) $(APP)

%.o: %.cpp
	$(CC) -c $(COPTS) $< -o $@

.obj/%.o: ../common/%.cpp ../common/%.h
	mkdir -p .obj
	$(CC) $(COPTS) -c $< -o $@

