ALTER TABLE `raw_items`  CHANGE COLUMN `item_type` `item_type` ENUM('Normal','Armor','Food','Bag','Weapon','Ranged','Shield','Spell Scroll','Recipe','Book','House','Thrown','Bauble','House Container','Adornment','Pattern','Armor Set') NOT NULL DEFAULT 'Normal' AFTER `name`;
ALTER TABLE `raw_items` ADD `lore_equip` tinyint(3) unsigned DEFAULT '0' NOT NULL AFTER `evil_only`;
ALTER TABLE `raw_items` ADD `ornate` tinyint(3) unsigned DEFAULT '0' NOT NULL AFTER `lore_equip`;
ALTER TABLE `raw_items` ADD `heirloom` tinyint(3) unsigned DEFAULT '0' NOT NULL AFTER `ornate`;
ALTER TABLE `raw_items` ADD `appearance_only` tinyint(3) unsigned DEFAULT '0' NOT NULL AFTER `heirloom`;
ALTER TABLE `raw_item_descriptions`  DROP COLUMN `flags`;
ALTER TABLE `raw_item_descriptions` ADD `flags1` tinyint(3) unsigned DEFAULT '0' NOT NULL AFTER `tier`;
ALTER TABLE `raw_item_descriptions` ADD `flags2` tinyint(3) unsigned DEFAULT '0' NOT NULL AFTER `flags1`;