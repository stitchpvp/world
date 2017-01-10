CREATE TABLE `raw_item_details_itemset` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`itemset_item_id` INT(10) NOT NULL DEFAULT '0',
	`item_id` INT(10) NOT NULL DEFAULT '0',
	`item_crc` INT(10) NOT NULL DEFAULT '0',
	`item_icon` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`item_unknown1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`item_unknown2` INT(10) NOT NULL DEFAULT '0', 
	`item_name` VARCHAR(250) NULL DEFAULT '' COLLATE 'latin1_general_ci',
	`language_type` TINYINT(3) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
COLLATE='latin1_general_ci'
ENGINE=MyISAM;

ALTER TABLE `raw_items` CHANGE COLUMN `item_type` `item_type` ENUM('Normal','Armor','Food','Bag','Weapon','Ranged','Shield','Spell Scroll','Recipe','Book','House','Thrown','Bauble','House Container','Adornment','Pattern Set','Armor Set','Item Set') NOT NULL DEFAULT 'Normal' COLLATE 'latin1_general_ci' AFTER `name`;