DROP TABLE IF EXISTS `raw_item_details_thrown`;

CREATE TABLE `raw_item_details_thrown` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `item_id` int(11) NOT NULL default '0',
  `range` int(11) NOT NULL default '0',
  `damage_modifier` int(11) NOT NULL default '0',
  `hit_bonus` float NOT NULL default '0',
  `damage_type` int(10) unsigned NOT NULL default '0',
  `language_type` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

ALTER TABLE `raw_item_details_house` CHANGE `status_rent_reduction` `status_rent_reduction` INT DEFAULT '0' NOT NULL;

ALTER TABLE `raw_item_details_house_container` DROP `disallowed_types`;

ALTER TABLE `raw_item_details_house_container` CHANGE `allowed_types` `allowed_types` INT UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `raw_item_details_house_container` CHANGE `unknown13` `unknown13` TINYINT UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `raw_item_details_house_container` CHANGE `unknown14` `broker_commission` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `raw_item_details_house_container` CHANGE `unknown15` `fence_commission` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `raw_item_details_recipe` CHANGE `unknown12` `uses` SMALLINT(5) UNSIGNED DEFAULT '1' NOT NULL;

ALTER TABLE `raw_item_details_recipe` DROP `unknown13`, DROP `unknown14`;

ALTER TABLE `raw_item_details_book` CHANGE `unknown1` `language` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `raw_item_details_book` DROP `unknown2`;

ALTER TABLE `raw_item_details_book` ADD `author` VARCHAR(255) NOT NULL AFTER `language`;

ALTER TABLE `raw_item_details_book` ADD `title` VARCHAR(255) NOT NULL AFTER `author`;

ALTER TABLE `raw_spawn_unknowns` CHANGE `value` `value` VARCHAR(50) NOT NULL;