ALTER TABLE `raw_spell_effects` ADD `index` TINYINT UNSIGNED DEFAULT '0' NOT NULL AFTER `tier`;
ALTER TABLE `raw_spell_effects` DROP PRIMARY KEY, ADD PRIMARY KEY (`spell_id`, `tier`, `index`);
ALTER TABLE `raw_spells` ADD `spell_visual` INT UNSIGNED DEFAULT '0' NOT NULL AFTER `group_spell`;
ALTER TABLE `raw_spells` ADD `success_message` VARCHAR(512) NULL AFTER `spell_visual`;
ALTER TABLE `raw_spells` ADD `effect_message` VARCHAR(512) NULL AFTER `success_message`;
