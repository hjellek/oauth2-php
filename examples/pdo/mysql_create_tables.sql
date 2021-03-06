SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE `auth_codes` (
  `code` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) UNSIGNED,
  `redirect_uri` varchar(200) NOT NULL,
  `expires` int(11) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `clients` (
  `client_id` varchar(40) NOT NULL,
  `client_secret` varchar(20) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `access_tokens` (
  `oauth_token` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) UNSIGNED,
  `expires` int(11) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oauth_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) UNSIGNED,
  `expires` int(11) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
