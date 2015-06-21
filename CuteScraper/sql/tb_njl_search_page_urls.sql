/*
Navicat MySQL Data Transfer

Source Server         : mysql_root
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : db_58

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2015-06-21 17:02:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_njl_search_page_urls`
-- ----------------------------
DROP TABLE IF EXISTS `tb_njl_search_page_urls`;
CREATE TABLE `tb_njl_search_page_urls` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL COMMENT '搜索到的page的url',
  `accessed_flag` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_njl_search_page_urls
-- ----------------------------
INSERT INTO `tb_njl_search_page_urls` VALUES ('74', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('75', 'http://xa.58.com/zhoubianyou/pn3/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('76', 'http://xa.58.com/zhoubianyou/pn4/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('77', 'http://xa.58.com/zhoubianyou/pn5/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('78', 'http://xa.58.com/zhoubianyou/pn6/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('79', 'http://xa.58.com/zhoubianyou/pn7/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('80', 'http://xa.58.com/zhoubianyou/pn8/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('81', 'http://xa.58.com/zhoubianyou/pn9/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('82', 'http://xa.58.com/zhoubianyou/pn10/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('83', 'http://xa.58.com/zhoubianyou/pn11/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('84', 'http://xa.58.com/zhoubianyou/pn12/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('85', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('86', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('87', 'http://xa.58.com/zhoubianyou/pn3/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('88', 'http://xa.58.com/zhoubianyou/pn4/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('89', 'http://xa.58.com/zhoubianyou/pn5/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('90', 'http://xa.58.com/zhoubianyou/pn6/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('91', 'http://xa.58.com/zhoubianyou/pn7/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('92', 'http://xa.58.com/zhoubianyou/pn8/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('93', 'http://xa.58.com/zhoubianyou/pn9/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('94', 'http://xa.58.com/zhoubianyou/pn10/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('95', 'http://xa.58.com/zhoubianyou/pn11/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('96', 'http://xa.58.com/zhoubianyou/pn12/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('97', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('98', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('99', 'http://xa.58.com/zhoubianyou/pn3/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('100', 'http://xa.58.com/zhoubianyou/pn4/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('101', 'http://xa.58.com/zhoubianyou/pn5/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('102', 'http://xa.58.com/zhoubianyou/pn6/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('103', 'http://xa.58.com/zhoubianyou/pn7/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('104', 'http://xa.58.com/zhoubianyou/pn8/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('105', 'http://xa.58.com/zhoubianyou/pn9/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('106', 'http://xa.58.com/zhoubianyou/pn10/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('107', 'http://xa.58.com/zhoubianyou/pn11/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('108', 'http://xa.58.com/zhoubianyou/pn12/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('109', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('110', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('111', 'http://xa.58.com/zhoubianyou/pn3/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('112', 'http://xa.58.com/zhoubianyou/pn4/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('113', 'http://xa.58.com/zhoubianyou/pn5/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('114', 'http://xa.58.com/zhoubianyou/pn6/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('115', 'http://xa.58.com/zhoubianyou/pn7/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('116', 'http://xa.58.com/zhoubianyou/pn8/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('117', 'http://xa.58.com/zhoubianyou/pn9/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('118', 'http://xa.58.com/zhoubianyou/pn10/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('119', 'http://xa.58.com/zhoubianyou/pn11/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('120', 'http://xa.58.com/zhoubianyou/pn12/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
INSERT INTO `tb_njl_search_page_urls` VALUES ('121', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '0');
