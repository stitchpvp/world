ALTER TABLE `raw_achievements` DROP KEY `id`, ADD UNIQUE `id` (`achievement_id`, `title`, `data_version`); 
