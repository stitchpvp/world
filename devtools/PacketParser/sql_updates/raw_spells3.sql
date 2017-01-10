ALTER TABLE `raw_spell_details` CHANGE `unknown8` `min_range` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `raw_spells` CHANGE `unknown2` `min_class_skill_req` mediumint(0) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `raw_spells` ADD `unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `effect_message`;
ALTER TABLE `raw_spells` ADD `can_effect_raid` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `unknown1`;
ALTER TABLE `raw_spells` ADD `affect_only_group_members` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `can_effect_raid`;
