ALTER TABLE `raw_items` CHANGE `item_type` `item_type` ENUM('Normal','Armor','Food','Bag','Weapon','Ranged','Shield','Spell','Recipe','Book','House','Thrown','Bauble','House Container','Adornment','Pattern','Armor Set') DEFAULT 'Normal' NOT NULL;



CREATE TABLE `raw_item_details_armorset` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `armorset_item_id` int(11) NOT NULL default '0',
  `item_id` int(11) NOT NULL default '0',
  `item_crc` int(11) NOT NULL default '0',
  `item_name` varchar(255) NOT NULL default 'N/A',
  `item_icon` smallint(5) unsigned NOT NULL default '0',
  `unknown_piece` int(10) unsigned NOT NULL default '0',
  `language_type` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UnqArmorSetIdx` (`item_id`,`armorset_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

CREATE TABLE `raw_item_details_pattern` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pattern_item_id` int(11) NOT NULL default '0',
  `item_id` int(11) NOT NULL default '0',
  `item_crc` int(11) NOT NULL default '0',
  `item_name` varchar(255) NOT NULL default 'N/A',
  `item_icon` smallint(5) unsigned NOT NULL default '0',
  `language_type` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UnqPatternIDX` (`pattern_item_id`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;
