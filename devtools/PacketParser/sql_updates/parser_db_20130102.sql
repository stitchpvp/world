ALTER TABLE `raw_item_descriptions` DROP KEY `NewIndex`, ADD UNIQUE `NewIndex` (`language_type`, `item_id`);
ALTER TABLE `raw_item_descriptions` ADD COLUMN `item_crc` INT(10) DEFAULT '0' NOT NULL AFTER `item_id`, CHANGE `item_id` `item_id` INT(10) DEFAULT '0' NOT NULL; 
-- adding item type 20, 21, and 22
ALTER TABLE `raw_items` CHANGE `item_type` `item_type` ENUM('Normal','Armor','Food','Bag','Weapon','Ranged','Shield','Spell Scroll','Recipe','Book','House','Thrown','Bauble','House Container','Adornment','Pattern Set','Armor Set','Item Set','Decoration','Marketplace','Dungeon Maker') CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT 'Normal' NOT NULL; 
ALTER TABLE `raw_item_appearances` CHANGE `item_crc` `item_crc` INT(10) DEFAULT '0' NOT NULL; 


CREATE TABLE `raw_item_details_marketplace_rewards` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` INT(10) NOT NULL DEFAULT '0',
  `reward_item_id` INT(10) NOT NULL DEFAULT '0',
  `reward_item_crc` INT(10) NOT NULL DEFAULT '0',
  `reward_item_icon` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `reward_item_name` VARCHAR(250) COLLATE latin1_general_ci DEFAULT '',
  `language_type` TINYINT(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`item_id`,`reward_item_id`,`language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE `raw_item_details_decorations` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` INT(11) NOT NULL DEFAULT '0',
  `decoration_name` VARCHAR(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
