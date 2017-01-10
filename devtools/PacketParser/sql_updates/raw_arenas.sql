DROP TABLE IF EXISTS  `raw_arena_levels`;
CREATE TABLE `raw_arena_levels` (
  `id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `level_name` VARCHAR (32) NOT NULL DEFAULT '',
  `level_value` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `data_version` SMALLINT (5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR (250) NOT NULL DEFAULT '',
  UNIQUE `ArenaLevelIDX` (`level_name`, `level_value`),
  PRIMARY KEY (`id`)
) ENGINE = 'Default' COMMENT = '' ROW_FORMAT = DEFAULT ;

DROP TABLE IF EXISTS  `raw_arena_timers`;
CREATE TABLE `raw_arena_timers` (
  `id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `time_type` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `time_name` VARCHAR (32) NOT NULL DEFAULT '',
  `time_value` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `data_version` SMALLINT (5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR (250) NOT NULL DEFAULT '',
  UNIQUE `ArenaTimerIDX` (`time_type`, `time_name`, `time_value`),
  PRIMARY KEY (`id`)
) ENGINE = 'Default' COMMENT = '' ROW_FORMAT = DEFAULT ;

DROP TABLE IF EXISTS  `raw_arena_types`;
CREATE TABLE `raw_arena_types` (
  `id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unknown2a` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown2b` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown2c` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `type_name` VARCHAR (32) NOT NULL DEFAULT '',
  `unknown3a` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown3b` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `data_version` SMALLINT (5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR (250) NOT NULL DEFAULT '',
  UNIQUE `ArenaTypesIDX` (`type_name`),
  PRIMARY KEY (`id`)
) ENGINE = 'Default' COMMENT = '' ROW_FORMAT = DEFAULT ;

DROP TABLE IF EXISTS  `raw_arena_challenges`;
CREATE TABLE `raw_arena_challenges` (
  `id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `challenge_name` VARCHAR (32) NOT NULL DEFAULT '',
  `challenge_value` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `data_version` SMALLINT (5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR (250) NOT NULL DEFAULT '',
  UNIQUE `ArenaChallengeIDX` (`challenge_name`, `challenge_value`),
  PRIMARY KEY (`id`)
) ENGINE = 'Default' COMMENT = '' ROW_FORMAT = DEFAULT ;

DROP TABLE IF EXISTS  `raw_arena_zones`;
CREATE TABLE `raw_arena_zones` (
  `id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type1` VARCHAR (32) NOT NULL DEFAULT '',
  `unknown4a` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown4b` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `file` VARCHAR (64) NOT NULL DEFAULT '',
  `type2` VARCHAR (32) NOT NULL DEFAULT '',
  `name` VARCHAR (32) NOT NULL DEFAULT '',
  `description` TEXT,
  `data_version` SMALLINT (5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR (250) NOT NULL DEFAULT '',
  UNIQUE `ArenaZonesIDX` (`type1`, `file`, `name`),
  PRIMARY KEY (`id`)
) ENGINE = 'Default' COMMENT = '' ROW_FORMAT = DEFAULT ;

DROP TABLE IF EXISTS  `raw_arena_images`;
CREATE TABLE `raw_arena_images` (
  `id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arena_zone_id` TINYINT(3) NOT NULL DEFAULT '0',
  `image_path` VARCHAR (250) NOT NULL DEFAULT '',
  `x` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `y` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `x2` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `y2` TINYINT (3) UNSIGNED NOT NULL DEFAULT '0',
  `data_version` SMALLINT (5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR (250) NOT NULL DEFAULT '',
  UNIQUE `ArenaImagesIDX` (`arena_zone_id`, `image_path`),
  PRIMARY KEY (`id`)
) ENGINE = 'Default' COMMENT = '' ROW_FORMAT = DEFAULT ;

