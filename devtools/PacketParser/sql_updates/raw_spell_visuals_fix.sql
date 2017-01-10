-- changes to spell_visuals
ALTER TABLE `raw_spell_visuals` CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT; 
ALTER TABLE `raw_spell_visuals` DROP KEY `id_2`; 
ALTER TABLE `raw_spell_visuals` DROP KEY `id`, ADD UNIQUE `VisIDX` (`spell_id`, `spell_visual1`, `spell_visual2`); 
