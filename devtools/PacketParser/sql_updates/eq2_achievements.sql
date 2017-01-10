DROP TABLE IF EXISTS `raw_achievements`;
CREATE TABLE `raw_achievements` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unknown_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(50) NOT NULL,
  `uncompleted_text` VARCHAR(255) DEFAULT NULL,
  `completed_text` VARCHAR(255) DEFAULT NULL,
  `category` VARCHAR(50) DEFAULT NULL,
  `expansion` VARCHAR(50) DEFAULT NULL,
  `icon` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `point_value` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `qty_req` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR(250) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`unknown_id`,`name`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `raw_achievements_items`;
CREATE TABLE /*!32312 IF NOT EXISTS*/ `raw_achievements_items` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unknown_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(250) DEFAULT NULL,
  `qty_req` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `NewIndex` (`name`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `raw_achievements_rewards`;
CREATE TABLE /*!32312 IF NOT EXISTS*/ `raw_achievements_rewards` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unknown_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `reward` VARCHAR(250) DEFAULT '"',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`unknown_id`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;
