DROP TABLE IF EXISTS `raw_item_details_skills`;

DROP TABLE IF EXISTS `raw_item_details_skill`;

CREATE TABLE `raw_item_details_skill` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` INT(11) NOT NULL DEFAULT '0',
  `spell_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `tier` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ItemSpellTierIdx` (`item_id`,`spell_id`,`tier`,`language_type`)
) ENGINE=MYISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE `raw_item_details_bauble` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` INT(10) NOT NULL DEFAULT '0',
  `cast` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '100',
  `recovery` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `duration` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `recast` FLOAT UNSIGNED NOT NULL DEFAULT '1',
  `display_cast_time` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `display_bauble_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `effect_radius` FLOAT NOT NULL DEFAULT '0',
  `max_aoe_targets` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `display_until_cancelled` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `NewIndex` (`item_id`,`language_type`)
) ENGINE=MYISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

