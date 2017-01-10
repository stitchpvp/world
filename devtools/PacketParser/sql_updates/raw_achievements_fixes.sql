DROP TABLE IF EXISTS `raw_achievements`;
CREATE TABLE `raw_achievements` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `achievement_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` VARCHAR(50) COLLATE latin1_general_ci NOT NULL,
  `uncompleted_text` VARCHAR(255) COLLATE latin1_general_ci DEFAULT NULL,
  `completed_text` VARCHAR(255) COLLATE latin1_general_ci DEFAULT NULL,
  `category` VARCHAR(50) COLLATE latin1_general_ci DEFAULT NULL,
  `expansion` VARCHAR(50) COLLATE latin1_general_ci DEFAULT NULL,
  `icon` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `point_value` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `qty_req` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `hide_achievement` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `unknown3a` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `unknown3b` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR(250) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`achievement_id`,`title`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_achievements_requirements`;
CREATE TABLE `raw_achievements_requirements` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `achievement_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(250) COLLATE latin1_general_ci DEFAULT NULL,
  `qty_req` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex` (`name`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_achievements_rewards`;
CREATE TABLE `raw_achievements_rewards` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `achievement_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `reward` VARCHAR(250) COLLATE latin1_general_ci DEFAULT '"',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`achievement_id`,`reward`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
