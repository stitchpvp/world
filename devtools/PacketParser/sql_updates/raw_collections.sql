# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             parser
# Server version:       5.1.31-community
# Server OS:            Win32
# Target-Compatibility: MySQL 5.0
# max_allowed_packet:   1048576
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1*/;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0*/;


#
# Table structure for table 'raw_collections'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ `raw_collections` (
  `unknown` tinyint(3) unsigned NOT NULL,
  `collection_name` varchar(512) NOT NULL,
  `collection_category` varchar(512) NOT NULL,
  `unknown2` tinyint(3) unsigned NOT NULL,
  `unknown6` tinyint(3) unsigned NOT NULL,
  `unknown7` tinyint(3) unsigned NOT NULL,
  `unknown8` tinyint(3) unsigned NOT NULL,
  `unknown9` tinyint(3) unsigned NOT NULL,
  `unknown10` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `num_items` tinyint(3) unsigned NOT NULL,
  `item_icon` smallint(5) unsigned NOT NULL,
  `item_name` varchar(512) DEFAULT NULL,
  `unknown4` tinyint(3) unsigned DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_crc` int(11) DEFAULT NULL,
  `log_file` varchar(255) DEFAULT ''
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'raw_collections'
#

# (No data found.)

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS*/;
