-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 192.168.27.186
-- 產生時間： 2019 年 11 月 29 日 12:39
-- 伺服器版本： 5.5.65-MariaDB
-- PHP 版本： 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `pbook`
--

-- --------------------------------------------------------

--
-- 資料表結構 `pm_event2`
--

CREATE TABLE `pm_event2` (
  `sid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `brief_intro` varchar(255) NOT NULL,
  `rule` int(11) NOT NULL,
  `user_level` tinyint(4) NOT NULL,
  `group_type` tinyint(4) NOT NULL,
  `cp_group` tinyint(4) NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `created_time` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `event_set` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `pm_event2`
--

INSERT INTO `pm_event2` (`sid`, `title`, `img`, `brief_intro`, `rule`, `user_level`, `group_type`, `cp_group`, `start_time`, `end_time`, `created_time`, `status`, `event_set`) VALUES
(1, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(2, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(3, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(7, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(8, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(9, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(11, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(12, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(13, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(14, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(15, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(16, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(17, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(18, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(19, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(20, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(21, '活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-29', '2019-08-29', '0000-00-00', 1, 0),
(22, '123', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(23, '123', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(24, '123', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(25, '123', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(26, '123', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(27, '333', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-30', '2019-08-31', '0000-00-00', 1, 0),
(28, '品書大師活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 4, 1, 0, '2019-08-30', '2019-08-31', '0000-00-00', 1, 0),
(29, '品書大師活動測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 4, 1, 0, '2019-08-30', '2019-08-31', '0000-00-00', 1, 0),
(30, '', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(33, 'ewarfa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(34, 'aaa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(35, 'aaa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-30', '2019-08-30', '0000-00-00', 1, 0),
(36, 'aaa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-30', '2019-08-30', '2019-08-30', 1, 0),
(37, 'abc', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 2, 1, 0, '2019-08-30', '2019-08-31', '2019-08-30', 1, 0),
(38, 'aaa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-30', '2019-08-30', '2019-08-30', 1, 0),
(39, '測試1', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '2019-08-30', 1, 0),
(40, '123', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 1, 0, '2019-08-30', '2019-09-19', '2019-08-30', 1, 0),
(42, '333', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 1, 0, '2019-08-30', '2019-08-30', '2019-08-30', 1, 0),
(43, '測試100', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 2, 1, 1, '2019-08-30', '2019-08-30', '2019-08-30', 1, 0),
(44, 'aaa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 0, 0, '2019-08-30', '2019-08-30', '2019-08-30', 1, 0),
(45, '11', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 1, 0, 0, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(46, '測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 2, 1, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(47, '測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 2, 1, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(48, '測試測試2', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 7, 1, 1, 1, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(49, '111', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 7, 1, 2, 1, '2019-09-02', '2019-09-28', '2019-09-02', 1, 0),
(50, '333', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 7, 1, 1, 1, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(51, '222', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 0, 0, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(52, '123', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 7, 0, 0, 0, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(53, '333', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 0, 0, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(54, '333', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 0, 0, '2019-09-02', '2019-09-02', '2019-09-02', 1, 0),
(62, '232', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 0, 0, '2019-09-03', '2019-09-03', '2019-09-03', 1, 0),
(63, '22', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 2, 0, '2019-09-03', '2019-09-03', '2019-09-03', 1, 0),
(64, '22', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 2, 0, '2019-09-03', '2019-09-03', '2019-09-03', 1, 0),
(71, '最後測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 2, 1, '2019-09-03', '2019-09-28', '2019-09-03', 1, 0),
(72, '最後測試2', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 1, 0, 0, '2019-09-03', '2019-09-21', '2019-09-03', 1, 0),
(73, '22', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 2, 1, '2019-09-03', '2019-09-28', '2019-09-03', 1, 0),
(74, '22', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 0, 0, '2019-09-03', '2019-09-03', '2019-09-03', 1, 0),
(75, 'aa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 0, 0, '2019-09-03', '2019-09-03', '2019-09-03', 1, 0),
(76, '33', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 0, 0, '2019-09-19', '2019-09-20', '2019-09-03', 1, 0),
(77, '111', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 3, 0, 0, 0, '2019-09-03', '2019-09-03', '2019-09-03', 1, 0),
(78, '測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 0, 0, 0, '2019-09-04', '2019-09-04', '2019-09-04', 1, 0),
(79, '11', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 1, 0, '2019-09-04', '2019-09-04', '2019-09-04', 1, 0),
(80, '33', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 2, 1, '2019-09-11', '2019-09-11', '2019-09-11', 1, 0),
(81, '33', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 2, 1, '2019-09-11', '2019-09-11', '2019-09-11', 1, 0),
(82, '33', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 2, 1, '2019-09-11', '2019-09-11', '2019-09-11', 1, 0),
(83, '33', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 2, 1, '2019-09-11', '2019-09-11', '2019-09-11', 1, 0),
(84, '33', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 7, 0, 1, 1, '2019-09-11', '2019-09-20', '2019-09-11', 1, 0),
(87, 'sss', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 0, 0, '2019-09-11', '2019-09-11', '2019-09-11', 1, 0),
(88, 'aaa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 0, 0, '2019-09-11', '2019-09-11', '2019-09-11', 1, 0),
(89, '33', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 0, 0, '2019-09-11', '2019-09-11', '2019-09-11', 1, 0),
(92, 'asd', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 0, 0, '2019-09-23', '2019-09-23', '2019-09-23', 1, 0),
(93, 'harry potter', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 7, 0, 2, 0, '2019-09-23', '2019-09-30', '2019-09-23', 1, 0),
(94, '尖端折扣', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 1, 1, '2019-09-23', '2019-10-23', '2019-09-23', 1, 0),
(95, '測試', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 0, 1, '2019-09-23', '2019-09-23', '2019-09-23', 1, 0),
(96, 'aaa', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 1, 1, 1, '2019-09-23', '2019-09-23', '2019-09-23', 1, 0),
(97, 'abc', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 1, 0, 0, '2019-09-23', '2019-09-25', '2019-09-23', 1, 0),
(98, 'harry potter', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 7, 1, 2, 0, '2019-09-23', '2020-09-23', '2019-09-23', 1, 0),
(99, '111', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 4, 1, 0, 0, '2019-09-23', '2019-09-23', '2019-09-23', 1, 0),
(100, '234', 'test.jpg', '我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹我是介紹', 6, 0, 0, 0, '2019-09-23', '2019-09-23', '2019-09-23', 1, 0),
(101, '哈利波特', '1.jpg', '哈利波特全套書籍六九折', 6, 0, 2, 0, '2019-11-29', '2019-12-29', '2019-11-29', 1, 0),
(103, '尖端折扣', '2.jpg', '尖端全書系七九折', 6, 0, 0, 1, '2019-11-29', '2019-12-29', '2019-11-29', 1, 0),
(104, '角川書籍折價', '3.jpg', '角川全書系七九折', 6, 0, 0, 1, '2019-11-29', '2019-12-29', '2019-11-29', 1, 0),
(105, '商管閱讀月', '4.jpg', '全站商管類書籍八九折', 6, 0, 1, 0, '2019-11-29', '2019-12-31', '2019-11-29', 1, 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `pm_event2`
--
ALTER TABLE `pm_event2`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_event2`
--
ALTER TABLE `pm_event2`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;