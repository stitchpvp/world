-- Item Type 16 - Profile Items
ALTER TABLE `raw_items` CHANGE `item_type` `item_type` ENUM('Normal','Armor','Food','Bag','Weapon','Ranged','Shield','Spell Scroll','Recipe','Book','House','Thrown','Bauble','House Container','Adornment','Pattern Set','Armor Set','Item Set','Decoration','Marketplace','Dungeon Maker','Profile') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'Normal' NOT NULL; 

DROP TABLE IF EXISTS `raw_item_itemsets`;
CREATE TABLE `raw_item_itemsets` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `set_name` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemSetIDX` (`set_name`, `language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_item_itemset_items`;
CREATE TABLE `raw_item_itemset_items` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `set_id` INT(10) NOT NULL DEFAULT '0',
  `unknown1` TINYINT(3) NOT NULL DEFAULT '0',
  `unknown2` TINYINT(3) NOT NULL DEFAULT '0',
  `item_name` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT 'Unknown',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SetItemIDX` (`set_id`, `item_name`, `language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_item_itemset_bonus_stats`;
CREATE TABLE `raw_item_itemset_bonus_stats` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `set_id` INT(10) NOT NULL DEFAULT '0',
  `items_needed` TINYINT(3) NOT NULL DEFAULT '0',
  `type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `subtype` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `value` SMALLINT(5) NOT NULL DEFAULT '0',
  `value2` FLOAT DEFAULT '0',
  `name` VARCHAR(512) COLLATE latin1_general_ci DEFAULT '',
  `unknown` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `stats_order` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SetStatsIDX` (`set_id`,`items_needed`,`type`,`subtype`,`value`,`value2`,`stats_order`,`language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_item_itemset_bonus_effects`;
CREATE TABLE `raw_item_itemset_bonus_effects` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `set_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `items_needed` TINYINT(3) NOT NULL DEFAULT '0',
  `subbulletflag` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `description` VARCHAR(512) COLLATE latin1_general_ci DEFAULT '',
  `percentage` TINYINT(3) UNSIGNED NOT NULL DEFAULT '100',
  `effect_order` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SetEffectsIDX` (`set_id`, `description`, `effect_order`, `language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

ALTER TABLE `raw_item_itemsets` ADD COLUMN `data_version` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `language_type`, ADD COLUMN `log_file` VARCHAR(250) DEFAULT '' NOT NULL AFTER `data_version`; 
