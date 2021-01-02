SELECT host, user, password FROM mysql.user;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY '12345';

FLUSH PRIVILEGES;


SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `adminChat`;
CREATE DATABASE `adminChat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `adminChat`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` char(200) COLLATE utf8mb4_bin NOT NULL,
  `first_name` char(200) COLLATE utf8mb4_bin NOT NULL,
  `username` char(200) COLLATE utf8mb4_bin NOT NULL,
  `chat_id` char(200) COLLATE utf8mb4_bin NOT NULL,
  `time_add_chat` char(200) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

INSERT INTO `users` (`user_id`, `first_name`, `username`, `chat_id`, `time_add_chat`) VALUES
('1209846646',	'Moskow',	'',	'-1001341740409',	'27.12.2020.20:00');
