CREATE TABLE `raw_spells` (
  `id` int(10) unsigned NOT NULL,
  `tier` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(128) NOT NULL default ' ',
  `description` varchar(512) NOT NULL default ' ',
  `icon` smallint(5) unsigned NOT NULL default '0',
  `icon2` smallint(5) unsigned NOT NULL default '0',
  `icontype` smallint(5) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `class_skill` int(10) unsigned NOT NULL default '0',
  `mastery_skill` int(10) unsigned NOT NULL default '0',
  `unknown2` tinyint(3) unsigned NOT NULL default '0',
  `spell_text_color` int(10) unsigned NOT NULL default '0',
  `friendly_spell` smallint(5) unsigned NOT NULL default '0',
  `display_spell_tier` tinyint(3) unsigned NOT NULL default '0',
  `duration_flag` tinyint(3) unsigned NOT NULL default '0',
  `target` tinyint(3) unsigned NOT NULL default '0',
  `group_spell` tinyint(3) unsigned NOT NULL default '0',
  `language_type` tinyint(3) unsigned NOT NULL default '0',
  `log_file` varchar(64) default NULL,
  `processed` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`,`tier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `raw_spell_details` (
  `spell_id` int(10) unsigned NOT NULL default '0',
  `tier` tinyint(3) unsigned NOT NULL default '0',
  `health_req` smallint(5) unsigned NOT NULL default '0',
  `health_upkeep` smallint(5) unsigned NOT NULL default '0',
  `power_req` smallint(5) unsigned NOT NULL default '0',
  `power_upkeep` smallint(5) unsigned NOT NULL default '0',
  `req_concentration` smallint(5) unsigned NOT NULL default '0',
  `cast_time` smallint(5) unsigned NOT NULL default '0',
  `recovery` smallint(5) unsigned NOT NULL default '0',
  `recast` float unsigned NOT NULL default '0',
  `radius` float unsigned NOT NULL default '0',
  `max_aoe_targets` smallint(5) unsigned NOT NULL default '0',
  `unknown8` int(10) unsigned NOT NULL default '0',
  `range` float unsigned NOT NULL default '0',
  `duration1` int(10) unsigned NOT NULL default '0',
  `duration2` int(10) unsigned NOT NULL default '0',
  `unknown9` tinyint(3) unsigned NOT NULL default '0',
  `unknown10` smallint(5) unsigned NOT NULL default '0',
  `resistibility` float NOT NULL default '0',
  `hit_bonus` float NOT NULL default '0',
  `language_type` tinyint(3) unsigned NOT NULL default '0',
  `log_file` varchar(64) default NULL,
  PRIMARY KEY  (`spell_id`,`tier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `raw_spell_effects` (
  `spell_id` int(10) unsigned NOT NULL default '0',
  `tier` tinyint(3) unsigned NOT NULL default '0',
  `subbulletflag` tinyint(3) unsigned NOT NULL default '0',
  `effect` varchar(512) NOT NULL,
  `percentage` tinyint(3) unsigned NOT NULL default '100',
  `language_type` tinyint(3) unsigned NOT NULL default '0',
  `log_file` varchar(64) default NULL,
  PRIMARY KEY  (`spell_id`,`tier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `raw_spell_levels` (
  `spell_id` int(10) unsigned NOT NULL,
  `tier` tinyint(3) unsigned NOT NULL default '0',
  `class_id` tinyint(3) unsigned NOT NULL default '0',
  `spell_level` smallint(5) unsigned NOT NULL default '0',
  `language_type` tinyint(3) unsigned NOT NULL default '0',
  `log_file` varchar(64) default NULL,
  PRIMARY KEY  (`spell_id`,`tier`,`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;