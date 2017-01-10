ALTER TABLE `raw_item_appearances` 
  ADD COLUMN `item_crc` BIGINT (20) DEFAULT '0' NOT NULL AFTER `item_id`,
  CHANGE `item_id` `item_id` INT (10) DEFAULT '0' NOT NULL ;
