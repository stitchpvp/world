ALTER TABLE `raw_item_stats` CHANGE `text` `text` VARCHAR(250) DEFAULT ' ' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `damage_low1` `damage_low1` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `damage_low2` `damage_low2` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `damage_low3` `damage_low3` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `damage_high1` `damage_high1` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `damage_high2` `damage_high2` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `damage_high3` `damage_high3` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `delay` `delay` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `damage_low1` `damage_low1` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `damage_low2` `damage_low2` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `damage_low3` `damage_low3` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `damage_high1` `damage_high1` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `damage_high2` `damage_high2` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `damage_high3` `damage_high3` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `delay` `delay` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `range_low` `range_low` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `range_high` `range_high` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_shield` CHANGE `mitigation_high` `mitigation_high` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_shield` CHANGE `mitigation_low` `mitigation_low` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_armor` CHANGE `mitigation_high` `mitigation_high` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_armor` CHANGE `mitigation_low` `mitigation_low` SMALLINT UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `raw_spell_levels` CHANGE `class_id` `adventure_class_id` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_spell_levels` ADD `tradeskill_class_id` TINYINT UNSIGNED DEFAULT '0' NOT NULL AFTER `adventure_class_id`;
ALTER TABLE `raw_spell_levels` DROP PRIMARY KEY, ADD PRIMARY KEY (`spell_id`, `tier`, `adventure_class_id`, `tradeskill_class_id`);

ALTER TABLE `raw_item_skill_classes` CHANGE `class_id` `adventure_class_id` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_skill_classes` ADD `tradeskill_class_id` TINYINT UNSIGNED DEFAULT '0' NOT NULL AFTER `adventure_class_id`;
ALTER TABLE `raw_item_skill_classes` DROP INDEX `NewIndex`, ADD UNIQUE `NewIndex` (`item_id`, `adventure_class_id`, `language_type`, `tradeskill_class_id`);

ALTER TABLE `raw_item_classes` ADD `tradeskill_class_id` TINYINT UNSIGNED DEFAULT '0' NOT NULL AFTER `class_id`;
ALTER TABLE `raw_item_classes` CHANGE `class_id` `adventure_class_id` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_classes` DROP INDEX `NewIndex`, ADD UNIQUE `NewIndex` (`adventure_class_id`, `item_id`, `language_type`, `tradeskill_class_id`);

ALTER TABLE `raw_item_details_range` CHANGE `unknown12` `damage_type` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_items` CHANGE `description` `description` VARCHAR(1024) NOT NULL;

CREATE TABLE `raw_quest_reward_factions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `quest_id` int(10) unsigned NOT NULL default '0',
  `faction_name` varchar(64) NOT NULL,
  `amount` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `FactionQuestIDX` (`quest_id`,`faction_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `raw_quest_reward_items` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `quest_id` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ItemQuestIDX` (`item_id`,`quest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `raw_quest_taskgroup_tasks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `taskgroup_id` int(10) unsigned NOT NULL default '0',
  `task` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `TaskGroupTaskIDX` (`task`(200),`taskgroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

CREATE TABLE `raw_quest_taskgroup_taskupdates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `taskgroup_id` int(10) unsigned NOT NULL default '0',
  `icon` smallint(5) unsigned NOT NULL default '0',
  `update_target_name` varchar(64) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `TaskGroupUpdateIDX` (`taskgroup_id`,`update_target_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

CREATE TABLE `raw_quest_taskgroups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `quest_id` int(10) unsigned NOT NULL default '0',
  `task_group` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `QuestTaskIDX` (`quest_id`,`task_group`(200))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `raw_quests` (
  `id` int(11) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `unknown1` tinyint(3) unsigned NOT NULL default '0',
  `repeatable` tinyint(3) unsigned NOT NULL default '0',
  `unknown2` tinyint(3) unsigned NOT NULL default '0',
  `day` tinyint(3) unsigned NOT NULL default '0',
  `month` tinyint(3) unsigned NOT NULL default '0',
  `year` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(3) unsigned NOT NULL default '0',
  `encounter_level` tinyint(3) unsigned NOT NULL default '0',
  `difficulty` tinyint(3) unsigned NOT NULL default '0',
  `visible` tinyint(3) unsigned NOT NULL default '0',
  `max_coin` int(10) unsigned NOT NULL default '0',
  `min_coin` int(10) unsigned NOT NULL default '0',
  `status_points` int(10) unsigned NOT NULL default '0',
  `text` varchar(50) NOT NULL,
  `exp_bonus` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;