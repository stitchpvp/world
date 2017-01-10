DROP TABLE IF EXISTS `raw_item_details_marketplace`;
CREATE TABLE `raw_item_details_marketplace` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `marketplace_item_id` INT(10) NOT NULL DEFAULT '0',
  `item_id` INT(10) NOT NULL DEFAULT '0',
  `item_icon` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`marketplace_item_id`,`item_id`,`language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

ALTER TABLE `raw_item_descriptions` 
  CHANGE `flags1` `flags1` SMALLINT (5) UNSIGNED DEFAULT '0' NOT NULL,
  CHANGE `flags2` `flags2` SMALLINT (5) UNSIGNED DEFAULT '0' NOT NULL,
  CHANGE `item_type` `item_type` TINYINT (3) UNSIGNED DEFAULT '0' NOT NULL ;

DROP TABLE `raw_item_details_armorset`; 
DROP TABLE `raw_item_sets`; 
DROP TABLE `raw_item_sets_effects`; 
DROP TABLE `raw_item_sets_stats`; 
DROP TABLE `raw_item_set_effects`; 
DROP TABLE `raw_item_set_items`; 
DROP TABLE `raw_item_set_stats`; 


ALTER TABLE `raw_items` 
  ADD COLUMN `attuned` TINYINT (3) UNSIGNED DEFAULT '0' NOT NULL AFTER `show_name`,
  ADD COLUMN `stacklore` TINYINT (3) UNSIGNED DEFAULT '0' NOT NULL AFTER `evil_only`,
  ADD COLUMN `flags_16384` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `lore_equip`,
  ADD COLUMN `flags_32768` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `flags_16384`,
  ADD COLUMN `unlocked` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `appearance_only`,
  ADD COLUMN `norepair` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `unlocked`,
  ADD COLUMN `flags2_64` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `norepair`,
  ADD COLUMN `flags2_256` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `flags2_64`,
  ADD COLUMN `item_crc` INT(10) NOT NULL DEFAULT '0' AFTER `item_id`, 
  CHANGE `item_id` `item_id` INT(10) DEFAULT '0' NOT NULL;

ALTER TABLE `raw_item_itemset_items` ADD COLUMN `item_order` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `item_name`, ADD COLUMN `master_item_id` INT(10) DEFAULT '0' NOT NULL AFTER `item_name`; 
ALTER TABLE `raw_item_itemset_items` DROP KEY `SetItemIDX`, ADD UNIQUE `SetItemIDX` (`set_id`, `master_item_id`, `item_name`, `item_order`, `language_type`); 

ALTER TABLE `raw_item_itemset_bonus_stats` ADD COLUMN `master_item_id` INT(10) DEFAULT '0' NOT NULL AFTER `set_id`; 
ALTER TABLE `raw_item_itemset_bonus_stats` DROP KEY `SetStatsIDX`, ADD UNIQUE `SetStatsIDX` (`set_id`, `master_item_id`, `items_needed`, `type`, `subtype`, `value`, `value2`, `stats_order`, `language_type`, `name`); 

ALTER TABLE `raw_item_itemset_bonus_effects` ADD COLUMN `master_item_id` INT(10) DEFAULT '0' NOT NULL AFTER `set_id`; 
ALTER TABLE `raw_item_itemset_bonus_effects` DROP KEY `SetEffectsIDX`, ADD UNIQUE `SetEffectsIDX` (`set_id`, `master_item_id`, `items_needed`, `subbulletflag`, `description`, `language_type`); 

ALTER TABLE `raw_item_stats` DROP COLUMN `value2`, CHANGE `value` `value` FLOAT DEFAULT '0' NOT NULL; 
ALTER TABLE `raw_item_itemset_bonus_stats` DROP COLUMN `value2`, CHANGE `value` `value` FLOAT DEFAULT '0' NOT NULL; 

ALTER TABLE `raw_items` 
  ADD COLUMN `adornment_slot1` TINYINT (3) UNSIGNED DEFAULT '255' NOT NULL AFTER `collectable`,
  ADD COLUMN `adornment_slot2` TINYINT (3) UNSIGNED DEFAULT '255' NOT NULL AFTER `adornment_slot1`,
  ADD COLUMN `adornment_slot3` TINYINT (3) UNSIGNED DEFAULT '255' NOT NULL AFTER `adornment_slot2`,
  ADD COLUMN `adornment_slot4` TINYINT (3) UNSIGNED DEFAULT '255' NOT NULL AFTER `adornment_slot3`,
  ADD COLUMN `adornment_slot5` TINYINT (3) UNSIGNED DEFAULT '255' NOT NULL AFTER `adornment_slot4`,
  ADD COLUMN `adornment_slot6` TINYINT (3) UNSIGNED DEFAULT '255' NOT NULL AFTER `adornment_slot5`;
