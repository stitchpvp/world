################################
# EQ2Emulator PacketParser.exe #
################################

Contents
--------

1. Legal and Disclaimers
2. What is PacketParser.exe?
3. Before you begin
4. Parsing your logs
5. Populating your EQ2Emulator database
6. Conclusion



1. Legal and Disclaimers
=======================================
There is nothing "Legal" or "Illegal" about using this tool as it is licensed under GPL, so
don't hack it, reverse-engineer it, and re-release it calling it your own great tool. The 
only thing I want to really emphasize here is, if you use this tool to parse logs and populate
your database, YOU ARE 100% RESPONSIBLE FOR THE OUTCOME.

In no way, shape, or form is EQ2Emulator.net, developers, or database designers responsible
for you losing data, or encountering an inability to parse and populate properly. This tool,
like every other aspect of EQ2Emulator, is in a constant state of change and update, and at 
times will cease to function. However, it is not a high priority for the EQ2Emulator team to
get it working again. 

In other words, be patient, report problems in a mature, friendly, 
respectful manner, and the problems will be resolved and a new parser package released.



2. What is PacketParser.exe?
=======================================
PacketParser.exe is the small utility that analyzes your collected packets from EQ2 Live game 
and turns them into "raw" data for use in building your world. This tool is only needed if you 
choose to build worlds based on the EQ2 Live experience. You can use this tool to parse Spawns, 
Items, Merchant lists, Factions, Spell and Collection data, and Quest/Conversation from the live 
game, with additional support added during the EQ2Emulator Alpha development cycle.

In order to use PacketParser.exe, you of course need to have collected a log from the live game.
You can collect the game data yourself using EQ2PacketCollector.exe - a separate tool (and thus 
documented separately). EQ2PacketCollector.exe is no longer available freely to the public, but 
you may PM John Adams or LethalEncounter on the EQ2Emulator.net forums to receive a copy of the
program.



3. Before You Begin
=======================================
Before you can parse a packet collect, you should have a local instance of MySQL 5.x installed.
You can have MySQL on your Windows XP workstation, or somewhere on your network - it does not have
to be on the same machine... but your database should not be located via a WAN or over the internet.
It would be far too slow!

Create a folder, example C:\eq2parser, and put the following files into that folder:

Required:
- PacketParser.exe
- zlib.dll (downloadable package - search for it on the internet)
- WorldStructs.xml
- SpawnStructs.xml
- ItemStructs.xml
- parser_db.ini
- Parser DB.sql (not needed except to source in raw DB structures)

Optional (if you wanted to script some mysql actions)
- parse-all.bat
- mysql.exe
- mysqldump.exe


MySQL Database setup:
Assuming you use SQLYog or some other MySQL GUI Tools (google them, they are your friend), you must
connect to your MySQL instance and create a blank database. Refer to MySQL documentation on creating
a database. Example database name for the parser: eq2_rawdata.

"Source" in the included Parser_DB.sql file - by this we mean open this Query and execute it so it
will build the database structure required by PacketParser.exe - without this, you are going nowhere.
If you encounter errors, you need to explore how to get around them as this is not a lesson in becoming
a Database Administrator. :)

Once your database is created and you see tables like "raw_spawns", "raw_items", "raw_spells" etc, you 
are almost ready to go. 

NOTE: Since PacketParser.exe is now a "controlled release", updates to both the EXE and Parser DB.sql 
will usually be posted in In-House Tools, under PacketParser.

parser_db.ini:
Edit parser_db.ini to reflect your database settings. Here is an example:

[Database]
host=localhost
user=root
password=sekr3t
database=eq2_rawdata

host: the IP or FQDN (fully qualified domain name) of your MySQL server. If it is on the same machine,
use "localhost"

user/password: This is a MySQL account that has SELECT, INSERT, UPDATE, and DELETE rights to your 
eq2_rawdata database.

database: The name of your raw database - in my example, eq2_rawdata.



4. Parsing Your Logs
=======================================
Included in your PacketParser package is a sample BATCH file that is designed to identify *.log files
in the current directory and execute the PacketParser.exe (with parameters) on each file individually.
Once the parser is done with the file, it will move it off to a "Done" folder. This is to prevent the
same log from being re-parsed should you have to stop and restart the job.

Move your log(s) into your C:\eq2parser directory with your other parser files, and simply run the 
included "parse-all.bat" file. This batch files is executing the following command:

- PacketParser.exe -spawns -items -spells -quests -factions -collections {log_file}

You can run the command-line version of the PacketParser.exe yourself - you do not need to use the
batch file. Run PacketParser.exe and hit ENTER to see a list of command-line options.

Example, if you just want to parse Spell information from your logs, run:

- PacketParser.exe -spells {log_file}

* Replace {log_file} with the name of your collected log (ie., EQ2PacketLog.log)


You can stack the command-line options as many or as few as you like. There has to be at least one,
and for PARSING logs, -populate is not valid (see next chapter).

NOTE: The parse-all.bat file is setup to output parser data to a parser_log.txt file. This is the 
troubleshooting information we would need to see if you are having problems. Simply post your problem
and attach that text file. If it is larger than 10kb, you probably should ZIP/RAR it first.



5. Populating your EQ2Emulator Database
=======================================
During the 0.7.0 development cycle of EQ2Emulator, some critical changes have been made to the database
structures regarding Items, Spawns, Spells and Quests. Take note of these as you continue populating 
your worlds using our tools. Recently, major changes to the Spawns structure broke the -populate
functionality, but a new parser was released to resolve this issue.

To populate your EQ2Emulator World database, simply run the following command:

PacketParser.exe -populate {eq2world_db} 

* Replace {eq2world_db} with the name of your database that EQ2World.exe uses

The -populate command will move all raw Spawn data from parser DB to World DB for use in your world.

There are a few other commands currently available:
	-loaditems 	- this will populate the Items tables in your World DB from Raw data
	-loadfactions 	- this will populate the Factions tables in your World DB from Raw data



6. Conclusion
=======================================
There is literally tons of RAW data coming from packet logs, some we do not even utilize yet in the -populate
commands of Parser. Examples of some of this data is:

  raw_dialogs		: These are the conversations you have with NPCs in game, with the clickable option buttons
  raw_conversations	: These are the casual shouts NPCs give as you pass by or Hail them - no interaction
  raw_map_data		: You should update your map_data table in your World DB with newly parsed raw_map_data as needed
  raw_merchant_items	: As you parse Items, if they came from a merchant window, this table shows you what spawn_id had what item_id
  raw_quests		: This data is what we use to build LUA scripts for quests - currently no automation available
  raw_sounds		: These are your door squeaks and other sound effects in game, mapped to their raw_spawn ID
  raw_spells		: This data is used to build our Spells lists, or update existing information with new captured data
  raw_zone_points	: This is an attempt for the collector/parser to locate any known zone-in-points when you zone while collecting (not always accurate)

There is so much more we can gleen from our logs we hvae yet to discover. If you feel like helping identify
some of this data, feel free to join in on the conversations in Development and offer your help.


Happy World Building!


-John Adams
