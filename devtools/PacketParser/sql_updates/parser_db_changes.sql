-- raw_spawn_info.populate_spawn_id is new field, replacing processed
alter table `raw_spawn_info` change `processed` `populate_spawn_id` int(10) UNSIGNED default '0' NOT NULL;

-- raw_item_effects.name truncates
alter table `raw_item_effects` change `name` `name` varchar(255) character set latin1 collate latin1_swedish_ci default 'Unknown' NOT NULL;
