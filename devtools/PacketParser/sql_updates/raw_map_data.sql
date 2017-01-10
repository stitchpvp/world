DROP TABLE IF EXISTS `raw_map_data`;
CREATE TABLE `raw_map_data` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `map_id` int(10) unsigned NOT NULL default '0',
  `zone_name` varchar(128) NOT NULL,
  `highest` float NOT NULL default '0',
  `lowest` float NOT NULL default '0',
  `explored_map_name` varchar(255) NOT NULL,
  `unexplored_map_name` varchar(255) NOT NULL,
  `bounds1_x` float NOT NULL default '0',
  `bounds1_z` float NOT NULL default '0',
  `bounds2_x` float NOT NULL default '0',
  `bounds2_z` float NOT NULL default '0',
  `bounds3_x` float NOT NULL default '0',
  `bounds3_z` float NOT NULL default '0',
  `bounds4_x` float NOT NULL default '0',
  `bounds4_z` float NOT NULL default '0',
  `explored_key` bigint(20) unsigned NOT NULL default '0',
  `unexplored_key` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `MapIDX` (`map_id`,`zone_name`,`unexplored_map_name`,`explored_map_name`)
) ENGINE=InnoDB;
