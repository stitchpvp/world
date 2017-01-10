drop table if exists raw_dialogs;
CREATE TABLE `raw_dialogs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `spawn_id` int(10) unsigned NOT NULL default '0',
  `conversation_id` int(10) unsigned NOT NULL default '0',
  `npc_text` text NOT NULL,
  `voice_file` varchar(255) NOT NULL,
  `key1` int(10) unsigned NOT NULL default '0',
  `key2` int(10) unsigned NOT NULL default '0',
  `unknown` smallint(5) unsigned NOT NULL default '0',
  `unknown2` tinyint(3) unsigned NOT NULL default '0',
  `unknown3` tinyint(3) unsigned NOT NULL default '0',
  `sequence` smallint(5) unsigned NOT NULL default '0',
  `index` smallint(5) NOT NULL default '0',
  `language_type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `NewIndex` (`conversation_id`,`spawn_id`,`sequence`,`index`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

drop table if exists raw_dialog_choices;
CREATE TABLE `raw_dialog_choices` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dialog_conversation_id` int(10) unsigned NOT NULL default '0',
  `index` smallint(3) unsigned NOT NULL default '0',
  `choice` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


