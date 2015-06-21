-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 06 月 07 日 08:11
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `db_58`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_njl`
--

CREATE TABLE IF NOT EXISTS `tb_njl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(1000) DEFAULT NULL COMMENT '单帖主题内容',
  `company_name` varchar(45) DEFAULT NULL COMMENT '公司名',
  `contactor_name` varchar(45) DEFAULT NULL COMMENT '联系人',
  `tel_num` varchar(45) DEFAULT NULL COMMENT '电话号码',
  `address` varchar(45) DEFAULT NULL COMMENT '地址',
  `qq_num` varchar(45) DEFAULT NULL COMMENT 'QQ/MSN号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='数据来自58同城农家乐板块' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
