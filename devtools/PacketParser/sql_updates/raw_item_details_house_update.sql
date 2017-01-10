DROP TABLE `raw_item_details_house`;
CREATE TABLE `raw_item_details_house` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `item_id` int(11) NOT NULL default '0',
  `status_rent_reduction` int(10) unsigned NOT NULL default '0',
  `coin_rent_reduction` float unsigned default '0' NOT NULL,
  `house_unknown2` smallint(6) unsigned default '0' NOT NULL,
  `house_only` tinyint(3) unsigned default '0' NOT NULL,
  `language_type` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ItemLanguageIDX` (`item_id`,`language_type`)
) ENGINE=MyISAM;
