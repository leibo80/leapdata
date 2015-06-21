/*
Navicat MySQL Data Transfer

Source Server         : mysql_root
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : db_58

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2015-06-21 22:04:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_njl`
-- ----------------------------
DROP TABLE IF EXISTS `tb_njl`;
CREATE TABLE `tb_njl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(1000) DEFAULT NULL COMMENT '单帖主题内容',
  `company_name` varchar(45) DEFAULT NULL COMMENT '公司名',
  `contactor_name` varchar(45) DEFAULT NULL COMMENT '联系人',
  `tel_num` varchar(45) NOT NULL DEFAULT 'N/A' COMMENT '电话号码',
  `address` varchar(45) DEFAULT NULL COMMENT '地址',
  `qq_num` varchar(45) DEFAULT NULL COMMENT 'QQ/MSN号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tel_num` (`tel_num`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='数据来自58同城农家乐板块';

-- ----------------------------
-- Records of tb_njl
-- ----------------------------
INSERT INTO `tb_njl` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_njl` VALUES ('3', '1', '1', '1', '2', '1', '1');

-- ----------------------------
-- Table structure for `tb_njl_company_specific_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_njl_company_specific_info`;
CREATE TABLE `tb_njl_company_specific_info` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL COMMENT '页面链接',
  `contact_name` varchar(64) NOT NULL COMMENT '联系人',
  `contact_phone` varchar(32) NOT NULL COMMENT '联系电话',
  `contact_phone_zone` varchar(16) DEFAULT NULL COMMENT '电话归属地',
  `description` varchar(2048) NOT NULL COMMENT '详细描述',
  `accessed_flag` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_njl_company_specific_info
-- ----------------------------
INSERT INTO `tb_njl_company_specific_info` VALUES ('126', 'http://xa.58.com/zhoubianyou/22250331313418x.shtml?psid=117633640188072699181558915', '新浪潮', '029-82647977', ' 归属地：西安', '陕西张裕瑞那城堡酒庄，位于咸阳市渭城区渭城镇，由烟台张裕葡萄酿酒股份有限公司投资6亿元建成，距西安市中心15公里，据西安咸阳国际机场仅5公里，交通便利，占地1100亩酒庄，可年产高档葡萄酒3000吨。酒庄采用意大利托斯卡纳式的建筑风格，将建成一个以葡萄酒文化为主题的集田园旅游观光、葡萄采摘、葡萄酒文化展览、葡萄酒酿造科学展示、餐饮、会议、婚庆、游乐等多功能于一体的综合性文化旅游景区。', '0');
INSERT INTO `tb_njl_company_specific_info` VALUES ('127', 'http://xa.58.com/zhoubianyou/22248792120866x.shtml?psid=117633640188072699181558915', '', '', '', '中坝大峡谷、赛龙舟二日游                       周四、周六398 210 中坝大峡谷·赛龙舟·河谷漂流二日          周四、周六398 210 燕翔洞·汉江三峡（游船）二日            周四、周六599 340 沙坡头·通湖草原·篝火·崆峒镇三日         6月20499 340 鹅城竹海·流水古镇·洋烈水乡三日          周五、6月20298 200 安康-流水古镇·瀛湖风景区二日            周六260 230 青木川古镇·昭化古城二日                 周四、周六280 190 金丝峡·棣花古镇·仙鹅湖二日               周四、周六350 190 金丝峡·丹江漂流二日                     周四、周六360  220 紫阳任河漂流·文笔山景区二日             周六360  200天竺山·月亮洞·漫川古镇二日               周六499  300阆中古城·剑门关·昭化古城三日             周五298 160张良庙·紫柏山篝火晚会二日                周六388  220秦岭花谷·氧吧凤县全景二日 热推       周六360  190 太白山·沙沙河·庵岭古镇二日               周六330  220关山草原·秋菊山庄·高山篝火二日          周二、四、六', '0');
INSERT INTO `tb_njl_company_specific_info` VALUES ('128', 'http://xa.58.com/zhoubianyou/18457847473034x.shtml?psid=117633640188072699181558915', '朱先生', '13629203277', ' 归属地：西安', '1、本护照由中国港中旅集团中国旅行社总社监制，由执行机构——\"西安星旅易游票务服务有限公司\"负责在全国（含港澳台）推广发行。2、本护照可以通过在销售代理商、与护照发行方存在合作关系的景区、景点处购买，或其他企业事业单位特约定制后随产品获赠等方式取得。3、本护照取得后必须通过星旅易游护照官方网站（玩儿好网，即www.wanerhao.com），注册激活后，护照方可正常使用，持照会员注册激活后，自动成为星旅易游会员。4、本护照“激活”的方法如下：护照有效期三年，每年需在“玩儿好网”激活方可使用，第一年为免费激活，第二年，第三年持照人需激活本年度的有效使用权，方可正常使用，每次费用为30元。5、网站及微信注册激活或扫描护照背后的二维码并加以关注：登录玩儿好网http：//www.wanerhao.com注册会员——护照激活----填写姓名----填写星旅易游的护照号码以及验证码----提交其他必须的资料（以便升级使用）提交注册，激活确认星旅易游旅行护照。6、护照只能在与护照发行方签订了《合作协议》的景区景点或通过授权方式公示参加本护照推广的景区景点使用。在所有与护照发行方存在合作关系的景区景点的售票窗口处、官网首页、均会悬挂、摆放或粘帖本旅行护照专用标志、标识。7、合法持有护照的会员，在出行前应登录星旅易游护照官方网站（玩儿好网www.wanerhao.com），或拨打400-833-83331查询合作景区景点的信息，了解护照合作景区点的优惠方案、合作期限等，以免耽误自己旅游的行程。持护照会员在其他合作单位消费时，应出示护照，并按签约规则享受折扣优惠（具体以网站公布的各合作景区景点优惠标准为准）。8、有关节假日以及景区节庆活动时旅行护照是否可以正常使用，均以各合作景区公布的信息为准。在合作景区、景点同时存在数种优惠政策，或针对不同的合作方采用不同的优惠等情况下，本护照会员只能选其中之一的优惠政策。9、护照的免票或优惠仅限该景区、景点指定的第一道大门票，是否可以与景区、景点其他优惠同时使用，以景区、景点的规定为准。护照在同一景区、景点的有效使用时间以各景区、景点规定的游览时间为准。10、本护照以一证（身份证）、一照（护照）为单位，本护照仅限持照会员个人使用，不能转借，同一景区每天限一次使用，使用时需同时出示护照和身份证，且护照应与相对应的身份证信息相符方能生效。11、本护照不能转借，若多人同行时，持护照会员免票，随行享受折扣；会员单人出行，不免票，只可享受会员单人优惠。12、本护照与其他单位发行的各类优惠卡、照、票、劵等互不关联、不可同时使用。13、持护照会员在购票时，由景区景点销售人员在会员所持护照指定位置加盖“纪念章”或在相应设备登记，作为会员积分的凭证依据。14、如因不可抗拒、意外事件、政策因素、政府通知、景区维护或其他影响景区景点开放的原因而造成护照会员不能游览时，护照发行及合作景区不承担任何经济与法律责任。15、在旅行过程中请严格遵守星旅星游旅行护照及景区设置的安全提示和警示，自觉遵守景区等合作单位的规定，听从景区的工作人员的指挥和管理，维护有序的现场秩序：提倡文明游览，注意言行举止，提高自我保护意识：保管好随身携带的财物及其人身安全。16,护照会员及其随行人员在消费时，应该根据自身的健康情况进行相适应的活动，确保自己及随行的老人、小孩或残疾人等弱势人员的人身财产安全。务必要爱护公共环境,不乱扔果皮,纸屑,等废弃物；观看视频或表演时拒绝拥挤,吵闹和影响他人；不在景观雕塑上攀爬或跳跃；不在湖边和邻近水面处嬉水打闹；不攀爬灯柱、护栏、墙体、栏架和树木等,行走时注意脚下台阶或路面；不靠近或接触各类带电设备；不进行可能危害自身或他人人身财产安全的行为。遇到危险及紧急情况时,请及时报警(报警电话110)。17,本护照不含保险或任何商业保险，持照会员根据各自需求自行决定购买保险事宜（发行方赠送除外）。18，如护照遗失,破损,被盗或签章已满,请及时与发证机构或指定服务机构联系,办理申(补)领手续。19，本使用说明，会根据合作景区、政策因素、政府通告等情况进行不定期修订，最新详情请注意玩儿好网或官方微信（微信帐号：xlyy88）的公示。20、本办法的最终解释权归护照发行方\"西安星旅易游票务服务有限公司\"所有,发行方有权利根据本护照使用过程中出现的问题,本着平等互利,和诚实守信的原则,对本办法进行修正。详情点击官网：http://www.wanerhao.com/', '0');
INSERT INTO `tb_njl_company_specific_info` VALUES ('129', 'http://xa.58.com/zhoubianyou/22248147111843x.shtml?psid=117633640188072699181558915', '寇先生', '13325489076', ' 归属地：西安', '在这繁忙的都市生活里，经历了尔虞我诈，世态炎凉之后。你累了 心也累了吧?是不是在某个雨夜，有想一个人静静 的时候。却发现找不到一个去处 ，想不顾一切的大喊几声却怕别人说你是不是有病。你又少了一个减压的地方。我就想做一个累了可以安安静静。让自己把自己放在自然里，去沉醉，去释放，去简单。记得那时我们过着，菜就是菜，肉就是肉。高兴就是高兴，不高兴就是不高兴的简单日子里。是那么的舒心，那么的快乐。（静心园）期待你的归来！', '0');

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
INSERT INTO `tb_njl_search_page_urls` VALUES ('81', 'http://xa.58.com/zhoubianyou/pn9/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('82', 'http://xa.58.com/zhoubianyou/pn10/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('83', 'http://xa.58.com/zhoubianyou/pn11/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('84', 'http://xa.58.com/zhoubianyou/pn12/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('85', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('86', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('87', 'http://xa.58.com/zhoubianyou/pn3/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('88', 'http://xa.58.com/zhoubianyou/pn4/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('89', 'http://xa.58.com/zhoubianyou/pn5/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('90', 'http://xa.58.com/zhoubianyou/pn6/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('91', 'http://xa.58.com/zhoubianyou/pn7/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('92', 'http://xa.58.com/zhoubianyou/pn8/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('93', 'http://xa.58.com/zhoubianyou/pn9/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('94', 'http://xa.58.com/zhoubianyou/pn10/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('95', 'http://xa.58.com/zhoubianyou/pn11/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('96', 'http://xa.58.com/zhoubianyou/pn12/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('97', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('98', 'http://xa.58.com/zhoubianyou/pn2/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('99', 'http://xa.58.com/zhoubianyou/pn3/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('100', 'http://xa.58.com/zhoubianyou/pn4/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('101', 'http://xa.58.com/zhoubianyou/pn5/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('102', 'http://xa.58.com/zhoubianyou/pn6/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('103', 'http://xa.58.com/zhoubianyou/pn7/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
INSERT INTO `tb_njl_search_page_urls` VALUES ('104', 'http://xa.58.com/zhoubianyou/pn8/?key=%E5%86%9C%E5%AE%B6%E4%B9%90', '1');
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

-- ----------------------------
-- Table structure for `tb_njl_search_specific_urls`
-- ----------------------------
DROP TABLE IF EXISTS `tb_njl_search_specific_urls`;
CREATE TABLE `tb_njl_search_specific_urls` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL COMMENT '搜索到的存储详细内容的url',
  `accessed_flag` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_njl_search_specific_urls
-- ----------------------------
INSERT INTO `tb_njl_search_specific_urls` VALUES ('323', 'http://xa.58.com/zhoubianyou/22250331313418x.shtml?psid=117633640188072699181558915', '1');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('324', 'http://xa.58.com/zhoubianyou/22248792120866x.shtml?psid=117633640188072699181558915', '1');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('325', 'http://xa.58.com/zhoubianyou/18457847473034x.shtml?psid=117633640188072699181558915', '1');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('326', 'http://xa.58.com/zhoubianyou/22248147111843x.shtml?psid=117633640188072699181558915', '1');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('327', 'http://xa.58.com/zhoubianyou/22253890596514x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('328', 'http://xa.58.com/zhoubianyou/22078208305301x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('329', 'http://xa.58.com/zhoubianyou/22220055552035x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('330', 'http://xa.58.com/zhoubianyou/22216204661412x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('331', 'http://xa.58.com/zhoubianyou/21478579196300x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('332', 'http://xa.58.com/zhoubianyou/22204215327140x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('333', 'http://xa.58.com/zhoubianyou/15293184212611x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('334', 'http://xa.58.com/zhoubianyou/22197007304969x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('335', 'http://xa.58.com/zhoubianyou/21786549828896x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('336', 'http://xa.58.com/zhoubianyou/22187633436297x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('337', 'http://xa.58.com/zhoubianyou/14374490230534x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('338', 'http://xa.58.com/zhoubianyou/22171524676004x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('339', 'http://xa.58.com/zhoubianyou/22177329624354x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('340', 'http://xa.58.com/zhoubianyou/22173096744204x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('341', 'http://xa.58.com/zhoubianyou/22162327029280x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('342', 'http://xa.58.com/zhoubianyou/17892250844168x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('343', 'http://xa.58.com/zhoubianyou/22138401903886x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('344', 'http://xa.58.com/zhoubianyou/22138401903886x.shtml?showtype=yuyue&psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('345', 'http://xa.58.com/zhoubianyou/22137787919372x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('346', 'http://xa.58.com/zhoubianyou/22130347583637x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('347', 'http://xa.58.com/zhoubianyou/14311767774470x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('348', 'http://xa.58.com/zhoubianyou/18329297580805x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('349', 'http://xa.58.com/zhoubianyou/22100499184676x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('350', 'http://xa.58.com/zhoubianyou/7086886730245x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('351', 'http://xa.58.com/zhoubianyou/22086286482467x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('352', 'http://xa.58.com/zhoubianyou/22083364541454x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('353', 'http://xa.58.com/zhoubianyou/22082892550283x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('354', 'http://xa.58.com/zhoubianyou/22066077652362x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('355', 'http://xa.58.com/zhoubianyou/21853664293027x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('356', 'http://xa.58.com/zhoubianyou/22021921956386x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('357', 'http://xa.58.com/zhoubianyou/22042560851608x.shtml?psid=117633640188072699181558915', '0');
INSERT INTO `tb_njl_search_specific_urls` VALUES ('358', 'http://xa.58.com/zhoubianyou/22041659292181x.shtml?psid=117633640188072699181558915', '0');
