SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bm_ban_records
-- ----------------------------
DROP TABLE IF EXISTS `bm_ban_records`;
CREATE TABLE `bm_ban_records` (
  `ban_record_id` int(255) NOT NULL AUTO_INCREMENT,
  `banned` varchar(32) NOT NULL,
  `banned_by` varchar(32) NOT NULL,
  `ban_reason` text NOT NULL,
  `ban_time` int(10) NOT NULL,
  `ban_expired_on` int(10) NOT NULL,
  `unbanned_by` varchar(32) NOT NULL,
  `unbanned_time` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`ban_record_id`),
  KEY `banned` (`banned`),
  KEY `ban_time` (`ban_time`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bm_bans
-- ----------------------------
DROP TABLE IF EXISTS `bm_bans`;
CREATE TABLE `bm_bans` (
  `ban_id` int(255) NOT NULL AUTO_INCREMENT,
  `banned` varchar(32) NOT NULL,
  `banned_by` varchar(32) NOT NULL,
  `ban_reason` text NOT NULL,
  `ban_time` int(10) NOT NULL,
  `ban_expires_on` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`ban_id`),
  KEY `banned` (`banned`),
  KEY `ban_time` (`ban_time`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bm_ip_bans
-- ----------------------------
DROP TABLE IF EXISTS `bm_ip_bans`;
CREATE TABLE `bm_ip_bans` (
  `ban_id` int(255) NOT NULL AUTO_INCREMENT,
  `banned` varchar(32) NOT NULL,
  `banned_by` varchar(32) NOT NULL,
  `ban_reason` text NOT NULL,
  `ban_time` int(10) NOT NULL,
  `ban_expires_on` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`ban_id`),
  KEY `banned` (`banned`),
  KEY `ban_time` (`ban_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bm_ip_records
-- ----------------------------
DROP TABLE IF EXISTS `bm_ip_records`;
CREATE TABLE `bm_ip_records` (
  `ban_record_id` int(255) NOT NULL AUTO_INCREMENT,
  `banned` varchar(32) NOT NULL,
  `banned_by` varchar(32) NOT NULL,
  `ban_reason` text NOT NULL,
  `ban_time` int(10) NOT NULL,
  `ban_expired_on` int(10) NOT NULL,
  `unbanned_by` varchar(32) NOT NULL,
  `unbanned_time` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`ban_record_id`),
  KEY `banned` (`banned`),
  KEY `ban_time` (`ban_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bm_kicks
-- ----------------------------
DROP TABLE IF EXISTS `bm_kicks`;
CREATE TABLE `bm_kicks` (
  `kick_id` int(255) NOT NULL AUTO_INCREMENT,
  `kicked` varchar(32) NOT NULL,
  `kicked_by` varchar(32) NOT NULL,
  `kick_reason` text NOT NULL,
  `kick_time` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`kick_id`),
  KEY `kicked` (`kicked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bm_mutes
-- ----------------------------
DROP TABLE IF EXISTS `bm_mutes`;
CREATE TABLE `bm_mutes` (
  `mute_id` int(255) NOT NULL AUTO_INCREMENT,
  `muted` varchar(32) NOT NULL,
  `muted_by` varchar(32) NOT NULL,
  `mute_reason` text NOT NULL,
  `mute_time` int(10) NOT NULL,
  `mute_expires_on` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`mute_id`),
  KEY `muted` (`muted`),
  KEY `mute_time` (`mute_time`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bm_mutes_records
-- ----------------------------
DROP TABLE IF EXISTS `bm_mutes_records`;
CREATE TABLE `bm_mutes_records` (
  `mute_record_id` int(255) NOT NULL AUTO_INCREMENT,
  `muted` varchar(32) NOT NULL,
  `muted_by` varchar(32) NOT NULL,
  `mute_reason` text NOT NULL,
  `mute_time` int(10) NOT NULL,
  `mute_expired_on` int(10) NOT NULL,
  `unmuted_by` varchar(32) NOT NULL,
  `unmuted_time` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`mute_record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bm_player_ips
-- ----------------------------
DROP TABLE IF EXISTS `bm_player_ips`;
CREATE TABLE `bm_player_ips` (
  `player` varchar(25) CHARACTER SET utf8 NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  `last_seen` int(10) NOT NULL,
  PRIMARY KEY (`player`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for bm_warnings
-- ----------------------------
DROP TABLE IF EXISTS `bm_warnings`;
CREATE TABLE `bm_warnings` (
  `warn_id` int(255) NOT NULL AUTO_INCREMENT,
  `warned` varchar(32) NOT NULL,
  `warned_by` varchar(32) NOT NULL,
  `warn_reason` text NOT NULL,
  `warn_time` int(10) NOT NULL,
  `server` varchar(30) NOT NULL,
  PRIMARY KEY (`warn_id`),
  KEY `kicked` (`warned`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
