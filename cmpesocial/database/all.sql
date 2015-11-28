CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `periodic` int(11) NOT NULL,
  `date_of_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL,
  `location` varchar(64) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `surname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_of_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_pic_link` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
CREATE TABLE `user_event` (
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_event`),
  KEY `fkevent` (`id_event`),
  CONSTRAINT `fkevent` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkuser` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` EVENT `daily periodic` ON SCHEDULE EVERY 5 MINUTE STARTS '2015-11-23 22:47:15' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `event`  SET `event`.`date` = DATE_ADD(`event`.`date`,INTERVAL 1 DAY) , `event`.`end_date` = DATE_ADD(`event`.`end_date`,INTERVAL 1 DAY)  WHERE `event`.`end_date`< NOW() AND `event`.`periodic` = 1$$

CREATE DEFINER=`root`@`localhost` EVENT `weekly` ON SCHEDULE EVERY 1 MINUTE STARTS '2015-11-23 22:48:19' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `event`  SET `event`.`date` = DATE_ADD(`event`.`date`,INTERVAL 1 WEEK), `event`.`end_date` = DATE_ADD(`event`.`end_date`,INTERVAL 1 WEEK)  WHERE `event`.`end_date`< NOW() AND `event`.`periodic` = 2$$

CREATE DEFINER=`root`@`localhost` EVENT `monthly` ON SCHEDULE EVERY 1 MINUTE STARTS '2015-11-23 22:48:57' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `event`  SET `event`.`date` = DATE_ADD(`event`.`date`,INTERVAL 1 MONTH) , `event`.`end_date` = DATE_ADD(`event`.`end_date`,INTERVAL 1 MONTH) WHERE `event`.`end_date`< NOW() AND `event`.`periodic` = 3$$

CREATE DEFINER=`root`@`localhost` EVENT `annually` ON SCHEDULE EVERY 1 MINUTE STARTS '2015-11-23 22:52:51' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `event`  SET `event`.`date` = DATE_ADD(`event`.`date`,INTERVAL 1 YEAR) , `event`.`end_date` = DATE_ADD(`event`.`end_date`,INTERVAL 1 YEAR) WHERE `event`.`end_date`< NOW() AND `event`.`periodic` = 4$$

DELIMITER ;