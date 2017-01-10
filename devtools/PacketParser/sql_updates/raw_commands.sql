CREATE TABLE `raw_commands` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` tinyint(3) unsigned default '1',
  `command` varchar(64) collate latin1_general_ci NOT NULL,
  `subcommand` varchar(64) collate latin1_general_ci NOT NULL,
  `handler` int(10) unsigned NOT NULL default '0',
  `required_status` smallint(5) NOT NULL default '0',
  `data_version` smallint(5) unsigned NOT NULL default '0',
  `log_file` varchar(250) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `CommandIDX` (`command`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

ALTER TABLE `parser_stats` ADD COLUMN `total_commands` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `new_recipes_list`, ADD COLUMN `unique_commands` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `total_commands`, ADD COLUMN `new_commands` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `unique_commands`;
