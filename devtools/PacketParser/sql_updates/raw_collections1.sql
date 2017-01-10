DROP TABLE IF EXISTS `raw_collections`;
CREATE TABLE `raw_collections` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unknown` TINYINT(3) UNSIGNED NOT NULL,
  `collection_name` VARCHAR(512) NOT NULL,
  `collection_category` VARCHAR(512) NOT NULL,
  `unknown2` TINYINT(3) UNSIGNED NOT NULL,
  `unknown6` TINYINT(3) UNSIGNED NOT NULL,
  `unknown7` TINYINT(3) UNSIGNED NOT NULL,
  `unknown8` TINYINT(3) UNSIGNED NOT NULL,
  `unknown9` TINYINT(3) UNSIGNED NOT NULL,
  `unknown10` TINYINT(3) UNSIGNED NOT NULL,
  `level` TINYINT(3) UNSIGNED NOT NULL,
  `num_items` TINYINT(3) UNSIGNED NOT NULL,
  `item_icon` SMALLINT(5) UNSIGNED NOT NULL,
  `item_name` VARCHAR(512) DEFAULT NULL,
  `unknown4` TINYINT(3) UNSIGNED DEFAULT NULL,
  `item_id` INT(11) DEFAULT NULL,
  `item_crc` INT(11) DEFAULT NULL,
  `log_file` VARCHAR(255) DEFAULT '',
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY  (`id`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;