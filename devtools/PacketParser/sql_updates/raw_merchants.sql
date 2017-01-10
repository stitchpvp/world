DROP TABLE IF EXISTS `raw_merchant_items`;

DROP TABLE IF EXISTS `raw_merchants`;
CREATE TABLE `raw_merchants` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spawn_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `log_file` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `language_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MerchantsIDX` (`spawn_id`,`language_type`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_merchant_inventory`;
CREATE TABLE `raw_merchant_inventory` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `inventory_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `item_name` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `price` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` INT(10) NOT NULL DEFAULT '0',
  `unique_item_id` INT(10) NOT NULL DEFAULT '0',
  `stack_size` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `icon` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `item_difficulty` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `level` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown4a` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown4b` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `unknown5` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `tier` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `item_id2` INT(10) NOT NULL DEFAULT '0',
  `stack_size2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `status2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `station_cash` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `unknown7a` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `unknown7b` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `num_tokens` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `description` TEXT COLLATE latin1_general_ci,
  `data_version` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `InventoryIDX` (`inventory_id`,`item_id`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

DROP TABLE IF EXISTS `raw_merchant_inventory_tokens`;
CREATE TABLE `raw_merchant_inventory_tokens` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `inventory_item_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `token_icon` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `token_quantity` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `token_id` INT(10) NOT NULL DEFAULT '0',
  `token_id2` INT(10) NOT NULL DEFAULT '0',
  `token_name` VARCHAR(250) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `TokenIDX` (`inventory_item_id`,`token_id`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

