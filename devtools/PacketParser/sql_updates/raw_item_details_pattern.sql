
/* New Item Type 17 (Pattern) table structure */

CREATE TABLE `raw_item_details_pattern` (                         
	`id` int(10) unsigned NOT NULL auto_increment,                  
	`pattern_item_id` int(10) NOT NULL default '0',                 
	`item_id` int(10) NOT NULL default '0',                         
	`item_crc` int(10) NOT NULL default '0',                        
	`item_icon` smallint(5) unsigned NOT NULL default '0',          
	`item_name` varchar(250) collate latin1_general_ci default '',  
	`language_type` tinyint(3) NOT NULL default '0',                
	PRIMARY KEY  (`id`)                                             
) ENGINE=MyISAM;


alter table `raw_items` change `item_type` `item_type` enum('Normal','Armor','Food','Bag','Weapon','Ranged','Shield','Spell','Recipe','Book','House','Thrown','Bauble','House Container','Adornment','Pattern') default 'Normal' NOT NULL;
