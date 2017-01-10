ALTER TABLE `raw_spells` ADD `aa_spell_id` int(10) unsigned NOT NULL DEFAULT '0' AFTER `spell_id`;
ALTER TABLE `raw_spells` ADD `aa_unknown` smallint(5) unsigned NOT NULL DEFAULT '0' AFTER `affect_only_group_members`;
ALTER TABLE `raw_spells` ADD `aa_unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `aa_unknown`;
ALTER TABLE `raw_spells` DROP INDEX `SpellLanguageTypeIDX`, ADD UNIQUE `SpellLanguageTypeIDX` (`spell_id`, `tier`, `aa_spell_id`);
