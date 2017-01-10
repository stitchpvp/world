DROP TABLE IF EXISTS `raw_spawn_mercs`;
CREATE TABLE `raw_spawn_mercs` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spawn_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `mercenary_name` VARCHAR(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`mercenary_name`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_spawn_pets`;
CREATE TABLE `raw_spawn_pets` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spawn_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `pet_name` VARCHAR(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`pet_name`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
