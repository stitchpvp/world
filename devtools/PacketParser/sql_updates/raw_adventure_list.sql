ALTER TABLE `parser_stats` 
  DROP COLUMN `total_aa_subclass`,
  DROP COLUMN `new_aa_tso`,
  DROP COLUMN `unique_aa_tso`,
  DROP COLUMN `total_aa_tso`,
  DROP COLUMN `new_aa_subclass`,
  DROP COLUMN `unique_aa_subclass`,
  CHANGE `total_aa_class` `total_aa` SMALLINT (5) UNSIGNED DEFAULT '0' NOT NULL,
  CHANGE `unique_aa_class` `unique_aa` SMALLINT (5) UNSIGNED DEFAULT '0' NOT NULL,
  CHANGE `new_aa_class` `new_aa` SMALLINT (5) UNSIGNED DEFAULT '0' NOT NULL ;

DROP TABLE IF EXISTS `raw_aa_class`; 
DROP TABLE IF EXISTS `raw_aa_subclass`; 
DROP TABLE IF EXISTS `raw_aa_tso`; 

CREATE TABLE `raw_adventure_list` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unknown6` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `unknown7` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `spell_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `unknown10` SMALLINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(250) COLLATE latin1_general_ci DEFAULT NULL,
  `description` VARCHAR(250) COLLATE latin1_general_ci DEFAULT NULL,
  `icon` MEDIUMINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `icon2` MEDIUMINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `current_rank` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `max_rank` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `rank_cost` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown11` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `class_name` VARCHAR(50) COLLATE latin1_general_ci DEFAULT NULL,
  `points_req` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `subclass_name` VARCHAR(50) COLLATE latin1_general_ci DEFAULT NULL,
  `icon_col` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `icon_row` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `line_title` VARCHAR(50) COLLATE latin1_general_ci DEFAULT NULL,
  `unknown20` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `global_req` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `aa_type` VARCHAR(32) COLLATE latin1_general_ci DEFAULT NULL,
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AdventureListIDX` (`spell_id`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

