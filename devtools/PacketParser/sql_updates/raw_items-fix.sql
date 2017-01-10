-- getting items.name truncated, setting description to `text`
alter table `raw_items` change `name` `name` varchar(512), change `description` `description` text NOT NULL;
alter table `raw_items` add column `processed` tinyint(3) UNSIGNED DEFAULT '0' NOT NULL;
