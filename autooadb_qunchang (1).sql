/*
Navicat MySQL Data Transfer

Source Server         : OA
Source Server Version : 50624
Source Host           : 172.16.129.167:3306
Source Database       : autooadb_qunchang

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-04-13 17:34:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `Id` int(11) NOT NULL,
  `Account` varchar(10) DEFAULT NULL,
  `UpdateDate` date DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `Bank_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('4', '6666666666', '2016-10-25', '1', '1');
INSERT INTO `accounts` VALUES ('7', '1234567890', '2016-10-25', '19', '6');
INSERT INTO `accounts` VALUES ('8', '1234567890', '2016-10-25', '15', '6');

-- ----------------------------
-- Table structure for announcementcategories
-- ----------------------------
DROP TABLE IF EXISTS `announcementcategories`;
CREATE TABLE `announcementcategories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcementcategories
-- ----------------------------
INSERT INTO `announcementcategories` VALUES ('1', '公文13');
INSERT INTO `announcementcategories` VALUES ('2', '223');
INSERT INTO `announcementcategories` VALUES ('4', '你好1');
INSERT INTO `announcementcategories` VALUES ('5', '顿');
INSERT INTO `announcementcategories` VALUES ('6', '2');
INSERT INTO `announcementcategories` VALUES ('7', '12');
INSERT INTO `announcementcategories` VALUES ('10', '5');
INSERT INTO `announcementcategories` VALUES ('11', '6');
INSERT INTO `announcementcategories` VALUES ('13', '阿斯1');
INSERT INTO `announcementcategories` VALUES ('14', '阿斯阿');
INSERT INTO `announcementcategories` VALUES ('17', '1');
INSERT INTO `announcementcategories` VALUES ('18', '1');
INSERT INTO `announcementcategories` VALUES ('19', '2');
INSERT INTO `announcementcategories` VALUES ('20', '1');

-- ----------------------------
-- Table structure for announcements
-- ----------------------------
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE `announcements` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(10) DEFAULT NULL,
  `Author` varchar(10) DEFAULT NULL,
  `Origin` varchar(10) DEFAULT NULL,
  `TemplatePath` varchar(30) DEFAULT NULL,
  `Content` longtext,
  `IsTop` int(11) DEFAULT NULL,
  `cannOrder` int(11) DEFAULT NULL,
  `AuditorName` varchar(10) DEFAULT NULL,
  `AuditorStatus` int(11) DEFAULT NULL,
  `AuditorTime` timestamp NULL DEFAULT NULL,
  `EditorName` varchar(10) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `UpdateTime` timestamp NULL DEFAULT NULL,
  `NeedReadUser` varchar(10) DEFAULT NULL,
  `NeedMarkUser` varchar(10) DEFAULT NULL,
  `ReadType` int(11) DEFAULT NULL,
  `Hits` int(11) DEFAULT NULL,
  `Auditor_Id` int(11) DEFAULT NULL,
  `Editor_Id` int(11) DEFAULT NULL,
  `AnnouncementCategory_Id` int(11) DEFAULT NULL,
  `WorkId` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcements
-- ----------------------------
INSERT INTO `announcements` VALUES ('22', '提示', 'zl', '阿斯', 'www.asd.com', '<p>		</p><p><br/></p><p><br/></p><p>1</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>\r\n		23 &nbsp; &nbsp; 1 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp; &nbsp;11</p><p> 	&nbsp;	</p><p> 	&nbsp;	</p><p> 	&nbsp;	</p><p> 	&nbsp;	</p><p> 	&nbsp;	</p><p> 	&nbsp;	</p><p> 	&nbsp;	</p>', '0', '0', null, '1', '2017-03-06 14:17:03', 'zl', '2016-10-19 00:00:00', '2017-03-14 14:50:38', '', '', '1', '0', '1', '1', '1', null);
INSERT INTO `announcements` VALUES ('24', 'd', 'sd', '用', null, '', '0', '0', null, '1', '2017-03-06 14:17:07', null, '2016-10-19 00:00:00', '2016-10-19 00:00:00', null, null, '0', '0', '1', '3', '4', null);
INSERT INTO `announcements` VALUES ('26', 'asd', 'sd', '一个', null, '', '0', '0', null, '1', '2017-03-07 16:35:37', null, '2016-10-19 00:00:00', '2016-10-19 00:00:00', null, null, '0', '0', '1', '1', '1', null);
INSERT INTO `announcements` VALUES ('30', '1', '', '', '', '<p>123</p>', '0', '0', null, '0', '2017-03-07 13:03:57', null, '2017-03-07 13:03:57', '2017-03-07 13:03:57', '', '10,12,', '1', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('31', '1', '', '', '', '', '1', '0', null, '1', '2017-03-10 17:18:33', null, '2017-03-07 13:05:07', '2017-03-07 13:05:07', '19,20,', '', '0', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('32', '1', '', '', '', '', '0', '0', null, '0', '2017-03-07 15:01:25', null, '2017-03-07 15:01:25', '2017-03-07 15:29:05', '', '7,', '1', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('33', '2', '', '', '', '', '0', '0', null, '0', '2017-03-07 15:02:53', null, '2017-03-07 15:02:53', '2017-03-07 15:26:22', '3,', '', '0', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('34', '113', '', '', '', '', '0', '0', null, '1', '2017-03-07 15:08:52', null, '2017-03-07 15:08:08', '2017-03-07 15:31:22', '1,8,', '', '0', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('35', '23', '', '', '', '', '0', '0', null, '1', '2017-03-07 15:08:52', null, '2017-03-07 15:08:34', '2017-03-07 17:02:02', '', '10,1,6,', '1', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('38', '12', '123', '123', 'www.qwe.com', '<p>阿斯顿</p>', '1', '0', null, '0', '2017-03-13 14:43:14', null, '2017-03-13 14:43:14', '2017-03-13 14:43:14', '6,7,8,', '', '0', '0', null, null, '5', null);
INSERT INTO `announcements` VALUES ('39', '1', '', '', '', '', '0', '0', null, '0', '2017-03-14 14:39:02', null, '2017-03-14 14:39:02', '2017-03-14 14:39:02', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('40', '1', '', '', '', '<p>1</p>', '0', '0', null, '0', '2017-03-14 14:40:59', null, '2017-03-14 14:40:59', '2017-03-14 14:40:59', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('41', '123', '', '', '', '<p>123</p>', '0', '0', null, '0', '2017-03-14 14:41:11', null, '2017-03-14 14:41:11', '2017-03-14 14:41:11', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('42', '1', '', '', '', '<p>1</p>', '0', '0', null, '0', '2017-03-14 14:42:43', null, '2017-03-14 14:42:43', '2017-03-14 14:42:43', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('43', '1', '', '', '', '', '0', '0', null, '0', '2017-03-14 14:46:47', null, '2017-03-14 14:46:47', '2017-03-14 14:46:47', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('44', '1', '', '', '', '<p>1</p>', '0', '0', null, '0', '2017-03-14 14:47:35', null, '2017-03-14 14:47:35', '2017-03-14 14:47:35', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('45', '1', '', '', '', '', '0', '0', null, '0', '2017-03-14 14:48:18', null, '2017-03-14 14:48:18', '2017-03-14 14:48:18', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('46', '1', '', '', '', '', '0', '0', null, '0', '2017-03-14 14:50:16', null, '2017-03-14 14:50:16', '2017-03-14 14:50:16', '', '', '2', '0', null, null, '1', null);
INSERT INTO `announcements` VALUES ('47', '啊', '啊', '', '', '<p>啊</p>', '0', '0', null, '0', '2017-03-20 18:25:34', null, '2017-03-20 18:25:34', '2017-03-20 18:25:34', '', '', '2', '0', null, null, '1', null);

-- ----------------------------
-- Table structure for applications
-- ----------------------------
DROP TABLE IF EXISTS `applications`;
CREATE TABLE `applications` (
  `Id` int(11) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `RootUrl` varchar(10) DEFAULT NULL,
  `ContactEmail` varchar(10) DEFAULT NULL,
  `Disabled` int(11) DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applications
-- ----------------------------

-- ----------------------------
-- Table structure for approvalprocesses
-- ----------------------------
DROP TABLE IF EXISTS `approvalprocesses`;
CREATE TABLE `approvalprocesses` (
  `Id` int(11) NOT NULL,
  `ProcessName` varchar(10) DEFAULT NULL,
  `LastProcess` int(11) DEFAULT NULL,
  `NextProcess` int(11) DEFAULT NULL,
  `ApprovalType_Id` int(11) DEFAULT NULL,
  `Roles_Id` int(11) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approvalprocesses
-- ----------------------------
INSERT INTO `approvalprocesses` VALUES ('1', '入职审批开始', '0', '2', '2', '19', '40');
INSERT INTO `approvalprocesses` VALUES ('2', '行政人员审批', '1', '3', '2', '16', '40');
INSERT INTO `approvalprocesses` VALUES ('3', 'HR审批', '2', '0', '2', '15', '40');
INSERT INTO `approvalprocesses` VALUES ('4', '离职审批开始', '0', '5', '3', '19', '47');
INSERT INTO `approvalprocesses` VALUES ('5', '行政人员审批', '4', '6', '3', '16', '47');
INSERT INTO `approvalprocesses` VALUES ('6', 'HR审批', '5', '0', '3', '15', '47');

-- ----------------------------
-- Table structure for approvalrecords
-- ----------------------------
DROP TABLE IF EXISTS `approvalrecords`;
CREATE TABLE `approvalrecords` (
  `Id` int(11) NOT NULL,
  `ApprovalItemsId` int(11) DEFAULT NULL,
  `LastApprover` varchar(10) DEFAULT NULL,
  `NextApprover` varchar(10) DEFAULT NULL,
  `ApprovalState` int(11) DEFAULT NULL,
  `ApprovalDate` date DEFAULT NULL,
  `Comment` varchar(10) DEFAULT NULL,
  `ApprovalType_Id` int(11) DEFAULT NULL,
  `ApprovalProcess_Id` int(11) DEFAULT NULL,
  `Approver_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approvalrecords
-- ----------------------------
INSERT INTO `approvalrecords` VALUES ('3', '8', '0', '7,3,', '1', '2016-10-17', '', '3', '4', '1');
INSERT INTO `approvalrecords` VALUES ('4', '14', '0', '7,3,', '1', '2016-10-19', '', '2', '1', '1');
INSERT INTO `approvalrecords` VALUES ('5', '15', '0', '7,3,', '1', '2016-10-19', '', '2', '1', '1');
INSERT INTO `approvalrecords` VALUES ('6', '11', '0', '7,3,', '1', '2016-10-24', '', '3', '4', '12');
INSERT INTO `approvalrecords` VALUES ('7', '20', '0', '7,3,', '1', '2016-10-25', '', '2', '1', '1');
INSERT INTO `approvalrecords` VALUES ('8', '17', '0', '7,3,', '1', '2016-10-25', '', '3', '4', '12');
INSERT INTO `approvalrecords` VALUES ('9', '21', '0', '7,3,', '1', '2016-10-25', '', '2', '1', '12');
INSERT INTO `approvalrecords` VALUES ('10', '18', '0', '7,3,', '1', '2016-10-25', '', '3', '4', '1');
INSERT INTO `approvalrecords` VALUES ('11', '19', '0', '7,3,', '1', '2016-10-25', '', '3', '4', '1');

-- ----------------------------
-- Table structure for approvaltypes
-- ----------------------------
DROP TABLE IF EXISTS `approvaltypes`;
CREATE TABLE `approvaltypes` (
  `Id` int(11) DEFAULT NULL,
  `TypeName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approvaltypes
-- ----------------------------
INSERT INTO `approvaltypes` VALUES ('1', '财务审批');
INSERT INTO `approvaltypes` VALUES ('2', '入职审批');
INSERT INTO `approvaltypes` VALUES ('3', '离职审批');

-- ----------------------------
-- Table structure for articlecategories
-- ----------------------------
DROP TABLE IF EXISTS `articlecategories`;
CREATE TABLE `articlecategories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `LevelPath` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articlecategories
-- ----------------------------
INSERT INTO `articlecategories` VALUES ('1', '工作日程', '0', '0');
INSERT INTO `articlecategories` VALUES ('2', '通知', '1', '1');
INSERT INTO `articlecategories` VALUES ('3', '公文', '1', '1');
INSERT INTO `articlecategories` VALUES ('4', 'ooo', '3', '1');
INSERT INTO `articlecategories` VALUES ('5', '待审核事项', '2', '2');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Origin` varchar(255) DEFAULT NULL,
  `QuoteUrl` varchar(2555) DEFAULT NULL,
  `Content` varchar(2555) DEFAULT NULL,
  `IsTop` int(11) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `Hits` int(11) DEFAULT NULL,
  `AuditorName` varchar(255) DEFAULT NULL,
  `AuditStatus` int(11) DEFAULT NULL,
  `AuditTime` date DEFAULT NULL,
  `EditorName` varchar(255) DEFAULT NULL,
  `CreateTime` date DEFAULT NULL,
  `UpdateTime` date DEFAULT NULL,
  `Auditor_Id` int(11) DEFAULT NULL,
  `Editor_Id` int(11) DEFAULT NULL,
  `Category_Id` int(11) DEFAULT NULL,
  `AnotherCategory_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('8', 'aaayy45', 'aaaaatt', 'yyytt', '', '<p>yyyyyyyaasd<img src=\"http://img.baidu.com/hi/jx2/j_0013.gif\"/></p>', '0', '0', '11', 'admin', '1', '2017-03-08', 'admin', '2017-03-08', '2017-03-30', null, null, '1', null);
INSERT INTO `articles` VALUES ('9', 'qqqqq33', 'qqqq', 'qqq', '', '<p>qqqqq</p>', '0', '1', '11', 'admin', '1', '2017-03-08', 'admin', '2017-03-08', '2017-03-30', null, null, '1', null);
INSERT INTO `articles` VALUES ('14', 'www22', 'www', 'www', 'www.baidu.com', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0030.gif\"/></p>', '0', '1', '11', 'admin', '1', '2017-03-13', null, '2017-03-13', '2017-03-30', '1', '0', '1', '0');
INSERT INTO `articles` VALUES ('15', '测试3', '赵璐', '百度文库', 'www.baidu.com', '<p>中国外汇交易中心新系统开发<img src=\"http://img.baidu.com/hi/jx2/j_0013.gif\"/></p>', '1', '0', '11', 'admin', '1', '2017-03-29', null, '2017-03-15', '2017-03-30', '1', '0', '1', '0');
INSERT INTO `articles` VALUES ('16', 'zl1', 'zl1', 'baidu', 'www.baidu.com', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>', '0', '1', '11', null, '0', '2017-03-25', null, '2017-03-25', '2017-03-30', '0', '0', '1', '0');
INSERT INTO `articles` VALUES ('17', 'uuu3', 'uuu', 'uuuu', '', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0036.gif\"/>111</p>', '0', '1', '11', null, '0', '2017-03-30', null, '2017-03-30', '2017-03-30', '0', '0', '1', '0');
INSERT INTO `articles` VALUES ('18', 'luy', 'luy', 'luy', '', '<p>asdfasdfa</p>', '0', '1', '11', null, '0', '2017-03-31', null, '2017-03-31', '2017-03-31', '0', '0', '3', '0');
INSERT INTO `articles` VALUES ('19', 'yyiy', 'yyiy', 'yyiy', '', '<p>asdfasdfsdf</p>', '1', '0', '11', null, '0', '2017-03-31', null, '2017-03-31', '2017-03-31', '0', '0', '3', '0');
INSERT INTO `articles` VALUES ('20', '恒天OA', 'CEO', '腾讯', '', null, '0', '1', '11', null, '0', '2017-04-06', null, '2017-04-06', '2017-04-06', '0', '0', '1', '0');
INSERT INTO `articles` VALUES ('21', '恒天OA', 'sad', '爱上大声地', '', null, '0', '1', '11', null, '0', '2017-04-06', null, '2017-04-06', '2017-04-06', '0', '0', '2', '0');

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `Id` int(11) NOT NULL,
  `BankName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES ('1', '中国工商银行');
INSERT INTO `banks` VALUES ('2', '中国农业银行');
INSERT INTO `banks` VALUES ('3', '中国银行');
INSERT INTO `banks` VALUES ('4', '中国建设银行');
INSERT INTO `banks` VALUES ('6', '杭州银行');

-- ----------------------------
-- Table structure for basicinformations
-- ----------------------------
DROP TABLE IF EXISTS `basicinformations`;
CREATE TABLE `basicinformations` (
  `Id` int(11) NOT NULL,
  `CompanyShortName` varchar(10) DEFAULT NULL,
  `CompanyDetailName` varchar(10) DEFAULT NULL,
  `LogoUrl` varchar(10) DEFAULT NULL,
  `Content` varchar(10) DEFAULT NULL,
  `Layout` varchar(10) DEFAULT NULL,
  `CEO` varchar(10) DEFAULT NULL,
  `Theme` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basicinformations
-- ----------------------------
INSERT INTO `basicinformations` VALUES ('1', '群畅金融', '群畅金融', '../../uplo', '     上海群畅金', '1:1:1', '2', null);

-- ----------------------------
-- Table structure for caches
-- ----------------------------
DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `Id` int(11) NOT NULL,
  `Token` varchar(10) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `UserId_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caches
-- ----------------------------
INSERT INTO `caches` VALUES ('2', '3b55586b-0', '200000', '2');
INSERT INTO `caches` VALUES ('3', '83091405-0', '200000', '5');
INSERT INTO `caches` VALUES ('4', 'e431f42d-6', '200000', '7');
INSERT INTO `caches` VALUES ('5', '160b84c5-3', '200000', '4');
INSERT INTO `caches` VALUES ('7', 'a7f2b989-1', '200000', '9');
INSERT INTO `caches` VALUES ('8', '2e206797-1', '200000', '3');
INSERT INTO `caches` VALUES ('9', 'cf3af2d2-4', '200000', '10');
INSERT INTO `caches` VALUES ('10', 'bf7367a4-9', '200000', '6');
INSERT INTO `caches` VALUES ('11', 'b3c56b87-2', '200000', '12');
INSERT INTO `caches` VALUES ('12', '2c53b400-a', '200000', '13');
INSERT INTO `caches` VALUES ('13', '2cd65213-e', '200000', '15');
INSERT INTO `caches` VALUES ('14', '81b5c655-a', '200000', '18');
INSERT INTO `caches` VALUES ('15', 'd8a53bb0-c', '200000', '22');
INSERT INTO `caches` VALUES ('16', '1854fed3-9', '200000', '1');

-- ----------------------------
-- Table structure for claimdetails
-- ----------------------------
DROP TABLE IF EXISTS `claimdetails`;
CREATE TABLE `claimdetails` (
  `Id` int(11) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `DefaultRate` double DEFAULT NULL,
  `DefinedRate` double DEFAULT NULL,
  `Comment` varchar(10) DEFAULT NULL,
  `ProjectUid` int(11) DEFAULT NULL,
  `Request_Id` int(11) DEFAULT NULL,
  `ExpenseType_Id` int(11) DEFAULT NULL,
  `Currency_Id` int(11) DEFAULT NULL,
  `Manager_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claimdetails
-- ----------------------------
INSERT INTO `claimdetails` VALUES ('1', '2016-02-01', 'rr', '120', '1', '1', 'rr', '4', '1', '2', '1', '7');
INSERT INTO `claimdetails` VALUES ('2', '2016-02-02', 'ss', '123', '1', '1', 'ss', '4', '2', '2', '1', '7');
INSERT INTO `claimdetails` VALUES ('3', '2016-02-01', '222', '222', '1', '1', '222', '4', '3', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('4', '2016-02-01', '11', '12121', '1', '1', '11', '4', '4', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('5', '2016-07-01', 'df', '123', '1', '1', 'df', '4', '5', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('6', '2016-07-01', 'df', '123', '1', '1', 'df', '4', '6', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('7', '2016-06-30', '11', '111', '1', '1', '11', '4', '7', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('8', '2016-07-03', 'dfd', '12', '1', '1', 'dfd', '4', '8', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('9', '2016-07-03', 'dfd', '12', '1', '1', 'dfd', '4', '9', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('10', '2016-07-03', 'dfd', '12', '1', '1', 'dfd', '4', '10', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('11', '2016-07-01', 'df', '12', '1', '1', 'df', '4', '11', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('12', '2016-07-15', 'df', '123', '1', '1', 'df', '4', '12', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('13', '2016-07-07', 'df', '1201', '1', '1', 'df', '4', '13', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('14', '2016-07-15', '11', '100', '1', '1', '11', '4', '14', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('15', '2016-07-27', '1', '100', '1', '1', '1', '4', '15', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('16', '2016-07-06', '1', '111', '1', '1', '1', '4', '16', '2', '1', '4');
INSERT INTO `claimdetails` VALUES ('17', '2016-10-25', '工作需要', '100000', '1', '1', '电话联系', '4', '17', '2', '1', '4');

-- ----------------------------
-- Table structure for claimrequests
-- ----------------------------
DROP TABLE IF EXISTS `claimrequests`;
CREATE TABLE `claimrequests` (
  `Id` int(11) NOT NULL,
  `RequestID` varchar(10) DEFAULT NULL,
  `RequestedDate` date DEFAULT NULL,
  `Account` varchar(10) DEFAULT NULL,
  `DefaultRate` double DEFAULT NULL,
  `DefinedRate` double DEFAULT NULL,
  `ReceiptCount` int(11) DEFAULT NULL,
  `IsChargedBack` int(11) DEFAULT NULL,
  `ChargedFrom` varchar(10) DEFAULT NULL,
  `PayCash` int(11) DEFAULT NULL,
  `PaidDefaultRate` double DEFAULT NULL,
  `PaidDefinedRate` double DEFAULT NULL,
  `RequestStatus` varchar(10) DEFAULT NULL,
  `AcceptedDate` date DEFAULT NULL,
  `AcceptedComment` varchar(10) DEFAULT NULL,
  `ApprovedDate` date DEFAULT NULL,
  `ApprovedComment` varchar(10) DEFAULT NULL,
  `PayStatus` varchar(10) DEFAULT NULL,
  `PaidDate` date DEFAULT NULL,
  `ClosedDate` date DEFAULT NULL,
  `BookDate` date DEFAULT NULL,
  `MultiCenter` int(11) DEFAULT NULL,
  `LegalEntity` varchar(10) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `Manager_Id` int(11) DEFAULT NULL,
  `Currency_Id` int(11) DEFAULT NULL,
  `PaidCurrency_Id` int(11) DEFAULT NULL,
  `Applicant_Id` int(11) DEFAULT NULL,
  `Project_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claimrequests
-- ----------------------------
INSERT INTO `claimrequests` VALUES ('1', '5', '2016-02-01', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-10-19', '0', '2016-10-19', '0', '1', '2016-10-19', '2016-10-19', '2016-10-19', '0', '1', '5', '7', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('2', '5', '2016-02-01', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-10-25', '0', '2016-10-25', '0', '1', '2016-10-25', '2016-10-25', '2016-10-25', '0', '1', '5', '7', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('3', '5', '2016-02-01', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-02-01', '0', '2016-02-01', '0', '0', '2016-02-01', '2016-02-01', '2016-02-01', '0', '1', '5', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('4', '5', '2016-02-01', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-02-01', '0', '2016-02-01', '0', '0', '2016-02-01', '2016-02-01', '2016-02-01', '0', '1', '5', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('5', '2', '2016-10-25', '', '8.28', '8.28', '1', '0', '', '0', '1', '1', '0', '2016-10-25', 'hah', '2016-10-25', 'hah', '0', '2016-10-25', '2016-10-25', '2016-10-25', '0', '1', '2', '4', '3', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('6', '2', '2016-07-12', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '0', '2016-07-12', '0', '2016-07-12', '0', '0', '2016-07-12', '2016-07-12', '2016-07-12', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('7', '2', '2016-07-12', '1111111111', '1', '1', '1', '0', '', '0', '1', '1', '0', '2016-07-12', '0', '2016-07-12', '0', '0', '2016-07-12', '2016-07-12', '2016-07-12', '0', '1', '2', '4', '1', '1', '4', '4');
INSERT INTO `claimrequests` VALUES ('8', '2', '2016-07-12', '1212121212', '1', '1', '2', '0', '', '0', '1', '1', '0', '2016-07-12', '0', '2016-07-12', '0', '0', '2016-07-12', '2016-07-12', '2016-07-12', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('9', '2', '2016-07-12', '1212121212', '1', '1', '2', '0', '', '0', '1', '1', '0', '2016-07-12', '0', '2016-07-12', '0', '0', '2016-07-12', '2016-07-12', '2016-07-12', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('10', '2', '2016-07-12', '1212121212', '1', '1', '2', '0', '', '0', '1', '1', '0', '2016-07-12', '0', '2016-07-12', '0', '0', '2016-07-12', '2016-07-12', '2016-07-12', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('11', '2', '2016-07-12', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-07-15', '0', '2016-07-15', '0', '1', '2016-07-15', '2016-07-15', '2016-07-15', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('12', '2', '2016-10-25', '', '1', '1', '1', '0', '', '0', '1', '1', '0', '2016-10-25', 'hah', '2016-10-25', 'hah', '0', '2016-10-25', '2016-10-25', '2016-10-25', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('13', '2', '2016-10-25', '', '6.74', '6.74', '1', '0', '', '0', '1', '1', '0', '2016-10-25', 'hah', '2016-10-25', 'hah', '0', '2016-10-25', '2016-10-25', '2016-10-25', '0', '1', '2', '4', '2', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('14', '2', '2016-07-12', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-10-25', '0', '2016-10-25', '0', '1', '2016-10-25', '2016-10-25', '2016-10-25', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('15', '2', '2016-07-12', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-10-19', '0', '2016-10-19', '0', '0', '2016-10-19', '2016-10-19', '2016-10-19', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('16', '2', '2016-07-12', '1212121212', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-10-13', '0', '2016-10-13', '0', '1', '2016-10-13', '2016-10-13', '2016-10-13', '0', '1', '2', '4', '1', '1', '5', '4');
INSERT INTO `claimrequests` VALUES ('17', '15', '2016-10-25', '1234567890', '1', '1', '1', '0', '', '0', '1', '1', '1', '2016-10-31', '0', '2016-10-31', '0', '0', '2016-10-31', '2016-10-31', '2016-10-31', '0', '1', '15', '4', '1', '1', '15', null);

-- ----------------------------
-- Table structure for currencys
-- ----------------------------
DROP TABLE IF EXISTS `currencys`;
CREATE TABLE `currencys` (
  `Id` int(11) NOT NULL,
  `CurrencyName` varchar(10) DEFAULT NULL,
  `Rate` double DEFAULT NULL,
  `UpdatedDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of currencys
-- ----------------------------
INSERT INTO `currencys` VALUES ('1', '人民币', '1', '2015-08-01');
INSERT INTO `currencys` VALUES ('2', '美元', '6.74', '2016-10-19');
INSERT INTO `currencys` VALUES ('3', '英镑', '8.28', '2016-10-25');

-- ----------------------------
-- Table structure for desktops
-- ----------------------------
DROP TABLE IF EXISTS `desktops`;
CREATE TABLE `desktops` (
  `Id` int(11) DEFAULT NULL,
  `Icon` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `IsShow` int(11) DEFAULT NULL,
  `Url` varchar(100) DEFAULT NULL,
  `Rank` int(11) DEFAULT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  `MenuId_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of desktops
-- ----------------------------
INSERT INTO `desktops` VALUES ('1', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '1', '4');
INSERT INTO `desktops` VALUES ('2', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '1', '5');
INSERT INTO `desktops` VALUES ('3', null, '文章添加', '0', '/PortalNews/AddNews', '3', '1', '6');
INSERT INTO `desktops` VALUES ('4', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '1', '7');
INSERT INTO `desktops` VALUES ('5', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '1', '8');
INSERT INTO `desktops` VALUES ('6', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '1', '9');
INSERT INTO `desktops` VALUES ('7', null, '权限管理', '0', '/Auth/Index', '7', '1', '19');
INSERT INTO `desktops` VALUES ('8', null, '文件管理', '0', '/File/Index', '8', '1', '21');
INSERT INTO `desktops` VALUES ('9', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '1', '23');
INSERT INTO `desktops` VALUES ('10', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '1', '24');
INSERT INTO `desktops` VALUES ('11', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '1', '25');
INSERT INTO `desktops` VALUES ('12', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '1', '28');
INSERT INTO `desktops` VALUES ('13', null, '银行管理', '0', '/Banks/BankManagement', '13', '1', '29');
INSERT INTO `desktops` VALUES ('14', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '1', '30');
INSERT INTO `desktops` VALUES ('15', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '1', '31');
INSERT INTO `desktops` VALUES ('16', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '1', '32');
INSERT INTO `desktops` VALUES ('17', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '1', '33');
INSERT INTO `desktops` VALUES ('18', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '1', '34');
INSERT INTO `desktops` VALUES ('19', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '1', '36');
INSERT INTO `desktops` VALUES ('20', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '1', '37');
INSERT INTO `desktops` VALUES ('21', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '1', '38');
INSERT INTO `desktops` VALUES ('22', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '1', '40');
INSERT INTO `desktops` VALUES ('23', null, '分类管理', '0', '/News/TypeManagement', '23', '1', '42');
INSERT INTO `desktops` VALUES ('24', null, '新闻管理', '0', '/News/NewsManagement', '24', '1', '43');
INSERT INTO `desktops` VALUES ('25', null, '新闻添加', '0', '/News/AddNews', '25', '1', '44');
INSERT INTO `desktops` VALUES ('26', null, '用户管理', '0', '/UserManage/Index', '26', '1', '46');
INSERT INTO `desktops` VALUES ('27', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '1', '47');
INSERT INTO `desktops` VALUES ('28', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '1', '48');
INSERT INTO `desktops` VALUES ('29', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '1', '49');
INSERT INTO `desktops` VALUES ('30', null, '系统配置', '0', '/Configuration/Index', '30', '1', '52');
INSERT INTO `desktops` VALUES ('31', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '1', '53');
INSERT INTO `desktops` VALUES ('32', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '1', '56');
INSERT INTO `desktops` VALUES ('33', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '1', '57');
INSERT INTO `desktops` VALUES ('34', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '1', '58');
INSERT INTO `desktops` VALUES ('35', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '1', '59');
INSERT INTO `desktops` VALUES ('36', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '1', '61');
INSERT INTO `desktops` VALUES ('37', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '1', '62');
INSERT INTO `desktops` VALUES ('38', null, '设计流程', '0', '/WorkFlow/Designer', '38', '1', '65');
INSERT INTO `desktops` VALUES ('39', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '1', '66');
INSERT INTO `desktops` VALUES ('40', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '1', '67');
INSERT INTO `desktops` VALUES ('41', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '1', '69');
INSERT INTO `desktops` VALUES ('42', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '1', '70');
INSERT INTO `desktops` VALUES ('43', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '2', '4');
INSERT INTO `desktops` VALUES ('44', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '2', '5');
INSERT INTO `desktops` VALUES ('45', null, '文章添加', '0', '/PortalNews/AddNews', '4', '2', '6');
INSERT INTO `desktops` VALUES ('46', null, '部门管理', '0', '/PortalTalent/DepManagement', '5', '2', '7');
INSERT INTO `desktops` VALUES ('47', null, '招聘管理', '0', '/PortalTalent/JobManagement', '35', '2', '8');
INSERT INTO `desktops` VALUES ('48', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '8', '2', '9');
INSERT INTO `desktops` VALUES ('49', null, '权限管理', '0', '/Auth/Index', '7', '2', '19');
INSERT INTO `desktops` VALUES ('50', null, '文件管理', '0', '/File/Index', '9', '2', '21');
INSERT INTO `desktops` VALUES ('51', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '7', '2', '23');
INSERT INTO `desktops` VALUES ('52', null, '入职管理', '1', '/HumanResource/EnrollManagement', '37', '2', '24');
INSERT INTO `desktops` VALUES ('53', null, '离职管理', '0', '/HumanResource/ResignManagement', '12', '2', '25');
INSERT INTO `desktops` VALUES ('54', null, '账户管理', '1', '/Accounts/AccountManagement', '13', '2', '28');
INSERT INTO `desktops` VALUES ('55', null, '银行管理', '1', '/Banks/BankManagement', '19', '2', '29');
INSERT INTO `desktops` VALUES ('56', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '2', '30');
INSERT INTO `desktops` VALUES ('57', null, '货币管理', '0', '/Currencys/CurrencyManagement', '3', '2', '31');
INSERT INTO `desktops` VALUES ('58', null, '报销申请', '1', '/ClaimRequests/PersonalClaimManagement', '15', '2', '32');
INSERT INTO `desktops` VALUES ('59', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '25', '2', '33');
INSERT INTO `desktops` VALUES ('60', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '16', '2', '34');
INSERT INTO `desktops` VALUES ('61', null, '分类管理', '1', '/Announcement/AnnouncementTypeManagement', '27', '2', '36');
INSERT INTO `desktops` VALUES ('62', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '36', '2', '37');
INSERT INTO `desktops` VALUES ('63', null, '公文添加', '1', '/Announcement/AddAnnouncement', '8', '2', '38');
INSERT INTO `desktops` VALUES ('64', null, '组织管理', '0', '/Organization/OrganizationManagement', '26', '2', '40');
INSERT INTO `desktops` VALUES ('65', null, '分类管理', '0', '/News/TypeManagement', '29', '2', '42');
INSERT INTO `desktops` VALUES ('66', null, '新闻管理', '1', '/News/NewsManagement', '38', '2', '43');
INSERT INTO `desktops` VALUES ('67', null, '新闻添加', '0', '/News/AddNews', '22', '2', '44');
INSERT INTO `desktops` VALUES ('68', null, '用户管理', '1', '/UserManage/Index', '23', '2', '46');
INSERT INTO `desktops` VALUES ('69', null, '入职审批', '0', '/HumanResource/EnrollApproval', '24', '2', '47');
INSERT INTO `desktops` VALUES ('70', null, '离职审批', '1', '/HumanResource/ResignApproval', '32', '2', '48');
INSERT INTO `desktops` VALUES ('71', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '16', '2', '49');
INSERT INTO `desktops` VALUES ('72', null, '系统配置', '1', '/Configuration/Index', '34', '2', '52');
INSERT INTO `desktops` VALUES ('73', null, '操作日志', '1', '/Common/OperationLogsManage', '17', '2', '53');
INSERT INTO `desktops` VALUES ('74', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '18', '2', '56');
INSERT INTO `desktops` VALUES ('75', null, '加班申请', '1', '/LeaveAndOverTime/OverTimeManage', '28', '2', '57');
INSERT INTO `desktops` VALUES ('76', null, '请假审批', '1', '/LeaveAndOverTime/LeaveTimeCheck', '30', '2', '58');
INSERT INTO `desktops` VALUES ('77', null, '加班审批', '1', '/LeaveAndOverTime/OverTimeCheck', '36', '2', '59');
INSERT INTO `desktops` VALUES ('78', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '20', '2', '61');
INSERT INTO `desktops` VALUES ('79', null, '休假管理', '1', '/LeaveAndOverTime/StaffWelfareManagement', '21', '2', '62');
INSERT INTO `desktops` VALUES ('80', null, '设计流程', '0', '/WorkFlow/Designer', '6', '2', '65');
INSERT INTO `desktops` VALUES ('81', null, '流程管理', '0', '/WorkFlow/FlowManage', '6', '2', '66');
INSERT INTO `desktops` VALUES ('82', null, '可发起流程', '1', '/WorkFlow/InitiateWorkFlow', '17', '2', '67');
INSERT INTO `desktops` VALUES ('83', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '33', '2', '69');
INSERT INTO `desktops` VALUES ('84', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '31', '2', '70');
INSERT INTO `desktops` VALUES ('85', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '5', '4');
INSERT INTO `desktops` VALUES ('86', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '5', '5');
INSERT INTO `desktops` VALUES ('87', null, '文章添加', '0', '/PortalNews/AddNews', '3', '5', '6');
INSERT INTO `desktops` VALUES ('88', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '5', '7');
INSERT INTO `desktops` VALUES ('89', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '5', '8');
INSERT INTO `desktops` VALUES ('90', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '5', '9');
INSERT INTO `desktops` VALUES ('91', null, '权限管理', '0', '/Auth/Index', '7', '5', '19');
INSERT INTO `desktops` VALUES ('92', null, '文件管理', '0', '/File/Index', '8', '5', '21');
INSERT INTO `desktops` VALUES ('93', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '5', '23');
INSERT INTO `desktops` VALUES ('94', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '5', '24');
INSERT INTO `desktops` VALUES ('95', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '5', '25');
INSERT INTO `desktops` VALUES ('96', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '5', '28');
INSERT INTO `desktops` VALUES ('97', null, '银行管理', '0', '/Banks/BankManagement', '13', '5', '29');
INSERT INTO `desktops` VALUES ('98', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '5', '30');
INSERT INTO `desktops` VALUES ('99', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '5', '31');
INSERT INTO `desktops` VALUES ('100', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '5', '32');
INSERT INTO `desktops` VALUES ('101', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '5', '33');
INSERT INTO `desktops` VALUES ('102', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '5', '34');
INSERT INTO `desktops` VALUES ('103', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '5', '36');
INSERT INTO `desktops` VALUES ('104', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '5', '37');
INSERT INTO `desktops` VALUES ('105', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '5', '38');
INSERT INTO `desktops` VALUES ('106', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '5', '40');
INSERT INTO `desktops` VALUES ('107', null, '分类管理', '0', '/News/TypeManagement', '23', '5', '42');
INSERT INTO `desktops` VALUES ('108', null, '新闻管理', '0', '/News/NewsManagement', '24', '5', '43');
INSERT INTO `desktops` VALUES ('109', null, '新闻添加', '0', '/News/AddNews', '25', '5', '44');
INSERT INTO `desktops` VALUES ('110', null, '用户管理', '0', '/UserManage/Index', '26', '5', '46');
INSERT INTO `desktops` VALUES ('111', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '5', '47');
INSERT INTO `desktops` VALUES ('112', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '5', '48');
INSERT INTO `desktops` VALUES ('113', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '5', '49');
INSERT INTO `desktops` VALUES ('114', null, '系统配置', '0', '/Configuration/Index', '30', '5', '52');
INSERT INTO `desktops` VALUES ('115', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '5', '53');
INSERT INTO `desktops` VALUES ('116', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '5', '56');
INSERT INTO `desktops` VALUES ('117', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '5', '57');
INSERT INTO `desktops` VALUES ('118', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '5', '58');
INSERT INTO `desktops` VALUES ('119', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '5', '59');
INSERT INTO `desktops` VALUES ('120', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '5', '61');
INSERT INTO `desktops` VALUES ('121', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '5', '62');
INSERT INTO `desktops` VALUES ('122', null, '设计流程', '0', '/WorkFlow/Designer', '38', '5', '65');
INSERT INTO `desktops` VALUES ('123', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '5', '66');
INSERT INTO `desktops` VALUES ('124', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '5', '67');
INSERT INTO `desktops` VALUES ('125', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '5', '69');
INSERT INTO `desktops` VALUES ('126', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '5', '70');
INSERT INTO `desktops` VALUES ('127', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '5', '71');
INSERT INTO `desktops` VALUES ('128', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '3', '4');
INSERT INTO `desktops` VALUES ('129', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '3', '5');
INSERT INTO `desktops` VALUES ('130', null, '文章添加', '0', '/PortalNews/AddNews', '3', '3', '6');
INSERT INTO `desktops` VALUES ('131', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '3', '7');
INSERT INTO `desktops` VALUES ('132', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '3', '8');
INSERT INTO `desktops` VALUES ('133', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '3', '9');
INSERT INTO `desktops` VALUES ('134', null, '权限管理', '0', '/Auth/Index', '7', '3', '19');
INSERT INTO `desktops` VALUES ('135', null, '文件管理', '0', '/File/Index', '8', '3', '21');
INSERT INTO `desktops` VALUES ('136', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '3', '23');
INSERT INTO `desktops` VALUES ('137', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '3', '24');
INSERT INTO `desktops` VALUES ('138', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '3', '25');
INSERT INTO `desktops` VALUES ('139', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '3', '28');
INSERT INTO `desktops` VALUES ('140', null, '银行管理', '0', '/Banks/BankManagement', '13', '3', '29');
INSERT INTO `desktops` VALUES ('141', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '3', '30');
INSERT INTO `desktops` VALUES ('142', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '3', '31');
INSERT INTO `desktops` VALUES ('143', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '3', '32');
INSERT INTO `desktops` VALUES ('144', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '3', '33');
INSERT INTO `desktops` VALUES ('145', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '3', '34');
INSERT INTO `desktops` VALUES ('146', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '3', '36');
INSERT INTO `desktops` VALUES ('147', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '3', '37');
INSERT INTO `desktops` VALUES ('148', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '3', '38');
INSERT INTO `desktops` VALUES ('149', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '3', '40');
INSERT INTO `desktops` VALUES ('150', null, '分类管理', '0', '/News/TypeManagement', '23', '3', '42');
INSERT INTO `desktops` VALUES ('151', null, '新闻管理', '0', '/News/NewsManagement', '24', '3', '43');
INSERT INTO `desktops` VALUES ('152', null, '新闻添加', '0', '/News/AddNews', '25', '3', '44');
INSERT INTO `desktops` VALUES ('153', null, '用户管理', '0', '/UserManage/Index', '26', '3', '46');
INSERT INTO `desktops` VALUES ('154', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '3', '47');
INSERT INTO `desktops` VALUES ('155', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '3', '48');
INSERT INTO `desktops` VALUES ('156', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '3', '49');
INSERT INTO `desktops` VALUES ('157', null, '系统配置', '0', '/Configuration/Index', '30', '3', '52');
INSERT INTO `desktops` VALUES ('158', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '3', '53');
INSERT INTO `desktops` VALUES ('159', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '3', '56');
INSERT INTO `desktops` VALUES ('160', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '3', '57');
INSERT INTO `desktops` VALUES ('161', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '3', '58');
INSERT INTO `desktops` VALUES ('162', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '3', '59');
INSERT INTO `desktops` VALUES ('163', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '3', '61');
INSERT INTO `desktops` VALUES ('164', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '3', '62');
INSERT INTO `desktops` VALUES ('165', null, '设计流程', '0', '/WorkFlow/Designer', '38', '3', '65');
INSERT INTO `desktops` VALUES ('166', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '3', '66');
INSERT INTO `desktops` VALUES ('167', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '3', '67');
INSERT INTO `desktops` VALUES ('168', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '3', '69');
INSERT INTO `desktops` VALUES ('169', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '3', '70');
INSERT INTO `desktops` VALUES ('170', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '3', '71');
INSERT INTO `desktops` VALUES ('171', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '9', '4');
INSERT INTO `desktops` VALUES ('172', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '9', '5');
INSERT INTO `desktops` VALUES ('173', null, '文章添加', '0', '/PortalNews/AddNews', '3', '9', '6');
INSERT INTO `desktops` VALUES ('174', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '9', '7');
INSERT INTO `desktops` VALUES ('175', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '9', '8');
INSERT INTO `desktops` VALUES ('176', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '9', '9');
INSERT INTO `desktops` VALUES ('177', null, '权限管理', '0', '/Auth/Index', '7', '9', '19');
INSERT INTO `desktops` VALUES ('178', null, '文件管理', '0', '/File/Index', '8', '9', '21');
INSERT INTO `desktops` VALUES ('179', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '9', '23');
INSERT INTO `desktops` VALUES ('180', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '9', '24');
INSERT INTO `desktops` VALUES ('181', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '9', '25');
INSERT INTO `desktops` VALUES ('182', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '9', '28');
INSERT INTO `desktops` VALUES ('183', null, '银行管理', '0', '/Banks/BankManagement', '13', '9', '29');
INSERT INTO `desktops` VALUES ('184', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '9', '30');
INSERT INTO `desktops` VALUES ('185', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '9', '31');
INSERT INTO `desktops` VALUES ('186', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '9', '32');
INSERT INTO `desktops` VALUES ('187', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '9', '33');
INSERT INTO `desktops` VALUES ('188', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '9', '34');
INSERT INTO `desktops` VALUES ('189', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '9', '36');
INSERT INTO `desktops` VALUES ('190', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '9', '37');
INSERT INTO `desktops` VALUES ('191', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '9', '38');
INSERT INTO `desktops` VALUES ('192', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '9', '40');
INSERT INTO `desktops` VALUES ('193', null, '分类管理', '0', '/News/TypeManagement', '23', '9', '42');
INSERT INTO `desktops` VALUES ('194', null, '新闻管理', '0', '/News/NewsManagement', '24', '9', '43');
INSERT INTO `desktops` VALUES ('195', null, '新闻添加', '0', '/News/AddNews', '25', '9', '44');
INSERT INTO `desktops` VALUES ('196', null, '用户管理', '0', '/UserManage/Index', '26', '9', '46');
INSERT INTO `desktops` VALUES ('197', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '9', '47');
INSERT INTO `desktops` VALUES ('198', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '9', '48');
INSERT INTO `desktops` VALUES ('199', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '9', '49');
INSERT INTO `desktops` VALUES ('200', null, '系统配置', '0', '/Configuration/Index', '30', '9', '52');
INSERT INTO `desktops` VALUES ('201', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '9', '53');
INSERT INTO `desktops` VALUES ('202', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '9', '56');
INSERT INTO `desktops` VALUES ('203', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '9', '57');
INSERT INTO `desktops` VALUES ('204', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '9', '58');
INSERT INTO `desktops` VALUES ('205', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '9', '59');
INSERT INTO `desktops` VALUES ('206', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '9', '61');
INSERT INTO `desktops` VALUES ('207', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '9', '62');
INSERT INTO `desktops` VALUES ('208', null, '设计流程', '0', '/WorkFlow/Designer', '38', '9', '65');
INSERT INTO `desktops` VALUES ('209', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '9', '66');
INSERT INTO `desktops` VALUES ('210', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '9', '67');
INSERT INTO `desktops` VALUES ('211', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '9', '69');
INSERT INTO `desktops` VALUES ('212', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '9', '70');
INSERT INTO `desktops` VALUES ('213', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '9', '71');
INSERT INTO `desktops` VALUES ('214', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '4', '4');
INSERT INTO `desktops` VALUES ('215', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '4', '5');
INSERT INTO `desktops` VALUES ('216', null, '文章添加', '0', '/PortalNews/AddNews', '3', '4', '6');
INSERT INTO `desktops` VALUES ('217', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '4', '7');
INSERT INTO `desktops` VALUES ('218', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '4', '8');
INSERT INTO `desktops` VALUES ('219', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '4', '9');
INSERT INTO `desktops` VALUES ('220', null, '权限管理', '0', '/Auth/Index', '7', '4', '19');
INSERT INTO `desktops` VALUES ('221', null, '文件管理', '0', '/File/Index', '8', '4', '21');
INSERT INTO `desktops` VALUES ('222', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '4', '23');
INSERT INTO `desktops` VALUES ('223', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '4', '24');
INSERT INTO `desktops` VALUES ('224', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '4', '25');
INSERT INTO `desktops` VALUES ('225', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '4', '28');
INSERT INTO `desktops` VALUES ('226', null, '银行管理', '0', '/Banks/BankManagement', '13', '4', '29');
INSERT INTO `desktops` VALUES ('227', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '4', '30');
INSERT INTO `desktops` VALUES ('228', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '4', '31');
INSERT INTO `desktops` VALUES ('229', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '4', '32');
INSERT INTO `desktops` VALUES ('230', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '4', '33');
INSERT INTO `desktops` VALUES ('231', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '4', '34');
INSERT INTO `desktops` VALUES ('232', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '4', '36');
INSERT INTO `desktops` VALUES ('233', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '4', '37');
INSERT INTO `desktops` VALUES ('234', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '4', '38');
INSERT INTO `desktops` VALUES ('235', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '4', '40');
INSERT INTO `desktops` VALUES ('236', null, '分类管理', '0', '/News/TypeManagement', '23', '4', '42');
INSERT INTO `desktops` VALUES ('237', null, '新闻管理', '0', '/News/NewsManagement', '24', '4', '43');
INSERT INTO `desktops` VALUES ('238', null, '新闻添加', '0', '/News/AddNews', '25', '4', '44');
INSERT INTO `desktops` VALUES ('239', null, '用户管理', '0', '/UserManage/Index', '26', '4', '46');
INSERT INTO `desktops` VALUES ('240', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '4', '47');
INSERT INTO `desktops` VALUES ('241', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '4', '48');
INSERT INTO `desktops` VALUES ('242', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '4', '49');
INSERT INTO `desktops` VALUES ('243', null, '系统配置', '0', '/Configuration/Index', '30', '4', '52');
INSERT INTO `desktops` VALUES ('244', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '4', '53');
INSERT INTO `desktops` VALUES ('245', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '4', '56');
INSERT INTO `desktops` VALUES ('246', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '4', '57');
INSERT INTO `desktops` VALUES ('247', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '4', '58');
INSERT INTO `desktops` VALUES ('248', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '4', '59');
INSERT INTO `desktops` VALUES ('249', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '4', '61');
INSERT INTO `desktops` VALUES ('250', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '4', '62');
INSERT INTO `desktops` VALUES ('251', null, '设计流程', '0', '/WorkFlow/Designer', '38', '4', '65');
INSERT INTO `desktops` VALUES ('252', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '4', '66');
INSERT INTO `desktops` VALUES ('253', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '4', '67');
INSERT INTO `desktops` VALUES ('254', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '4', '69');
INSERT INTO `desktops` VALUES ('255', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '4', '70');
INSERT INTO `desktops` VALUES ('256', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '4', '71');
INSERT INTO `desktops` VALUES ('257', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '7', '4');
INSERT INTO `desktops` VALUES ('258', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '7', '5');
INSERT INTO `desktops` VALUES ('259', null, '文章添加', '0', '/PortalNews/AddNews', '3', '7', '6');
INSERT INTO `desktops` VALUES ('260', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '7', '7');
INSERT INTO `desktops` VALUES ('261', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '7', '8');
INSERT INTO `desktops` VALUES ('262', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '7', '9');
INSERT INTO `desktops` VALUES ('263', null, '权限管理', '0', '/Auth/Index', '7', '7', '19');
INSERT INTO `desktops` VALUES ('264', null, '文件管理', '0', '/File/Index', '8', '7', '21');
INSERT INTO `desktops` VALUES ('265', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '7', '23');
INSERT INTO `desktops` VALUES ('266', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '7', '24');
INSERT INTO `desktops` VALUES ('267', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '7', '25');
INSERT INTO `desktops` VALUES ('268', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '7', '28');
INSERT INTO `desktops` VALUES ('269', null, '银行管理', '0', '/Banks/BankManagement', '13', '7', '29');
INSERT INTO `desktops` VALUES ('270', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '7', '30');
INSERT INTO `desktops` VALUES ('271', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '7', '31');
INSERT INTO `desktops` VALUES ('272', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '7', '32');
INSERT INTO `desktops` VALUES ('273', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '7', '33');
INSERT INTO `desktops` VALUES ('274', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '7', '34');
INSERT INTO `desktops` VALUES ('275', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '7', '36');
INSERT INTO `desktops` VALUES ('276', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '7', '37');
INSERT INTO `desktops` VALUES ('277', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '7', '38');
INSERT INTO `desktops` VALUES ('278', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '7', '40');
INSERT INTO `desktops` VALUES ('279', null, '分类管理', '0', '/News/TypeManagement', '23', '7', '42');
INSERT INTO `desktops` VALUES ('280', null, '新闻管理', '0', '/News/NewsManagement', '24', '7', '43');
INSERT INTO `desktops` VALUES ('281', null, '新闻添加', '0', '/News/AddNews', '25', '7', '44');
INSERT INTO `desktops` VALUES ('282', null, '用户管理', '0', '/UserManage/Index', '26', '7', '46');
INSERT INTO `desktops` VALUES ('283', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '7', '47');
INSERT INTO `desktops` VALUES ('284', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '7', '48');
INSERT INTO `desktops` VALUES ('285', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '7', '49');
INSERT INTO `desktops` VALUES ('286', null, '系统配置', '0', '/Configuration/Index', '30', '7', '52');
INSERT INTO `desktops` VALUES ('287', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '7', '53');
INSERT INTO `desktops` VALUES ('288', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '7', '56');
INSERT INTO `desktops` VALUES ('289', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '7', '57');
INSERT INTO `desktops` VALUES ('290', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '7', '58');
INSERT INTO `desktops` VALUES ('291', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '7', '59');
INSERT INTO `desktops` VALUES ('292', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '7', '61');
INSERT INTO `desktops` VALUES ('293', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '7', '62');
INSERT INTO `desktops` VALUES ('294', null, '设计流程', '0', '/WorkFlow/Designer', '38', '7', '65');
INSERT INTO `desktops` VALUES ('295', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '7', '66');
INSERT INTO `desktops` VALUES ('296', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '7', '67');
INSERT INTO `desktops` VALUES ('297', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '7', '69');
INSERT INTO `desktops` VALUES ('298', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '7', '70');
INSERT INTO `desktops` VALUES ('299', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '7', '71');
INSERT INTO `desktops` VALUES ('300', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '6', '4');
INSERT INTO `desktops` VALUES ('301', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '6', '5');
INSERT INTO `desktops` VALUES ('302', null, '文章添加', '0', '/PortalNews/AddNews', '3', '6', '6');
INSERT INTO `desktops` VALUES ('303', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '6', '7');
INSERT INTO `desktops` VALUES ('304', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '6', '8');
INSERT INTO `desktops` VALUES ('305', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '6', '9');
INSERT INTO `desktops` VALUES ('306', null, '权限管理', '0', '/Auth/Index', '7', '6', '19');
INSERT INTO `desktops` VALUES ('307', null, '文件管理', '0', '/File/Index', '8', '6', '21');
INSERT INTO `desktops` VALUES ('308', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '6', '23');
INSERT INTO `desktops` VALUES ('309', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '6', '24');
INSERT INTO `desktops` VALUES ('310', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '6', '25');
INSERT INTO `desktops` VALUES ('311', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '6', '28');
INSERT INTO `desktops` VALUES ('312', null, '银行管理', '0', '/Banks/BankManagement', '13', '6', '29');
INSERT INTO `desktops` VALUES ('313', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '6', '30');
INSERT INTO `desktops` VALUES ('314', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '6', '31');
INSERT INTO `desktops` VALUES ('315', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '6', '32');
INSERT INTO `desktops` VALUES ('316', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '6', '33');
INSERT INTO `desktops` VALUES ('317', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '6', '34');
INSERT INTO `desktops` VALUES ('318', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '6', '36');
INSERT INTO `desktops` VALUES ('319', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '6', '37');
INSERT INTO `desktops` VALUES ('320', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '6', '38');
INSERT INTO `desktops` VALUES ('321', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '6', '40');
INSERT INTO `desktops` VALUES ('322', null, '分类管理', '0', '/News/TypeManagement', '23', '6', '42');
INSERT INTO `desktops` VALUES ('323', null, '新闻管理', '0', '/News/NewsManagement', '24', '6', '43');
INSERT INTO `desktops` VALUES ('324', null, '新闻添加', '0', '/News/AddNews', '25', '6', '44');
INSERT INTO `desktops` VALUES ('325', null, '用户管理', '0', '/UserManage/Index', '26', '6', '46');
INSERT INTO `desktops` VALUES ('326', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '6', '47');
INSERT INTO `desktops` VALUES ('327', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '6', '48');
INSERT INTO `desktops` VALUES ('328', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '6', '49');
INSERT INTO `desktops` VALUES ('329', null, '系统配置', '0', '/Configuration/Index', '30', '6', '52');
INSERT INTO `desktops` VALUES ('330', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '6', '53');
INSERT INTO `desktops` VALUES ('331', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '6', '56');
INSERT INTO `desktops` VALUES ('332', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '6', '57');
INSERT INTO `desktops` VALUES ('333', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '6', '58');
INSERT INTO `desktops` VALUES ('334', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '6', '59');
INSERT INTO `desktops` VALUES ('335', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '6', '61');
INSERT INTO `desktops` VALUES ('336', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '6', '62');
INSERT INTO `desktops` VALUES ('337', null, '设计流程', '0', '/WorkFlow/Designer', '38', '6', '65');
INSERT INTO `desktops` VALUES ('338', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '6', '66');
INSERT INTO `desktops` VALUES ('339', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '6', '67');
INSERT INTO `desktops` VALUES ('340', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '6', '69');
INSERT INTO `desktops` VALUES ('341', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '6', '70');
INSERT INTO `desktops` VALUES ('342', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '6', '71');
INSERT INTO `desktops` VALUES ('343', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '12', '4');
INSERT INTO `desktops` VALUES ('344', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '12', '5');
INSERT INTO `desktops` VALUES ('345', null, '文章添加', '0', '/PortalNews/AddNews', '3', '12', '6');
INSERT INTO `desktops` VALUES ('346', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '12', '7');
INSERT INTO `desktops` VALUES ('347', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '12', '8');
INSERT INTO `desktops` VALUES ('348', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '12', '9');
INSERT INTO `desktops` VALUES ('349', null, '权限管理', '0', '/Auth/Index', '7', '12', '19');
INSERT INTO `desktops` VALUES ('350', null, '文件管理', '0', '/File/Index', '8', '12', '21');
INSERT INTO `desktops` VALUES ('351', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '12', '23');
INSERT INTO `desktops` VALUES ('352', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '12', '24');
INSERT INTO `desktops` VALUES ('353', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '12', '25');
INSERT INTO `desktops` VALUES ('354', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '12', '28');
INSERT INTO `desktops` VALUES ('355', null, '银行管理', '0', '/Banks/BankManagement', '13', '12', '29');
INSERT INTO `desktops` VALUES ('356', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '12', '30');
INSERT INTO `desktops` VALUES ('357', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '12', '31');
INSERT INTO `desktops` VALUES ('358', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '12', '32');
INSERT INTO `desktops` VALUES ('359', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '12', '33');
INSERT INTO `desktops` VALUES ('360', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '12', '34');
INSERT INTO `desktops` VALUES ('361', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '12', '36');
INSERT INTO `desktops` VALUES ('362', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '12', '37');
INSERT INTO `desktops` VALUES ('363', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '12', '38');
INSERT INTO `desktops` VALUES ('364', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '12', '40');
INSERT INTO `desktops` VALUES ('365', null, '分类管理', '0', '/News/TypeManagement', '23', '12', '42');
INSERT INTO `desktops` VALUES ('366', null, '新闻管理', '0', '/News/NewsManagement', '24', '12', '43');
INSERT INTO `desktops` VALUES ('367', null, '新闻添加', '0', '/News/AddNews', '25', '12', '44');
INSERT INTO `desktops` VALUES ('368', null, '用户管理', '0', '/UserManage/Index', '26', '12', '46');
INSERT INTO `desktops` VALUES ('369', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '12', '47');
INSERT INTO `desktops` VALUES ('370', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '12', '48');
INSERT INTO `desktops` VALUES ('371', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '12', '49');
INSERT INTO `desktops` VALUES ('372', null, '系统配置', '0', '/Configuration/Index', '30', '12', '52');
INSERT INTO `desktops` VALUES ('373', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '12', '53');
INSERT INTO `desktops` VALUES ('374', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '12', '56');
INSERT INTO `desktops` VALUES ('375', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '12', '57');
INSERT INTO `desktops` VALUES ('376', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '12', '58');
INSERT INTO `desktops` VALUES ('377', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '12', '59');
INSERT INTO `desktops` VALUES ('378', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '12', '61');
INSERT INTO `desktops` VALUES ('379', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '12', '62');
INSERT INTO `desktops` VALUES ('380', null, '设计流程', '0', '/WorkFlow/Designer', '38', '12', '65');
INSERT INTO `desktops` VALUES ('381', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '12', '66');
INSERT INTO `desktops` VALUES ('382', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '12', '67');
INSERT INTO `desktops` VALUES ('383', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '12', '69');
INSERT INTO `desktops` VALUES ('384', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '12', '70');
INSERT INTO `desktops` VALUES ('385', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '12', '71');
INSERT INTO `desktops` VALUES ('386', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '13', '4');
INSERT INTO `desktops` VALUES ('387', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '13', '5');
INSERT INTO `desktops` VALUES ('388', null, '文章添加', '0', '/PortalNews/AddNews', '3', '13', '6');
INSERT INTO `desktops` VALUES ('389', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '13', '7');
INSERT INTO `desktops` VALUES ('390', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '13', '8');
INSERT INTO `desktops` VALUES ('391', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '13', '9');
INSERT INTO `desktops` VALUES ('392', null, '权限管理', '0', '/Auth/Index', '7', '13', '19');
INSERT INTO `desktops` VALUES ('393', null, '文件管理', '0', '/File/Index', '8', '13', '21');
INSERT INTO `desktops` VALUES ('394', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '13', '23');
INSERT INTO `desktops` VALUES ('395', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '13', '24');
INSERT INTO `desktops` VALUES ('396', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '13', '25');
INSERT INTO `desktops` VALUES ('397', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '13', '28');
INSERT INTO `desktops` VALUES ('398', null, '银行管理', '0', '/Banks/BankManagement', '13', '13', '29');
INSERT INTO `desktops` VALUES ('399', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '13', '30');
INSERT INTO `desktops` VALUES ('400', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '13', '31');
INSERT INTO `desktops` VALUES ('401', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '13', '32');
INSERT INTO `desktops` VALUES ('402', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '13', '33');
INSERT INTO `desktops` VALUES ('403', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '13', '34');
INSERT INTO `desktops` VALUES ('404', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '13', '36');
INSERT INTO `desktops` VALUES ('405', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '13', '37');
INSERT INTO `desktops` VALUES ('406', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '13', '38');
INSERT INTO `desktops` VALUES ('407', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '13', '40');
INSERT INTO `desktops` VALUES ('408', null, '分类管理', '0', '/News/TypeManagement', '23', '13', '42');
INSERT INTO `desktops` VALUES ('409', null, '新闻管理', '0', '/News/NewsManagement', '24', '13', '43');
INSERT INTO `desktops` VALUES ('410', null, '新闻添加', '0', '/News/AddNews', '25', '13', '44');
INSERT INTO `desktops` VALUES ('411', null, '用户管理', '0', '/UserManage/Index', '26', '13', '46');
INSERT INTO `desktops` VALUES ('412', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '13', '47');
INSERT INTO `desktops` VALUES ('413', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '13', '48');
INSERT INTO `desktops` VALUES ('414', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '13', '49');
INSERT INTO `desktops` VALUES ('415', null, '系统配置', '0', '/Configuration/Index', '30', '13', '52');
INSERT INTO `desktops` VALUES ('416', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '13', '53');
INSERT INTO `desktops` VALUES ('417', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '13', '56');
INSERT INTO `desktops` VALUES ('418', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '13', '57');
INSERT INTO `desktops` VALUES ('419', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '13', '58');
INSERT INTO `desktops` VALUES ('420', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '13', '59');
INSERT INTO `desktops` VALUES ('421', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '13', '61');
INSERT INTO `desktops` VALUES ('422', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '13', '62');
INSERT INTO `desktops` VALUES ('423', null, '设计流程', '0', '/WorkFlow/Designer', '38', '13', '65');
INSERT INTO `desktops` VALUES ('424', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '13', '66');
INSERT INTO `desktops` VALUES ('425', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '13', '67');
INSERT INTO `desktops` VALUES ('426', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '13', '69');
INSERT INTO `desktops` VALUES ('427', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '13', '70');
INSERT INTO `desktops` VALUES ('428', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '13', '71');
INSERT INTO `desktops` VALUES ('429', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '15', '4');
INSERT INTO `desktops` VALUES ('430', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '15', '5');
INSERT INTO `desktops` VALUES ('431', null, '文章添加', '0', '/PortalNews/AddNews', '3', '15', '6');
INSERT INTO `desktops` VALUES ('432', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '15', '7');
INSERT INTO `desktops` VALUES ('433', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '15', '8');
INSERT INTO `desktops` VALUES ('434', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '15', '9');
INSERT INTO `desktops` VALUES ('435', null, '权限管理', '0', '/Auth/Index', '7', '15', '19');
INSERT INTO `desktops` VALUES ('436', null, '文件管理', '0', '/File/Index', '8', '15', '21');
INSERT INTO `desktops` VALUES ('437', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '15', '23');
INSERT INTO `desktops` VALUES ('438', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '15', '24');
INSERT INTO `desktops` VALUES ('439', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '15', '25');
INSERT INTO `desktops` VALUES ('440', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '15', '28');
INSERT INTO `desktops` VALUES ('441', null, '银行管理', '0', '/Banks/BankManagement', '13', '15', '29');
INSERT INTO `desktops` VALUES ('442', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '15', '30');
INSERT INTO `desktops` VALUES ('443', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '15', '31');
INSERT INTO `desktops` VALUES ('444', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '15', '32');
INSERT INTO `desktops` VALUES ('445', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '15', '33');
INSERT INTO `desktops` VALUES ('446', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '15', '34');
INSERT INTO `desktops` VALUES ('447', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '15', '36');
INSERT INTO `desktops` VALUES ('448', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '15', '37');
INSERT INTO `desktops` VALUES ('449', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '15', '38');
INSERT INTO `desktops` VALUES ('450', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '15', '40');
INSERT INTO `desktops` VALUES ('451', null, '分类管理', '0', '/News/TypeManagement', '23', '15', '42');
INSERT INTO `desktops` VALUES ('452', null, '新闻管理', '0', '/News/NewsManagement', '24', '15', '43');
INSERT INTO `desktops` VALUES ('453', null, '新闻添加', '0', '/News/AddNews', '25', '15', '44');
INSERT INTO `desktops` VALUES ('454', null, '用户管理', '0', '/UserManage/Index', '26', '15', '46');
INSERT INTO `desktops` VALUES ('455', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '15', '47');
INSERT INTO `desktops` VALUES ('456', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '15', '48');
INSERT INTO `desktops` VALUES ('457', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '15', '49');
INSERT INTO `desktops` VALUES ('458', null, '系统配置', '0', '/Configuration/Index', '30', '15', '52');
INSERT INTO `desktops` VALUES ('459', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '15', '53');
INSERT INTO `desktops` VALUES ('460', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '15', '56');
INSERT INTO `desktops` VALUES ('461', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '15', '57');
INSERT INTO `desktops` VALUES ('462', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '15', '58');
INSERT INTO `desktops` VALUES ('463', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '15', '59');
INSERT INTO `desktops` VALUES ('464', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '15', '61');
INSERT INTO `desktops` VALUES ('465', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '15', '62');
INSERT INTO `desktops` VALUES ('466', null, '设计流程', '0', '/WorkFlow/Designer', '38', '15', '65');
INSERT INTO `desktops` VALUES ('467', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '15', '66');
INSERT INTO `desktops` VALUES ('468', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '15', '67');
INSERT INTO `desktops` VALUES ('469', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '15', '69');
INSERT INTO `desktops` VALUES ('470', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '15', '70');
INSERT INTO `desktops` VALUES ('471', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '15', '71');
INSERT INTO `desktops` VALUES ('472', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '18', '4');
INSERT INTO `desktops` VALUES ('473', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '18', '5');
INSERT INTO `desktops` VALUES ('474', null, '文章添加', '0', '/PortalNews/AddNews', '3', '18', '6');
INSERT INTO `desktops` VALUES ('475', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '18', '7');
INSERT INTO `desktops` VALUES ('476', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '18', '8');
INSERT INTO `desktops` VALUES ('477', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '18', '9');
INSERT INTO `desktops` VALUES ('478', null, '权限管理', '0', '/Auth/Index', '7', '18', '19');
INSERT INTO `desktops` VALUES ('479', null, '文件管理', '0', '/File/Index', '8', '18', '21');
INSERT INTO `desktops` VALUES ('480', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '18', '23');
INSERT INTO `desktops` VALUES ('481', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '18', '24');
INSERT INTO `desktops` VALUES ('482', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '18', '25');
INSERT INTO `desktops` VALUES ('483', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '18', '28');
INSERT INTO `desktops` VALUES ('484', null, '银行管理', '0', '/Banks/BankManagement', '13', '18', '29');
INSERT INTO `desktops` VALUES ('485', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '18', '30');
INSERT INTO `desktops` VALUES ('486', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '18', '31');
INSERT INTO `desktops` VALUES ('487', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '18', '32');
INSERT INTO `desktops` VALUES ('488', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '18', '33');
INSERT INTO `desktops` VALUES ('489', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '18', '34');
INSERT INTO `desktops` VALUES ('490', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '18', '36');
INSERT INTO `desktops` VALUES ('491', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '18', '37');
INSERT INTO `desktops` VALUES ('492', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '18', '38');
INSERT INTO `desktops` VALUES ('493', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '18', '40');
INSERT INTO `desktops` VALUES ('494', null, '分类管理', '0', '/News/TypeManagement', '23', '18', '42');
INSERT INTO `desktops` VALUES ('495', null, '新闻管理', '0', '/News/NewsManagement', '24', '18', '43');
INSERT INTO `desktops` VALUES ('496', null, '新闻添加', '0', '/News/AddNews', '25', '18', '44');
INSERT INTO `desktops` VALUES ('497', null, '用户管理', '0', '/UserManage/Index', '26', '18', '46');
INSERT INTO `desktops` VALUES ('498', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '18', '47');
INSERT INTO `desktops` VALUES ('499', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '18', '48');
INSERT INTO `desktops` VALUES ('500', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '18', '49');
INSERT INTO `desktops` VALUES ('501', null, '系统配置', '0', '/Configuration/Index', '30', '18', '52');
INSERT INTO `desktops` VALUES ('502', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '18', '53');
INSERT INTO `desktops` VALUES ('503', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '18', '56');
INSERT INTO `desktops` VALUES ('504', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '18', '57');
INSERT INTO `desktops` VALUES ('505', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '18', '58');
INSERT INTO `desktops` VALUES ('506', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '18', '59');
INSERT INTO `desktops` VALUES ('507', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '18', '61');
INSERT INTO `desktops` VALUES ('508', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '18', '62');
INSERT INTO `desktops` VALUES ('509', null, '设计流程', '0', '/WorkFlow/Designer', '38', '18', '65');
INSERT INTO `desktops` VALUES ('510', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '18', '66');
INSERT INTO `desktops` VALUES ('511', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '18', '67');
INSERT INTO `desktops` VALUES ('512', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '18', '69');
INSERT INTO `desktops` VALUES ('513', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '18', '70');
INSERT INTO `desktops` VALUES ('514', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '18', '71');
INSERT INTO `desktops` VALUES ('515', null, '分类管理', '0', '/PortalNews/TypeManagement', '1', '10', '4');
INSERT INTO `desktops` VALUES ('516', null, '文章管理', '0', '/PortalNews/NewsManagement', '2', '10', '5');
INSERT INTO `desktops` VALUES ('517', null, '文章添加', '0', '/PortalNews/AddNews', '3', '10', '6');
INSERT INTO `desktops` VALUES ('518', null, '部门管理', '0', '/PortalTalent/DepManagement', '4', '10', '7');
INSERT INTO `desktops` VALUES ('519', null, '招聘管理', '0', '/PortalTalent/JobManagement', '5', '10', '8');
INSERT INTO `desktops` VALUES ('520', null, '招聘添加', '0', '/PortalTalent/JobAddPage', '6', '10', '9');
INSERT INTO `desktops` VALUES ('521', null, '权限管理', '0', '/Auth/Index', '7', '10', '19');
INSERT INTO `desktops` VALUES ('522', null, '文件管理', '0', '/File/Index', '8', '10', '21');
INSERT INTO `desktops` VALUES ('523', null, '档案管理', '0', '/HumanResource/PersonnelFileManage', '9', '10', '23');
INSERT INTO `desktops` VALUES ('524', null, '入职管理', '0', '/HumanResource/EnrollManagement', '10', '10', '24');
INSERT INTO `desktops` VALUES ('525', null, '离职管理', '0', '/HumanResource/ResignManagement', '11', '10', '25');
INSERT INTO `desktops` VALUES ('526', null, '账户管理', '0', '/Accounts/AccountManagement', '12', '10', '28');
INSERT INTO `desktops` VALUES ('527', null, '银行管理', '0', '/Banks/BankManagement', '13', '10', '29');
INSERT INTO `desktops` VALUES ('528', null, '费用管理', '0', '/ExpenseTypes/ExpenseTypeManagement', '14', '10', '30');
INSERT INTO `desktops` VALUES ('529', null, '货币管理', '0', '/Currencys/CurrencyManagement', '15', '10', '31');
INSERT INTO `desktops` VALUES ('530', null, '报销申请', '0', '/ClaimRequests/PersonalClaimManagement', '16', '10', '32');
INSERT INTO `desktops` VALUES ('531', null, '报销审批', '0', '/ClaimRequests/ClaimRequestCheck', '17', '10', '33');
INSERT INTO `desktops` VALUES ('532', null, '报销管理', '0', '/ClaimRequests/ClaimManagement', '18', '10', '34');
INSERT INTO `desktops` VALUES ('533', null, '分类管理', '0', '/Announcement/AnnouncementTypeManagement', '19', '10', '36');
INSERT INTO `desktops` VALUES ('534', null, '公文管理', '0', '/Announcement/AnnouncementManagement', '20', '10', '37');
INSERT INTO `desktops` VALUES ('535', null, '公文添加', '0', '/Announcement/AddAnnouncement', '21', '10', '38');
INSERT INTO `desktops` VALUES ('536', null, '组织管理', '0', '/Organization/OrganizationManagement', '22', '10', '40');
INSERT INTO `desktops` VALUES ('537', null, '分类管理', '0', '/News/TypeManagement', '23', '10', '42');
INSERT INTO `desktops` VALUES ('538', null, '新闻管理', '0', '/News/NewsManagement', '24', '10', '43');
INSERT INTO `desktops` VALUES ('539', null, '新闻添加', '0', '/News/AddNews', '25', '10', '44');
INSERT INTO `desktops` VALUES ('540', null, '用户管理', '0', '/UserManage/Index', '26', '10', '46');
INSERT INTO `desktops` VALUES ('541', null, '入职审批', '0', '/HumanResource/EnrollApproval', '27', '10', '47');
INSERT INTO `desktops` VALUES ('542', null, '离职审批', '0', '/HumanResource/ResignApproval', '28', '10', '48');
INSERT INTO `desktops` VALUES ('543', null, '显示配置', '0', '/FinanceSetting/FinanceSetting', '29', '10', '49');
INSERT INTO `desktops` VALUES ('544', null, '系统配置', '0', '/Configuration/Index', '30', '10', '52');
INSERT INTO `desktops` VALUES ('545', null, '操作日志', '0', '/Common/OperationLogsManage', '31', '10', '53');
INSERT INTO `desktops` VALUES ('546', null, '请假申请', '0', '/LeaveAndOverTime/LeaveTimeManagement', '32', '10', '56');
INSERT INTO `desktops` VALUES ('547', null, '加班申请', '0', '/LeaveAndOverTime/OverTimeManage', '33', '10', '57');
INSERT INTO `desktops` VALUES ('548', null, '请假审批', '0', '/LeaveAndOverTime/LeaveTimeCheck', '34', '10', '58');
INSERT INTO `desktops` VALUES ('549', null, '加班审批', '0', '/LeaveAndOverTime/OverTimeCheck', '35', '10', '59');
INSERT INTO `desktops` VALUES ('550', null, '假期管理', '0', '/LeaveAndOverTime/WelfareManagement', '36', '10', '61');
INSERT INTO `desktops` VALUES ('551', null, '休假管理', '0', '/LeaveAndOverTime/StaffWelfareManagement', '37', '10', '62');
INSERT INTO `desktops` VALUES ('552', null, '设计流程', '0', '/WorkFlow/Designer', '38', '10', '65');
INSERT INTO `desktops` VALUES ('553', null, '流程管理', '0', '/WorkFlow/FlowManage', '39', '10', '66');
INSERT INTO `desktops` VALUES ('554', null, '可发起流程', '0', '/WorkFlow/InitiateWorkFlow', '40', '10', '67');
INSERT INTO `desktops` VALUES ('555', null, '我的流程', '0', '/WorkFlow/MyWorkFlow', '41', '10', '69');
INSERT INTO `desktops` VALUES ('556', null, '我的待办', '0', '/WorkFlow/WorkFlowCheck', '42', '10', '70');
INSERT INTO `desktops` VALUES ('557', 'Images/desktop/finance.png', '钉钉集成', '0', '/Configuration/AppIntegration', '43', '10', '71');

-- ----------------------------
-- Table structure for dingcorpids
-- ----------------------------
DROP TABLE IF EXISTS `dingcorpids`;
CREATE TABLE `dingcorpids` (
  `Id` int(11) NOT NULL,
  `CompanyName` varchar(10) DEFAULT NULL,
  `CorpID` varchar(10) DEFAULT NULL,
  `CorpSecret` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingcorpids
-- ----------------------------
INSERT INTO `dingcorpids` VALUES ('1', null, 'ding96955e', 'y5i7wXS4lB');

-- ----------------------------
-- Table structure for dq_excel
-- ----------------------------
DROP TABLE IF EXISTS `dq_excel`;
CREATE TABLE `dq_excel` (
  `Id` int(11) NOT NULL,
  `ExcelName` varchar(10) DEFAULT NULL,
  `ExcelType` varchar(10) DEFAULT NULL,
  `UploadTime` date DEFAULT NULL,
  `Uploader_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dq_excel
-- ----------------------------

-- ----------------------------
-- Table structure for dq_filedrelation
-- ----------------------------
DROP TABLE IF EXISTS `dq_filedrelation`;
CREATE TABLE `dq_filedrelation` (
  `Id` int(11) NOT NULL,
  `HeadName` varchar(10) DEFAULT NULL,
  `FiledName` varchar(10) DEFAULT NULL,
  `IsShow` int(11) DEFAULT NULL,
  `IsQuery` int(11) DEFAULT NULL,
  `FieldType` varchar(10) DEFAULT NULL,
  `Sheet_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dq_filedrelation
-- ----------------------------

-- ----------------------------
-- Table structure for dq_querydefinition
-- ----------------------------
DROP TABLE IF EXISTS `dq_querydefinition`;
CREATE TABLE `dq_querydefinition` (
  `Id` int(11) NOT NULL,
  `Definition` varchar(10) DEFAULT NULL,
  `Sheet_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dq_querydefinition
-- ----------------------------

-- ----------------------------
-- Table structure for dq_querytype
-- ----------------------------
DROP TABLE IF EXISTS `dq_querytype`;
CREATE TABLE `dq_querytype` (
  `Id` int(11) NOT NULL,
  `Text` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dq_querytype
-- ----------------------------

-- ----------------------------
-- Table structure for dq_sheet
-- ----------------------------
DROP TABLE IF EXISTS `dq_sheet`;
CREATE TABLE `dq_sheet` (
  `Id` int(11) NOT NULL,
  `SheetName` varchar(10) DEFAULT NULL,
  `SheetTableName` varchar(10) DEFAULT NULL,
  `Excel_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dq_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for ds_schedules
-- ----------------------------
DROP TABLE IF EXISTS `ds_schedules`;
CREATE TABLE `ds_schedules` (
  `Id` int(11) NOT NULL,
  `Content` varchar(10) DEFAULT NULL,
  `BeginTime` date DEFAULT NULL,
  `EndTime` date DEFAULT NULL,
  `IsDone` int(11) DEFAULT NULL,
  `IsOutTime` int(11) DEFAULT NULL,
  `ImportantDegree` int(11) DEFAULT NULL,
  `IsRemindMe` int(11) DEFAULT NULL,
  `RemindTime` date DEFAULT NULL,
  `PrivacyDegree` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_schedules
-- ----------------------------

-- ----------------------------
-- Table structure for enrollprocessrecords
-- ----------------------------
DROP TABLE IF EXISTS `enrollprocessrecords`;
CREATE TABLE `enrollprocessrecords` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Comment` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `OperationTime` date DEFAULT NULL,
  `user_Id` int(11) DEFAULT NULL,
  `StaffInfos_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enrollprocessrecords
-- ----------------------------
INSERT INTO `enrollprocessrecords` VALUES ('1', null, '3', '2017-02-21', '1', '28');
INSERT INTO `enrollprocessrecords` VALUES ('12', '1', '2', '2017-02-21', '3', '28');
INSERT INTO `enrollprocessrecords` VALUES ('13', '1', '3', '2017-02-21', '3', '28');
INSERT INTO `enrollprocessrecords` VALUES ('14', '2', '2', '2017-02-21', '3', '29');
INSERT INTO `enrollprocessrecords` VALUES ('15', '2', '3', '2017-02-21', '3', '29');
INSERT INTO `enrollprocessrecords` VALUES ('16', '1', '2', '2017-02-23', '2', '30');
INSERT INTO `enrollprocessrecords` VALUES ('20', '审批通过', '2', '2017-03-13', '1', '25');
INSERT INTO `enrollprocessrecords` VALUES ('21', '行政人员办理通过', '3', '2017-03-13', '1', '25');
INSERT INTO `enrollprocessrecords` VALUES ('22', '审批通过', '3', '2017-03-13', '1', '26');
INSERT INTO `enrollprocessrecords` VALUES ('23', '审批通过', '3', '2017-03-13', '1', '27');
INSERT INTO `enrollprocessrecords` VALUES ('24', '审批通过', '4', '2017-03-13', '1', '27');
INSERT INTO `enrollprocessrecords` VALUES ('25', '行政人员审批', '2', '2017-03-13', '1', '33');
INSERT INTO `enrollprocessrecords` VALUES ('26', '审批通过', '2', '2017-03-13', '1', '34');
INSERT INTO `enrollprocessrecords` VALUES ('27', null, '3', '2017-03-13', '1', '25');
INSERT INTO `enrollprocessrecords` VALUES ('28', 'rrrr', '3', '2017-03-13', '1', '33');
INSERT INTO `enrollprocessrecords` VALUES ('29', '审批通过', '2', '2017-03-20', '1', '70');
INSERT INTO `enrollprocessrecords` VALUES ('30', '核实', '3', '2017-03-20', '1', '70');
INSERT INTO `enrollprocessrecords` VALUES ('31', null, '3', '2017-03-20', '1', '70');
INSERT INTO `enrollprocessrecords` VALUES ('32', '99999', '2', '2017-03-22', '1', '71');
INSERT INTO `enrollprocessrecords` VALUES ('33', '99999', '3', '2017-03-22', '1', '71');
INSERT INTO `enrollprocessrecords` VALUES ('34', null, '3', '2017-03-22', '1', '71');
INSERT INTO `enrollprocessrecords` VALUES ('36', 'yyy', '2', '2017-03-27', '1', '72');
INSERT INTO `enrollprocessrecords` VALUES ('37', '同意', '2', '2017-03-29', '1', '20');

-- ----------------------------
-- Table structure for expensetypes
-- ----------------------------
DROP TABLE IF EXISTS `expensetypes`;
CREATE TABLE `expensetypes` (
  `Id` int(11) NOT NULL,
  `TypeName` varchar(10) DEFAULT NULL,
  `ParentID` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `Inactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expensetypes
-- ----------------------------
INSERT INTO `expensetypes` VALUES ('1', '通讯费', '0', '通讯费', '0');
INSERT INTO `expensetypes` VALUES ('2', '固定电话费', '1', '固定电话费', '1');
INSERT INTO `expensetypes` VALUES ('3', '移动电话费', '1', '移动电话费', '1');
INSERT INTO `expensetypes` VALUES ('4', '办公费用', '0', '办公费用', '0');
INSERT INTO `expensetypes` VALUES ('5', '网络费', '4', '网络费', '1');
INSERT INTO `expensetypes` VALUES ('6', '邮递费', '4', '邮递费', '1');
INSERT INTO `expensetypes` VALUES ('7', '办公用品费', '4', '办公用品费', '1');
INSERT INTO `expensetypes` VALUES ('9', '打的费', '8', '打的费', '1');
INSERT INTO `expensetypes` VALUES ('10', '汽油费', '8', '汽油费', '1');
INSERT INTO `expensetypes` VALUES ('13', '住宿费', '12', '住宿费', '1');
INSERT INTO `expensetypes` VALUES ('14', '飞机票费', '12', '飞机票费', '1');

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `FolderId` int(11) DEFAULT NULL,
  `FileName` longtext,
  `FileExtName` longtext,
  `FileSize` mediumblob,
  `FileType` int(11) DEFAULT NULL,
  `isFolder` int(11) DEFAULT NULL,
  `UploadTime` date DEFAULT NULL,
  `LastModifyTime` date DEFAULT NULL,
  `IsEncryption` int(11) DEFAULT NULL,
  `FilePassword` longtext,
  `IsSharing` int(11) DEFAULT NULL,
  `OrgId` int(11) DEFAULT NULL,
  `IsLocked` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES ('1', '2', '0', '2', 'dir', 0x2D31, '0', '1', '2016-06-29', '2016-06-29', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('2', '7', '0', '7', 'dir', 0x2D31, '0', '1', '2016-07-28', '2016-07-28', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('3', '1', '0', '1', 'dir', 0x2D31, '0', '1', '2016-08-18', '2016-08-18', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('4', '1', '3', 'test', 'dir', 0x2D31, '0', '1', '2016-10-19', '2016-10-19', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('6', '12', '0', '12', 'dir', 0x2D31, '0', '1', '2016-10-24', '2016-10-24', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('7', '12', '6', '恒天Java标准化流', 'docx', 0x313333343634, '1', '0', '2016-10-24', '2016-10-24', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('8', '12', '6', '新建文件夹', 'dir', 0x2D31, '0', '1', '2016-10-24', '2016-10-24', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('9', '12', '8', '恒天Java标准化流', 'docx', 0x313333343634, '1', '0', '2016-10-24', '2016-10-24', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('10', '1', '4', 'hhh', 'dir', 0x2D31, '0', '1', '2016-10-25', '2016-10-25', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('12', '15', '0', '15', 'dir', 0x2D31, '0', '1', '2016-10-25', '2016-10-25', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('14', '1', '10', '群畅金融网络智能办公', 'html', 0x3938333437, '1', '0', '2016-11-24', '2017-03-23', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('15', '1', '3', 'New Text D', 'html', 0x3133393432, '1', '0', '2016-11-24', '2016-11-24', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('16', '1', '3', 'VPN教程_1104', 'doc', 0x353436383136, '1', '0', '2016-11-28', '2016-11-28', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('17', '1', '3', '恒天Java标准化开', 'docx', 0x363236323937, '1', '0', '2016-11-28', '2016-11-28', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('18', '1', '10', 'LogoImg.jp', 'jpg', 0x3132323233, '1', '0', '2016-11-28', '2017-03-23', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('21', '2', '1', '1111', 'dir', 0x2D31, '0', '1', '2017-02-21', '2017-03-10', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('22', '2', '21', '22', 'dir', 0x2D31, '0', '1', '2017-02-21', '2017-02-21', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('23', '2', '22', '33', 'dir', 0x2D31, '0', '1', '2017-02-21', '2017-02-21', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('24', '2', '23', '444', 'dir', 0x2D31, '0', '1', '2017-02-21', '2017-02-21', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('25', '2', '23', 'AO Heng Ti', 'ppt', 0x363233363136, '1', '0', '2017-02-21', '2017-02-21', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('69', '2', '1', '再建一个试试', 'dir', 0x2D31, '0', '1', '2017-03-20', '2017-03-20', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('155', '2', '69', '33', 'dir', 0x2D31, '0', '1', '2017-03-21', '2017-03-21', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('156', '2', '155', '444', 'dir', 0x2D31, '0', '1', '2017-03-21', '2017-03-21', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('157', '2', '155', 'AO Heng Ti', 'ppt', 0x363233363136, '1', '0', '2017-03-21', '2017-03-21', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('158', '2', '1', 'test', 'dir', 0x2D31, '0', '1', '2017-03-22', '2017-03-23', '1', '123', '1', '1', '0');
INSERT INTO `files` VALUES ('159', '2', '1', 'pom.xml', 'xml', 0x33303035, '1', '0', '2017-03-22', '2017-03-22', '1', '1231', '1', '0', '1');
INSERT INTO `files` VALUES ('160', '2', '1', 'asdsadasdgdsfsd', 'dir', 0x2D31, '0', '1', '2017-03-22', '2017-03-22', '0', '', '0', '0', '0');
INSERT INTO `files` VALUES ('161', '2', '160', 'asdas', 'dir', 0x2D31, '0', '1', '2017-03-22', '2017-03-22', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('162', '2', '161', 'assdgnskldgnhkqasljfmak', 'dir', 0x2D31, '0', '1', '2017-03-22', '2017-03-22', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('163', '2', '162', 'assdgns', 'dir', 0x2D31, '0', '1', '2017-03-22', '2017-03-22', '0', null, '0', '0', '0');
INSERT INTO `files` VALUES ('164', '2', '155', 'log4j.xml', 'xml', 0x363735, '1', '0', '2017-03-22', '2017-03-24', '0', '', '0', '0', '1');
INSERT INTO `files` VALUES ('165', '2', '1', 'Capture.PNG', 'PNG', 0x32393137, '1', '0', '2017-03-22', '2017-03-22', '1', '', '1', '0', '1');

-- ----------------------------
-- Table structure for financesettings
-- ----------------------------
DROP TABLE IF EXISTS `financesettings`;
CREATE TABLE `financesettings` (
  `Id` int(11) NOT NULL,
  `ShowItem` varchar(10) DEFAULT NULL,
  `ShowItemStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financesettings
-- ----------------------------
INSERT INTO `financesettings` VALUES ('1', '报销货币', '1');
INSERT INTO `financesettings` VALUES ('2', '默认申请汇率', '1');
INSERT INTO `financesettings` VALUES ('3', '自定申请汇率', '0');
INSERT INTO `financesettings` VALUES ('4', '默认报销汇率', '0');
INSERT INTO `financesettings` VALUES ('5', '自定报销汇率', '0');
INSERT INTO `financesettings` VALUES ('6', '是否可追款', '1');
INSERT INTO `financesettings` VALUES ('7', '法律主体', '1');

-- ----------------------------
-- Table structure for functions
-- ----------------------------
DROP TABLE IF EXISTS `functions`;
CREATE TABLE `functions` (
  `Id` int(11) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `ServiceName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of functions
-- ----------------------------
INSERT INTO `functions` VALUES ('1', 'CheckLogin', 'IUserServi');
INSERT INTO `functions` VALUES ('2', 'GetUsersBy', 'IUserServi');
INSERT INTO `functions` VALUES ('3', 'GetUsersBy', 'IUserServi');
INSERT INTO `functions` VALUES ('4', 'GetUsersBy', 'IUserServi');
INSERT INTO `functions` VALUES ('5', 'GetUsersBy', 'IUserServi');
INSERT INTO `functions` VALUES ('6', 'GetLeaderN', 'IUserServi');
INSERT INTO `functions` VALUES ('7', 'GetUserByI', 'IUserServi');
INSERT INTO `functions` VALUES ('8', 'GetAllUser', 'IUserServi');
INSERT INTO `functions` VALUES ('9', 'GetAllUser', 'IUserServi');
INSERT INTO `functions` VALUES ('10', 'GetAllUser', 'IUserServi');
INSERT INTO `functions` VALUES ('11', 'AddUsers', 'IUserServi');
INSERT INTO `functions` VALUES ('12', 'UpdateUser', 'IUserServi');
INSERT INTO `functions` VALUES ('13', 'DeleteUser', 'IUserServi');
INSERT INTO `functions` VALUES ('14', 'SelectUser', 'IUserServi');
INSERT INTO `functions` VALUES ('15', 'GetOrganiz', 'IUserServi');
INSERT INTO `functions` VALUES ('16', 'GetAllOrga', 'IUserServi');
INSERT INTO `functions` VALUES ('17', 'GetOrganiz', 'IUserServi');
INSERT INTO `functions` VALUES ('18', 'GetMulitOr', 'IUserServi');
INSERT INTO `functions` VALUES ('19', 'GetOrgName', 'IUserServi');
INSERT INTO `functions` VALUES ('20', 'GetAllOrga', 'IUserServi');
INSERT INTO `functions` VALUES ('21', 'GetAllChil', 'IUserServi');
INSERT INTO `functions` VALUES ('22', 'AddOrganiz', 'IUserServi');
INSERT INTO `functions` VALUES ('23', 'UpdateOrga', 'IUserServi');
INSERT INTO `functions` VALUES ('24', 'DeleteOrga', 'IUserServi');
INSERT INTO `functions` VALUES ('25', 'GetUserOrg', 'IUserServi');
INSERT INTO `functions` VALUES ('26', 'GetOrgUser', 'IUserServi');
INSERT INTO `functions` VALUES ('27', 'GetOrgUser', 'IUserServi');
INSERT INTO `functions` VALUES ('28', 'GetMainOrg', 'IUserServi');
INSERT INTO `functions` VALUES ('29', 'GetOrgUser', 'IUserServi');
INSERT INTO `functions` VALUES ('30', 'GetAllOrgU', 'IUserServi');
INSERT INTO `functions` VALUES ('31', 'AddOrgUser', 'IUserServi');
INSERT INTO `functions` VALUES ('32', 'UpdateOrgU', 'IUserServi');
INSERT INTO `functions` VALUES ('33', 'DeleteOrgU', 'IUserServi');
INSERT INTO `functions` VALUES ('34', 'DeleteOrgU', 'IUserServi');
INSERT INTO `functions` VALUES ('35', 'DeleteUser', 'IUserServi');
INSERT INTO `functions` VALUES ('36', 'GetOrgUser', 'IUserServi');
INSERT INTO `functions` VALUES ('37', 'GetArticle', 'INewsServi');
INSERT INTO `functions` VALUES ('38', 'GetArticle', 'INewsServi');
INSERT INTO `functions` VALUES ('39', 'GetArticle', 'INewsServi');
INSERT INTO `functions` VALUES ('40', 'GetArticle', 'INewsServi');
INSERT INTO `functions` VALUES ('41', 'GetAllArti', 'INewsServi');
INSERT INTO `functions` VALUES ('42', 'GetAllRevi', 'INewsServi');
INSERT INTO `functions` VALUES ('43', 'AddArticle', 'INewsServi');
INSERT INTO `functions` VALUES ('44', 'UpdateArti', 'INewsServi');
INSERT INTO `functions` VALUES ('45', 'DeleteArti', 'INewsServi');
INSERT INTO `functions` VALUES ('46', 'GetArticle', 'INewsServi');
INSERT INTO `functions` VALUES ('47', 'GetAllArti', 'INewsServi');
INSERT INTO `functions` VALUES ('48', 'GetAllArti', 'INewsServi');
INSERT INTO `functions` VALUES ('49', 'GetAllChil', 'INewsServi');
INSERT INTO `functions` VALUES ('50', 'AddArticle', 'INewsServi');
INSERT INTO `functions` VALUES ('51', 'UpdateArti', 'INewsServi');
INSERT INTO `functions` VALUES ('52', 'DeleteArti', 'INewsServi');
INSERT INTO `functions` VALUES ('53', 'GetAnnounc', 'IAnnouncem');
INSERT INTO `functions` VALUES ('54', 'GetAnnounc', 'IAnnouncem');
INSERT INTO `functions` VALUES ('55', 'GetAnnounc', 'IAnnouncem');
INSERT INTO `functions` VALUES ('56', 'GetAllRevi', 'IAnnouncem');
INSERT INTO `functions` VALUES ('57', 'AddAnnounc', 'IAnnouncem');
INSERT INTO `functions` VALUES ('58', 'UpdateAnno', 'IAnnouncem');
INSERT INTO `functions` VALUES ('59', 'DeleteAnno', 'IAnnouncem');
INSERT INTO `functions` VALUES ('60', 'GetAnnounc', 'IAnnouncem');
INSERT INTO `functions` VALUES ('61', 'GetReadMar', 'IAnnouncem');
INSERT INTO `functions` VALUES ('62', 'GetReadMar', 'IAnnouncem');
INSERT INTO `functions` VALUES ('63', 'GetAllRead', 'IAnnouncem');
INSERT INTO `functions` VALUES ('64', 'AddReadMar', 'IAnnouncem');
INSERT INTO `functions` VALUES ('65', 'UpdateRead', 'IAnnouncem');
INSERT INTO `functions` VALUES ('66', 'DeleteRead', 'IAnnouncem');
INSERT INTO `functions` VALUES ('67', 'GetAllAnno', 'IAnnouncem');
INSERT INTO `functions` VALUES ('68', 'GetAllAnno', 'IAnnouncem');
INSERT INTO `functions` VALUES ('69', 'DeleteAnno', 'IAnnouncem');
INSERT INTO `functions` VALUES ('70', 'GetAnnounc', 'IAnnouncem');
INSERT INTO `functions` VALUES ('71', 'AddAnnounc', 'IAnnouncem');
INSERT INTO `functions` VALUES ('72', 'UpdateAnno', 'IAnnouncem');
INSERT INTO `functions` VALUES ('73', 'GetAccount', 'IFinanceSe');
INSERT INTO `functions` VALUES ('74', 'GetAllAcco', 'IFinanceSe');
INSERT INTO `functions` VALUES ('75', 'AddAccount', 'IFinanceSe');
INSERT INTO `functions` VALUES ('76', 'UpdateAcco', 'IFinanceSe');
INSERT INTO `functions` VALUES ('77', 'DeleteAcco', 'IFinanceSe');
INSERT INTO `functions` VALUES ('78', 'GetAccount', 'IFinanceSe');
INSERT INTO `functions` VALUES ('79', 'GetAccount', 'IFinanceSe');
INSERT INTO `functions` VALUES ('80', 'GetAllAcco', 'IFinanceSe');
INSERT INTO `functions` VALUES ('81', 'GetAccount', 'IFinanceSe');
INSERT INTO `functions` VALUES ('82', 'GetBankByB', 'IFinanceSe');
INSERT INTO `functions` VALUES ('83', 'GetAllBank', 'IFinanceSe');
INSERT INTO `functions` VALUES ('84', 'GetAllBank', 'IFinanceSe');
INSERT INTO `functions` VALUES ('85', 'AddBank', 'IFinanceSe');
INSERT INTO `functions` VALUES ('86', 'UpdateBank', 'IFinanceSe');
INSERT INTO `functions` VALUES ('87', 'DeleteBank', 'IFinanceSe');
INSERT INTO `functions` VALUES ('88', 'GetBankByI', 'IFinanceSe');
INSERT INTO `functions` VALUES ('89', 'GetBankNam', 'IFinanceSe');
INSERT INTO `functions` VALUES ('90', 'GetAllClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('91', 'AddClaimDe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('92', 'GetClaimDe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('93', 'UpdateClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('94', 'DeleteClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('95', 'DeleteClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('96', 'GetClaimDe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('97', 'GetAllClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('98', 'GetAllClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('99', 'GetClaimRe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('100', 'GetClaimRe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('101', 'AddClaimRe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('102', 'UpdateClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('103', 'DeleteClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('104', 'GetClaimRe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('105', 'GetAllClai', 'IFinanceSe');
INSERT INTO `functions` VALUES ('106', 'GetCurrenc', 'IFinanceSe');
INSERT INTO `functions` VALUES ('107', 'GetAllCurr', 'IFinanceSe');
INSERT INTO `functions` VALUES ('108', 'AddCurrenc', 'IFinanceSe');
INSERT INTO `functions` VALUES ('109', 'UpdateCurr', 'IFinanceSe');
INSERT INTO `functions` VALUES ('110', 'DeleteCurr', 'IFinanceSe');
INSERT INTO `functions` VALUES ('111', 'GetCurrenc', 'IFinanceSe');
INSERT INTO `functions` VALUES ('112', 'GetExpense', 'IFinanceSe');
INSERT INTO `functions` VALUES ('113', 'GetAllExpe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('114', 'GetAllChil', 'IFinanceSe');
INSERT INTO `functions` VALUES ('115', 'AddExpense', 'IFinanceSe');
INSERT INTO `functions` VALUES ('116', 'UpdateExpe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('117', 'DeleteExpe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('118', 'GetExpense', 'IFinanceSe');
INSERT INTO `functions` VALUES ('119', 'GetOrdered', 'IFinanceSe');
INSERT INTO `functions` VALUES ('120', 'GetAllExpe', 'IFinanceSe');
INSERT INTO `functions` VALUES ('121', 'GetAllChil', 'IFinanceSe');
INSERT INTO `functions` VALUES ('122', 'AddSingleF', 'IFinanceSe');
INSERT INTO `functions` VALUES ('123', 'GetSingleF', 'IFinanceSe');
INSERT INTO `functions` VALUES ('124', 'GetAllFina', 'IFinanceSe');
INSERT INTO `functions` VALUES ('125', 'UpdateSing', 'IFinanceSe');
INSERT INTO `functions` VALUES ('126', 'GetArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('127', 'GetArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('128', 'GetAllArti', 'IPortalSer');
INSERT INTO `functions` VALUES ('129', 'AddArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('130', 'UpdateArti', 'IPortalSer');
INSERT INTO `functions` VALUES ('131', 'DeleteArti', 'IPortalSer');
INSERT INTO `functions` VALUES ('132', 'GetArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('133', 'GetArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('134', 'GetAllAudi', 'IPortalSer');
INSERT INTO `functions` VALUES ('135', 'GetAudited', 'IPortalSer');
INSERT INTO `functions` VALUES ('136', 'GetPortalN', 'IPortalSer');
INSERT INTO `functions` VALUES ('137', 'GetArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('138', 'GetAllArti', 'IPortalSer');
INSERT INTO `functions` VALUES ('139', 'GetAllChil', 'IPortalSer');
INSERT INTO `functions` VALUES ('140', 'GetAllArti', 'IPortalSer');
INSERT INTO `functions` VALUES ('141', 'AddArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('142', 'UpdateArti', 'IPortalSer');
INSERT INTO `functions` VALUES ('143', 'DeleteArti', 'IPortalSer');
INSERT INTO `functions` VALUES ('144', 'GetArticle', 'IPortalSer');
INSERT INTO `functions` VALUES ('145', 'GetAllChil', 'IPortalSer');
INSERT INTO `functions` VALUES ('146', 'GetRecDepa', 'IPortalSer');
INSERT INTO `functions` VALUES ('147', 'GetAllRecD', 'IPortalSer');
INSERT INTO `functions` VALUES ('148', 'AddRecDepa', 'IPortalSer');
INSERT INTO `functions` VALUES ('149', 'UpdateRecD', 'IPortalSer');
INSERT INTO `functions` VALUES ('150', 'DeleteRecD', 'IPortalSer');
INSERT INTO `functions` VALUES ('151', 'GetRecruit', 'IPortalSer');
INSERT INTO `functions` VALUES ('152', 'GetRecruit', 'IPortalSer');
INSERT INTO `functions` VALUES ('153', 'GetAllRecr', 'IPortalSer');
INSERT INTO `functions` VALUES ('154', 'AddRecruit', 'IPortalSer');
INSERT INTO `functions` VALUES ('155', 'UpdateRecr', 'IPortalSer');
INSERT INTO `functions` VALUES ('156', 'DeleteRecr', 'IPortalSer');
INSERT INTO `functions` VALUES ('157', 'GetCandida', 'IPortalSer');
INSERT INTO `functions` VALUES ('158', 'GetAllCand', 'IPortalSer');
INSERT INTO `functions` VALUES ('159', 'AddCandida', 'IPortalSer');
INSERT INTO `functions` VALUES ('160', 'UpdateCand', 'IPortalSer');
INSERT INTO `functions` VALUES ('161', 'DeleteCand', 'IPortalSer');
INSERT INTO `functions` VALUES ('162', 'SelectCand', 'IPortalSer');
INSERT INTO `functions` VALUES ('163', 'GetLocatio', 'IHRService');
INSERT INTO `functions` VALUES ('164', 'GetAllLoca', 'IHRService');
INSERT INTO `functions` VALUES ('165', 'AddLocatio', 'IHRService');
INSERT INTO `functions` VALUES ('166', 'UpdateLoca', 'IHRService');
INSERT INTO `functions` VALUES ('167', 'DeleteLoca', 'IHRService');
INSERT INTO `functions` VALUES ('168', 'GetLocatio', 'IHRService');
INSERT INTO `functions` VALUES ('169', 'GetPositio', 'IHRService');
INSERT INTO `functions` VALUES ('170', 'GetAllPosi', 'IHRService');
INSERT INTO `functions` VALUES ('171', 'AddPositio', 'IHRService');
INSERT INTO `functions` VALUES ('172', 'UpdatePosi', 'IHRService');
INSERT INTO `functions` VALUES ('173', 'DeletePosi', 'IHRService');
INSERT INTO `functions` VALUES ('174', 'GetPositio', 'IHRService');
INSERT INTO `functions` VALUES ('175', 'GetStaffIn', 'IHRService');
INSERT INTO `functions` VALUES ('176', 'GetStaffIn', 'IHRService');
INSERT INTO `functions` VALUES ('177', 'GetAllStaf', 'IHRService');
INSERT INTO `functions` VALUES ('178', 'GetAllStaf', 'IHRService');
INSERT INTO `functions` VALUES ('179', 'AddStaffIn', 'IHRService');
INSERT INTO `functions` VALUES ('180', 'UpdateStaf', 'IHRService');
INSERT INTO `functions` VALUES ('181', 'DeleteStaf', 'IHRService');
INSERT INTO `functions` VALUES ('182', 'GetStaffIn', 'IHRService');
INSERT INTO `functions` VALUES ('183', 'GetStaffIn', 'IHRService');
INSERT INTO `functions` VALUES ('184', 'GetEnrollS', 'IHRService');
INSERT INTO `functions` VALUES ('185', 'GetResignS', 'IHRService');
INSERT INTO `functions` VALUES ('186', 'GetResignS', 'IHRService');
INSERT INTO `functions` VALUES ('187', 'GetEnrollS', 'IHRService');
INSERT INTO `functions` VALUES ('188', 'GetTitlesB', 'IHRService');
INSERT INTO `functions` VALUES ('189', 'GetAllTitl', 'IHRService');
INSERT INTO `functions` VALUES ('190', 'AddTitles', 'IHRService');
INSERT INTO `functions` VALUES ('191', 'UpdateTitl', 'IHRService');
INSERT INTO `functions` VALUES ('192', 'DeleteTitl', 'IHRService');
INSERT INTO `functions` VALUES ('193', 'GetTitlesB', 'IHRService');
INSERT INTO `functions` VALUES ('194', 'GetAllEPRe', 'IHRService');
INSERT INTO `functions` VALUES ('195', 'AddEPRecor', 'IHRService');
INSERT INTO `functions` VALUES ('196', 'UpdateEPRe', 'IHRService');
INSERT INTO `functions` VALUES ('197', 'DeleteEPRe', 'IHRService');
INSERT INTO `functions` VALUES ('198', 'GetEPRecor', 'IHRService');
INSERT INTO `functions` VALUES ('199', 'GetRecordB', 'IHRService');
INSERT INTO `functions` VALUES ('200', 'GetAllRPRe', 'IHRService');
INSERT INTO `functions` VALUES ('201', 'AddRPRecor', 'IHRService');
INSERT INTO `functions` VALUES ('202', 'UpdateRPRe', 'IHRService');
INSERT INTO `functions` VALUES ('203', 'DeleteRPRe', 'IHRService');
INSERT INTO `functions` VALUES ('204', 'GetRPRecor', 'IHRService');
INSERT INTO `functions` VALUES ('205', 'GetRPRecor', 'IHRService');
INSERT INTO `functions` VALUES ('206', 'GetMenuByP', 'ICommonSer');
INSERT INTO `functions` VALUES ('207', 'UpdateAppr', 'ICommonSer');
INSERT INTO `functions` VALUES ('208', 'AddApprova', 'ICommonSer');
INSERT INTO `functions` VALUES ('209', 'GetApprova', 'ICommonSer');
INSERT INTO `functions` VALUES ('210', 'GetApprova', 'ICommonSer');
INSERT INTO `functions` VALUES ('211', 'DeleteAppr', 'ICommonSer');
INSERT INTO `functions` VALUES ('212', 'DeleteAppr', 'ICommonSer');
INSERT INTO `functions` VALUES ('213', 'GetApprova', 'ICommonSer');
INSERT INTO `functions` VALUES ('214', 'GetApprova', 'ICommonSer');
INSERT INTO `functions` VALUES ('215', 'GetBasicIn', 'ICommonSer');
INSERT INTO `functions` VALUES ('216', 'UpdateBasi', 'ICommonSer');
INSERT INTO `functions` VALUES ('217', 'AddBasicIn', 'ICommonSer');
INSERT INTO `functions` VALUES ('218', 'GetToDoLis', 'ICommonSer');
INSERT INTO `functions` VALUES ('219', 'GetPageToD', 'ICommonSer');
INSERT INTO `functions` VALUES ('220', 'GetPageToD', 'ICommonSer');
INSERT INTO `functions` VALUES ('221', 'GetToDoLis', 'ICommonSer');
INSERT INTO `functions` VALUES ('222', 'GetToDoLis', 'ICommonSer');
INSERT INTO `functions` VALUES ('223', 'AddToDoLis', 'ICommonSer');
INSERT INTO `functions` VALUES ('224', 'DeleteToDo', 'ICommonSer');
INSERT INTO `functions` VALUES ('225', 'GetModules', 'ICommonSer');
INSERT INTO `functions` VALUES ('226', 'GetModules', 'ICommonSer');
INSERT INTO `functions` VALUES ('227', 'GetHiddenM', 'ICommonSer');
INSERT INTO `functions` VALUES ('228', 'GetDisplay', 'ICommonSer');
INSERT INTO `functions` VALUES ('229', 'UpdateModu', 'ICommonSer');
INSERT INTO `functions` VALUES ('230', 'AddModules', 'ICommonSer');
INSERT INTO `functions` VALUES ('231', 'DeleteModu', 'ICommonSer');
INSERT INTO `functions` VALUES ('232', 'DeleteModu', 'ICommonSer');
INSERT INTO `functions` VALUES ('233', 'DeleteOper', 'ICommonSer');
INSERT INTO `functions` VALUES ('234', 'GetAllOper', 'ICommonSer');
INSERT INTO `functions` VALUES ('235', 'GetOperati', 'ICommonSer');
INSERT INTO `functions` VALUES ('236', 'GetOperati', 'ICommonSer');
INSERT INTO `functions` VALUES ('237', 'UpdateOper', 'ICommonSer');
INSERT INTO `functions` VALUES ('238', 'AddSingleO', 'ICommonSer');
INSERT INTO `functions` VALUES ('239', 'AddMessage', 'ICommonSer');
INSERT INTO `functions` VALUES ('240', 'GetMessage', 'ICommonSer');
INSERT INTO `functions` VALUES ('241', 'GetNotSend', 'ICommonSer');
INSERT INTO `functions` VALUES ('242', 'UpdateMess', 'ICommonSer');
INSERT INTO `functions` VALUES ('243', 'AddMessage', 'ICommonSer');
INSERT INTO `functions` VALUES ('244', 'GetMessage', 'ICommonSer');
INSERT INTO `functions` VALUES ('245', 'UpdateMess', 'ICommonSer');
INSERT INTO `functions` VALUES ('246', 'deleteMess', 'ICommonSer');
INSERT INTO `functions` VALUES ('247', 'GetFilesBy', 'IFileServi');
INSERT INTO `functions` VALUES ('248', 'GetFileByI', 'IFileServi');
INSERT INTO `functions` VALUES ('249', 'GetFilesBy', 'IFileServi');
INSERT INTO `functions` VALUES ('250', 'GetFolders', 'IFileServi');
INSERT INTO `functions` VALUES ('251', 'GetFilesBy', 'IFileServi');
INSERT INTO `functions` VALUES ('252', 'GetAllFile', 'IFileServi');
INSERT INTO `functions` VALUES ('253', 'AddFiles', 'IFileServi');
INSERT INTO `functions` VALUES ('254', 'UpdateFile', 'IFileServi');
INSERT INTO `functions` VALUES ('255', 'DeleteFile', 'IFileServi');

-- ----------------------------
-- Table structure for functionspermissions
-- ----------------------------
DROP TABLE IF EXISTS `functionspermissions`;
CREATE TABLE `functionspermissions` (
  `Functions_Id` int(11) NOT NULL,
  `Permissions_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Functions_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of functionspermissions
-- ----------------------------
INSERT INTO `functionspermissions` VALUES ('4', '1');
INSERT INTO `functionspermissions` VALUES ('53', '68');
INSERT INTO `functionspermissions` VALUES ('54', '68');
INSERT INTO `functionspermissions` VALUES ('55', '68');
INSERT INTO `functionspermissions` VALUES ('56', '68');
INSERT INTO `functionspermissions` VALUES ('57', '68');
INSERT INTO `functionspermissions` VALUES ('58', '68');
INSERT INTO `functionspermissions` VALUES ('59', '68');
INSERT INTO `functionspermissions` VALUES ('60', '68');
INSERT INTO `functionspermissions` VALUES ('61', '68');
INSERT INTO `functionspermissions` VALUES ('62', '68');
INSERT INTO `functionspermissions` VALUES ('63', '68');
INSERT INTO `functionspermissions` VALUES ('64', '68');
INSERT INTO `functionspermissions` VALUES ('65', '68');
INSERT INTO `functionspermissions` VALUES ('66', '68');
INSERT INTO `functionspermissions` VALUES ('67', '68');
INSERT INTO `functionspermissions` VALUES ('68', '68');
INSERT INTO `functionspermissions` VALUES ('69', '68');
INSERT INTO `functionspermissions` VALUES ('70', '68');
INSERT INTO `functionspermissions` VALUES ('71', '68');
INSERT INTO `functionspermissions` VALUES ('72', '68');
INSERT INTO `functionspermissions` VALUES ('73', '68');
INSERT INTO `functionspermissions` VALUES ('74', '68');
INSERT INTO `functionspermissions` VALUES ('75', '68');
INSERT INTO `functionspermissions` VALUES ('76', '68');
INSERT INTO `functionspermissions` VALUES ('77', '68');
INSERT INTO `functionspermissions` VALUES ('78', '68');
INSERT INTO `functionspermissions` VALUES ('79', '68');
INSERT INTO `functionspermissions` VALUES ('80', '68');
INSERT INTO `functionspermissions` VALUES ('81', '68');
INSERT INTO `functionspermissions` VALUES ('82', '68');
INSERT INTO `functionspermissions` VALUES ('83', '68');
INSERT INTO `functionspermissions` VALUES ('84', '68');
INSERT INTO `functionspermissions` VALUES ('85', '68');
INSERT INTO `functionspermissions` VALUES ('86', '68');
INSERT INTO `functionspermissions` VALUES ('87', '68');
INSERT INTO `functionspermissions` VALUES ('88', '68');
INSERT INTO `functionspermissions` VALUES ('89', '68');
INSERT INTO `functionspermissions` VALUES ('90', '68');
INSERT INTO `functionspermissions` VALUES ('91', '68');
INSERT INTO `functionspermissions` VALUES ('92', '68');
INSERT INTO `functionspermissions` VALUES ('93', '68');
INSERT INTO `functionspermissions` VALUES ('94', '68');
INSERT INTO `functionspermissions` VALUES ('95', '68');
INSERT INTO `functionspermissions` VALUES ('96', '68');
INSERT INTO `functionspermissions` VALUES ('97', '68');
INSERT INTO `functionspermissions` VALUES ('98', '68');
INSERT INTO `functionspermissions` VALUES ('99', '68');
INSERT INTO `functionspermissions` VALUES ('100', '68');
INSERT INTO `functionspermissions` VALUES ('101', '68');
INSERT INTO `functionspermissions` VALUES ('102', '68');
INSERT INTO `functionspermissions` VALUES ('103', '68');
INSERT INTO `functionspermissions` VALUES ('104', '68');
INSERT INTO `functionspermissions` VALUES ('105', '68');
INSERT INTO `functionspermissions` VALUES ('106', '68');
INSERT INTO `functionspermissions` VALUES ('107', '68');
INSERT INTO `functionspermissions` VALUES ('108', '68');
INSERT INTO `functionspermissions` VALUES ('109', '68');
INSERT INTO `functionspermissions` VALUES ('110', '68');
INSERT INTO `functionspermissions` VALUES ('111', '68');
INSERT INTO `functionspermissions` VALUES ('112', '68');
INSERT INTO `functionspermissions` VALUES ('113', '68');
INSERT INTO `functionspermissions` VALUES ('114', '68');
INSERT INTO `functionspermissions` VALUES ('115', '68');
INSERT INTO `functionspermissions` VALUES ('116', '68');
INSERT INTO `functionspermissions` VALUES ('117', '68');
INSERT INTO `functionspermissions` VALUES ('118', '68');
INSERT INTO `functionspermissions` VALUES ('119', '68');
INSERT INTO `functionspermissions` VALUES ('120', '68');
INSERT INTO `functionspermissions` VALUES ('121', '68');
INSERT INTO `functionspermissions` VALUES ('122', '68');
INSERT INTO `functionspermissions` VALUES ('123', '68');
INSERT INTO `functionspermissions` VALUES ('124', '68');
INSERT INTO `functionspermissions` VALUES ('125', '68');
INSERT INTO `functionspermissions` VALUES ('126', '68');
INSERT INTO `functionspermissions` VALUES ('127', '68');
INSERT INTO `functionspermissions` VALUES ('128', '68');
INSERT INTO `functionspermissions` VALUES ('129', '68');
INSERT INTO `functionspermissions` VALUES ('130', '68');
INSERT INTO `functionspermissions` VALUES ('131', '68');
INSERT INTO `functionspermissions` VALUES ('132', '68');
INSERT INTO `functionspermissions` VALUES ('133', '68');
INSERT INTO `functionspermissions` VALUES ('134', '68');
INSERT INTO `functionspermissions` VALUES ('135', '68');
INSERT INTO `functionspermissions` VALUES ('136', '68');
INSERT INTO `functionspermissions` VALUES ('137', '68');
INSERT INTO `functionspermissions` VALUES ('138', '68');
INSERT INTO `functionspermissions` VALUES ('139', '68');
INSERT INTO `functionspermissions` VALUES ('140', '68');
INSERT INTO `functionspermissions` VALUES ('141', '68');
INSERT INTO `functionspermissions` VALUES ('142', '68');
INSERT INTO `functionspermissions` VALUES ('143', '68');
INSERT INTO `functionspermissions` VALUES ('144', '68');
INSERT INTO `functionspermissions` VALUES ('145', '68');
INSERT INTO `functionspermissions` VALUES ('146', '68');
INSERT INTO `functionspermissions` VALUES ('147', '68');
INSERT INTO `functionspermissions` VALUES ('148', '68');
INSERT INTO `functionspermissions` VALUES ('149', '68');
INSERT INTO `functionspermissions` VALUES ('150', '68');
INSERT INTO `functionspermissions` VALUES ('151', '68');
INSERT INTO `functionspermissions` VALUES ('152', '68');
INSERT INTO `functionspermissions` VALUES ('153', '68');
INSERT INTO `functionspermissions` VALUES ('154', '68');
INSERT INTO `functionspermissions` VALUES ('155', '68');
INSERT INTO `functionspermissions` VALUES ('156', '68');
INSERT INTO `functionspermissions` VALUES ('157', '68');
INSERT INTO `functionspermissions` VALUES ('158', '68');
INSERT INTO `functionspermissions` VALUES ('159', '68');
INSERT INTO `functionspermissions` VALUES ('160', '68');
INSERT INTO `functionspermissions` VALUES ('161', '68');
INSERT INTO `functionspermissions` VALUES ('162', '68');
INSERT INTO `functionspermissions` VALUES ('163', '68');
INSERT INTO `functionspermissions` VALUES ('164', '68');
INSERT INTO `functionspermissions` VALUES ('165', '68');
INSERT INTO `functionspermissions` VALUES ('166', '68');
INSERT INTO `functionspermissions` VALUES ('167', '68');
INSERT INTO `functionspermissions` VALUES ('168', '68');
INSERT INTO `functionspermissions` VALUES ('169', '68');
INSERT INTO `functionspermissions` VALUES ('170', '68');
INSERT INTO `functionspermissions` VALUES ('171', '68');
INSERT INTO `functionspermissions` VALUES ('172', '68');
INSERT INTO `functionspermissions` VALUES ('173', '68');
INSERT INTO `functionspermissions` VALUES ('174', '68');
INSERT INTO `functionspermissions` VALUES ('175', '68');
INSERT INTO `functionspermissions` VALUES ('176', '68');
INSERT INTO `functionspermissions` VALUES ('177', '68');
INSERT INTO `functionspermissions` VALUES ('178', '68');
INSERT INTO `functionspermissions` VALUES ('179', '68');
INSERT INTO `functionspermissions` VALUES ('180', '68');
INSERT INTO `functionspermissions` VALUES ('181', '68');
INSERT INTO `functionspermissions` VALUES ('182', '68');
INSERT INTO `functionspermissions` VALUES ('183', '68');
INSERT INTO `functionspermissions` VALUES ('184', '68');
INSERT INTO `functionspermissions` VALUES ('185', '68');
INSERT INTO `functionspermissions` VALUES ('186', '68');
INSERT INTO `functionspermissions` VALUES ('187', '68');
INSERT INTO `functionspermissions` VALUES ('188', '68');
INSERT INTO `functionspermissions` VALUES ('189', '68');
INSERT INTO `functionspermissions` VALUES ('190', '68');
INSERT INTO `functionspermissions` VALUES ('191', '68');
INSERT INTO `functionspermissions` VALUES ('192', '68');
INSERT INTO `functionspermissions` VALUES ('193', '68');
INSERT INTO `functionspermissions` VALUES ('194', '68');
INSERT INTO `functionspermissions` VALUES ('195', '68');
INSERT INTO `functionspermissions` VALUES ('196', '68');
INSERT INTO `functionspermissions` VALUES ('197', '68');
INSERT INTO `functionspermissions` VALUES ('198', '68');
INSERT INTO `functionspermissions` VALUES ('199', '68');
INSERT INTO `functionspermissions` VALUES ('200', '68');
INSERT INTO `functionspermissions` VALUES ('201', '68');
INSERT INTO `functionspermissions` VALUES ('202', '68');
INSERT INTO `functionspermissions` VALUES ('203', '68');
INSERT INTO `functionspermissions` VALUES ('204', '68');
INSERT INTO `functionspermissions` VALUES ('205', '68');
INSERT INTO `functionspermissions` VALUES ('206', '68');
INSERT INTO `functionspermissions` VALUES ('207', '68');
INSERT INTO `functionspermissions` VALUES ('208', '68');
INSERT INTO `functionspermissions` VALUES ('209', '68');
INSERT INTO `functionspermissions` VALUES ('210', '68');
INSERT INTO `functionspermissions` VALUES ('211', '68');
INSERT INTO `functionspermissions` VALUES ('212', '68');
INSERT INTO `functionspermissions` VALUES ('213', '68');
INSERT INTO `functionspermissions` VALUES ('214', '68');
INSERT INTO `functionspermissions` VALUES ('215', '68');
INSERT INTO `functionspermissions` VALUES ('216', '68');
INSERT INTO `functionspermissions` VALUES ('217', '68');
INSERT INTO `functionspermissions` VALUES ('218', '68');
INSERT INTO `functionspermissions` VALUES ('219', '68');
INSERT INTO `functionspermissions` VALUES ('220', '68');
INSERT INTO `functionspermissions` VALUES ('221', '68');
INSERT INTO `functionspermissions` VALUES ('222', '68');
INSERT INTO `functionspermissions` VALUES ('223', '68');
INSERT INTO `functionspermissions` VALUES ('224', '68');
INSERT INTO `functionspermissions` VALUES ('225', '68');
INSERT INTO `functionspermissions` VALUES ('226', '68');
INSERT INTO `functionspermissions` VALUES ('227', '68');
INSERT INTO `functionspermissions` VALUES ('228', '68');
INSERT INTO `functionspermissions` VALUES ('229', '68');
INSERT INTO `functionspermissions` VALUES ('230', '68');
INSERT INTO `functionspermissions` VALUES ('231', '68');
INSERT INTO `functionspermissions` VALUES ('232', '68');
INSERT INTO `functionspermissions` VALUES ('233', '68');
INSERT INTO `functionspermissions` VALUES ('234', '68');
INSERT INTO `functionspermissions` VALUES ('235', '68');
INSERT INTO `functionspermissions` VALUES ('236', '68');
INSERT INTO `functionspermissions` VALUES ('237', '68');
INSERT INTO `functionspermissions` VALUES ('238', '68');
INSERT INTO `functionspermissions` VALUES ('239', '68');
INSERT INTO `functionspermissions` VALUES ('240', '68');
INSERT INTO `functionspermissions` VALUES ('241', '68');
INSERT INTO `functionspermissions` VALUES ('242', '68');
INSERT INTO `functionspermissions` VALUES ('243', '68');
INSERT INTO `functionspermissions` VALUES ('244', '68');
INSERT INTO `functionspermissions` VALUES ('245', '68');
INSERT INTO `functionspermissions` VALUES ('246', '68');
INSERT INTO `functionspermissions` VALUES ('247', '68');
INSERT INTO `functionspermissions` VALUES ('248', '68');
INSERT INTO `functionspermissions` VALUES ('249', '68');
INSERT INTO `functionspermissions` VALUES ('250', '68');
INSERT INTO `functionspermissions` VALUES ('251', '68');
INSERT INTO `functionspermissions` VALUES ('252', '68');

-- ----------------------------
-- Table structure for homepagemodules
-- ----------------------------
DROP TABLE IF EXISTS `homepagemodules`;
CREATE TABLE `homepagemodules` (
  `Id` int(11) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `IsHidden` int(11) DEFAULT NULL,
  `Location` varchar(10) DEFAULT NULL,
  `Sequence` int(11) DEFAULT NULL,
  `Color` varchar(10) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homepagemodules
-- ----------------------------
INSERT INTO `homepagemodules` VALUES ('1', '公司简介', '0', 'left', '0', null, null);
INSERT INTO `homepagemodules` VALUES ('2', '最新新闻', '0', 'middle', '0', null, null);
INSERT INTO `homepagemodules` VALUES ('3', '最新公文', '0', 'middle', '1', null, null);
INSERT INTO `homepagemodules` VALUES ('4', '代办事项', '1', '', '0', null, null);
INSERT INTO `homepagemodules` VALUES ('5', '工作流', '0', 'right', '1', null, null);
INSERT INTO `homepagemodules` VALUES ('6', '待审核事项', '0', 'right', '0', null, null);
INSERT INTO `homepagemodules` VALUES ('7', '公司简介', '0', 'left', '0', 'red', '1');
INSERT INTO `homepagemodules` VALUES ('8', '最新新闻', '0', 'right', '0', 'red', '1');
INSERT INTO `homepagemodules` VALUES ('9', '最新公文', '0', 'middle', '2', null, '1');
INSERT INTO `homepagemodules` VALUES ('10', '代办事项', '0', 'right', '1', null, '1');
INSERT INTO `homepagemodules` VALUES ('11', '工作流', '0', 'middle', '1', 'pink', '1');
INSERT INTO `homepagemodules` VALUES ('12', '待审核事项', '0', 'middle', '0', 'red', '1');
INSERT INTO `homepagemodules` VALUES ('13', '公司简介', '0', 'left', '0', null, '2');
INSERT INTO `homepagemodules` VALUES ('14', '最新新闻', '0', 'middle', '2', 'pink', '2');
INSERT INTO `homepagemodules` VALUES ('15', '最新公文', '0', 'right', '0', null, '2');
INSERT INTO `homepagemodules` VALUES ('16', '代办事项', '0', 'middle', '1', null, '2');
INSERT INTO `homepagemodules` VALUES ('17', '工作流', '0', 'right', '1', null, '2');
INSERT INTO `homepagemodules` VALUES ('18', '待审核事项', '0', 'middle', '0', null, '2');
INSERT INTO `homepagemodules` VALUES ('19', '公司简介', '0', 'left', '0', null, '5');
INSERT INTO `homepagemodules` VALUES ('20', '最新新闻', '0', 'middle', '0', null, '5');
INSERT INTO `homepagemodules` VALUES ('21', '最新公文', '0', 'middle', '1', null, '5');
INSERT INTO `homepagemodules` VALUES ('22', '代办事项', '0', 'middle', '2', null, '5');
INSERT INTO `homepagemodules` VALUES ('23', '工作流', '0', 'right', '1', null, '5');
INSERT INTO `homepagemodules` VALUES ('24', '待审核事项', '0', 'right', '0', null, '5');
INSERT INTO `homepagemodules` VALUES ('25', '公司简介', '0', 'left', '0', null, '3');
INSERT INTO `homepagemodules` VALUES ('26', '最新新闻', '0', 'middle', '0', null, '3');
INSERT INTO `homepagemodules` VALUES ('27', '最新公文', '0', 'middle', '1', null, '3');
INSERT INTO `homepagemodules` VALUES ('28', '代办事项', '1', '', '0', null, '3');
INSERT INTO `homepagemodules` VALUES ('29', '工作流', '1', '', '0', null, '3');
INSERT INTO `homepagemodules` VALUES ('30', '待审核事项', '0', 'right', '0', null, '3');
INSERT INTO `homepagemodules` VALUES ('31', '公司简介', '0', 'left', '0', null, '9');
INSERT INTO `homepagemodules` VALUES ('32', '最新新闻', '0', 'middle', '0', null, '9');
INSERT INTO `homepagemodules` VALUES ('33', '最新公文', '0', 'middle', '1', null, '9');
INSERT INTO `homepagemodules` VALUES ('34', '代办事项', '1', '', '0', null, '9');
INSERT INTO `homepagemodules` VALUES ('35', '工作流', '1', '', '0', null, '9');
INSERT INTO `homepagemodules` VALUES ('36', '待审核事项', '0', 'right', '0', null, '9');
INSERT INTO `homepagemodules` VALUES ('37', '公司简介', '0', 'left', '0', null, '4');
INSERT INTO `homepagemodules` VALUES ('38', '最新新闻', '0', 'middle', '0', null, '4');
INSERT INTO `homepagemodules` VALUES ('39', '最新公文', '0', 'middle', '1', null, '4');
INSERT INTO `homepagemodules` VALUES ('40', '代办事项', '1', '', '0', null, '4');
INSERT INTO `homepagemodules` VALUES ('41', '工作流', '0', 'right', '1', null, '4');
INSERT INTO `homepagemodules` VALUES ('42', '待审核事项', '0', 'right', '0', null, '4');
INSERT INTO `homepagemodules` VALUES ('43', '公司简介', '0', 'left', '0', null, '7');
INSERT INTO `homepagemodules` VALUES ('44', '最新新闻', '0', 'middle', '0', null, '7');
INSERT INTO `homepagemodules` VALUES ('45', '最新公文', '0', 'middle', '1', null, '7');
INSERT INTO `homepagemodules` VALUES ('46', '代办事项', '1', '', '0', null, '7');
INSERT INTO `homepagemodules` VALUES ('47', '工作流', '0', 'right', '1', null, '7');
INSERT INTO `homepagemodules` VALUES ('48', '待审核事项', '0', 'right', '0', null, '7');
INSERT INTO `homepagemodules` VALUES ('49', '公司简介', '0', 'left', '0', null, '6');
INSERT INTO `homepagemodules` VALUES ('50', '最新新闻', '0', 'middle', '0', null, '6');
INSERT INTO `homepagemodules` VALUES ('51', '最新公文', '0', 'middle', '1', null, '6');
INSERT INTO `homepagemodules` VALUES ('52', '代办事项', '1', '', '0', null, '6');
INSERT INTO `homepagemodules` VALUES ('53', '工作流', '0', 'right', '1', null, '6');
INSERT INTO `homepagemodules` VALUES ('54', '待审核事项', '0', 'right', '0', null, '6');
INSERT INTO `homepagemodules` VALUES ('55', '公司简介', '1', '', '0', null, '12');
INSERT INTO `homepagemodules` VALUES ('56', '最新新闻', '0', 'right', '0', 'purple', '12');
INSERT INTO `homepagemodules` VALUES ('57', '最新公文', '1', '', '1', null, '12');
INSERT INTO `homepagemodules` VALUES ('58', '代办事项', '1', '', '0', null, '12');
INSERT INTO `homepagemodules` VALUES ('59', '工作流', '0', 'middle', '1', 'green', '12');
INSERT INTO `homepagemodules` VALUES ('60', '待审核事项', '0', 'middle', '0', 'blue', '12');
INSERT INTO `homepagemodules` VALUES ('61', '公司简介', '0', 'left', '0', null, '13');
INSERT INTO `homepagemodules` VALUES ('62', '最新新闻', '0', 'middle', '0', null, '13');
INSERT INTO `homepagemodules` VALUES ('63', '最新公文', '0', 'middle', '1', null, '13');
INSERT INTO `homepagemodules` VALUES ('64', '代办事项', '1', '', '0', null, '13');
INSERT INTO `homepagemodules` VALUES ('65', '工作流', '0', 'right', '1', null, '13');
INSERT INTO `homepagemodules` VALUES ('66', '待审核事项', '0', 'right', '0', null, '13');
INSERT INTO `homepagemodules` VALUES ('67', '公司简介', '0', 'left', '0', null, '15');
INSERT INTO `homepagemodules` VALUES ('68', '最新新闻', '0', 'middle', '0', null, '15');
INSERT INTO `homepagemodules` VALUES ('69', '最新公文', '0', 'middle', '1', null, '15');
INSERT INTO `homepagemodules` VALUES ('70', '代办事项', '1', '', '0', null, '15');
INSERT INTO `homepagemodules` VALUES ('71', '工作流', '0', 'right', '1', null, '15');
INSERT INTO `homepagemodules` VALUES ('72', '待审核事项', '0', 'right', '0', null, '15');
INSERT INTO `homepagemodules` VALUES ('73', '公司简介', '0', 'left', '0', null, '18');
INSERT INTO `homepagemodules` VALUES ('74', '最新新闻', '0', 'middle', '0', null, '18');
INSERT INTO `homepagemodules` VALUES ('75', '最新公文', '0', 'middle', '1', null, '18');
INSERT INTO `homepagemodules` VALUES ('76', '代办事项', '1', '', '0', null, '18');
INSERT INTO `homepagemodules` VALUES ('77', '工作流', '0', 'right', '1', null, '18');
INSERT INTO `homepagemodules` VALUES ('78', '待审核事项', '0', 'right', '0', null, '18');
INSERT INTO `homepagemodules` VALUES ('79', '公司简介', '0', 'left', '0', null, '10');
INSERT INTO `homepagemodules` VALUES ('80', '最新新闻', '0', 'middle', '0', null, '10');
INSERT INTO `homepagemodules` VALUES ('81', '最新公文', '0', 'middle', '1', null, '10');
INSERT INTO `homepagemodules` VALUES ('82', '代办事项', '1', '', '0', null, '10');
INSERT INTO `homepagemodules` VALUES ('83', '工作流', '0', 'right', '1', null, '10');
INSERT INTO `homepagemodules` VALUES ('84', '待审核事项', '0', 'right', '0', null, '10');

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `Id` int(11) NOT NULL,
  `Name` longtext,
  `Description` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES ('1', '上海', '上海总部');

-- ----------------------------
-- Table structure for menumanagements
-- ----------------------------
DROP TABLE IF EXISTS `menumanagements`;
CREATE TABLE `menumanagements` (
  `Id` int(11) NOT NULL,
  `MenuName` longtext,
  `MenuUrl` longtext,
  `IsShow` int(11) DEFAULT NULL,
  `MenuClass` longtext,
  `ParentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menumanagements
-- ----------------------------

-- ----------------------------
-- Table structure for menupermissions
-- ----------------------------
DROP TABLE IF EXISTS `menupermissions`;
CREATE TABLE `menupermissions` (
  `Menu_Id` int(11) DEFAULT NULL,
  `Permissions_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menupermissions
-- ----------------------------
INSERT INTO `menupermissions` VALUES ('37', '10');
INSERT INTO `menupermissions` VALUES ('35', '10');
INSERT INTO `menupermissions` VALUES ('12', '10');
INSERT INTO `menupermissions` VALUES ('16', '10');
INSERT INTO `menupermissions` VALUES ('36', '10');
INSERT INTO `menupermissions` VALUES ('38', '10');
INSERT INTO `menupermissions` VALUES ('18', '10');
INSERT INTO `menupermissions` VALUES ('19', '10');
INSERT INTO `menupermissions` VALUES ('46', '10');
INSERT INTO `menupermissions` VALUES ('45', '10');
INSERT INTO `menupermissions` VALUES ('10', '10');
INSERT INTO `menupermissions` VALUES ('1', '10');
INSERT INTO `menupermissions` VALUES ('2', '10');
INSERT INTO `menupermissions` VALUES ('3', '10');
INSERT INTO `menupermissions` VALUES ('4', '10');
INSERT INTO `menupermissions` VALUES ('5', '10');
INSERT INTO `menupermissions` VALUES ('6', '10');
INSERT INTO `menupermissions` VALUES ('7', '10');
INSERT INTO `menupermissions` VALUES ('8', '10');
INSERT INTO `menupermissions` VALUES ('9', '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES (null, '10');
INSERT INTO `menupermissions` VALUES ('16', '13');
INSERT INTO `menupermissions` VALUES ('35', '13');
INSERT INTO `menupermissions` VALUES ('19', '13');
INSERT INTO `menupermissions` VALUES ('18', '13');
INSERT INTO `menupermissions` VALUES ('36', '13');
INSERT INTO `menupermissions` VALUES ('37', '13');
INSERT INTO `menupermissions` VALUES ('26', '13');
INSERT INTO `menupermissions` VALUES ('12', '13');
INSERT INTO `menupermissions` VALUES ('29', '13');
INSERT INTO `menupermissions` VALUES ('13', '13');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `Id` int(11) NOT NULL,
  `MenuName` longtext,
  `MenuUrl` longtext,
  `IsShow` int(11) DEFAULT NULL,
  `MenuClass` longtext,
  `ParentId` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `OnlyIdentify` longtext,
  `Icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', '官网管理', null, '0', 'glyphicon glyphicon-th-large', '0', '1', 'TWebManage', null);
INSERT INTO `menus` VALUES ('2', '文章管理', null, '0', null, '1', '2', 'MArticleManage', null);
INSERT INTO `menus` VALUES ('3', '招聘管理', null, '0', null, '1', '2', 'MRecruitmentManage', null);
INSERT INTO `menus` VALUES ('4', '分类管理', '/PortalNews/TypeManagement', '0', null, '2', '3', 'LArticleClassificationManage', null);
INSERT INTO `menus` VALUES ('5', '文章管理', '/PortalNews/NewsManagement', '0', null, '2', '3', 'LArticleManage', null);
INSERT INTO `menus` VALUES ('6', '文章添加', '/PortalNews/AddNews', '0', null, '2', '3', 'LAddArticle', null);
INSERT INTO `menus` VALUES ('7', '部门管理', '/PortalTalent/DepManagement', '0', null, '3', '3', 'LDepartmentManage', null);
INSERT INTO `menus` VALUES ('8', '招聘管理', '/PortalTalent/JobManagement', '0', null, '3', '3', 'LRecruitmentManage', null);
INSERT INTO `menus` VALUES ('9', '招聘添加', '/PortalTalent/JobAddPage', '0', null, '3', '3', 'LAddRecruitment', null);
INSERT INTO `menus` VALUES ('10', '用户管理', null, '0', 'glyphicon glyphicon-user', '0', '1', 'TUsersManage', null);
INSERT INTO `menus` VALUES ('11', '组织管理', null, '0', 'glyphicon glyphicon-globe', '0', '1', 'TOrganizationManage', null);
INSERT INTO `menus` VALUES ('12', '公文管理', null, '0', 'glyphicon glyphicon-list-alt', '0', '1', 'TAnnouncementManage', null);
INSERT INTO `menus` VALUES ('13', '财务管理', null, '0', 'glyphicon glyphicon-yen', '0', '1', 'TFinanceManage', null);
INSERT INTO `menus` VALUES ('14', '人事管理', null, '0', 'glyphicon glyphicon-list-alt', '0', '1', 'THRManage', null);
INSERT INTO `menus` VALUES ('15', '文件管理', null, '0', 'glyphicon glyphicon-file', '0', '1', 'TFileManage', null);
INSERT INTO `menus` VALUES ('16', '权限管理', null, '0', 'glyphicon glyphicon-lock', '0', '1', 'TPermissionsManage', null);
INSERT INTO `menus` VALUES ('17', '新闻管理', null, '0', 'glyphicon glyphicon-file', '0', '1', 'TNewsManage', null);
INSERT INTO `menus` VALUES ('18', '权限管理', null, '0', null, '16', '2', 'MPermissionsManage', null);
INSERT INTO `menus` VALUES ('19', '权限管理', '/Auth/Index', '0', null, '18', '3', 'LPermissionsManage', null);
INSERT INTO `menus` VALUES ('20', '文件管理', null, '0', null, '15', '2', 'MFileManage', null);
INSERT INTO `menus` VALUES ('21', '文件管理', '/File/Index', '0', null, '20', '3', 'LFileManage', null);
INSERT INTO `menus` VALUES ('22', '人事管理', null, '0', null, '14', '2', 'MHRManage', null);
INSERT INTO `menus` VALUES ('23', '档案管理', '/HumanResource/PersonnelFileManage', '0', null, '22', '3', 'LArchivesManage', null);
INSERT INTO `menus` VALUES ('24', '入职管理', '/HumanResource/EnrollManagement', '0', null, '22', '3', 'LInductionManage', null);
INSERT INTO `menus` VALUES ('25', '离职管理', '/HumanResource/ResignManagement', '0', null, '22', '3', 'LDepartureManage', null);
INSERT INTO `menus` VALUES ('26', '财务配置', null, '0', null, '13', '2', 'MFinanceConfiguration', null);
INSERT INTO `menus` VALUES ('27', '报销管理', null, '0', null, '13', '2', 'MClaimManage', null);
INSERT INTO `menus` VALUES ('28', '账户管理', '/Accounts/AccountManagement', '0', null, '26', '3', 'LAccountsManage', null);
INSERT INTO `menus` VALUES ('29', '银行管理', '/Banks/BankManagement', '0', null, '26', '3', 'LBanksManage', null);
INSERT INTO `menus` VALUES ('30', '费用管理', '/ExpenseTypes/ExpenseTypeManagement', '0', null, '26', '3', 'LExpenseTypeManage', null);
INSERT INTO `menus` VALUES ('31', '货币管理', '/Currencys/CurrencyManagement', '0', null, '26', '3', 'LCurrencysManage', null);
INSERT INTO `menus` VALUES ('32', '报销申请', '/ClaimRequests/PersonalClaimManagement', '0', null, '27', '3', 'LClaimManage', null);
INSERT INTO `menus` VALUES ('33', '报销审批', '/ClaimRequests/ClaimRequestCheck', '0', null, '27', '3', 'LClaimCheck', null);
INSERT INTO `menus` VALUES ('34', '报销管理', '/ClaimRequests/ClaimManagement', '0', null, '27', '3', 'LClaimRequest', null);
INSERT INTO `menus` VALUES ('35', '公文管理', null, '0', null, '12', '2', 'MAnnouncementManage', null);
INSERT INTO `menus` VALUES ('36', '分类管理', '/Announcement/AnnouncementTypeManagement', '0', null, '35', '3', 'LAnnouncementClassificationManage', null);
INSERT INTO `menus` VALUES ('37', '公文管理', '/Announcement/AnnouncementManagement', '0', null, '35', '3', 'LAnnouncementManage', null);
INSERT INTO `menus` VALUES ('38', '公文添加', '/Announcement/AddAnnouncement', '0', null, '35', '3', 'LAddAnnouncement', null);
INSERT INTO `menus` VALUES ('39', '组织管理', null, '0', null, '11', '2', 'MOrganizationManage', null);
INSERT INTO `menus` VALUES ('40', '组织管理', '/Organization/OrganizationManagement', '0', null, '39', '3', 'LOrganizationManage', null);
INSERT INTO `menus` VALUES ('41', '新闻管理', null, '0', null, '17', '2', 'MNewsManage', null);
INSERT INTO `menus` VALUES ('42', '分类管理', '/News/TypeManagement', '0', null, '41', '3', 'LNewsClassificationManage', null);
INSERT INTO `menus` VALUES ('43', '新闻管理', '/News/NewsManagement', '0', null, '41', '3', 'LNewsManage', null);
INSERT INTO `menus` VALUES ('44', '新闻添加', '/News/AddNews', '0', null, '41', '3', 'LAddNews', null);
INSERT INTO `menus` VALUES ('45', '用户管理', null, '0', null, '10', '2', 'MUsersManage', null);
INSERT INTO `menus` VALUES ('46', '用户管理', '/UserManage/Index', '0', null, '45', '3', 'LUsersManage', null);
INSERT INTO `menus` VALUES ('47', '入职审批', '/HumanResource/EnrollApproval', '0', null, '22', '3', 'LInductionCheck', null);
INSERT INTO `menus` VALUES ('48', '离职审批', '/HumanResource/ResignApproval', '0', null, '22', '3', 'LDepartureCheck', null);
INSERT INTO `menus` VALUES ('49', '显示配置', '/FinanceSetting/FinanceSetting', '0', null, '26', '3', 'LAccordingConfiguration', null);
INSERT INTO `menus` VALUES ('50', '系统配置', null, '0', 'glyphicon glyphicon-cog', '0', '1', 'TSystemConfiguration', null);
INSERT INTO `menus` VALUES ('51', '系统配置', null, '0', null, '50', '2', 'MSystemConfiguration', null);
INSERT INTO `menus` VALUES ('52', '系统配置', '/Configuration/Index', '0', null, '51', '3', 'LSystemConfiguration', null);
INSERT INTO `menus` VALUES ('53', '操作日志', '/Common/OperationLogsManage', '0', null, '51', '3', 'LOperationLogs', null);
INSERT INTO `menus` VALUES ('54', '请假加班', null, '0', 'glyphicon glyphicon-time', '0', '1', 'TLeaveAndOverTime', null);
INSERT INTO `menus` VALUES ('55', '请假加班', null, '0', null, '54', '2', 'MLeaveAndOverTime', null);
INSERT INTO `menus` VALUES ('56', '请假申请', '/LeaveAndOverTime/LeaveTimeManagement', '0', null, '55', '3', 'LLeaveTimeManage', null);
INSERT INTO `menus` VALUES ('57', '加班申请', '/LeaveAndOverTime/OverTimeManage', '0', null, '55', '3', 'LOverTimeManage', null);
INSERT INTO `menus` VALUES ('58', '请假审批', '/LeaveAndOverTime/LeaveTimeCheck', '0', null, '55', '3', 'LLeaveTimeCheck', null);
INSERT INTO `menus` VALUES ('59', '加班审批', '/LeaveAndOverTime/OverTimeCheck', '0', null, '55', '3', 'LOverTimeCheck', null);
INSERT INTO `menus` VALUES ('60', '休假管理', null, '0', null, '54', '2', 'MWelfareSetting', null);
INSERT INTO `menus` VALUES ('61', '假期管理', '/LeaveAndOverTime/WelfareManagement', '0', null, '60', '3', 'LWelfareManagement', null);
INSERT INTO `menus` VALUES ('62', '休假管理', '/LeaveAndOverTime/StaffWelfareManagement', '0', null, '60', '3', 'LStaffWelfareManagement', null);
INSERT INTO `menus` VALUES ('63', '工作流', null, '0', 'glyphicon glyphicon-retweet', '0', '1', 'TWorkFlow', null);
INSERT INTO `menus` VALUES ('64', '流程管理', null, '0', null, '63', '2', 'MWorkFlow', null);
INSERT INTO `menus` VALUES ('65', '设计流程', '/WorkFlow/Designer', '0', null, '64', '3', 'LDesigner', null);
INSERT INTO `menus` VALUES ('66', '流程管理', '/WorkFlow/FlowManage', '0', null, '64', '3', 'LFlowManage', null);
INSERT INTO `menus` VALUES ('67', '可发起流程', '/WorkFlow/InitiateWorkFlow', '0', null, '64', '3', 'LInitiateWorkFlow', null);
INSERT INTO `menus` VALUES ('68', '我的流程', null, '0', null, '63', '2', 'MMyWorkFlow', null);
INSERT INTO `menus` VALUES ('69', '我的流程', '/WorkFlow/MyWorkFlow', '0', null, '68', '3', 'LMyWorkFlow', null);
INSERT INTO `menus` VALUES ('70', '我的待办', '/WorkFlow/WorkFlowCheck', '0', null, '68', '3', 'LWorkFlowCheck', null);
INSERT INTO `menus` VALUES ('71', '钉钉集成', '/Configuration/AppIntegration', '0', null, '51', '3', 'LAppIntegration', 'Images/desktop/finance.png');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `Id` int(11) NOT NULL,
  `Content` longtext,
  `Description` longtext,
  `SendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IsSent` int(11) DEFAULT NULL,
  `IsViewed` int(11) DEFAULT NULL,
  `NextUrl` longtext,
  `UserFrom_Id` int(11) DEFAULT NULL,
  `UserTo_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '【feichen】新增一条报销申请，编号为：1，申请人为：陈飞，金额为：120。请审核！', null, '2016-02-04 15:22:24', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '1');
INSERT INTO `messages` VALUES ('2', '【feichen】新增一条报销申请，编号为：1，申请人为：陈飞，金额为：120。请审核！', null, '2016-03-15 12:44:43', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '2');
INSERT INTO `messages` VALUES ('3', '【feichen】新增一条报销申请，编号为：2，申请人为：陈飞，金额为：123。请审核！', null, '2016-02-04 15:22:24', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '1');
INSERT INTO `messages` VALUES ('4', '【feichen】新增一条报销申请，编号为：2，申请人为：陈飞，金额为：123。请审核！', null, '2016-03-15 12:44:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '2');
INSERT INTO `messages` VALUES ('5', '【feichen】新增一条报销申请，编号为：3，申请人为：陈飞，金额为：222。请审核！', null, '2016-02-04 15:22:25', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '1');
INSERT INTO `messages` VALUES ('6', '【feichen】新增一条报销申请，编号为：3，申请人为：陈飞，金额为：222。请审核！', null, '2016-03-15 12:44:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '2');
INSERT INTO `messages` VALUES ('7', '【feichen】新增一条报销申请，编号为：4，申请人为：陈飞，金额为：12121。请审核！', null, '2016-02-04 15:22:25', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '1');
INSERT INTO `messages` VALUES ('8', '【feichen】新增一条报销申请，编号为：4，申请人为：陈飞，金额为：12121。请审核！', null, '2016-03-15 12:44:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '5', '2');
INSERT INTO `messages` VALUES ('9', '【admin】新增一条官网文章，编号为：1，标题为：《11》。请审核！', null, '2016-03-16 16:41:29', '1', '0', '/PortalNews/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('10', '【admin】新增一条官网文章，编号为：1，标题为：《11》。请审核！', null, '2016-03-17 10:41:36', '1', '0', '/PortalNews/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('11', '【admin】新增一条官网文章，编号为：1，标题为：《11》。请审核！', null, '2016-09-09 15:16:11', '1', '0', '/PortalNews/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('12', '【admin】新增一条官网文章，编号为：1，标题为：《11》。请审核！', null, '2016-03-16 16:41:19', '0', '0', '/PortalNews/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('13', '【admin】新增一条官网文章，编号为：1，标题为：《11》。请审核！', null, '2016-03-17 14:46:01', '1', '0', '/PortalNews/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('14', '【admin】新增一条官网文章，编号为：1，标题为：《11》。请审核！', null, '2016-09-09 15:56:11', '1', '0', '/PortalNews/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('15', '【admin】新增一条官网文章，编号为：1，标题为：《11》。请审核！', null, '2016-09-09 14:31:11', '1', '0', '/PortalNews/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('16', '【ceo】新增一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:10', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('17', '【ceo】新增一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:13:22', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('18', '【ceo】新增一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:33', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('19', '【ceo】新增一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:13:22', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('20', '【ceo】新增一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:11', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('21', '【ceo】新增一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:45', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('22', '【ceo】新增一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:41', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('23', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:11', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('24', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:29', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('25', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:32', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('26', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:18', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('27', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:37', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('28', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:45', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('29', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:41', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('30', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:13', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('31', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:29', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('32', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:32', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('33', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:18', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('34', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:37', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('35', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:44', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('36', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:40', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('37', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:14', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('38', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:30', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('39', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:31', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('40', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:18', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('41', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:36', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('42', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:43', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('43', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('44', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:21', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('45', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:30', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('46', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('47', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:19', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('48', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:36', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('49', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('50', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:12', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('51', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:22', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('52', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:33', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('53', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('54', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:19', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('55', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:27', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('56', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:12', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('57', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:12', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('58', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:23', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('59', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:34', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('60', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('61', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:19', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('62', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:12', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('63', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:12', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('64', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:12', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('65', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:23', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('66', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:35', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('67', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('68', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:20', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('69', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:12', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('70', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:12', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('71', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:12', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('72', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:24', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('73', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:35', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('74', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('75', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:20', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('76', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('77', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:12', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('78', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:13', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('79', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:25', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('80', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:36', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('81', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('82', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:22', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('83', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('84', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:12', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('85', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:14', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('86', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:26', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('87', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:36', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('88', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('89', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:22', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('90', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('91', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('92', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:14', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('93', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:26', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('94', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:37', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('95', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('96', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:40', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('97', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('98', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('99', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:15', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('100', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:27', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('101', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:37', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('102', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('103', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:42', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('104', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('105', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('106', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:15', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('107', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:27', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('108', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:40', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('109', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('110', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:44', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('111', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('112', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('113', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:15', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('114', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:28', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('115', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:41', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('116', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('117', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:44', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('118', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('119', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('120', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:15', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('121', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:29', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('122', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:41', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('123', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('124', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:44', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('125', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:13', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('126', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('127', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:15', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('128', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:35', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('129', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:42', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('130', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('131', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:45', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('132', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:14', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('133', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:13', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('134', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:15', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('135', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:36', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('136', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:44', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('137', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('138', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:45', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('139', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:14', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('140', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:37', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('141', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:16', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('142', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:37', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('143', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:44', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('144', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('145', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:45', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('146', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:14', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('147', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:14', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('148', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:16', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('149', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:38', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('150', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:45', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('151', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('152', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:46', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('153', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:14', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('154', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:14', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('155', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:16', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('156', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:39', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('157', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:46', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('158', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('159', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:46', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('160', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:14', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('161', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:15', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('162', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:17', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('163', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:39', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('164', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:46', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('165', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('166', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:46', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('167', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:14', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('168', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:15', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('169', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:17', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('170', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:40', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('171', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:47', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('172', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('173', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:46', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('174', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:14', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('175', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:15', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('176', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:17', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('177', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:41', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('178', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:47', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('179', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('180', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:47', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('181', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:15', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('182', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:15', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('183', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:17', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('184', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:42', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('185', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:48', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('186', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('187', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:47', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('188', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:15', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('189', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:15', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('190', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:17', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('191', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:43', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('192', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:48', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('193', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('194', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:47', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('195', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:15', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('196', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:15', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('197', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:17', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('198', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:55', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('199', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:49', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('200', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('201', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:48', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('202', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:15', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('203', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:16', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('204', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:17', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('205', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:18:55', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('206', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:50', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('207', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('208', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:48', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('209', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:15', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('210', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:17', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('211', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:18', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('212', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:01', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('213', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:50', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('214', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('215', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:49', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('216', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:15', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('217', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:17', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('218', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:18', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('219', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:02', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('220', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:51', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('221', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('222', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:49', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('223', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:16', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('224', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:17', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('225', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:18', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('226', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:03', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('227', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:51', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('228', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('229', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:49', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('230', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:16', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('231', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:17', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('232', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:18', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('233', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:07', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('234', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:52', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('235', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('236', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:50', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('237', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:16', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('238', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:17', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('239', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:18', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('240', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:08', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('241', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:52', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('242', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('243', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:51', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('244', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:16', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('245', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:18', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('246', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:18', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('247', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:09', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('248', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:53', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('249', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('250', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:51', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('251', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:16', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('252', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:18', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('253', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:18', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('254', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:10', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('255', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:53', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('256', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('257', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:52', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('258', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:16', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('259', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:18', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('260', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('261', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:13', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('262', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:54', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('263', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('264', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:52', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('265', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:16', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('266', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:18', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('267', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('268', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:14', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('269', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:55', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('270', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:31', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('271', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:54', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('272', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:17', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('273', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:18', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('274', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('275', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:16', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('276', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:55', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('277', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('278', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:54', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('279', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:17', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('280', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:18', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('281', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('282', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:17', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('283', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:56', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('284', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('285', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:55', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('286', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:17', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('287', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:19', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('288', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('289', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:17', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('290', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:56', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('291', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('292', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:55', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('293', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:17', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('294', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:19', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('295', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('296', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:18', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('297', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:57', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('298', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('299', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:55', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('300', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:17', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('301', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:19', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('302', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('303', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:19', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('304', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:57', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('305', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('306', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:56', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('307', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:17', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('308', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:19', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('309', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:19', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('310', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:20', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('311', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:58', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('312', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('313', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:56', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('314', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:17', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('315', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:19', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('316', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('317', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:22', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('318', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:58', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('319', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('320', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:57', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('321', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('322', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:19', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('323', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('324', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:23', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('325', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:59', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('326', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('327', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:57', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('328', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('329', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:20', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('330', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('331', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:25', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('332', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:00', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('333', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('334', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:57', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('335', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('336', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:20', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('337', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('338', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:25', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('339', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:00', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('340', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('341', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:58', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('342', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('343', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:20', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('344', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('345', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:28', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('346', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:01', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('347', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('348', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:14:58', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('349', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('350', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:20', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('351', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('352', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:29', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('353', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:01', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('354', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('355', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:01', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('356', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('357', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:20', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('358', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('359', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:30', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('360', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:02', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('361', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('362', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:01', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('363', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('364', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:20', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('365', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:20', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('366', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:19:46', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('367', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:03', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('368', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('369', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:01', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('370', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('371', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:21', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('372', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:21', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('373', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:07', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('374', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:03', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('375', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('376', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:02', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('377', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:18', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('378', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:21', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('379', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:21', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('380', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:08', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('381', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:04', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('382', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('383', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:02', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('384', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:19', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('385', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:21', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('386', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:21', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('387', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:09', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('388', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:05', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('389', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('390', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:03', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('391', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:19', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('392', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:22', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('393', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:21', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('394', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:12', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('395', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:05', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('396', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('397', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:04', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('398', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:19', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('399', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:22', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('400', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:21', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('401', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:11', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('402', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:06', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('403', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('404', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:04', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('405', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:19', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('406', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:23', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('407', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:21', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('408', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:12', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('409', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:06', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('410', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('411', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:05', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('412', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:19', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('413', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:23', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('414', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:21', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('415', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:13', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('416', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:07', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('417', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('418', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:06', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('419', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:19', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('420', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:23', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('421', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:22', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('422', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:13', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('423', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:07', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('424', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('425', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:06', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('426', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:19', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('427', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:23', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('428', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:22', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('429', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:14', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('430', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:08', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('431', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('432', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:07', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('433', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:20', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('434', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:24', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('435', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:22', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('436', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:19', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('437', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:08', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('438', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('439', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:08', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('440', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:20', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('441', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:24', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('442', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:22', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('443', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:20', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('444', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:09', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('445', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('446', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:08', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('447', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:20', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('448', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:24', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('449', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:23', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('450', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:21', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('451', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:10', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('452', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('453', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:09', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('454', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:20', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('455', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:24', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('456', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:23', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('457', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:22', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('458', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:10', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('459', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('460', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:09', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('461', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:20', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('462', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:24', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('463', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:23', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('464', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:27', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('465', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:11', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('466', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('467', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:09', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('468', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:20', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('469', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:24', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('470', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:23', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('471', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:24', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('472', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:11', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('473', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('474', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:10', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('475', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:21', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('476', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:25', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('477', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:23', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('478', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:26', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('479', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:12', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('480', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('481', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:10', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('482', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:21', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('483', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:25', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('484', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:23', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('485', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:26', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('486', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('487', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:19', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('488', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:11', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('489', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:21', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('490', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:25', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('491', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('492', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:28', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('493', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:13', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('494', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:19', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('495', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:12', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('496', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:21', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('497', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:25', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('498', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('499', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:39', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('500', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('501', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:19', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('502', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:12', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('503', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:21', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('504', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:25', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('505', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('506', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:42', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('507', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:14', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('508', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:19', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('509', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:13', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('510', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:21', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('511', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:25', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('512', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('513', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:41', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('514', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('515', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:19', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('516', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:13', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('517', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:21', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('518', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:25', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('519', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('520', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:43', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('521', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:15', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('522', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('523', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:13', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('524', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:22', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('525', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:26', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('526', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('527', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:44', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('528', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('529', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('530', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:13', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('531', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:22', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('532', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:26', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('533', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('534', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:49', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('535', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:16', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('536', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('537', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:14', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('538', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:22', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('539', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:26', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('540', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:24', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('541', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:50', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('542', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:17', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('543', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('544', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:14', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('545', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:22', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('546', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:26', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('547', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:25', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('548', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:20:53', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('549', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('550', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('551', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:15', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('552', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:22', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('553', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:26', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('554', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:25', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('555', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:00', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('556', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:18', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('557', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('558', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:15', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('559', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:22', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('560', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:27', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('561', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:25', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('562', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:02', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('563', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:19', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('564', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('565', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:15', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('566', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:22', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('567', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:27', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('568', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:25', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('569', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:03', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('570', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:19', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('571', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('572', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:16', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('573', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:23', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('574', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:28', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('575', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:25', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('576', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:05', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('577', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('578', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('579', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:18', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('580', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:23', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('581', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:28', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('582', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:25', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('583', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:06', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('584', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('585', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:20', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('586', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:18', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('587', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:23', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('588', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:28', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('589', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:25', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('590', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:12', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('591', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('592', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('593', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:19', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('594', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:23', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('595', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:28', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('596', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:26', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('597', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:10', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('598', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('599', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('600', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:19', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('601', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:23', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('602', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:28', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('603', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:26', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('604', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:12', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('605', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('606', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('607', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:19', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('608', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:23', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('609', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:28', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('610', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:26', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('611', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:12', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('612', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:24', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('613', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('614', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:20', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('615', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:24', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('616', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:29', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('617', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:26', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('618', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:13', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('619', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:25', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('620', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('621', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:20', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('622', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:25', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('623', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:29', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('624', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:26', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('625', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:14', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('626', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:25', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('627', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('628', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:23', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('629', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:25', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('630', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:30', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('631', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:26', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('632', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:15', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('633', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:26', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('634', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:21', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('635', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:24', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('636', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:25', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('637', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:30', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('638', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:26', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('639', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:17', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('640', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:26', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('641', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('642', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:24', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('643', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:25', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('644', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:30', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('645', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('646', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:18', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('647', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:27', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('648', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('649', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:24', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('650', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:25', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('651', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:30', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('652', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('653', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:26', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('654', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:28', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('655', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('656', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:26', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('657', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:26', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('658', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:31', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('659', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('660', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:26', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('661', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:28', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('662', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('663', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:26', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('664', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:26', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('665', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:31', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('666', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('667', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:27', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('668', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('669', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('670', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:27', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('671', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:26', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('672', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:31', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('673', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('674', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:32', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('675', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('676', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('677', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:27', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('678', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:26', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('679', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:31', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('680', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('681', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:36', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('682', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:30', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('683', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('684', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:28', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('685', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:26', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('686', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:32', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('687', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('688', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-07-07 17:21:34', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('689', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:16:30', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('690', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:16:22', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('691', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-06-29 16:15:28', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('692', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:36:27', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('693', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 15:56:32', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('694', '【ceo】修改一条官网文章，编号为：2，标题为：《013213545》。请审核！', null, '2016-09-09 14:31:27', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('695', '【ceo】新增一条新闻，编号为：1，标题为：《tesssssssssssssst》。请审核！', null, '2016-07-07 17:21:41', '1', '0', '/News/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('696', '【ceo】新增一条新闻，编号为：1，标题为：《tesssssssssssssst》。请审核！', null, '2016-06-29 16:20:31', '1', '0', '/News/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('697', '【ceo】新增一条新闻，编号为：1，标题为：《tesssssssssssssst》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/News/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('698', '【ceo】新增一条新闻，编号为：1，标题为：《tesssssssssssssst》。请审核！', null, '2016-06-29 16:19:46', '0', '0', '/News/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('699', '【ceo】新增一条新闻，编号为：1，标题为：《tesssssssssssssst》。请审核！', null, '2016-09-09 14:36:27', '1', '0', '/News/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('700', '【ceo】新增一条新闻，编号为：1，标题为：《tesssssssssssssst》。请审核！', null, '2016-09-09 15:56:32', '1', '0', '/News/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('701', '【ceo】新增一条新闻，编号为：1，标题为：《tesssssssssssssst》。请审核！', null, '2016-09-09 14:31:28', '1', '0', '/News/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('702', '【ceo】新增一条新闻，编号为：2，标题为：《22222222222222222》。请审核！', null, '2016-07-07 17:21:42', '1', '0', '/News/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('703', '【ceo】新增一条新闻，编号为：2，标题为：《22222222222222222》。请审核！', null, '2016-06-29 16:39:06', '1', '0', '/News/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('704', '【ceo】新增一条新闻，编号为：2，标题为：《22222222222222222》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/News/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('705', '【ceo】新增一条新闻，编号为：2，标题为：《22222222222222222》。请审核！', null, '2016-06-29 16:38:56', '0', '0', '/News/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('706', '【ceo】新增一条新闻，编号为：2，标题为：《22222222222222222》。请审核！', null, '2016-09-09 14:36:27', '1', '0', '/News/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('707', '【ceo】新增一条新闻，编号为：2，标题为：《22222222222222222》。请审核！', null, '2016-09-09 15:56:33', '1', '0', '/News/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('708', '【ceo】新增一条新闻，编号为：2，标题为：《22222222222222222》。请审核！', null, '2016-09-09 14:31:28', '1', '0', '/News/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('709', '【ceo】新增一条公文，编号为：1，标题为：《公文文呀》。请审核！', null, '2016-07-29 10:09:41', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('710', '【ceo】新增一条公文，编号为：1，标题为：《公文文呀》。请审核！', null, '2016-07-12 12:58:50', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('711', '【ceo】新增一条公文，编号为：1，标题为：《公文文呀》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('712', '【ceo】新增一条公文，编号为：1，标题为：《公文文呀》。请审核！', null, '2016-07-12 10:26:32', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('713', '【ceo】新增一条公文，编号为：1，标题为：《公文文呀》。请审核！', null, '2016-09-09 14:36:35', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('714', '【ceo】新增一条公文，编号为：1，标题为：《公文文呀》。请审核！', null, '2016-09-09 15:56:33', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('715', '【ceo】新增一条公文，编号为：1，标题为：《公文文呀》。请审核！', null, '2016-09-09 14:31:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('716', '【ceo】新增一条公文，编号为：2，标题为：《广告2》。请审核！', null, '2016-07-29 10:09:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('717', '【ceo】新增一条公文，编号为：2，标题为：《广告2》。请审核！', null, '2016-07-12 12:58:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('718', '【ceo】新增一条公文，编号为：2，标题为：《广告2》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('719', '【ceo】新增一条公文，编号为：2，标题为：《广告2》。请审核！', null, '2016-07-12 10:26:57', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('720', '【ceo】新增一条公文，编号为：2，标题为：《广告2》。请审核！', null, '2016-09-09 14:36:27', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('721', '【ceo】新增一条公文，编号为：2，标题为：《广告2》。请审核！', null, '2016-09-09 15:56:33', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('722', '【ceo】新增一条公文，编号为：2，标题为：《广告2》。请审核！', null, '2016-09-09 14:31:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('723', '【ceo】新增一条公文，编号为：3，标题为：《分隔符》。请审核！', null, '2016-07-29 10:09:50', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('724', '【ceo】新增一条公文，编号为：3，标题为：《分隔符》。请审核！', null, '2016-07-12 12:58:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('725', '【ceo】新增一条公文，编号为：3，标题为：《分隔符》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('726', '【ceo】新增一条公文，编号为：3，标题为：《分隔符》。请审核！', null, '2016-07-12 10:30:35', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('727', '【ceo】新增一条公文，编号为：3，标题为：《分隔符》。请审核！', null, '2016-09-09 14:36:27', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('728', '【ceo】新增一条公文，编号为：3，标题为：《分隔符》。请审核！', null, '2016-09-09 15:56:33', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('729', '【ceo】新增一条公文，编号为：3，标题为：《分隔符》。请审核！', null, '2016-09-09 14:31:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('730', '【ceo】新增一条公文，编号为：4，标题为：《的》。请审核！', null, '2016-07-29 10:09:50', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('731', '【ceo】新增一条公文，编号为：4，标题为：《的》。请审核！', null, '2016-07-12 13:23:50', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('732', '【ceo】新增一条公文，编号为：4，标题为：《的》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('733', '【ceo】新增一条公文，编号为：4，标题为：《的》。请审核！', null, '2016-07-12 13:22:20', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('734', '【ceo】新增一条公文，编号为：4，标题为：《的》。请审核！', null, '2016-09-09 14:36:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('735', '【ceo】新增一条公文，编号为：4，标题为：《的》。请审核！', null, '2016-09-09 15:56:33', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('736', '【ceo】新增一条公文，编号为：4，标题为：《的》。请审核！', null, '2016-09-09 14:31:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('737', '【ceo】新增一条公文，编号为：5，标题为：《的》。请审核！', null, '2016-07-29 10:09:49', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('738', '【ceo】新增一条公文，编号为：5，标题为：《的》。请审核！', null, '2016-07-12 13:43:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('739', '【ceo】新增一条公文，编号为：5，标题为：《的》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('740', '【ceo】新增一条公文，编号为：5，标题为：《的》。请审核！', null, '2016-07-12 13:42:50', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('741', '【ceo】新增一条公文，编号为：5，标题为：《的》。请审核！', null, '2016-09-09 14:36:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('742', '【ceo】新增一条公文，编号为：5，标题为：《的》。请审核！', null, '2016-09-09 15:56:34', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('743', '【ceo】新增一条公文，编号为：5，标题为：《的》。请审核！', null, '2016-09-09 14:31:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('744', '【ceo】新增一条公文，编号为：6，标题为：《hj》。请审核！', null, '2016-07-29 10:09:49', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('745', '【ceo】新增一条公文，编号为：6，标题为：《hj》。请审核！', null, '2016-07-12 13:48:50', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('746', '【ceo】新增一条公文，编号为：6，标题为：《hj》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('747', '【ceo】新增一条公文，编号为：6，标题为：《hj》。请审核！', null, '2016-07-12 13:44:22', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('748', '【ceo】新增一条公文，编号为：6，标题为：《hj》。请审核！', null, '2016-09-09 14:36:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('749', '【ceo】新增一条公文，编号为：6，标题为：《hj》。请审核！', null, '2016-09-09 15:56:34', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('750', '【ceo】新增一条公文，编号为：6，标题为：《hj》。请审核！', null, '2016-09-09 14:31:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('751', '【ceo】新增一条公文，编号为：7，标题为：《df》。请审核！', null, '2016-07-29 10:09:41', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('752', '【ceo】新增一条公文，编号为：7，标题为：《df》。请审核！', null, '2016-07-12 13:48:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('753', '【ceo】新增一条公文，编号为：7，标题为：《df》。请审核！', null, '2016-09-09 15:16:23', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('754', '【ceo】新增一条公文，编号为：7，标题为：《df》。请审核！', null, '2016-07-12 13:46:52', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('755', '【ceo】新增一条公文，编号为：7，标题为：《df》。请审核！', null, '2016-09-09 14:36:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('756', '【ceo】新增一条公文，编号为：7，标题为：《df》。请审核！', null, '2016-09-09 15:56:34', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('757', '【ceo】新增一条公文，编号为：7，标题为：《df》。请审核！', null, '2016-09-09 14:31:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('758', '【ceo】新增一条公文，编号为：8，标题为：《df》。请审核！', null, '2016-07-29 10:09:41', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('759', '【ceo】新增一条公文，编号为：8，标题为：《df》。请审核！', null, '2016-07-12 13:48:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('760', '【ceo】新增一条公文，编号为：8，标题为：《df》。请审核！', null, '2016-09-09 15:16:24', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('761', '【ceo】新增一条公文，编号为：8，标题为：《df》。请审核！', null, '2016-07-12 13:48:39', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('762', '【ceo】新增一条公文，编号为：8，标题为：《df》。请审核！', null, '2016-09-09 14:36:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('763', '【ceo】新增一条公文，编号为：8，标题为：《df》。请审核！', null, '2016-09-09 15:56:34', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('764', '【ceo】新增一条公文，编号为：8，标题为：《df》。请审核！', null, '2016-09-09 14:31:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('765', '【ceo】新增一条公文，编号为：9，标题为：《d》。请审核！', null, '2016-07-29 10:09:42', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('766', '【ceo】新增一条公文，编号为：9，标题为：《d》。请审核！', null, '2016-07-12 13:58:52', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('767', '【ceo】新增一条公文，编号为：9，标题为：《d》。请审核！', null, '2016-09-09 15:16:24', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('768', '【ceo】新增一条公文，编号为：9，标题为：《d》。请审核！', null, '2016-07-12 13:54:23', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('769', '【ceo】新增一条公文，编号为：9，标题为：《d》。请审核！', null, '2016-09-09 14:36:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('770', '【ceo】新增一条公文，编号为：9，标题为：《d》。请审核！', null, '2016-09-09 15:56:34', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('771', '【ceo】新增一条公文，编号为：9，标题为：《d》。请审核！', null, '2016-09-09 14:31:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('772', '【ceo】新增一条公文，编号为：10，标题为：《df》。请审核！', null, '2016-07-29 10:09:42', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('773', '【ceo】新增一条公文，编号为：10，标题为：《df》。请审核！', null, '2016-07-12 13:58:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('774', '【ceo】新增一条公文，编号为：10，标题为：《df》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('775', '【ceo】新增一条公文，编号为：10，标题为：《df》。请审核！', null, '2016-07-12 13:55:07', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('776', '【ceo】新增一条公文，编号为：10，标题为：《df》。请审核！', null, '2016-09-09 14:36:28', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('777', '【ceo】新增一条公文，编号为：10，标题为：《df》。请审核！', null, '2016-09-09 15:56:34', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('778', '【ceo】新增一条公文，编号为：10，标题为：《df》。请审核！', null, '2016-09-09 14:31:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('779', '【ceo】新增一条公文，编号为：11，标题为：《dfd》。请审核！', null, '2016-07-29 10:09:42', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('780', '【ceo】新增一条公文，编号为：11，标题为：《dfd》。请审核！', null, '2016-07-12 13:58:52', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('781', '【ceo】新增一条公文，编号为：11，标题为：《dfd》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('782', '【ceo】新增一条公文，编号为：11，标题为：《dfd》。请审核！', null, '2016-07-12 13:55:27', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('783', '【ceo】新增一条公文，编号为：11，标题为：《dfd》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('784', '【ceo】新增一条公文，编号为：11，标题为：《dfd》。请审核！', null, '2016-09-09 15:56:34', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('785', '【ceo】新增一条公文，编号为：11，标题为：《dfd》。请审核！', null, '2016-09-09 14:31:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('786', '【ceo】新增一条公文，编号为：12，标题为：《fd》。请审核！', null, '2016-07-29 10:09:42', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('787', '【ceo】新增一条公文，编号为：12，标题为：《fd》。请审核！', null, '2016-07-12 13:58:53', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('788', '【ceo】新增一条公文，编号为：12，标题为：《fd》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('789', '【ceo】新增一条公文，编号为：12，标题为：《fd》。请审核！', null, '2016-07-12 13:56:01', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('790', '【ceo】新增一条公文，编号为：12，标题为：《fd》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('791', '【ceo】新增一条公文，编号为：12，标题为：《fd》。请审核！', null, '2016-09-09 15:56:35', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('792', '【ceo】新增一条公文，编号为：12，标题为：《fd》。请审核！', null, '2016-09-09 14:31:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('793', '【ceo】新增一条公文，编号为：13，标题为：《df》。请审核！', null, '2016-07-29 10:09:42', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('794', '【ceo】新增一条公文，编号为：13，标题为：《df》。请审核！', null, '2016-07-12 13:58:53', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('795', '【ceo】新增一条公文，编号为：13，标题为：《df》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('796', '【ceo】新增一条公文，编号为：13，标题为：《df》。请审核！', null, '2016-07-12 13:56:23', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('797', '【ceo】新增一条公文，编号为：13，标题为：《df》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('798', '【ceo】新增一条公文，编号为：13，标题为：《df》。请审核！', null, '2016-09-09 15:56:35', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('799', '【ceo】新增一条公文，编号为：13，标题为：《df》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('800', '【ceo】新增一条公文，编号为：14，标题为：《fd》。请审核！', null, '2016-07-29 10:09:42', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('801', '【ceo】新增一条公文，编号为：14，标题为：《fd》。请审核！', null, '2016-07-12 13:58:54', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('802', '【ceo】新增一条公文，编号为：14，标题为：《fd》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('803', '【ceo】新增一条公文，编号为：14，标题为：《fd》。请审核！', null, '2016-07-12 13:57:10', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('804', '【ceo】新增一条公文，编号为：14，标题为：《fd》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('805', '【ceo】新增一条公文，编号为：14，标题为：《fd》。请审核！', null, '2016-09-09 15:56:35', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('806', '【ceo】新增一条公文，编号为：14，标题为：《fd》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('807', '【ceo】新增一条公文，编号为：15，标题为：《f》。请审核！', null, '2016-07-29 10:09:42', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('808', '【ceo】新增一条公文，编号为：15，标题为：《f》。请审核！', null, '2016-07-12 13:58:54', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('809', '【ceo】新增一条公文，编号为：15，标题为：《f》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('810', '【ceo】新增一条公文，编号为：15，标题为：《f》。请审核！', null, '2016-07-12 13:58:00', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('811', '【ceo】新增一条公文，编号为：15，标题为：《f》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('812', '【ceo】新增一条公文，编号为：15，标题为：《f》。请审核！', null, '2016-09-09 15:56:35', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('813', '【ceo】新增一条公文，编号为：15，标题为：《f》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('814', '【ceo】新增一条公文，编号为：16，标题为：《dfd》。请审核！', null, '2016-07-29 10:09:43', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('815', '【ceo】新增一条公文，编号为：16，标题为：《dfd》。请审核！', null, '2016-07-12 13:58:55', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('816', '【ceo】新增一条公文，编号为：16，标题为：《dfd》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('817', '【ceo】新增一条公文，编号为：16，标题为：《dfd》。请审核！', null, '2016-07-12 13:58:11', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('818', '【ceo】新增一条公文，编号为：16，标题为：《dfd》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('819', '【ceo】新增一条公文，编号为：16，标题为：《dfd》。请审核！', null, '2016-09-09 15:56:35', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('820', '【ceo】新增一条公文，编号为：16，标题为：《dfd》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('821', '【ceo】新增一条公文，编号为：17，标题为：《fd》。请审核！', null, '2016-07-29 10:09:43', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('822', '【ceo】新增一条公文，编号为：17，标题为：《fd》。请审核！', null, '2016-07-12 13:58:55', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('823', '【ceo】新增一条公文，编号为：17，标题为：《fd》。请审核！', null, '2016-09-09 15:16:25', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('824', '【ceo】新增一条公文，编号为：17，标题为：《fd》。请审核！', null, '2016-07-12 13:58:31', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('825', '【ceo】新增一条公文，编号为：17，标题为：《fd》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('826', '【ceo】新增一条公文，编号为：17，标题为：《fd》。请审核！', null, '2016-09-09 15:56:36', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('827', '【ceo】新增一条公文，编号为：17，标题为：《fd》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('828', '【ceo】新增一条公文，编号为：18，标题为：《fsfds》。请审核！', null, '2016-07-29 10:09:43', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('829', '【ceo】新增一条公文，编号为：18，标题为：《fsfds》。请审核！', null, '2016-07-12 14:05:20', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('830', '【ceo】新增一条公文，编号为：18，标题为：《fsfds》。请审核！', null, '2016-09-09 15:16:26', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('831', '【ceo】新增一条公文，编号为：18，标题为：《fsfds》。请审核！', null, '2016-07-12 14:04:57', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('832', '【ceo】新增一条公文，编号为：18，标题为：《fsfds》。请审核！', null, '2016-09-09 14:36:29', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('833', '【ceo】新增一条公文，编号为：18，标题为：《fsfds》。请审核！', null, '2016-09-09 15:56:36', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('834', '【ceo】新增一条公文，编号为：18，标题为：《fsfds》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('835', '【ceo】新增一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-07-29 10:09:43', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('836', '【ceo】新增一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-07-12 14:08:51', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('837', '【ceo】新增一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-09-09 15:16:26', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('838', '【ceo】新增一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-07-12 14:07:54', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('839', '【ceo】新增一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-09-09 14:36:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('840', '【ceo】新增一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-09-09 15:56:36', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('841', '【ceo】新增一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('842', '【ceo】新增一条公文，编号为：20，标题为：《1414》。请审核！', null, '2016-07-29 10:09:43', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('843', '【ceo】新增一条公文，编号为：20，标题为：《1414》。请审核！', null, '2016-07-12 14:08:50', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('844', '【ceo】新增一条公文，编号为：20，标题为：《1414》。请审核！', null, '2016-09-09 15:16:26', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('845', '【ceo】新增一条公文，编号为：20，标题为：《1414》。请审核！', null, '2016-07-12 14:07:59', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('846', '【ceo】新增一条公文，编号为：20，标题为：《1414》。请审核！', null, '2016-09-09 14:36:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('847', '【ceo】新增一条公文，编号为：20，标题为：《1414》。请审核！', null, '2016-09-09 15:56:36', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('848', '【ceo】新增一条公文，编号为：20，标题为：《1414》。请审核！', null, '2016-09-09 14:31:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('849', '【ceo】新增一条公文，编号为：21，标题为：《465》。请审核！', null, '2016-07-29 10:09:43', '1', '0', '/Announcement/AnnouncementManagement', '2', '1');
INSERT INTO `messages` VALUES ('850', '【ceo】新增一条公文，编号为：21，标题为：《465》。请审核！', null, '2016-07-12 14:13:50', '1', '0', '/Announcement/AnnouncementManagement', '2', '2');
INSERT INTO `messages` VALUES ('851', '【ceo】新增一条公文，编号为：21，标题为：《465》。请审核！', null, '2016-09-09 15:16:26', '1', '0', '/Announcement/AnnouncementManagement', '2', '3');
INSERT INTO `messages` VALUES ('852', '【ceo】新增一条公文，编号为：21，标题为：《465》。请审核！', null, '2016-07-12 14:11:30', '0', '0', '/Announcement/AnnouncementManagement', '2', '4');
INSERT INTO `messages` VALUES ('853', '【ceo】新增一条公文，编号为：21，标题为：《465》。请审核！', null, '2016-09-09 14:36:30', '1', '0', '/Announcement/AnnouncementManagement', '2', '5');
INSERT INTO `messages` VALUES ('854', '【ceo】新增一条公文，编号为：21，标题为：《465》。请审核！', null, '2016-09-09 15:56:37', '1', '0', '/Announcement/AnnouncementManagement', '2', '6');
INSERT INTO `messages` VALUES ('855', '【ceo】新增一条公文，编号为：21，标题为：《465》。请审核！', null, '2016-09-09 14:31:33', '1', '0', '/Announcement/AnnouncementManagement', '2', '9');
INSERT INTO `messages` VALUES ('856', '【ceo】新增一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-29 10:09:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('857', '【ceo】新增一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-12 15:40:17', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('858', '【ceo】新增一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 15:16:26', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('859', '【ceo】新增一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-12 15:39:18', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('860', '【ceo】新增一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 14:36:30', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('861', '【ceo】新增一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 15:56:37', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('862', '【ceo】新增一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 14:31:33', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('863', '【ceo】新增一条报销申请，编号为：6，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-29 10:09:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('864', '【ceo】新增一条报销申请，编号为：6，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-12 15:40:17', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('865', '【ceo】新增一条报销申请，编号为：6，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 15:16:26', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('866', '【ceo】新增一条报销申请，编号为：6，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-12 15:39:19', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('867', '【ceo】新增一条报销申请，编号为：6，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 14:36:30', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('868', '【ceo】新增一条报销申请，编号为：6，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 15:56:37', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('869', '【ceo】新增一条报销申请，编号为：6，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 14:31:33', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('870', '【ceo】新增一条报销申请，编号为：7，申请人为：首席执行官，金额为：111。请审核！', null, '2016-07-29 10:09:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('871', '【ceo】新增一条报销申请，编号为：7，申请人为：首席执行官，金额为：111。请审核！', null, '2016-07-12 15:43:50', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('872', '【ceo】新增一条报销申请，编号为：7，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 15:16:27', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('873', '【ceo】新增一条报销申请，编号为：7，申请人为：首席执行官，金额为：111。请审核！', null, '2016-07-12 15:40:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('874', '【ceo】新增一条报销申请，编号为：7，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 14:36:30', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('875', '【ceo】新增一条报销申请，编号为：7，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 15:56:38', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('876', '【ceo】新增一条报销申请，编号为：7，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 14:31:36', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('877', '【ceo】新增一条报销申请，编号为：8，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-29 10:09:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('878', '【ceo】新增一条报销申请，编号为：8，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-12 15:43:51', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('879', '【ceo】新增一条报销申请，编号为：8，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 15:16:27', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('880', '【ceo】新增一条报销申请，编号为：8，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-12 15:42:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('881', '【ceo】新增一条报销申请，编号为：8，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('882', '【ceo】新增一条报销申请，编号为：8，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 15:56:38', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('883', '【ceo】新增一条报销申请，编号为：8，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('884', '【ceo】新增一条报销申请，编号为：9，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-29 10:09:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('885', '【ceo】新增一条报销申请，编号为：9，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-12 15:43:51', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('886', '【ceo】新增一条报销申请，编号为：9，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 15:16:27', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('887', '【ceo】新增一条报销申请，编号为：9，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-12 15:42:17', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('888', '【ceo】新增一条报销申请，编号为：9，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('889', '【ceo】新增一条报销申请，编号为：9，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 15:56:38', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('890', '【ceo】新增一条报销申请，编号为：9，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('891', '【ceo】新增一条报销申请，编号为：10，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-29 10:09:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('892', '【ceo】新增一条报销申请，编号为：10，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-12 15:43:52', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('893', '【ceo】新增一条报销申请，编号为：10，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 15:16:27', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('894', '【ceo】新增一条报销申请，编号为：10，申请人为：首席执行官，金额为：24。请审核！', null, '2016-07-12 15:42:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('895', '【ceo】新增一条报销申请，编号为：10，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('896', '【ceo】新增一条报销申请，编号为：10，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 15:56:38', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('897', '【ceo】新增一条报销申请，编号为：10，申请人为：首席执行官，金额为：24。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('898', '【ceo】新增一条报销申请，编号为：11，申请人为：首席执行官，金额为：12。请审核！', null, '2016-07-29 10:09:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('899', '【ceo】新增一条报销申请，编号为：11，申请人为：首席执行官，金额为：12。请审核！', null, '2016-07-12 15:43:52', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('900', '【ceo】新增一条报销申请，编号为：11，申请人为：首席执行官，金额为：12。请审核！', null, '2016-09-09 15:16:27', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('901', '【ceo】新增一条报销申请，编号为：11，申请人为：首席执行官，金额为：12。请审核！', null, '2016-07-12 15:43:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('902', '【ceo】新增一条报销申请，编号为：11，申请人为：首席执行官，金额为：12。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('903', '【ceo】新增一条报销申请，编号为：11，申请人为：首席执行官，金额为：12。请审核！', null, '2016-09-09 15:56:38', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('904', '【ceo】新增一条报销申请，编号为：11，申请人为：首席执行官，金额为：12。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('905', '【ceo】新增一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-29 10:09:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('906', '【ceo】新增一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-12 15:45:20', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('907', '【ceo】新增一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('908', '【ceo】新增一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-07-12 15:45:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('909', '【ceo】新增一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('910', '【ceo】新增一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 15:56:38', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('911', '【ceo】新增一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('912', '【ceo】新增一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-07-29 10:09:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('913', '【ceo】新增一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-07-12 15:47:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('914', '【ceo】新增一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('915', '【ceo】新增一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-07-12 15:45:49', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('916', '【ceo】新增一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('917', '【ceo】新增一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('918', '【ceo】新增一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('919', '【ceo】新增一条报销申请，编号为：14，申请人为：首席执行官，金额为：100。请审核！', null, '2016-07-29 10:09:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('920', '【ceo】新增一条报销申请，编号为：14，申请人为：首席执行官，金额为：100。请审核！', null, '2016-07-12 15:47:44', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('921', '【ceo】新增一条报销申请，编号为：14，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('922', '【ceo】新增一条报销申请，编号为：14，申请人为：首席执行官，金额为：100。请审核！', null, '2016-07-12 15:46:12', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('923', '【ceo】新增一条报销申请，编号为：14，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('924', '【ceo】新增一条报销申请，编号为：14，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('925', '【ceo】新增一条报销申请，编号为：14，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 14:31:34', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('926', '【ceo】新增一条报销申请，编号为：15，申请人为：首席执行官，金额为：100。请审核！', null, '2016-07-29 10:09:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('927', '【ceo】新增一条报销申请，编号为：15，申请人为：首席执行官，金额为：100。请审核！', null, '2016-07-12 15:47:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('928', '【ceo】新增一条报销申请，编号为：15，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('929', '【ceo】新增一条报销申请，编号为：15，申请人为：首席执行官，金额为：100。请审核！', null, '2016-07-12 15:46:35', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('930', '【ceo】新增一条报销申请，编号为：15，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 14:36:31', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('931', '【ceo】新增一条报销申请，编号为：15，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('932', '【ceo】新增一条报销申请，编号为：15，申请人为：首席执行官，金额为：100。请审核！', null, '2016-09-09 14:31:35', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('933', '【ceo】新增一条报销申请，编号为：16，申请人为：首席执行官，金额为：111。请审核！', null, '2016-07-29 10:09:45', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '1');
INSERT INTO `messages` VALUES ('934', '【ceo】新增一条报销申请，编号为：16，申请人为：首席执行官，金额为：111。请审核！', null, '2016-07-12 15:47:46', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '2');
INSERT INTO `messages` VALUES ('935', '【ceo】新增一条报销申请，编号为：16，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '3');
INSERT INTO `messages` VALUES ('936', '【ceo】新增一条报销申请，编号为：16，申请人为：首席执行官，金额为：111。请审核！', null, '2016-07-12 15:47:01', '0', '0', '/ClaimRequests/ClaimRequestCheck', '2', '4');
INSERT INTO `messages` VALUES ('937', '【ceo】新增一条报销申请，编号为：16，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 14:36:32', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '5');
INSERT INTO `messages` VALUES ('938', '【ceo】新增一条报销申请，编号为：16，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '6');
INSERT INTO `messages` VALUES ('939', '【ceo】新增一条报销申请，编号为：16，申请人为：首席执行官，金额为：111。请审核！', null, '2016-09-09 14:31:35', '1', '0', '/ClaimRequests/ClaimRequestCheck', '2', '9');
INSERT INTO `messages` VALUES ('940', '【ceo】新增一条请假申请，编号为：1，类型为：年假，时长为：2天。请审核！', null, '2016-07-13 14:49:34', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('941', '【ceo】新增一条请假申请，编号为：2，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:49:35', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('942', '【ceo】新增一条请假申请，编号为：3，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:49:35', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('943', '【ceo】新增一条请假申请，编号为：4，类型为：病假，时长为：1天。请审核！', null, '2016-07-13 14:49:36', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('944', '【ceo】新增一条请假申请，编号为：5，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:49:36', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('945', '【ceo】新增一条请假申请，编号为：6，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:49:37', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('946', '【ceo】新增一条请假申请，编号为：7，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:49:37', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('947', '【ceo】新增一条请假申请，编号为：8，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:43', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('948', '【ceo】新增一条请假申请，编号为：9，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:43', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('949', '【ceo】新增一条请假申请，编号为：10，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:44', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('950', '【ceo】新增一条请假申请，编号为：11，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:45', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('951', '【ceo】新增一条请假申请，编号为：12，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:45', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('952', '【ceo】新增一条请假申请，编号为：13，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:46', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('953', '【ceo】新增一条请假申请，编号为：14，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:46', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('954', '【ceo】新增一条请假申请，编号为：15，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:47', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('955', '【ceo】新增一条请假申请，编号为：16，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:47', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('956', '【ceo】新增一条请假申请，编号为：17，类型为：年假，时长为：1天。请审核！', null, '2016-07-13 14:57:48', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('957', '【ceo】新增一条加班申请，编号为：1，类型为：夜间加班，时长为：1小时。请审核！', null, '2016-07-13 15:17:42', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('958', '【ceo】新增一条加班申请，编号为：2，类型为：夜间加班，时长为：1小时。请审核！', null, '2016-07-13 15:17:42', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('959', '【ceo】新增一条加班申请，编号为：3，类型为：夜间加班，时长为：2小时。请审核！', null, '2016-07-13 15:17:43', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('960', '【ceo】新增一条加班申请，编号为：4，类型为：夜间加班，时长为：1小时。请审核！', null, '2016-07-13 15:17:43', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('961', '【ceo】新增一条加班申请，编号为：5，类型为：夜间加班，时长为：2小时。请审核！', null, '2016-07-13 15:17:44', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('962', '【ceo】新增一条加班申请，编号为：6，类型为：夜间加班，时长为：5小时。请审核！', null, '2016-07-13 15:17:45', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('963', '【ceo】新增一条加班申请，编号为：7，类型为：夜间加班，时长为：4小时。请审核！', null, '2016-07-13 15:17:45', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('964', '【ceo】新增一条加班申请，编号为：8，类型为：夜间加班，时长为：1小时。请审核！', null, '2016-07-13 15:17:46', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('965', '【ceo】新增一条加班申请，编号为：9，类型为：夜间加班，时长为：7小时。请审核！', null, '2016-07-13 15:17:46', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('966', '【ceo】新增一条加班申请，编号为：10，类型为：夜间加班，时长为：5小时。请审核！', null, '2016-07-13 15:17:47', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('967', '【ceo】新增一条加班申请，编号为：11，类型为：节假日加班，时长为：8小时。请审核！', null, '2016-07-13 15:17:47', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('968', '【ceo】新增一条加班申请，编号为：12，类型为：节假日加班，时长为：1小时。请审核！', null, '2016-07-13 15:17:48', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('969', '【ceo】新增一条加班申请，编号为：13，类型为：夜间加班，时长为：4小时。请审核！', null, '2016-07-13 15:17:48', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('970', '【ceo】新增一条加班申请，编号为：14，类型为：周末加班，时长为：1小时。请审核！', null, '2016-07-13 15:17:49', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('971', '【ceo】新增一条加班申请，编号为：15，类型为：夜间加班，时长为：4小时。请审核！', null, '2016-07-13 15:32:35', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('972', '【ceo】新增一条加班申请，编号为：16，类型为：周末加班，时长为：4小时。请审核！', null, '2016-07-13 15:32:35', '1', '0', '/LeaveAndOverTime/OverTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('973', '【ceo】新增一条请假申请，编号为：18，类型为：调休假，时长为：1天。请审核！', null, '2016-07-13 15:46:59', '1', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('974', '【ceo】新增一条官网文章，编号为：3，标题为：《1》。请审核！', null, '2016-07-29 10:09:45', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('975', '【ceo】新增一条官网文章，编号为：3，标题为：《1》。请审核！', null, '2016-07-13 16:51:37', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('976', '【ceo】新增一条官网文章，编号为：3，标题为：《1》。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('977', '【ceo】新增一条官网文章，编号为：3，标题为：《1》。请审核！', null, '2016-07-13 16:51:16', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('978', '【ceo】新增一条官网文章，编号为：3，标题为：《1》。请审核！', null, '2016-09-09 14:36:32', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('979', '【ceo】新增一条官网文章，编号为：3，标题为：《1》。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('980', '【ceo】新增一条官网文章，编号为：3，标题为：《1》。请审核！', null, '2016-09-09 14:31:35', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('981', '【ceo】新增一条官网文章，编号为：4，标题为：《1》。请审核！', null, '2016-07-29 10:09:46', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('982', '【ceo】新增一条官网文章，编号为：4，标题为：《1》。请审核！', null, '2016-07-13 16:51:41', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('983', '【ceo】新增一条官网文章，编号为：4，标题为：《1》。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('984', '【ceo】新增一条官网文章，编号为：4，标题为：《1》。请审核！', null, '2016-07-13 16:51:25', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('985', '【ceo】新增一条官网文章，编号为：4，标题为：《1》。请审核！', null, '2016-09-09 14:36:32', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('986', '【ceo】新增一条官网文章，编号为：4，标题为：《1》。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('987', '【ceo】新增一条官网文章，编号为：4，标题为：《1》。请审核！', null, '2016-09-09 14:31:35', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('988', '【ceo】新增一条官网文章，编号为：5，标题为：《11》。请审核！', null, '2016-07-29 10:09:46', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('989', '【ceo】新增一条官网文章，编号为：5，标题为：《11》。请审核！', null, '2016-07-13 16:51:42', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('990', '【ceo】新增一条官网文章，编号为：5，标题为：《11》。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('991', '【ceo】新增一条官网文章，编号为：5，标题为：《11》。请审核！', null, '2016-07-13 16:51:37', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('992', '【ceo】新增一条官网文章，编号为：5，标题为：《11》。请审核！', null, '2016-09-09 14:36:32', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('993', '【ceo】新增一条官网文章，编号为：5，标题为：《11》。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('994', '【ceo】新增一条官网文章，编号为：5，标题为：《11》。请审核！', null, '2016-09-09 14:31:35', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('995', '【ceo】新增一条官网文章，编号为：6，标题为：《15》。请审核！', null, '2016-07-29 10:09:46', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('996', '【ceo】新增一条官网文章，编号为：6，标题为：《15》。请审核！', null, '2016-07-13 16:56:34', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('997', '【ceo】新增一条官网文章，编号为：6，标题为：《15》。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('998', '【ceo】新增一条官网文章，编号为：6，标题为：《15》。请审核！', null, '2016-07-13 16:52:03', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('999', '【ceo】新增一条官网文章，编号为：6，标题为：《15》。请审核！', null, '2016-09-09 14:36:32', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1000', '【ceo】新增一条官网文章，编号为：6，标题为：《15》。请审核！', null, '2016-09-09 15:56:39', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1001', '【ceo】新增一条官网文章，编号为：6，标题为：《15》。请审核！', null, '2016-09-09 14:31:39', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1002', '【ceo】新增一条官网文章，编号为：7，标题为：《12》。请审核！', null, '2016-07-29 10:09:46', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1003', '【ceo】新增一条官网文章，编号为：7，标题为：《12》。请审核！', null, '2016-07-13 16:56:35', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1004', '【ceo】新增一条官网文章，编号为：7，标题为：《12》。请审核！', null, '2016-09-09 15:16:28', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1005', '【ceo】新增一条官网文章，编号为：7，标题为：《12》。请审核！', null, '2016-07-13 16:52:09', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1006', '【ceo】新增一条官网文章，编号为：7，标题为：《12》。请审核！', null, '2016-09-09 14:36:32', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1007', '【ceo】新增一条官网文章，编号为：7，标题为：《12》。请审核！', null, '2016-09-09 15:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1008', '【ceo】新增一条官网文章，编号为：7，标题为：《12》。请审核！', null, '2016-09-09 14:31:36', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1009', '【ceo】新增一条官网文章，编号为：8，标题为：《12》。请审核！', null, '2016-07-29 10:09:46', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1010', '【ceo】新增一条官网文章，编号为：8，标题为：《12》。请审核！', null, '2016-07-13 16:56:35', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1011', '【ceo】新增一条官网文章，编号为：8，标题为：《12》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1012', '【ceo】新增一条官网文章，编号为：8，标题为：《12》。请审核！', null, '2016-07-13 16:52:20', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1013', '【ceo】新增一条官网文章，编号为：8，标题为：《12》。请审核！', null, '2016-09-09 14:36:32', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1014', '【ceo】新增一条官网文章，编号为：8，标题为：《12》。请审核！', null, '2016-09-09 15:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1015', '【ceo】新增一条官网文章，编号为：8，标题为：《12》。请审核！', null, '2016-09-09 14:31:36', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1016', '【ceo】新增一条官网文章，编号为：9，标题为：《1》。请审核！', null, '2016-07-29 10:09:46', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1017', '【ceo】新增一条官网文章，编号为：9，标题为：《1》。请审核！', null, '2016-07-13 16:56:36', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1018', '【ceo】新增一条官网文章，编号为：9，标题为：《1》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1019', '【ceo】新增一条官网文章，编号为：9，标题为：《1》。请审核！', null, '2016-07-13 16:52:27', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1020', '【ceo】新增一条官网文章，编号为：9，标题为：《1》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1021', '【ceo】新增一条官网文章，编号为：9，标题为：《1》。请审核！', null, '2016-09-09 15:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1022', '【ceo】新增一条官网文章，编号为：9，标题为：《1》。请审核！', null, '2016-09-09 14:31:37', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1023', '【ceo】新增一条官网文章，编号为：10，标题为：《1》。请审核！', null, '2016-07-29 10:09:47', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1024', '【ceo】新增一条官网文章，编号为：10，标题为：《1》。请审核！', null, '2016-07-13 16:56:37', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1025', '【ceo】新增一条官网文章，编号为：10，标题为：《1》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1026', '【ceo】新增一条官网文章，编号为：10，标题为：《1》。请审核！', null, '2016-07-13 16:52:36', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1027', '【ceo】新增一条官网文章，编号为：10，标题为：《1》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1028', '【ceo】新增一条官网文章，编号为：10，标题为：《1》。请审核！', null, '2016-09-09 15:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1029', '【ceo】新增一条官网文章，编号为：10，标题为：《1》。请审核！', null, '2016-09-09 14:31:37', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1030', '【ceo】新增一条官网文章，编号为：11，标题为：《1》。请审核！', null, '2016-07-29 10:09:47', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1031', '【ceo】新增一条官网文章，编号为：11，标题为：《1》。请审核！', null, '2016-07-13 16:56:36', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1032', '【ceo】新增一条官网文章，编号为：11，标题为：《1》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1033', '【ceo】新增一条官网文章，编号为：11，标题为：《1》。请审核！', null, '2016-07-13 16:52:43', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1034', '【ceo】新增一条官网文章，编号为：11，标题为：《1》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1035', '【ceo】新增一条官网文章，编号为：11，标题为：《1》。请审核！', null, '2016-09-09 15:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1036', '【ceo】新增一条官网文章，编号为：11，标题为：《1》。请审核！', null, '2016-09-09 14:31:37', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1037', '【ceo】新增一条官网文章，编号为：12，标题为：《1》。请审核！', null, '2016-07-29 10:09:47', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1038', '【ceo】新增一条官网文章，编号为：12，标题为：《1》。请审核！', null, '2016-07-13 16:56:37', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1039', '【ceo】新增一条官网文章，编号为：12，标题为：《1》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1040', '【ceo】新增一条官网文章，编号为：12，标题为：《1》。请审核！', null, '2016-07-13 16:52:52', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1041', '【ceo】新增一条官网文章，编号为：12，标题为：《1》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1042', '【ceo】新增一条官网文章，编号为：12，标题为：《1》。请审核！', null, '2016-09-09 15:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1043', '【ceo】新增一条官网文章，编号为：12，标题为：《1》。请审核！', null, '2016-09-09 14:31:37', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1044', '【ceo】新增一条官网文章，编号为：13，标题为：《14》。请审核！', null, '2016-07-29 10:09:47', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1045', '【ceo】新增一条官网文章，编号为：13，标题为：《14》。请审核！', null, '2016-07-13 16:56:38', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1046', '【ceo】新增一条官网文章，编号为：13，标题为：《14》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1047', '【ceo】新增一条官网文章，编号为：13，标题为：《14》。请审核！', null, '2016-07-13 16:53:02', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1048', '【ceo】新增一条官网文章，编号为：13，标题为：《14》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1049', '【ceo】新增一条官网文章，编号为：13，标题为：《14》。请审核！', null, '2016-09-09 15:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1050', '【ceo】新增一条官网文章，编号为：13，标题为：《14》。请审核！', null, '2016-09-09 14:31:37', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1051', '【ceo】新增一条官网文章，编号为：14，标题为：《1》。请审核！', null, '2016-07-29 10:09:47', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1052', '【ceo】新增一条官网文章，编号为：14，标题为：《1》。请审核！', null, '2016-07-13 16:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1053', '【ceo】新增一条官网文章，编号为：14，标题为：《1》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1054', '【ceo】新增一条官网文章，编号为：14，标题为：《1》。请审核！', null, '2016-07-13 16:53:08', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1055', '【ceo】新增一条官网文章，编号为：14，标题为：《1》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1056', '【ceo】新增一条官网文章，编号为：14，标题为：《1》。请审核！', null, '2016-09-09 15:56:41', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1057', '【ceo】新增一条官网文章，编号为：14，标题为：《1》。请审核！', null, '2016-09-09 14:31:37', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1058', '【ceo】新增一条官网文章，编号为：15，标题为：《1》。请审核！', null, '2016-07-29 10:09:47', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1059', '【ceo】新增一条官网文章，编号为：15，标题为：《1》。请审核！', null, '2016-07-13 16:56:40', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1060', '【ceo】新增一条官网文章，编号为：15，标题为：《1》。请审核！', null, '2016-09-09 15:16:29', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1061', '【ceo】新增一条官网文章，编号为：15，标题为：《1》。请审核！', null, '2016-07-13 16:53:08', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1062', '【ceo】新增一条官网文章，编号为：15，标题为：《1》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1063', '【ceo】新增一条官网文章，编号为：15，标题为：《1》。请审核！', null, '2016-09-09 15:56:41', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1064', '【ceo】新增一条官网文章，编号为：15，标题为：《1》。请审核！', null, '2016-09-09 14:31:38', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1065', '【ceo】新增一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-07-29 10:09:47', '1', '0', '/PortalNews/NewsManagement', '2', '1');
INSERT INTO `messages` VALUES ('1066', '【ceo】新增一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-07-13 16:56:43', '1', '0', '/PortalNews/NewsManagement', '2', '2');
INSERT INTO `messages` VALUES ('1067', '【ceo】新增一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-09-09 15:16:30', '1', '0', '/PortalNews/NewsManagement', '2', '3');
INSERT INTO `messages` VALUES ('1068', '【ceo】新增一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-07-13 16:53:15', '0', '0', '/PortalNews/NewsManagement', '2', '4');
INSERT INTO `messages` VALUES ('1069', '【ceo】新增一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-09-09 14:36:33', '1', '0', '/PortalNews/NewsManagement', '2', '5');
INSERT INTO `messages` VALUES ('1070', '【ceo】新增一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-09-09 15:56:41', '1', '0', '/PortalNews/NewsManagement', '2', '6');
INSERT INTO `messages` VALUES ('1071', '【ceo】新增一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-09-09 14:31:38', '1', '0', '/PortalNews/NewsManagement', '2', '9');
INSERT INTO `messages` VALUES ('1072', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-29 10:09:48', '1', '0', '/ClaimRequests/ClaimManagement', '7', '1');
INSERT INTO `messages` VALUES ('1073', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-15 23:07:44', '1', '0', '/ClaimRequests/ClaimManagement', '7', '2');
INSERT INTO `messages` VALUES ('1074', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 15:16:30', '1', '0', '/ClaimRequests/ClaimManagement', '7', '3');
INSERT INTO `messages` VALUES ('1075', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-15 16:26:37', '0', '0', '/ClaimRequests/ClaimManagement', '7', '4');
INSERT INTO `messages` VALUES ('1076', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 14:36:34', '1', '0', '/ClaimRequests/ClaimManagement', '7', '5');
INSERT INTO `messages` VALUES ('1077', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 15:56:41', '1', '0', '/ClaimRequests/ClaimManagement', '7', '6');
INSERT INTO `messages` VALUES ('1078', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 14:31:38', '1', '0', '/ClaimRequests/ClaimManagement', '7', '9');
INSERT INTO `messages` VALUES ('1079', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-15 16:31:02', '1', '0', '/ClaimRequests/ClaimManagement', '7', '7');
INSERT INTO `messages` VALUES ('1080', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-29 10:09:48', '1', '0', '/ClaimRequests/ClaimManagement', '7', '1');
INSERT INTO `messages` VALUES ('1081', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-15 23:07:47', '1', '0', '/ClaimRequests/ClaimManagement', '7', '2');
INSERT INTO `messages` VALUES ('1082', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 15:16:30', '1', '0', '/ClaimRequests/ClaimManagement', '7', '3');
INSERT INTO `messages` VALUES ('1083', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-15 16:26:47', '0', '0', '/ClaimRequests/ClaimManagement', '7', '4');
INSERT INTO `messages` VALUES ('1084', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 14:36:34', '1', '0', '/ClaimRequests/ClaimManagement', '7', '5');
INSERT INTO `messages` VALUES ('1085', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 15:56:41', '1', '0', '/ClaimRequests/ClaimManagement', '7', '6');
INSERT INTO `messages` VALUES ('1086', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-09-09 14:31:38', '1', '0', '/ClaimRequests/ClaimManagement', '7', '9');
INSERT INTO `messages` VALUES ('1087', '【dandanjiang】完成一条报销审核，编号为：11，申请人为：首席执行官，金额为：12。请支付！', null, '2016-07-15 16:31:02', '1', '0', '/ClaimRequests/ClaimManagement', '7', '7');
INSERT INTO `messages` VALUES ('1088', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-07-29 10:09:48', '1', '0', '/News/NewsManagement', '7', '1');
INSERT INTO `messages` VALUES ('1089', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-07-28 14:45:57', '1', '0', '/News/NewsManagement', '7', '2');
INSERT INTO `messages` VALUES ('1090', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-09-09 15:16:30', '1', '0', '/News/NewsManagement', '7', '3');
INSERT INTO `messages` VALUES ('1091', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-07-27 15:48:20', '0', '0', '/News/NewsManagement', '7', '4');
INSERT INTO `messages` VALUES ('1092', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-09-09 14:36:34', '1', '0', '/News/NewsManagement', '7', '5');
INSERT INTO `messages` VALUES ('1093', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-09-09 15:56:42', '1', '0', '/News/NewsManagement', '7', '6');
INSERT INTO `messages` VALUES ('1094', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-09-09 14:31:38', '1', '0', '/News/NewsManagement', '7', '9');
INSERT INTO `messages` VALUES ('1095', '【dandanjiang】新增一条新闻，编号为：3，标题为：《rt》。请审核！', null, '2016-07-27 15:55:18', '1', '0', '/News/NewsManagement', '7', '7');
INSERT INTO `messages` VALUES ('1096', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-07-29 10:09:48', '1', '0', '/ClaimRequests/ClaimManagement', '7', '1');
INSERT INTO `messages` VALUES ('1097', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-07-28 14:46:13', '1', '0', '/ClaimRequests/ClaimManagement', '7', '2');
INSERT INTO `messages` VALUES ('1098', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-09-09 15:16:30', '1', '0', '/ClaimRequests/ClaimManagement', '7', '3');
INSERT INTO `messages` VALUES ('1099', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-07-27 17:13:41', '0', '0', '/ClaimRequests/ClaimManagement', '7', '4');
INSERT INTO `messages` VALUES ('1100', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-09-09 14:36:34', '1', '0', '/ClaimRequests/ClaimManagement', '7', '5');
INSERT INTO `messages` VALUES ('1101', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-09-09 15:56:42', '1', '0', '/ClaimRequests/ClaimManagement', '7', '6');
INSERT INTO `messages` VALUES ('1102', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-09-09 14:31:39', '1', '0', '/ClaimRequests/ClaimManagement', '7', '9');
INSERT INTO `messages` VALUES ('1103', '【dandanjiang】完成一条报销审核，编号为：16，申请人为：首席执行官，金额为：111。请支付！', null, '2016-07-27 17:17:17', '1', '0', '/ClaimRequests/ClaimManagement', '7', '7');
INSERT INTO `messages` VALUES ('1104', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-07-29 10:09:48', '1', '0', '/News/NewsManagement', '7', '1');
INSERT INTO `messages` VALUES ('1105', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-07-28 16:36:27', '1', '0', '/News/NewsManagement', '7', '2');
INSERT INTO `messages` VALUES ('1106', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-09-09 15:16:30', '1', '0', '/News/NewsManagement', '7', '3');
INSERT INTO `messages` VALUES ('1107', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-07-28 16:35:07', '0', '0', '/News/NewsManagement', '7', '4');
INSERT INTO `messages` VALUES ('1108', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-09-09 14:36:34', '1', '0', '/News/NewsManagement', '7', '5');
INSERT INTO `messages` VALUES ('1109', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-09-09 15:56:42', '1', '0', '/News/NewsManagement', '7', '6');
INSERT INTO `messages` VALUES ('1110', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-09-09 14:31:39', '1', '0', '/News/NewsManagement', '7', '9');
INSERT INTO `messages` VALUES ('1111', '【dandanjiang】新增一条新闻，编号为：4，标题为：《d》。请审核！', null, '2016-07-28 16:35:13', '1', '0', '/News/NewsManagement', '7', '7');
INSERT INTO `messages` VALUES ('1112', '【yubochen】陈欲菠拒绝了流程名为:\"测试cyb\",流程实例Id为:\"5\"的流程，请查看！', null, '2016-09-09 14:36:34', '1', '0', '/WorkFlow/WorkFlowCheck', '9', '5');
INSERT INTO `messages` VALUES ('1113', '【jiewu】新增一条请假申请，编号为：19，类型为：年假，时长为：2天。请审核！', null, '2016-10-13 15:16:20', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '12', null);
INSERT INTO `messages` VALUES ('1114', '【jiewu】新增一条请假申请，编号为：20，类型为：年假，时长为：2天。请审核！', null, '2016-10-13 15:16:20', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '12', null);
INSERT INTO `messages` VALUES ('1115', '【jiewu】新增一条请假申请，编号为：21，类型为：，时长为：2天。请审核！', null, '2016-10-13 15:16:22', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '12', null);
INSERT INTO `messages` VALUES ('1116', '【ceo】新增一条请假申请，编号为：22，类型为：年假，时长为：1天。请审核！', null, '2016-10-13 15:36:41', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '2', '2');
INSERT INTO `messages` VALUES ('1117', '【jiewu】吴捷拒绝了流程名为:\"售前任务审批流程\",流程实例Id为:\"13\"的流程，请查看！', null, '2016-10-13 16:30:37', '0', '0', '/WorkFlow/WorkFlowCheck', '12', '12');
INSERT INTO `messages` VALUES ('1118', '【jiewu】吴捷拒绝了流程名为:\"售前任务审批流程\",流程实例Id为:\"13\"的流程，请查看！', null, '2016-10-13 16:38:30', '0', '0', '/WorkFlow/WorkFlowCheck', '12', '12');
INSERT INTO `messages` VALUES ('1119', '【admin】新增一条离职申请，用户名为：jiechen，中文名为：陈杰。请审批！', null, '2016-10-17 14:48:35', '0', '0', '/HumanResource/ResignApproval', '1', '7');
INSERT INTO `messages` VALUES ('1120', '【admin】新增一条离职申请，用户名为：jiechen，中文名为：陈杰。请审批！', null, '2016-10-17 14:48:35', '0', '0', '/HumanResource/ResignApproval', '1', '3');
INSERT INTO `messages` VALUES ('1121', '【jiewu】新增一条加班申请，编号为：17，类型为：夜间加班，时长为：2小时。请审核！', null, '2016-10-17 17:02:06', '0', '0', '/LeaveAndOverTime/OverTimeCheck', '12', '2');
INSERT INTO `messages` VALUES ('1122', '【admin】新增一条入职申请，用户名为：zl123，中文名为：赵璐。请审批！', null, '2016-10-19 09:53:39', '0', '0', '/HumanResource/EnrollApproval', '1', '7');
INSERT INTO `messages` VALUES ('1123', '【admin】新增一条入职申请，用户名为：zl123，中文名为：赵璐。请审批！', null, '2016-10-19 09:53:39', '0', '0', '/HumanResource/EnrollApproval', '1', '3');
INSERT INTO `messages` VALUES ('1124', '【admin】新增一条入职申请，用户名为：赵敏，中文名为：赵敏。请审批！', null, '2016-10-19 14:57:27', '0', '0', '/HumanResource/EnrollApproval', '1', '7');
INSERT INTO `messages` VALUES ('1125', '【admin】新增一条入职申请，用户名为：赵敏，中文名为：赵敏。请审批！', null, '2016-10-19 14:57:27', '0', '0', '/HumanResource/EnrollApproval', '1', '3');
INSERT INTO `messages` VALUES ('1126', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '1');
INSERT INTO `messages` VALUES ('1127', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '2');
INSERT INTO `messages` VALUES ('1128', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '3');
INSERT INTO `messages` VALUES ('1129', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '4');
INSERT INTO `messages` VALUES ('1130', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '5');
INSERT INTO `messages` VALUES ('1131', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '6');
INSERT INTO `messages` VALUES ('1132', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '9');
INSERT INTO `messages` VALUES ('1133', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '7');
INSERT INTO `messages` VALUES ('1134', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '12');
INSERT INTO `messages` VALUES ('1135', '【admin】完成一条报销审核，编号为：15，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-19 15:51:25', '0', '0', '/ClaimRequests/ClaimManagement', '1', '13');
INSERT INTO `messages` VALUES ('1136', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '1');
INSERT INTO `messages` VALUES ('1137', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '2');
INSERT INTO `messages` VALUES ('1138', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '3');
INSERT INTO `messages` VALUES ('1139', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '4');
INSERT INTO `messages` VALUES ('1140', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '5');
INSERT INTO `messages` VALUES ('1141', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '6');
INSERT INTO `messages` VALUES ('1142', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '9');
INSERT INTO `messages` VALUES ('1143', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '7');
INSERT INTO `messages` VALUES ('1144', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '12');
INSERT INTO `messages` VALUES ('1145', '【admin】新增一条公文，编号为：22，标题为：《提示》。请审核！', null, '2016-10-19 16:00:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '13');
INSERT INTO `messages` VALUES ('1146', '【admin】新增一条请假申请，编号为：23，类型为：年假，时长为：1天。请审核！', null, '2016-10-19 16:02:51', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '1', null);
INSERT INTO `messages` VALUES ('1147', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '1');
INSERT INTO `messages` VALUES ('1148', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '2');
INSERT INTO `messages` VALUES ('1149', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '3');
INSERT INTO `messages` VALUES ('1150', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '4');
INSERT INTO `messages` VALUES ('1151', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '5');
INSERT INTO `messages` VALUES ('1152', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '6');
INSERT INTO `messages` VALUES ('1153', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '9');
INSERT INTO `messages` VALUES ('1154', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '7');
INSERT INTO `messages` VALUES ('1155', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '12');
INSERT INTO `messages` VALUES ('1156', '【jiewu】修改一条官网文章，编号为：16，标题为：《1》。请审核！', null, '2016-10-24 17:10:19', '0', '0', '/PortalNews/NewsManagement', '12', '13');
INSERT INTO `messages` VALUES ('1157', '【jiewu】新增一条离职申请，用户名为：test1，中文名为：测试入职1。请审批！', null, '2016-10-24 17:23:00', '0', '0', '/HumanResource/ResignApproval', '12', '7');
INSERT INTO `messages` VALUES ('1158', '【jiewu】新增一条离职申请，用户名为：test1，中文名为：测试入职1。请审批！', null, '2016-10-24 17:23:00', '0', '0', '/HumanResource/ResignApproval', '12', '3');
INSERT INTO `messages` VALUES ('1159', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('1160', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('1161', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('1162', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('1163', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('1164', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('1165', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('1166', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '7');
INSERT INTO `messages` VALUES ('1167', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '12');
INSERT INTO `messages` VALUES ('1168', '【admin】新增一条官网文章，编号为：17，标题为：《2222》。请审核！', null, '2016-10-25 09:22:31', '0', '0', '/PortalNews/NewsManagement', '1', '13');
INSERT INTO `messages` VALUES ('1169', '【admin】新增一条入职申请，用户名为：gtt，中文名为：高圆圆。请审批！', null, '2016-10-25 10:18:03', '0', '0', '/HumanResource/EnrollApproval', '1', '7');
INSERT INTO `messages` VALUES ('1170', '【admin】新增一条入职申请，用户名为：gtt，中文名为：高圆圆。请审批！', null, '2016-10-25 10:18:03', '0', '0', '/HumanResource/EnrollApproval', '1', '3');
INSERT INTO `messages` VALUES ('1171', '【jiewu】新增一条离职申请，用户名为：kkkkk，中文名为：小明。请审批！', null, '2016-10-25 10:26:49', '0', '0', '/HumanResource/ResignApproval', '12', '7');
INSERT INTO `messages` VALUES ('1172', '【jiewu】新增一条离职申请，用户名为：kkkkk，中文名为：小明。请审批！', null, '2016-10-25 10:26:49', '0', '0', '/HumanResource/ResignApproval', '12', '3');
INSERT INTO `messages` VALUES ('1173', '【jiewu】新增一条入职申请，用户名为：rrrr，中文名为：如若。请审批！', null, '2016-10-25 10:27:48', '0', '0', '/HumanResource/EnrollApproval', '12', '7');
INSERT INTO `messages` VALUES ('1174', '【jiewu】新增一条入职申请，用户名为：rrrr，中文名为：如若。请审批！', null, '2016-10-25 10:27:48', '0', '0', '/HumanResource/EnrollApproval', '12', '3');
INSERT INTO `messages` VALUES ('1175', '【admin】新增一条离职申请，用户名为：ttt，中文名为：天天。请审批！', null, '2016-10-25 10:28:57', '0', '0', '/HumanResource/ResignApproval', '1', '7');
INSERT INTO `messages` VALUES ('1176', '【admin】新增一条离职申请，用户名为：ttt，中文名为：天天。请审批！', null, '2016-10-25 10:28:57', '0', '0', '/HumanResource/ResignApproval', '1', '3');
INSERT INTO `messages` VALUES ('1177', '【admin】新增一条离职申请，用户名为：fgr，中文名为：辅导费。请审批！', null, '2016-10-25 10:28:57', '0', '0', '/HumanResource/ResignApproval', '1', '7');
INSERT INTO `messages` VALUES ('1178', '【admin】新增一条离职申请，用户名为：fgr，中文名为：辅导费。请审批！', null, '2016-10-25 10:28:57', '0', '0', '/HumanResource/ResignApproval', '1', '3');
INSERT INTO `messages` VALUES ('1179', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '1');
INSERT INTO `messages` VALUES ('1180', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '2');
INSERT INTO `messages` VALUES ('1181', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '3');
INSERT INTO `messages` VALUES ('1182', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '4');
INSERT INTO `messages` VALUES ('1183', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '5');
INSERT INTO `messages` VALUES ('1184', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '6');
INSERT INTO `messages` VALUES ('1185', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '9');
INSERT INTO `messages` VALUES ('1186', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '7');
INSERT INTO `messages` VALUES ('1187', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '12');
INSERT INTO `messages` VALUES ('1188', '【admin】完成一条报销审核，编号为：14，申请人为：首席执行官，金额为：100。请支付！', null, '2016-10-25 11:01:23', '0', '0', '/ClaimRequests/ClaimManagement', '1', '13');
INSERT INTO `messages` VALUES ('1189', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '1');
INSERT INTO `messages` VALUES ('1190', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '2');
INSERT INTO `messages` VALUES ('1191', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '3');
INSERT INTO `messages` VALUES ('1192', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '4');
INSERT INTO `messages` VALUES ('1193', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '5');
INSERT INTO `messages` VALUES ('1194', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '6');
INSERT INTO `messages` VALUES ('1195', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '9');
INSERT INTO `messages` VALUES ('1196', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '7');
INSERT INTO `messages` VALUES ('1197', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '12');
INSERT INTO `messages` VALUES ('1198', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:14', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '13');
INSERT INTO `messages` VALUES ('1199', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '1');
INSERT INTO `messages` VALUES ('1200', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '2');
INSERT INTO `messages` VALUES ('1201', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '3');
INSERT INTO `messages` VALUES ('1202', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '4');
INSERT INTO `messages` VALUES ('1203', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '5');
INSERT INTO `messages` VALUES ('1204', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '6');
INSERT INTO `messages` VALUES ('1205', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '9');
INSERT INTO `messages` VALUES ('1206', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '7');
INSERT INTO `messages` VALUES ('1207', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '12');
INSERT INTO `messages` VALUES ('1208', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:04:41', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '13');
INSERT INTO `messages` VALUES ('1209', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '1');
INSERT INTO `messages` VALUES ('1210', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '2');
INSERT INTO `messages` VALUES ('1211', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '3');
INSERT INTO `messages` VALUES ('1212', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '4');
INSERT INTO `messages` VALUES ('1213', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '5');
INSERT INTO `messages` VALUES ('1214', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '6');
INSERT INTO `messages` VALUES ('1215', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '9');
INSERT INTO `messages` VALUES ('1216', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '7');
INSERT INTO `messages` VALUES ('1217', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '12');
INSERT INTO `messages` VALUES ('1218', '【admin】修改一条报销申请，编号为：13，申请人为：首席执行官，金额为：1201。请审核！', null, '2016-10-25 11:05:15', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '13');
INSERT INTO `messages` VALUES ('1219', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '1');
INSERT INTO `messages` VALUES ('1220', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '2');
INSERT INTO `messages` VALUES ('1221', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '3');
INSERT INTO `messages` VALUES ('1222', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '4');
INSERT INTO `messages` VALUES ('1223', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '5');
INSERT INTO `messages` VALUES ('1224', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '6');
INSERT INTO `messages` VALUES ('1225', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '9');
INSERT INTO `messages` VALUES ('1226', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '7');
INSERT INTO `messages` VALUES ('1227', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '12');
INSERT INTO `messages` VALUES ('1228', '【admin】修改一条报销申请，编号为：12，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:05:56', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '13');
INSERT INTO `messages` VALUES ('1229', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '1');
INSERT INTO `messages` VALUES ('1230', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '2');
INSERT INTO `messages` VALUES ('1231', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '3');
INSERT INTO `messages` VALUES ('1232', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '4');
INSERT INTO `messages` VALUES ('1233', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '5');
INSERT INTO `messages` VALUES ('1234', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '6');
INSERT INTO `messages` VALUES ('1235', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '9');
INSERT INTO `messages` VALUES ('1236', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '7');
INSERT INTO `messages` VALUES ('1237', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '12');
INSERT INTO `messages` VALUES ('1238', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:06', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '13');
INSERT INTO `messages` VALUES ('1239', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '1');
INSERT INTO `messages` VALUES ('1240', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '2');
INSERT INTO `messages` VALUES ('1241', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '3');
INSERT INTO `messages` VALUES ('1242', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '4');
INSERT INTO `messages` VALUES ('1243', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '5');
INSERT INTO `messages` VALUES ('1244', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '6');
INSERT INTO `messages` VALUES ('1245', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '9');
INSERT INTO `messages` VALUES ('1246', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '7');
INSERT INTO `messages` VALUES ('1247', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '12');
INSERT INTO `messages` VALUES ('1248', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:07:32', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '13');
INSERT INTO `messages` VALUES ('1249', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '1');
INSERT INTO `messages` VALUES ('1250', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '2');
INSERT INTO `messages` VALUES ('1251', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '3');
INSERT INTO `messages` VALUES ('1252', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '4');
INSERT INTO `messages` VALUES ('1253', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '5');
INSERT INTO `messages` VALUES ('1254', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '6');
INSERT INTO `messages` VALUES ('1255', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '9');
INSERT INTO `messages` VALUES ('1256', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '7');
INSERT INTO `messages` VALUES ('1257', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '12');
INSERT INTO `messages` VALUES ('1258', '【admin】修改一条报销申请，编号为：5，申请人为：首席执行官，金额为：123。请审核！', null, '2016-10-25 11:09:22', '0', '0', '/ClaimRequests/ClaimRequestCheck', '1', '13');
INSERT INTO `messages` VALUES ('1259', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '1');
INSERT INTO `messages` VALUES ('1260', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '2');
INSERT INTO `messages` VALUES ('1261', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '3');
INSERT INTO `messages` VALUES ('1262', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '4');
INSERT INTO `messages` VALUES ('1263', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '5');
INSERT INTO `messages` VALUES ('1264', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '6');
INSERT INTO `messages` VALUES ('1265', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '9');
INSERT INTO `messages` VALUES ('1266', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '7');
INSERT INTO `messages` VALUES ('1267', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '12');
INSERT INTO `messages` VALUES ('1268', '【admin】修改一条公文，编号为：19，标题为：《4214》。请审核！', null, '2016-10-25 11:32:41', '0', '0', '/Announcement/AnnouncementManagement', '1', '13');
INSERT INTO `messages` VALUES ('1269', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '1');
INSERT INTO `messages` VALUES ('1270', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '2');
INSERT INTO `messages` VALUES ('1271', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '3');
INSERT INTO `messages` VALUES ('1272', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '4');
INSERT INTO `messages` VALUES ('1273', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '5');
INSERT INTO `messages` VALUES ('1274', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '6');
INSERT INTO `messages` VALUES ('1275', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '9');
INSERT INTO `messages` VALUES ('1276', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '7');
INSERT INTO `messages` VALUES ('1277', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '12');
INSERT INTO `messages` VALUES ('1278', '【admin】新增一条公文，编号为：23，标题为：《哈哈哈》。请审核！', null, '2016-10-25 11:39:11', '0', '0', '/Announcement/AnnouncementManagement', '1', '13');
INSERT INTO `messages` VALUES ('1279', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('1280', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('1281', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('1282', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('1283', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('1284', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('1285', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('1286', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '7');
INSERT INTO `messages` VALUES ('1287', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '12');
INSERT INTO `messages` VALUES ('1288', '【admin】新增一条新闻，编号为：5，标题为：《jj uyj》。请审核！', null, '2016-10-25 12:15:50', '0', '0', '/News/NewsManagement', '1', '13');
INSERT INTO `messages` VALUES ('1289', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('1290', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('1291', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('1292', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('1293', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('1294', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('1295', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('1296', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '7');
INSERT INTO `messages` VALUES ('1297', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '12');
INSERT INTO `messages` VALUES ('1298', '【admin】新增一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:05', '0', '0', '/News/NewsManagement', '1', '13');
INSERT INTO `messages` VALUES ('1299', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('1300', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('1301', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('1302', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('1303', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('1304', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('1305', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('1306', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '7');
INSERT INTO `messages` VALUES ('1307', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '12');
INSERT INTO `messages` VALUES ('1308', '【admin】修改一条新闻，编号为：6，标题为：《tyutu》。请审核！', null, '2016-10-25 12:16:27', '0', '0', '/News/NewsManagement', '1', '13');
INSERT INTO `messages` VALUES ('1309', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('1310', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('1311', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('1312', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('1313', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('1314', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('1315', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('1316', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '7');
INSERT INTO `messages` VALUES ('1317', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '12');
INSERT INTO `messages` VALUES ('1318', '【admin】新增一条新闻，编号为：7，标题为：《hghh》。请审核！', null, '2016-10-25 12:17:36', '0', '0', '/News/NewsManagement', '1', '13');
INSERT INTO `messages` VALUES ('1319', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('1320', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('1321', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('1322', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('1323', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('1324', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('1325', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('1326', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '7');
INSERT INTO `messages` VALUES ('1327', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '12');
INSERT INTO `messages` VALUES ('1328', '【admin】新增一条新闻，编号为：8，标题为：《ytuu》。请审核！', null, '2016-10-25 12:17:46', '0', '0', '/News/NewsManagement', '1', '13');
INSERT INTO `messages` VALUES ('1329', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '1');
INSERT INTO `messages` VALUES ('1330', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '2');
INSERT INTO `messages` VALUES ('1331', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '3');
INSERT INTO `messages` VALUES ('1332', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '4');
INSERT INTO `messages` VALUES ('1333', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '5');
INSERT INTO `messages` VALUES ('1334', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '6');
INSERT INTO `messages` VALUES ('1335', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '9');
INSERT INTO `messages` VALUES ('1336', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '7');
INSERT INTO `messages` VALUES ('1337', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '12');
INSERT INTO `messages` VALUES ('1338', '【admin】新增一条新闻，编号为：9，标题为：《ewrfr》。请审核！', null, '2016-10-25 12:20:05', '0', '0', '/News/NewsManagement', '1', '13');
INSERT INTO `messages` VALUES ('1339', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '1');
INSERT INTO `messages` VALUES ('1340', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '2');
INSERT INTO `messages` VALUES ('1341', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '3');
INSERT INTO `messages` VALUES ('1342', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '4');
INSERT INTO `messages` VALUES ('1343', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '5');
INSERT INTO `messages` VALUES ('1344', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '6');
INSERT INTO `messages` VALUES ('1345', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '9');
INSERT INTO `messages` VALUES ('1346', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '7');
INSERT INTO `messages` VALUES ('1347', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '12');
INSERT INTO `messages` VALUES ('1348', '【zl123】新增一条报销申请，编号为：17，申请人为：赵璐，金额为：100000。请审核！', null, '2016-10-25 13:56:29', '0', '0', '/ClaimRequests/ClaimRequestCheck', '15', '13');
INSERT INTO `messages` VALUES ('1349', '【admin】新增一条请假申请，编号为：24，类型为：年假，时长为：4天。请审核！', null, '2016-10-25 14:16:45', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '1', null);
INSERT INTO `messages` VALUES ('1350', '【jiewu2】新增一条请假申请，编号为：25，类型为：年假，时长为：3天。请审核！', null, '2016-10-25 14:18:02', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '13', '10');
INSERT INTO `messages` VALUES ('1351', '【jiewu】新增一条请假申请，编号为：26，类型为：年假，时长为：1天。请审核！', null, '2016-10-25 14:23:15', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '12', '4');
INSERT INTO `messages` VALUES ('1352', '【jiewu】新增一条加班申请，编号为：18，类型为：夜间加班，时长为：5小时。请审核！', null, '2016-10-25 14:33:44', '0', '0', '/LeaveAndOverTime/OverTimeCheck', '12', '4');
INSERT INTO `messages` VALUES ('1353', '【jiewu】新增一条加班申请，编号为：19，类型为：夜间加班，时长为：4小时。请审核！', null, '2016-10-25 14:38:23', '0', '0', '/LeaveAndOverTime/OverTimeCheck', '12', '2');
INSERT INTO `messages` VALUES ('1354', '【jiewu】吴捷拒绝了流程名为:\"zzlll\",流程实例Id为:\"15\"的流程，请查看！', null, '2016-10-25 17:40:13', '0', '0', '/WorkFlow/WorkFlowCheck', '12', '12');
INSERT INTO `messages` VALUES ('1355', '【jiewu】新增一条请假申请，编号为：27，类型为：病假，时长为：1天。请审核！', null, '2016-10-26 10:27:49', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '12', '4');
INSERT INTO `messages` VALUES ('1356', '【jiewu】修改一条请假申请，编号为：27，类型为：年假，时长为：1天。请审核！', null, '2016-10-26 10:27:57', '0', '0', '/LeaveAndOverTime/LeaveTimeCheck', '12', '4');
INSERT INTO `messages` VALUES ('1357', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '1');
INSERT INTO `messages` VALUES ('1358', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '2');
INSERT INTO `messages` VALUES ('1359', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '3');
INSERT INTO `messages` VALUES ('1360', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '4');
INSERT INTO `messages` VALUES ('1361', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '5');
INSERT INTO `messages` VALUES ('1362', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '6');
INSERT INTO `messages` VALUES ('1363', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '9');
INSERT INTO `messages` VALUES ('1364', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '7');
INSERT INTO `messages` VALUES ('1365', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '12');
INSERT INTO `messages` VALUES ('1366', '【admin】完成一条报销审核，编号为：17，申请人为：赵璐，金额为：100000。请支付！', null, '2016-10-31 10:47:49', '0', '0', '/ClaimRequests/ClaimManagement', '1', '13');

-- ----------------------------
-- Table structure for messagesettings
-- ----------------------------
DROP TABLE IF EXISTS `messagesettings`;
CREATE TABLE `messagesettings` (
  `Id` int(11) NOT NULL,
  `IsAutoClose` int(11) DEFAULT NULL,
  `Time` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messagesettings
-- ----------------------------
INSERT INTO `messagesettings` VALUES ('1', '0', '0', '1');
INSERT INTO `messagesettings` VALUES ('2', '0', '0', '2');
INSERT INTO `messagesettings` VALUES ('3', '0', '0', '5');
INSERT INTO `messagesettings` VALUES ('4', '0', '0', '3');
INSERT INTO `messagesettings` VALUES ('5', '0', '0', '9');
INSERT INTO `messagesettings` VALUES ('6', '0', '0', '4');
INSERT INTO `messagesettings` VALUES ('7', '0', '0', '7');
INSERT INTO `messagesettings` VALUES ('8', '0', '0', '6');
INSERT INTO `messagesettings` VALUES ('9', '0', '0', '12');
INSERT INTO `messagesettings` VALUES ('10', '0', '0', '13');
INSERT INTO `messagesettings` VALUES ('11', '0', '0', '15');
INSERT INTO `messagesettings` VALUES ('12', '0', '0', '18');
INSERT INTO `messagesettings` VALUES ('13', '0', '0', '10');

-- ----------------------------
-- Table structure for operationlogs
-- ----------------------------
DROP TABLE IF EXISTS `operationlogs`;
CREATE TABLE `operationlogs` (
  `Id` int(11) NOT NULL,
  `Classification` int(11) DEFAULT NULL,
  `Subclass` int(11) DEFAULT NULL,
  `OperationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Comment` longtext,
  `OperationUid_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operationlogs
-- ----------------------------
INSERT INTO `operationlogs` VALUES ('1', '2', '21', '2016-02-01 16:31:24', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:4，组织名称为:\"QCPJ\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('2', '7', '6', '2016-02-01 16:35:35', '系统首页→权限管理→权限管理：超级管理员修改了ID:68，名称为:\"所有页面权限\"的权限的页面配置', '1');
INSERT INTO `operationlogs` VALUES ('3', '5', '8', '2016-02-01 16:36:32', '系统首页→人事管理→档案管理：超级管理员进行了一次档案导入的操作', '1');
INSERT INTO `operationlogs` VALUES ('4', '2', '21', '2016-02-01 16:41:04', '系统首页→组织管理→组织修改：超级管理员修改了ID:4，组织名称为:\"QCPJ\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('5', '2', '21', '2016-02-01 16:41:15', '系统首页→组织管理→组织修改：超级管理员修改了ID:4，组织名称为:\"QCPJ\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('6', '4', '11', '2016-02-01 16:41:50', '系统首页→财务管理→账户管理：超级管理员新增了一条ID:1，用户名为:\"feichen\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('7', '4', '15', '2016-02-01 16:43:29', '系统首页→财务管理→报销管理：陈飞添加了ID:1，报销人为:\"陈飞\"的报销申请', '5');
INSERT INTO `operationlogs` VALUES ('8', '4', '15', '2016-02-01 16:46:21', '系统首页→财务管理→报销管理：陈飞添加了ID:2，报销人为:\"陈飞\"的报销申请', '5');
INSERT INTO `operationlogs` VALUES ('9', '2', '21', '2016-02-01 17:32:17', '系统首页→组织管理→组织修改：超级管理员修改了ID:4，组织名称为:\"QCPJ\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('10', '4', '15', '2016-02-01 17:32:55', '系统首页→财务管理→报销管理：陈飞添加了ID:3，报销人为:\"陈飞\"的报销申请', '5');
INSERT INTO `operationlogs` VALUES ('11', '4', '15', '2016-02-01 18:56:46', '系统首页→财务管理→报销管理：陈飞添加了ID:4，报销人为:\"陈飞\"的报销申请', '5');
INSERT INTO `operationlogs` VALUES ('12', '1', '25', '2016-03-15 15:36:15', '系统首页→用户管理→用户管理：首席执行官对ID:3，中文名为:\"张志林\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('13', '1', '25', '2016-03-15 15:36:25', '系统首页→用户管理→用户管理：首席执行官对ID:4，中文名为:\"曹思翀\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('14', '1', '25', '2016-03-15 15:36:35', '系统首页→用户管理→用户管理：首席执行官对ID:5，中文名为:\"陈飞\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('15', '1', '25', '2016-03-15 15:36:43', '系统首页→用户管理→用户管理：首席执行官对ID:6，中文名为:\"高洋\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('16', '1', '25', '2016-03-15 15:37:20', '系统首页→用户管理→用户管理：首席执行官对ID:9，中文名为:\"陈欲菠\"的用户的组织进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('17', '1', '25', '2016-03-15 15:41:24', '系统首页→用户管理→用户管理：首席执行官对ID:3，中文名为:\"张志林\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('18', '1', '25', '2016-03-15 15:41:37', '系统首页→用户管理→用户管理：首席执行官对ID:4，中文名为:\"曹思翀\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('19', '1', '25', '2016-03-15 15:41:46', '系统首页→用户管理→用户管理：首席执行官对ID:5，中文名为:\"陈飞\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('20', '1', '25', '2016-03-15 15:41:54', '系统首页→用户管理→用户管理：首席执行官对ID:6，中文名为:\"高洋\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('21', '1', '25', '2016-03-15 15:42:05', '系统首页→用户管理→用户管理：首席执行官对ID:9，中文名为:\"陈欲菠\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('22', '9', '29', '2016-03-15 15:50:15', '系统首页→系统配置→系统配置：曹思翀修改了页面配置', '4');
INSERT INTO `operationlogs` VALUES ('23', '0', '1', '2016-03-16 16:41:19', '系统首页→官网管理→文章管理：超级管理员新增了ID:1，标题为:\"11\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('24', '1', '25', '2016-03-17 14:41:21', '系统首页→用户管理→用户管理：超级管理员修改了ID:5，中文名为:\"陈飞\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('25', '2', '21', '2016-04-29 22:53:50', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:5，组织名称为:\"test1\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('26', '2', '21', '2016-04-29 22:54:15', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:6，组织名称为:\"test2\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('27', '2', '21', '2016-04-29 22:54:38', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:7，组织名称为:\"test3\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('28', '2', '21', '2016-04-29 22:56:56', '系统首页→组织管理：超级管理员删除了ID:7，组织名称为:\"test3\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('29', '2', '21', '2016-04-29 22:56:59', '系统首页→组织管理：超级管理员删除了ID:6，组织名称为:\"test2\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('30', '2', '21', '2016-04-29 22:57:01', '系统首页→组织管理：超级管理员删除了ID:5，组织名称为:\"test1\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('31', '0', '1', '2016-06-29 10:43:28', '系统首页→官网管理→文章管理：首席执行官置顶了ID:1，标题为:\"11\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('32', '0', '1', '2016-06-29 10:43:29', '系统首页→官网管理→文章管理：首席执行官取消了ID:1，标题为:\"11\"的文章的置顶', '2');
INSERT INTO `operationlogs` VALUES ('33', '0', '1', '2016-06-29 10:43:31', '系统首页→官网管理→文章管理：首席执行官置顶了ID:1，标题为:\"11\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('34', '0', '1', '2016-06-29 10:43:32', '系统首页→官网管理→文章管理：首席执行官取消了ID:1，标题为:\"11\"的文章的置顶', '2');
INSERT INTO `operationlogs` VALUES ('35', '0', '1', '2016-06-29 16:13:21', '系统首页→官网管理→文章管理：首席执行官新增了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('36', '0', '1', '2016-06-29 16:14:06', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('37', '0', '1', '2016-06-29 16:14:18', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('38', '0', '1', '2016-06-29 16:14:18', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('39', '0', '1', '2016-06-29 16:14:19', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('40', '0', '1', '2016-06-29 16:14:19', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('41', '0', '1', '2016-06-29 16:14:19', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('42', '0', '1', '2016-06-29 16:14:20', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('43', '0', '1', '2016-06-29 16:14:20', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('44', '0', '1', '2016-06-29 16:14:22', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('45', '0', '1', '2016-06-29 16:14:22', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('46', '0', '1', '2016-06-29 16:14:23', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('47', '0', '1', '2016-06-29 16:14:40', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('48', '0', '1', '2016-06-29 16:14:43', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('49', '0', '1', '2016-06-29 16:14:44', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('50', '0', '1', '2016-06-29 16:14:44', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('51', '0', '1', '2016-06-29 16:14:45', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('52', '0', '1', '2016-06-29 16:14:45', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('53', '0', '1', '2016-06-29 16:14:45', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('54', '0', '1', '2016-06-29 16:14:46', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('55', '0', '1', '2016-06-29 16:14:46', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('56', '0', '1', '2016-06-29 16:14:46', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('57', '0', '1', '2016-06-29 16:14:46', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('58', '0', '1', '2016-06-29 16:14:47', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('59', '0', '1', '2016-06-29 16:14:47', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('60', '0', '1', '2016-06-29 16:14:47', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('61', '0', '1', '2016-06-29 16:14:48', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('62', '0', '1', '2016-06-29 16:14:48', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('63', '0', '1', '2016-06-29 16:14:49', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('64', '0', '1', '2016-06-29 16:14:49', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('65', '0', '1', '2016-06-29 16:14:49', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('66', '0', '1', '2016-06-29 16:14:50', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('67', '0', '1', '2016-06-29 16:14:51', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('68', '0', '1', '2016-06-29 16:14:51', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('69', '0', '1', '2016-06-29 16:14:52', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('70', '0', '1', '2016-06-29 16:14:52', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('71', '0', '1', '2016-06-29 16:14:54', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('72', '0', '1', '2016-06-29 16:14:54', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('73', '0', '1', '2016-06-29 16:14:55', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('74', '0', '1', '2016-06-29 16:14:55', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('75', '0', '1', '2016-06-29 16:14:55', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('76', '0', '1', '2016-06-29 16:14:56', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('77', '0', '1', '2016-06-29 16:14:56', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('78', '0', '1', '2016-06-29 16:14:57', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('79', '0', '1', '2016-06-29 16:14:57', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('80', '0', '1', '2016-06-29 16:14:57', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('81', '0', '1', '2016-06-29 16:14:58', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('82', '0', '1', '2016-06-29 16:14:58', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('83', '0', '1', '2016-06-29 16:15:01', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('84', '0', '1', '2016-06-29 16:15:01', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('85', '0', '1', '2016-06-29 16:15:01', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('86', '0', '1', '2016-06-29 16:15:02', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('87', '0', '1', '2016-06-29 16:15:02', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('88', '0', '1', '2016-06-29 16:15:02', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('89', '0', '1', '2016-06-29 16:15:04', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('90', '0', '1', '2016-06-29 16:15:04', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('91', '0', '1', '2016-06-29 16:15:05', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('92', '0', '1', '2016-06-29 16:15:05', '系统首页→官网管理→文章管理：首席执行官删除了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('93', '0', '1', '2016-06-29 16:15:05', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('94', '0', '1', '2016-06-29 16:15:06', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('95', '0', '1', '2016-06-29 16:15:06', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('96', '0', '1', '2016-06-29 16:15:07', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('97', '0', '1', '2016-06-29 16:15:08', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('98', '0', '1', '2016-06-29 16:15:09', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('99', '0', '1', '2016-06-29 16:15:09', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('100', '0', '1', '2016-06-29 16:15:09', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('101', '0', '1', '2016-06-29 16:15:10', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('102', '0', '1', '2016-06-29 16:15:10', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('103', '0', '1', '2016-06-29 16:15:11', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('104', '0', '1', '2016-06-29 16:15:11', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('105', '0', '1', '2016-06-29 16:15:12', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('106', '0', '1', '2016-06-29 16:15:12', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('107', '0', '1', '2016-06-29 16:15:13', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('108', '0', '1', '2016-06-29 16:15:13', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('109', '0', '1', '2016-06-29 16:15:13', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('110', '0', '1', '2016-06-29 16:15:14', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('111', '0', '1', '2016-06-29 16:15:14', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('112', '0', '1', '2016-06-29 16:15:14', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('113', '0', '1', '2016-06-29 16:15:15', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('114', '0', '1', '2016-06-29 16:15:15', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('115', '0', '1', '2016-06-29 16:15:16', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('116', '0', '1', '2016-06-29 16:15:17', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('117', '0', '1', '2016-06-29 16:15:18', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('118', '0', '1', '2016-06-29 16:15:19', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('119', '0', '1', '2016-06-29 16:15:19', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('120', '0', '1', '2016-06-29 16:15:19', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('121', '0', '1', '2016-06-29 16:15:20', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('122', '0', '1', '2016-06-29 16:15:20', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('123', '0', '1', '2016-06-29 16:15:23', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('124', '0', '1', '2016-06-29 16:15:24', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('125', '0', '1', '2016-06-29 16:15:24', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('126', '0', '1', '2016-06-29 16:15:24', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('127', '0', '1', '2016-06-29 16:15:25', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('128', '0', '1', '2016-06-29 16:15:26', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('129', '0', '1', '2016-06-29 16:15:27', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('130', '0', '1', '2016-06-29 16:15:27', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('131', '0', '1', '2016-06-29 16:15:28', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('132', '0', '1', '2016-06-29 16:15:28', '系统首页→官网管理→文章管理：首席执行官修改了ID:2，标题为:\"013213545\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('133', '8', '24', '2016-06-29 16:19:46', '系统首页→新闻管理→新闻添加：首席执行官增加了一条ID:1，标题名称为:\"tesssssssssssssst\"的新闻', '2');
INSERT INTO `operationlogs` VALUES ('134', '8', '23', '2016-06-29 16:26:31', '系统首页→新闻管理→新闻管理：首席执行官审核了ID:1，标题名称为:\"tesssssssssssssst\"的新闻', '2');
INSERT INTO `operationlogs` VALUES ('135', '8', '24', '2016-06-29 16:38:56', '系统首页→新闻管理→新闻添加：首席执行官增加了一条ID:2，标题名称为:\"22222222222222222\"的新闻', '2');
INSERT INTO `operationlogs` VALUES ('136', '3', '18', '2016-07-12 10:25:16', '系统首页→公文管理→分类管理：首席执行官添加了一条ID:1，名称为:\"公文1\"的公文分类', '2');
INSERT INTO `operationlogs` VALUES ('137', '3', '18', '2016-07-12 10:25:25', '系统首页→公文管理→分类管理：首席执行官添加了一条ID:2，名称为:\"公文2\"的公文分类', '2');
INSERT INTO `operationlogs` VALUES ('138', '3', '19', '2016-07-12 10:26:32', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:1，标题为:\"公文文呀\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('139', '3', '19', '2016-07-12 10:26:57', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:2，标题为:\"广告2\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('140', '3', '19', '2016-07-12 10:29:09', '系统首页→公文管理→公文管理：首席执行官删除了ID:2，标题为:\"广告2\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('141', '3', '19', '2016-07-12 10:29:43', '系统首页→公文管理→公文管理：首席执行官删除了ID:1，标题为:\"公文文呀\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('142', '3', '19', '2016-07-12 10:30:35', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:3，标题为:\"分隔符\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('143', '3', '19', '2016-07-12 13:00:23', '系统首页→公文管理→公文管理：首席执行官删除了ID:3，标题为:\"分隔符\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('144', '3', '19', '2016-07-12 13:22:20', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:4，标题为:\"的\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('145', '3', '19', '2016-07-12 13:42:50', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:5，标题为:\"的\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('146', '3', '19', '2016-07-12 13:42:53', '系统首页→公文管理→公文管理：首席执行官删除了ID:5，标题为:的的公文', '2');
INSERT INTO `operationlogs` VALUES ('147', '3', '19', '2016-07-12 13:44:22', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:6，标题为:\"hj\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('148', '3', '19', '2016-07-12 13:44:25', '系统首页→公文管理→公文管理：首席执行官删除了ID:6，标题为:hj的公文', '2');
INSERT INTO `operationlogs` VALUES ('149', '3', '19', '2016-07-12 13:46:52', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:7，标题为:\"df\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('150', '3', '19', '2016-07-12 13:46:57', '系统首页→公文管理→公文管理：首席执行官删除了ID:7，标题为:df的公文', '2');
INSERT INTO `operationlogs` VALUES ('151', '3', '19', '2016-07-12 13:48:38', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:8，标题为:\"df\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('152', '3', '19', '2016-07-12 13:52:28', '系统首页→公文管理→公文管理：首席执行官删除了ID:8，标题为:df的公文', '2');
INSERT INTO `operationlogs` VALUES ('153', '3', '19', '2016-07-12 13:54:23', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:9，标题为:\"d\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('154', '3', '19', '2016-07-12 13:54:26', '系统首页→公文管理→公文管理：首席执行官删除了ID:9，标题为:d的公文', '2');
INSERT INTO `operationlogs` VALUES ('155', '3', '19', '2016-07-12 13:55:07', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:10，标题为:\"df\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('156', '3', '19', '2016-07-12 13:55:13', '系统首页→公文管理→公文管理：首席执行官删除了ID:10，标题为:df的公文', '2');
INSERT INTO `operationlogs` VALUES ('157', '3', '19', '2016-07-12 13:55:27', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:11，标题为:\"dfd\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('158', '3', '19', '2016-07-12 13:55:48', '系统首页→公文管理→公文管理：首席执行官删除了ID:11，标题为:dfd的公文', '2');
INSERT INTO `operationlogs` VALUES ('159', '3', '19', '2016-07-12 13:56:00', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:12，标题为:\"fd\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('160', '3', '19', '2016-07-12 13:56:06', '系统首页→公文管理→公文管理：首席执行官删除了ID:12，标题为:fd的公文', '2');
INSERT INTO `operationlogs` VALUES ('161', '3', '19', '2016-07-12 13:56:23', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:13，标题为:\"df\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('162', '3', '19', '2016-07-12 13:56:29', '系统首页→公文管理→公文管理：首席执行官删除了ID:13，标题为:df的公文', '2');
INSERT INTO `operationlogs` VALUES ('163', '3', '19', '2016-07-12 13:57:09', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:14，标题为:\"fd\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('164', '3', '19', '2016-07-12 13:57:14', '系统首页→公文管理→公文管理：首席执行官删除了ID:14，标题为:fd的公文', '2');
INSERT INTO `operationlogs` VALUES ('165', '3', '19', '2016-07-12 13:58:00', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:15，标题为:\"f\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('166', '3', '19', '2016-07-12 13:58:03', '系统首页→公文管理→公文管理：首席执行官删除了ID:15，标题为:f的公文', '2');
INSERT INTO `operationlogs` VALUES ('167', '3', '19', '2016-07-12 13:58:11', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:16，标题为:\"dfd\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('168', '3', '19', '2016-07-12 13:58:23', '系统首页→公文管理→公文管理：首席执行官删除了ID:16，标题为:dfd的公文', '2');
INSERT INTO `operationlogs` VALUES ('169', '3', '19', '2016-07-12 13:58:31', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:17，标题为:\"fd\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('170', '3', '19', '2016-07-12 13:58:36', '系统首页→公文管理→公文管理：首席执行官批量删除了ID:17，标题名为:fd,的公文', '2');
INSERT INTO `operationlogs` VALUES ('171', '3', '19', '2016-07-12 14:04:57', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:18，标题为:\"fsfds\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('172', '3', '19', '2016-07-12 14:05:03', '系统首页→公文管理→公文管理：首席执行官删除了ID:18，标题为:fsfds的公文', '2');
INSERT INTO `operationlogs` VALUES ('173', '3', '19', '2016-07-12 14:07:54', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:19，标题为:\"4214\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('174', '3', '19', '2016-07-12 14:07:59', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:20，标题为:\"1414\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('175', '3', '19', '2016-07-12 14:08:03', '系统首页→公文管理→公文管理：首席执行官置顶了ID:20，标题为:\"1414\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('176', '3', '19', '2016-07-12 14:08:04', '系统首页→公文管理→公文管理：首席执行官置顶了ID:19，标题为:\"4214\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('177', '3', '19', '2016-07-12 14:08:05', '系统首页→公文管理→公文管理：首席执行官取消了ID:20，标题为:\"1414\"的公文的置顶', '2');
INSERT INTO `operationlogs` VALUES ('178', '3', '19', '2016-07-12 14:08:06', '系统首页→公文管理→公文管理：首席执行官置顶了ID:20，标题为:\"1414\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('179', '3', '19', '2016-07-12 14:08:06', '系统首页→公文管理→公文管理：首席执行官取消了ID:19，标题为:\"4214\"的公文的置顶', '2');
INSERT INTO `operationlogs` VALUES ('180', '3', '19', '2016-07-12 14:11:30', '系统首页→公文管理→公文添加：首席执行官新增了一条ID:21，标题为:\"465\"的公文', '2');
INSERT INTO `operationlogs` VALUES ('181', '4', '15', '2016-07-12 15:39:17', '系统首页→财务管理→报销管理：首席执行官添加了ID:5，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('182', '4', '15', '2016-07-12 15:39:19', '系统首页→财务管理→报销管理：首席执行官添加了ID:6，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('183', '4', '11', '2016-07-12 15:39:58', '系统首页→财务管理→账户管理：首席执行官新增了一条ID:2，用户名为:\"sichongcao\"的账户', '2');
INSERT INTO `operationlogs` VALUES ('184', '4', '15', '2016-07-12 15:40:32', '系统首页→财务管理→报销管理：首席执行官添加了ID:7，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('185', '4', '15', '2016-07-12 15:42:14', '系统首页→财务管理→报销管理：首席执行官添加了ID:8，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('186', '4', '15', '2016-07-12 15:42:17', '系统首页→财务管理→报销管理：首席执行官添加了ID:9，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('187', '4', '15', '2016-07-12 15:42:22', '系统首页→财务管理→报销管理：首席执行官添加了ID:10，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('188', '4', '15', '2016-07-12 15:43:22', '系统首页→财务管理→报销管理：首席执行官添加了ID:11，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('189', '4', '15', '2016-07-12 15:45:13', '系统首页→财务管理→报销管理：首席执行官添加了ID:12，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('190', '4', '15', '2016-07-12 15:45:48', '系统首页→财务管理→报销管理：首席执行官添加了ID:13，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('191', '4', '15', '2016-07-12 15:46:12', '系统首页→财务管理→报销管理：首席执行官添加了ID:14，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('192', '4', '15', '2016-07-12 15:46:35', '系统首页→财务管理→报销管理：首席执行官添加了ID:15，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('193', '4', '15', '2016-07-12 15:47:01', '系统首页→财务管理→报销管理：首席执行官添加了ID:16，申请人为:\"首席执行官\"的报销申请', '2');
INSERT INTO `operationlogs` VALUES ('194', '3', '19', '2016-07-13 10:19:58', '系统首页→公文管理→公文管理：首席执行官删除了ID:20，标题为:1414的公文', '2');
INSERT INTO `operationlogs` VALUES ('195', '1', '25', '2016-07-13 14:44:02', '系统首页→用户管理→用户管理：首席执行官修改了ID:7，中文名为:\"蒋丹丹\"的用户的密码', '2');
INSERT INTO `operationlogs` VALUES ('196', '10', '35', '2016-07-13 14:45:24', '系统首页→假期管理→假期管理：首席执行官新增了ID:1，假期名为:\"年假\"假期类型', '2');
INSERT INTO `operationlogs` VALUES ('197', '10', '31', '2016-07-13 14:45:40', '系统首页→请假加班→请假申请：首席执行官新增了ID:1，请假原因:\"地方\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('198', '10', '31', '2016-07-13 14:46:11', '系统首页→请假加班→请假申请：首席执行官新增了ID:2，请假原因:\"fd\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('199', '10', '35', '2016-07-13 14:46:32', '系统首页→假期管理→假期管理：首席执行官新增了ID:2，假期名为:\"病假\"假期类型', '2');
INSERT INTO `operationlogs` VALUES ('200', '10', '31', '2016-07-13 14:46:52', '系统首页→请假加班→请假申请：首席执行官新增了ID:3，请假原因:\"7\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('201', '10', '31', '2016-07-13 14:47:33', '系统首页→请假加班→请假申请：首席执行官新增了ID:4，请假原因:\"2\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('202', '10', '35', '2016-07-13 14:48:13', '系统首页→假期管理→假期管理：首席执行官修改了ID:1，假期名为:\"年假\"假期类型', '2');
INSERT INTO `operationlogs` VALUES ('203', '10', '36', '2016-07-13 14:48:44', '系统首页→休假管理→休假管理：首席执行官配置了用户ID:2，中文名为:\"首席执行官\"的用户年假的天数', '2');
INSERT INTO `operationlogs` VALUES ('204', '10', '31', '2016-07-13 14:49:00', '系统首页→请假加班→请假申请：首席执行官新增了ID:5，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('205', '10', '31', '2016-07-13 14:49:19', '系统首页→请假加班→请假申请：首席执行官新增了ID:6，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('206', '10', '31', '2016-07-13 14:49:27', '系统首页→请假加班→请假申请：首席执行官新增了ID:7，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('207', '10', '31', '2016-07-13 14:49:38', '系统首页→请假加班→请假申请：首席执行官新增了ID:8，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('208', '10', '31', '2016-07-13 14:49:53', '系统首页→请假加班→请假申请：首席执行官新增了ID:9，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('209', '10', '31', '2016-07-13 14:50:03', '系统首页→请假加班→请假申请：首席执行官新增了ID:10，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('210', '10', '31', '2016-07-13 14:50:11', '系统首页→请假加班→请假申请：首席执行官新增了ID:11，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('211', '10', '31', '2016-07-13 14:50:21', '系统首页→请假加班→请假申请：首席执行官新增了ID:12，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('212', '10', '31', '2016-07-13 14:50:29', '系统首页→请假加班→请假申请：首席执行官新增了ID:13，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('213', '10', '31', '2016-07-13 14:51:06', '系统首页→请假加班→请假申请：首席执行官新增了ID:14，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('214', '10', '31', '2016-07-13 14:51:15', '系统首页→请假加班→请假申请：首席执行官新增了ID:15，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('215', '10', '31', '2016-07-13 14:51:23', '系统首页→请假加班→请假申请：首席执行官新增了ID:16，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('216', '10', '31', '2016-07-13 14:51:34', '系统首页→请假加班→请假申请：首席执行官新增了ID:17，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('217', '10', '32', '2016-07-13 15:14:48', '系统首页→请加加班→加班申请：首席执行官新增了ID:1，原因为:\"11\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('218', '10', '32', '2016-07-13 15:15:02', '系统首页→请加加班→加班申请：首席执行官新增了ID:2，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('219', '10', '32', '2016-07-13 15:15:22', '系统首页→请加加班→加班申请：首席执行官新增了ID:3，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('220', '10', '32', '2016-07-13 15:15:37', '系统首页→请加加班→加班申请：首席执行官新增了ID:4，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('221', '10', '32', '2016-07-13 15:15:47', '系统首页→请加加班→加班申请：首席执行官新增了ID:5，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('222', '10', '32', '2016-07-13 15:15:57', '系统首页→请加加班→加班申请：首席执行官新增了ID:6，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('223', '10', '32', '2016-07-13 15:16:07', '系统首页→请加加班→加班申请：首席执行官新增了ID:7，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('224', '10', '32', '2016-07-13 15:16:15', '系统首页→请加加班→加班申请：首席执行官新增了ID:8，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('225', '10', '32', '2016-07-13 15:16:26', '系统首页→请加加班→加班申请：首席执行官新增了ID:9，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('226', '10', '32', '2016-07-13 15:16:43', '系统首页→请加加班→加班申请：首席执行官新增了ID:10，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('227', '10', '32', '2016-07-13 15:16:59', '系统首页→请加加班→加班申请：首席执行官新增了ID:11，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('228', '10', '32', '2016-07-13 15:17:15', '系统首页→请加加班→加班申请：首席执行官新增了ID:12，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('229', '10', '32', '2016-07-13 15:17:28', '系统首页→请加加班→加班申请：首席执行官新增了ID:13，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('230', '10', '32', '2016-07-13 15:17:39', '系统首页→请加加班→加班申请：首席执行官新增了ID:14，原因为:\"1\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('231', '10', '32', '2016-07-13 15:27:07', '系统首页→请加加班→加班申请：首席执行官新增了ID:15，原因为:\"4\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('232', '10', '32', '2016-07-13 15:27:20', '系统首页→请加加班→加班申请：首席执行官新增了ID:16，原因为:\"4\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('233', '10', '35', '2016-07-13 15:37:59', '系统首页→假期管理→假期管理：首席执行官新增了ID:3，假期名为:\"调休假\"假期类型', '2');
INSERT INTO `operationlogs` VALUES ('234', '10', '34', '2016-07-13 15:38:42', '系统首页→请加加班→加班审批：首席执行官审批了ID:16，加班原因为:\"4\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('235', '10', '34', '2016-07-13 15:38:43', '系统首页→请加加班→加班审批：首席执行官审批了ID:15，加班原因为:\"4\"的加班记录', '2');
INSERT INTO `operationlogs` VALUES ('236', '10', '31', '2016-07-13 15:39:00', '系统首页→请假加班→请假申请：首席执行官新增了ID:18，请假原因:\"1\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('237', '10', '33', '2016-07-13 15:40:44', '系统首页→请假加班→请假审批：首席执行官审批了ID:18，请假原因为:\"undefined\"的请假记录', '2');
INSERT INTO `operationlogs` VALUES ('238', '0', '1', '2016-07-13 16:51:13', '系统首页→官网管理→文章管理：首席执行官新增了ID:3，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('239', '0', '1', '2016-07-13 16:51:25', '系统首页→官网管理→文章管理：首席执行官新增了ID:4，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('240', '0', '1', '2016-07-13 16:51:37', '系统首页→官网管理→文章管理：首席执行官新增了ID:5，标题为:\"11\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('241', '0', '1', '2016-07-13 16:52:03', '系统首页→官网管理→文章管理：首席执行官新增了ID:6，标题为:\"15\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('242', '0', '1', '2016-07-13 16:52:09', '系统首页→官网管理→文章管理：首席执行官新增了ID:7，标题为:\"12\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('243', '0', '1', '2016-07-13 16:52:20', '系统首页→官网管理→文章管理：首席执行官新增了ID:8，标题为:\"12\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('244', '0', '1', '2016-07-13 16:52:26', '系统首页→官网管理→文章管理：首席执行官新增了ID:9，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('245', '0', '1', '2016-07-13 16:52:36', '系统首页→官网管理→文章管理：首席执行官新增了ID:10，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('246', '0', '1', '2016-07-13 16:52:43', '系统首页→官网管理→文章管理：首席执行官新增了ID:11，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('247', '0', '1', '2016-07-13 16:52:52', '系统首页→官网管理→文章管理：首席执行官新增了ID:12，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('248', '0', '1', '2016-07-13 16:53:02', '系统首页→官网管理→文章管理：首席执行官新增了ID:13，标题为:\"14\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('249', '0', '1', '2016-07-13 16:53:08', '系统首页→官网管理→文章管理：首席执行官新增了ID:14，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('250', '0', '1', '2016-07-13 16:53:08', '系统首页→官网管理→文章管理：首席执行官新增了ID:15，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('251', '0', '1', '2016-07-13 16:53:15', '系统首页→官网管理→文章管理：首席执行官新增了ID:16，标题为:\"1\"的文章', '2');
INSERT INTO `operationlogs` VALUES ('252', '5', '8', '2016-07-14 10:50:26', '系统首页→人事管理→档案管理：首席执行官新增了ID:9，中文名为:\"大幅度\"的员工档案', '2');
INSERT INTO `operationlogs` VALUES ('253', '5', '9', '2016-07-14 11:19:39', '系统首页→人事管理→入职管理：首席执行官新增了ID:10，中文名为:\"链路\"的入职申请', '2');
INSERT INTO `operationlogs` VALUES ('254', '5', '26', '2016-07-14 14:04:10', '系统首页→人事管理→入职审批：首席执行官审批了ID:1，中文名为:\"张志林\"的入职申请', '2');
INSERT INTO `operationlogs` VALUES ('255', '5', '26', '2016-07-14 14:05:41', '系统首页→人事管理→入职审批：首席执行官审批了ID:1，中文名为:\"张志林\"的入职申请', '2');
INSERT INTO `operationlogs` VALUES ('256', '5', '8', '2016-07-14 14:07:08', '系统首页→人事管理→档案管理：首席执行官修改了ID:10，中文名为:\"链路\"的员工档案', '2');
INSERT INTO `operationlogs` VALUES ('257', '5', '8', '2016-07-14 14:07:27', '系统首页→人事管理→档案管理：首席执行官修改了ID:10，中文名为:\"链路\"的员工档案', '2');
INSERT INTO `operationlogs` VALUES ('258', '5', '10', '2016-07-14 14:13:29', '系统首页→人事管理→离职管理：首席执行官新增了ID:9，中文名为:大幅度,的离职申请', '2');
INSERT INTO `operationlogs` VALUES ('259', '1', '25', '2016-07-15 15:58:17', '系统首页→用户管理→用户管理：首席执行官对ID:7，中文名为:\"蒋丹丹\"的用户的角色进行了一次操作', '2');
INSERT INTO `operationlogs` VALUES ('260', '2', '21', '2016-07-15 16:05:23', '系统首页→组织管理→组织修改：蒋丹丹修改了ID:4，组织名称为:\"QCPJ\"的组织', '7');
INSERT INTO `operationlogs` VALUES ('261', '2', '21', '2016-07-15 16:05:32', '系统首页→组织管理→组织修改：蒋丹丹修改了ID:4，组织名称为:\"QCPJ\"的组织', '7');
INSERT INTO `operationlogs` VALUES ('262', '4', '15', '2016-07-15 16:26:31', '系统首页→财务管理→报销管理：蒋丹丹审核了ID:11，申请人为:\"首席执行官\"的报销申请', '7');
INSERT INTO `operationlogs` VALUES ('263', '4', '15', '2016-07-15 16:26:43', '系统首页→财务管理→报销管理：蒋丹丹审核了ID:11，申请人为:\"首席执行官\"的报销申请', '7');
INSERT INTO `operationlogs` VALUES ('264', '4', '15', '2016-07-15 16:32:06', '系统首页→财务管理→报销管理：蒋丹丹支付了ID:11，申请人为:\"首席执行官\"的报销申请', '7');
INSERT INTO `operationlogs` VALUES ('265', '8', '22', '2016-07-27 15:47:12', '系统首页→新闻管理→分类管理：蒋丹丹进行了一次添加新闻分类的操作', '7');
INSERT INTO `operationlogs` VALUES ('266', '8', '22', '2016-07-27 15:47:20', '系统首页→新闻管理→分类管理：蒋丹丹进行了一次添加新闻分类的操作', '7');
INSERT INTO `operationlogs` VALUES ('267', '8', '22', '2016-07-27 15:47:28', '系统首页→新闻管理→分类管理：蒋丹丹进行了一次添加新闻分类的操作', '7');
INSERT INTO `operationlogs` VALUES ('268', '8', '24', '2016-07-27 15:48:19', '系统首页→新闻管理→新闻添加：蒋丹丹增加了一条ID:3，标题名称为:\"rt\"的新闻', '7');
INSERT INTO `operationlogs` VALUES ('269', '8', '23', '2016-07-27 15:48:39', '系统首页→新闻管理→新闻管理：蒋丹丹置顶了ID:3，标题名称为:\"rt\"的新闻', '7');
INSERT INTO `operationlogs` VALUES ('270', '8', '23', '2016-07-27 15:49:09', '系统首页→新闻管理→新闻管理：蒋丹丹审核了ID:3，标题名称为:\"rt\"的新闻', '7');
INSERT INTO `operationlogs` VALUES ('271', '8', '23', '2016-07-27 15:49:14', '系统首页→新闻管理→新闻管理：蒋丹丹删除了ID:3，标题名称为:\"rt\"的新闻', '7');
INSERT INTO `operationlogs` VALUES ('272', '4', '15', '2016-07-27 17:13:40', '系统首页→财务管理→报销管理：蒋丹丹审核了ID:16，申请人为:\"首席执行官\"的报销申请', '7');
INSERT INTO `operationlogs` VALUES ('273', '8', '22', '2016-07-28 11:29:11', '系统首页→新闻管理→分类管理：蒋丹丹进行了一次添加新闻分类的操作', '7');
INSERT INTO `operationlogs` VALUES ('274', '3', '19', '2016-07-28 16:10:29', '系统首页→公文管理→公文管理：蒋丹丹置顶了ID:21，标题为:\"465\"的公文', '7');
INSERT INTO `operationlogs` VALUES ('275', '3', '19', '2016-07-28 16:10:31', '系统首页→公文管理→公文管理：蒋丹丹取消了ID:21，标题为:\"465\"的公文的置顶', '7');
INSERT INTO `operationlogs` VALUES ('276', '2', '21', '2016-07-28 16:34:46', '系统首页→组织管理→组织添加：蒋丹丹添加了一条ID:8，组织名称为:\"dddddde\"的组织', '7');
INSERT INTO `operationlogs` VALUES ('277', '8', '24', '2016-07-28 16:35:07', '系统首页→新闻管理→新闻添加：蒋丹丹增加了一条ID:4，标题名称为:\"d\"的新闻', '7');
INSERT INTO `operationlogs` VALUES ('278', '8', '23', '2016-07-28 16:35:25', '系统首页→新闻管理→新闻管理：蒋丹丹审核了ID:4，标题名称为:\"d\"的新闻', '7');
INSERT INTO `operationlogs` VALUES ('279', '8', '23', '2016-07-28 16:35:26', '系统首页→新闻管理→新闻管理：蒋丹丹审核了ID:4，标题名称为:\"d\"的新闻', '7');
INSERT INTO `operationlogs` VALUES ('280', '3', '19', '2016-07-28 16:36:46', '系统首页→公文管理→公文管理：蒋丹丹置顶了ID:19，标题为:\"4214\"的公文', '7');
INSERT INTO `operationlogs` VALUES ('281', '8', '23', '2016-07-28 16:37:08', '系统首页→新闻管理→新闻管理：首席执行官审核了ID:2，标题名称为:\"22222222222222222\"的新闻', '2');
INSERT INTO `operationlogs` VALUES ('282', '1', '25', '2016-09-09 13:53:12', '系统首页→用户管理→用户管理：超级管理员对ID:9，中文名为:\"陈欲菠\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('283', '1', '25', '2016-09-09 13:53:41', '系统首页→用户管理→用户管理：超级管理员对ID:3，中文名为:\"张志林\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('284', '1', '25', '2016-09-09 13:53:50', '系统首页→用户管理→用户管理：超级管理员修改了ID:9，中文名为:\"陈欲菠\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('285', '1', '25', '2016-09-09 13:53:59', '系统首页→用户管理→用户管理：超级管理员修改了ID:3，中文名为:\"张志林\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('286', '1', '25', '2016-09-09 15:43:39', '系统首页→用户管理→用户管理：超级管理员对ID:6，中文名为:\"高洋\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('287', '1', '25', '2016-09-09 15:43:52', '系统首页→用户管理→用户管理：超级管理员修改了ID:9，中文名为:\"陈欲菠\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('288', '1', '25', '2016-09-09 15:44:04', '系统首页→用户管理→用户管理：超级管理员修改了ID:5，中文名为:\"陈飞\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('289', '1', '25', '2016-09-09 15:44:13', '系统首页→用户管理→用户管理：超级管理员修改了ID:6，中文名为:\"高洋\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('290', '1', '25', '2016-10-11 16:41:31', '系统首页→用户管理→用户管理：超级管理员添加了一个ID：12，中文名为：\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('291', '2', '21', '2016-10-13 14:49:53', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:9，组织名称为:\"市场部\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('292', '2', '21', '2016-10-13 14:50:01', '系统首页→组织管理→组织修改：超级管理员修改了ID:9，组织名称为:\"市场部\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('293', '0', '3', '2016-10-13 14:54:10', '系统首页→官网管理→部门管理：超级管理员新增了ID:1，名称为:\"XX部门\"的部门', '1');
INSERT INTO `operationlogs` VALUES ('294', '1', '25', '2016-10-13 15:01:41', '系统首页→用户管理→用户管理：超级管理员删除了ID:11，中文名为:\"大幅度\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('295', '1', '25', '2016-10-13 15:03:51', '系统首页→用户管理→用户管理：超级管理员停用了ID:12，中文名为:\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('296', '1', '25', '2016-10-13 15:03:54', '系统首页→用户管理→用户管理：超级管理员启用了ID:12，中文名为:\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('297', '2', '21', '2016-10-13 15:04:55', '系统首页→组织管理→组织修改：超级管理员修改了ID:9，组织名称为:\"市场部\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('298', '2', '21', '2016-10-13 15:05:43', '系统首页→组织管理→组织修改：超级管理员修改了ID:9，组织名称为:\"市场部\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('299', '2', '21', '2016-10-13 15:06:03', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:10，组织名称为:\"市场二部\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('300', '2', '21', '2016-10-13 15:06:35', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:11，组织名称为:\"市场二部-1团队\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('301', '2', '21', '2016-10-13 15:07:36', '系统首页→组织管理→组织修改：超级管理员修改了ID:11，组织名称为:\"市场二部-1团队\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('302', '2', '21', '2016-10-13 15:07:56', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:12，组织名称为:\"市场一部\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('303', '2', '21', '2016-10-13 15:08:21', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:13，组织名称为:\"市场一部-A团队\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('304', '1', '25', '2016-10-13 15:09:58', '系统首页→用户管理→用户管理：超级管理员对ID:12，中文名为:\"吴捷\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('305', '2', '21', '2016-10-13 15:10:55', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:14，组织名称为:\"市场部办公室\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('306', '1', '25', '2016-10-13 15:13:41', '系统首页→用户管理→用户管理：超级管理员停用了ID:12，中文名为:\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('307', '1', '25', '2016-10-13 15:13:43', '系统首页→用户管理→用户管理：超级管理员启用了ID:12，中文名为:\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('308', '1', '25', '2016-10-13 15:14:01', '系统首页→用户管理→用户管理：超级管理员对ID:12，中文名为:\"吴捷\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('309', '10', '31', '2016-10-13 15:16:20', '系统首页→请假加班→请假申请：吴捷新增了ID:19，请假原因:\"1111\"的请假申请', '12');
INSERT INTO `operationlogs` VALUES ('310', '10', '31', '2016-10-13 15:16:20', '系统首页→请假加班→请假申请：吴捷新增了ID:20，请假原因:\"1111\"的请假申请', '12');
INSERT INTO `operationlogs` VALUES ('311', '10', '31', '2016-10-13 15:16:22', '系统首页→请假加班→请假申请：吴捷新增了ID:21，请假原因:\"1111\"的请假申请', '12');
INSERT INTO `operationlogs` VALUES ('312', '1', '25', '2016-10-13 15:17:18', '系统首页→用户管理→用户管理：超级管理员对ID:12，中文名为:\"吴捷\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('313', '1', '25', '2016-10-13 15:17:31', '系统首页→用户管理→用户管理：超级管理员修改了ID:12，中文名为:\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('314', '1', '25', '2016-10-13 15:18:06', '系统首页→用户管理→用户管理：超级管理员添加了一个ID：13，中文名为：\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('315', '1', '25', '2016-10-13 15:18:17', '系统首页→用户管理→用户管理：超级管理员对ID:13，中文名为:\"吴捷\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('316', '1', '25', '2016-10-13 15:18:39', '系统首页→用户管理→用户管理：超级管理员对ID:12，中文名为:\"吴捷\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('317', '1', '25', '2016-10-13 15:18:55', '系统首页→用户管理→用户管理：超级管理员对ID:12，中文名为:\"吴捷\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('318', '1', '25', '2016-10-13 15:20:39', '系统首页→用户管理→用户管理：超级管理员对ID:12，中文名为:\"吴捷\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('319', '1', '25', '2016-10-13 15:28:06', '系统首页→用户管理→用户管理：超级管理员对ID:7，中文名为:\"蒋丹丹\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('320', '10', '31', '2016-10-13 15:36:41', '系统首页→请假加班→请假申请：首席执行官新增了ID:22，请假原因:\"d\"的请假申请', '2');
INSERT INTO `operationlogs` VALUES ('321', '1', '25', '2016-10-13 15:48:52', '系统首页→用户管理→用户管理：超级管理员对ID:13，中文名为:\"吴捷\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('322', '4', '15', '2016-10-13 15:56:03', '系统首页→财务管理→报销管理：吴捷支付了ID:16，申请人为:\"首席执行官\"的报销申请', '13');
INSERT INTO `operationlogs` VALUES ('323', '5', '8', '2016-10-17 14:40:48', '系统首页→人事管理→档案管理：超级管理员新增了ID:11，中文名为:\"测试入职1\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('324', '9', '29', '2016-10-17 14:43:12', '系统首页→系统配置→系统配置：超级管理员修改了页面配置', '1');
INSERT INTO `operationlogs` VALUES ('325', '9', '29', '2016-10-17 14:44:42', '系统首页→系统配置→系统配置：超级管理员修改了页面配置', '1');
INSERT INTO `operationlogs` VALUES ('326', '5', '10', '2016-10-17 14:48:35', '系统首页→人事管理→离职管理：超级管理员新增了ID:8，中文名为:陈杰,的离职申请', '1');
INSERT INTO `operationlogs` VALUES ('327', '2', '21', '2016-10-17 16:59:02', '系统首页→组织管理→组织修改：吴捷修改了ID:9，组织名称为:\"市场部\"的组织', '12');
INSERT INTO `operationlogs` VALUES ('328', '2', '21', '2016-10-17 16:59:11', '系统首页→组织管理→组织修改：吴捷修改了ID:14，组织名称为:\"市场部办公室\"的组织', '12');
INSERT INTO `operationlogs` VALUES ('329', '2', '21', '2016-10-17 16:59:22', '系统首页→组织管理→组织修改：吴捷修改了ID:11，组织名称为:\"市场二部-B团队\"的组织', '12');
INSERT INTO `operationlogs` VALUES ('330', '1', '25', '2016-10-17 16:59:52', '系统首页→用户管理→用户管理：吴捷修改了ID:4，中文名为:\"曹思翀\"的用户的密码', '12');
INSERT INTO `operationlogs` VALUES ('331', '10', '32', '2016-10-17 17:02:06', '系统首页→请加加班→加班申请：吴捷新增了ID:17，原因为:\"112233\"的加班记录', '12');
INSERT INTO `operationlogs` VALUES ('332', '9', '29', '2016-10-19 09:17:25', '系统首页→系统配置→系统配置：吴捷修改了页面配置', '12');
INSERT INTO `operationlogs` VALUES ('333', '5', '8', '2016-10-19 09:43:24', '系统首页→人事管理→档案管理：超级管理员新增了ID:12，中文名为:\"赵璐\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('334', '5', '8', '2016-10-19 09:44:05', '系统首页→人事管理→档案管理：超级管理员修改了ID:12，中文名为:\"赵璐\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('335', '5', '8', '2016-10-19 09:45:31', '系统首页→人事管理→档案管理：超级管理员进行了一次档案导入的操作', '1');
INSERT INTO `operationlogs` VALUES ('336', '5', '8', '2016-10-19 09:46:46', '系统首页→人事管理→档案管理：超级管理员批量删除了ID:13，中文名为:小明,ID:12，中文名为:赵璐,的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('337', '5', '9', '2016-10-19 09:53:39', '系统首页→人事管理→入职管理：超级管理员新增了ID:14，中文名为:\"赵璐\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('338', '5', '26', '2016-10-19 10:28:10', '系统首页→人事管理→入职审批：超级管理员审批了ID:4，中文名为:\"高洋\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('339', '5', '26', '2016-10-19 10:28:34', '系统首页→人事管理→入职审批：超级管理员审批了ID:4，中文名为:\"高洋\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('340', '1', '25', '2016-10-19 10:31:11', '系统首页→用户管理→用户管理：超级管理员对ID:15，中文名为:\"赵璐\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('341', '1', '25', '2016-10-19 10:32:36', '系统首页→用户管理→用户管理：超级管理员对ID:15，中文名为:\"赵璐\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('342', '1', '25', '2016-10-19 10:32:58', '系统首页→用户管理→用户管理：超级管理员修改了ID:15，中文名为:\"赵璐\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('343', '1', '25', '2016-10-19 10:33:27', '系统首页→用户管理→用户管理：超级管理员停用了ID:16，中文名为:\"小明\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('344', '1', '25', '2016-10-19 10:37:53', '系统首页→用户管理→用户管理：超级管理员启用了ID:16，中文名为:\"小明\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('345', '1', '25', '2016-10-19 10:37:59', '系统首页→用户管理→用户管理：超级管理员批量停用了ID:15，中文名为:赵璐,ID:16，中文名为:小明,的用户', '1');
INSERT INTO `operationlogs` VALUES ('346', '1', '25', '2016-10-19 10:38:08', '系统首页→用户管理→用户管理：超级管理员批量启用了ID:15，中文名为:赵璐,ID:16，中文名为:小明,的用户', '1');
INSERT INTO `operationlogs` VALUES ('347', '1', '25', '2016-10-19 10:38:48', '系统首页→用户管理→用户管理：超级管理员添加了一个ID：17，中文名为：\"赵晓璐\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('348', '1', '25', '2016-10-19 10:39:13', '系统首页→用户管理→用户管理：超级管理员批量删除了ID:16，中文名为:小明,的用户', '1');
INSERT INTO `operationlogs` VALUES ('349', '1', '25', '2016-10-19 10:46:00', '系统首页→用户管理→用户管理：超级管理员删除了ID:17，中文名为:\"赵晓璐\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('350', '4', '11', '2016-10-19 10:47:30', '系统首页→财务管理→账户管理：超级管理员新增了一条ID:3，用户名为:\"admin\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('351', '4', '11', '2016-10-19 10:47:43', '系统首页→财务管理→账户管理：超级管理员删除了ID:3，用户名为:\"超级管理员\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('352', '4', '12', '2016-10-19 10:48:05', '系统首页→财务管理→银行管理：超级管理员新增了一条ID:5，名称为:\"招商银行\"的银行', '1');
INSERT INTO `operationlogs` VALUES ('353', '4', '12', '2016-10-19 10:48:16', '系统首页→财务管理→银行管理：超级管理员删除了ID:5，名称为:\"招商银行\"的银行', '1');
INSERT INTO `operationlogs` VALUES ('354', '4', '13', '2016-10-19 10:49:40', '系统首页→财务管理→费用管理：超级管理员添加了ID:15，名称为:\"UI电话费\"的费用类型', '1');
INSERT INTO `operationlogs` VALUES ('355', '4', '14', '2016-10-19 10:53:33', '系统首页→财务管理→货币管理：超级管理员新增了一条ID:2，名称为:\"美元\"的货币', '1');
INSERT INTO `operationlogs` VALUES ('356', '1', '25', '2016-10-19 11:16:56', '系统首页→用户管理→用户管理：赵璐批量停用了ID:14，中文名为:测试入职1,的用户', '15');
INSERT INTO `operationlogs` VALUES ('357', '5', '26', '2016-10-19 14:51:00', '系统首页→人事管理→入职审批：超级管理员审批了ID:4，中文名为:\"高洋\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('358', '5', '26', '2016-10-19 14:51:14', '系统首页→人事管理→入职审批：超级管理员审批了ID:4，中文名为:\"高洋\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('359', '5', '9', '2016-10-19 14:57:26', '系统首页→人事管理→入职管理：超级管理员新增了ID:15，中文名为:\"赵敏\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('360', '5', '26', '2016-10-19 14:58:06', '系统首页→人事管理→入职审批：超级管理员审批了ID:5，中文名为:\"蒋丹丹\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('361', '1', '25', '2016-10-19 15:26:52', '系统首页→用户管理→用户管理：赵璐批量启用了ID:15，中文名为:赵璐,的用户', '15');
INSERT INTO `operationlogs` VALUES ('362', '4', '15', '2016-10-19 15:47:18', '系统首页→财务管理→报销管理：超级管理员支付了ID:1，申请人为:\"陈飞\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('363', '4', '15', '2016-10-19 15:51:25', '系统首页→财务管理→报销管理：超级管理员审核了ID:15，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('364', '3', '18', '2016-10-19 15:57:15', '系统首页→公文管理→分类管理：超级管理员修改了ID:2，名称为:\"公文2 集团很开心\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('365', '3', '19', '2016-10-19 15:57:44', '系统首页→公文管理→公文管理：超级管理员审批了ID:19，标题为:\"4214\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('366', '3', '19', '2016-10-19 16:00:41', '系统首页→公文管理→公文添加：超级管理员新增了一条ID:22，标题为:\"提示\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('367', '3', '19', '2016-10-19 16:00:50', '系统首页→公文管理→公文管理：超级管理员审批了ID:22，标题为:\"提示\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('368', '10', '31', '2016-10-19 16:02:51', '系统首页→请假加班→请假申请：超级管理员新增了ID:23，请假原因:\"试试\"的请假申请', '1');
INSERT INTO `operationlogs` VALUES ('369', '1', '25', '2016-10-24 16:44:28', '系统首页→用户管理→用户管理：赵璐批量启用了ID:15，中文名为:赵璐,的用户', '15');
INSERT INTO `operationlogs` VALUES ('370', '5', '26', '2016-10-24 16:46:44', '系统首页→人事管理→入职审批：超级管理员审批了ID:4，中文名为:\"高洋\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('371', '5', '26', '2016-10-24 16:47:51', '系统首页→人事管理→入职审批：首席执行官审批了ID:4，中文名为:\"高洋\"的入职申请', '2');
INSERT INTO `operationlogs` VALUES ('372', '5', '26', '2016-10-24 16:48:38', '系统首页→人事管理→入职审批：首席执行官审批了ID:4，中文名为:\"高洋\"的入职申请', '2');
INSERT INTO `operationlogs` VALUES ('373', '5', '8', '2016-10-24 16:49:07', '系统首页→人事管理→档案管理：首席执行官删除了ID:14，中文名为:\"赵璐\"的员工档案', '2');
INSERT INTO `operationlogs` VALUES ('374', '5', '8', '2016-10-24 16:50:15', '系统首页→人事管理→档案管理：首席执行官新增了ID:16，中文名为:\"赵璐\"的员工档案', '2');
INSERT INTO `operationlogs` VALUES ('375', '1', '25', '2016-10-24 16:51:48', '系统首页→用户管理→用户管理：首席执行官修改了ID:18，中文名为:\"赵璐\"的用户', '2');
INSERT INTO `operationlogs` VALUES ('376', '1', '25', '2016-10-24 16:52:47', '系统首页→用户管理→用户管理：首席执行官修改了ID:15，中文名为:\"赵璐\"的用户', '2');
INSERT INTO `operationlogs` VALUES ('377', '1', '25', '2016-10-24 16:53:32', '系统首页→用户管理→用户管理：超级管理员修改了ID:18，中文名为:\"赵璐\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('378', '0', '0', '2016-10-24 17:06:58', '系统首页→官网管理→分类管理：吴捷新增了ID:20，标题为:\"kk\"的文章分类', '12');
INSERT INTO `operationlogs` VALUES ('379', '0', '1', '2016-10-24 17:09:40', '系统首页→官网管理→文章管理：吴捷置顶了ID:16，标题为:\"1\"的文章', '12');
INSERT INTO `operationlogs` VALUES ('380', '0', '1', '2016-10-24 17:09:48', '系统首页→官网管理→文章管理：吴捷审核了ID:16，标题为:\"1\"的文章', '12');
INSERT INTO `operationlogs` VALUES ('381', '0', '1', '2016-10-24 17:10:18', '系统首页→官网管理→文章管理：吴捷修改了ID:16，标题为:\"1\"的文章', '12');
INSERT INTO `operationlogs` VALUES ('382', '0', '3', '2016-10-24 17:11:42', '系统首页→官网管理→部门管理：吴捷修改了ID:1，名称为:\"招聘部门\"的部门', '12');
INSERT INTO `operationlogs` VALUES ('383', '0', '3', '2016-10-24 17:11:53', '系统首页→官网管理→部门管理：吴捷新增了ID:2，名称为:\"管理部门\"的部门', '12');
INSERT INTO `operationlogs` VALUES ('384', '0', '4', '2016-10-24 17:13:24', '系统首页→官网管理→招聘管理：吴捷新增了ID:1，职位为:\"初级\"的招聘信息', '12');
INSERT INTO `operationlogs` VALUES ('385', '5', '8', '2016-10-24 17:18:40', '系统首页→人事管理→档案管理：吴捷进行了一次档案导入的操作', '12');
INSERT INTO `operationlogs` VALUES ('386', '5', '8', '2016-10-24 17:19:05', '系统首页→人事管理→档案管理：吴捷删除了ID:15，中文名为:\"赵敏\"的员工档案', '12');
INSERT INTO `operationlogs` VALUES ('387', '5', '8', '2016-10-24 17:19:30', '系统首页→人事管理→档案管理：吴捷修改了ID:16，中文名为:\"赵璐\"的员工档案', '12');
INSERT INTO `operationlogs` VALUES ('388', '5', '8', '2016-10-24 17:20:08', '系统首页→人事管理→档案管理：吴捷修改了ID:16，中文名为:\"赵璐\"的员工档案', '12');
INSERT INTO `operationlogs` VALUES ('389', '5', '10', '2016-10-24 17:23:00', '系统首页→人事管理→离职管理：吴捷新增了ID:11，中文名为:测试入职1,的离职申请', '12');
INSERT INTO `operationlogs` VALUES ('390', '4', '11', '2016-10-24 17:26:36', '系统首页→财务管理→账户管理：吴捷修改了ID:1，用户名为:\"feichen\"的账户', '12');
INSERT INTO `operationlogs` VALUES ('391', '4', '11', '2016-10-24 17:26:53', '系统首页→财务管理→账户管理：吴捷修改了ID:2，用户名为:\"sichongcao\"的账户', '12');
INSERT INTO `operationlogs` VALUES ('392', '4', '11', '2016-10-24 17:27:05', '系统首页→财务管理→账户管理：吴捷删除了ID:1，用户名为:\"陈飞\"的账户', '12');
INSERT INTO `operationlogs` VALUES ('393', '0', '0', '2016-10-25 09:19:52', '系统首页→官网管理→分类管理：超级管理员修改了ID:20，标题为:\"kk\"的文章分类', '1');
INSERT INTO `operationlogs` VALUES ('394', '0', '1', '2016-10-25 09:22:31', '系统首页→官网管理→文章管理：超级管理员新增了ID:17，标题为:\"2222\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('395', '0', '1', '2016-10-25 09:24:13', '系统首页→官网管理→文章管理：超级管理员审核了ID:16，标题为:\"1\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('396', '0', '3', '2016-10-25 09:24:59', '系统首页→官网管理→部门管理：超级管理员新增了ID:3，名称为:\"测试部门\"的部门', '1');
INSERT INTO `operationlogs` VALUES ('397', '0', '3', '2016-10-25 09:25:10', '系统首页→官网管理→部门管理：超级管理员修改了ID:2，名称为:\"管理部门1\"的部门', '1');
INSERT INTO `operationlogs` VALUES ('398', '0', '3', '2016-10-25 09:25:16', '系统首页→官网管理→部门管理：超级管理员修改了ID:2，名称为:\"管理部门1\"的部门', '1');
INSERT INTO `operationlogs` VALUES ('399', '0', '3', '2016-10-25 09:25:27', '系统首页→官网管理→部门管理：超级管理员修改了ID:2，名称为:\"管理部门1\"的部门', '1');
INSERT INTO `operationlogs` VALUES ('400', '0', '3', '2016-10-25 09:25:32', '系统首页→官网管理→部门管理：超级管理员删除了ID:2，名称为:\"管理部门1\"的部门', '1');
INSERT INTO `operationlogs` VALUES ('401', '0', '4', '2016-10-25 09:27:56', '系统首页→官网管理→招聘管理：超级管理员新增了ID:2，职位为:\"测试岗\"的招聘信息', '1');
INSERT INTO `operationlogs` VALUES ('402', '0', '1', '2016-10-25 09:33:42', '系统首页→官网管理→文章管理：超级管理员置顶了ID:9，标题为:\"1\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('403', '0', '1', '2016-10-25 09:33:58', '系统首页→官网管理→文章管理：超级管理员置顶了ID:17，标题为:\"2222\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('404', '0', '1', '2016-10-25 09:34:05', '系统首页→官网管理→文章管理：超级管理员审核了ID:17，标题为:\"2222\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('405', '0', '1', '2016-10-25 09:34:13', '系统首页→官网管理→文章管理：超级管理员置顶了ID:6，标题为:\"15\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('406', '5', '8', '2016-10-25 09:52:27', '系统首页→人事管理→档案管理：超级管理员批量删除了ID:10，中文名为:链路,ID:9，中文名为:大幅度,的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('407', '5', '8', '2016-10-25 10:02:39', '系统首页→人事管理→档案管理：超级管理员新增了ID:18，中文名为:\"天天\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('408', '5', '8', '2016-10-25 10:06:47', '系统首页→人事管理→档案管理：超级管理员删除了ID:11，中文名为:\"测试入职1\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('409', '5', '8', '2016-10-25 10:08:56', '系统首页→人事管理→档案管理：超级管理员新增了ID:19，中文名为:\"辅导费\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('410', '5', '8', '2016-10-25 10:10:44', '系统首页→人事管理→档案管理：超级管理员修改了ID:19，中文名为:\"辅导费\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('411', '5', '8', '2016-10-25 10:11:24', '系统首页→人事管理→档案管理：超级管理员修改了ID:19，中文名为:\"辅导费\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('412', '5', '8', '2016-10-25 10:16:37', '系统首页→人事管理→档案管理：超级管理员修改了ID:17，中文名为:\"小明\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('413', '5', '8', '2016-10-25 10:17:11', '系统首页→人事管理→档案管理：超级管理员修改了ID:18，中文名为:\"天天\"的员工档案', '1');
INSERT INTO `operationlogs` VALUES ('414', '5', '9', '2016-10-25 10:18:02', '系统首页→人事管理→入职管理：超级管理员新增了ID:20，中文名为:\"高圆圆\"的入职申请', '1');
INSERT INTO `operationlogs` VALUES ('415', '5', '10', '2016-10-25 10:26:48', '系统首页→人事管理→离职管理：吴捷新增了ID:17，中文名为:小明,的离职申请', '12');
INSERT INTO `operationlogs` VALUES ('416', '5', '9', '2016-10-25 10:27:47', '系统首页→人事管理→入职管理：吴捷新增了ID:21，中文名为:\"如若\"的入职申请', '12');
INSERT INTO `operationlogs` VALUES ('417', '5', '10', '2016-10-25 10:28:57', '系统首页→人事管理→离职管理：超级管理员新增了ID:18，中文名为:天天,ID:19，中文名为:辅导费,的离职申请', '1');
INSERT INTO `operationlogs` VALUES ('418', '4', '11', '2016-10-25 10:32:00', '系统首页→财务管理→账户管理：超级管理员修改了ID:2，用户名为:\"sichongcao\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('419', '4', '11', '2016-10-25 10:32:31', '系统首页→财务管理→账户管理：超级管理员修改了ID:2，用户名为:\"ttt\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('420', '4', '11', '2016-10-25 10:33:37', '系统首页→财务管理→账户管理：超级管理员新增了一条ID:4，用户名为:\"admin\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('421', '4', '11', '2016-10-25 10:34:25', '系统首页→财务管理→账户管理：超级管理员新增了一条ID:5，用户名为:\"zhaolu\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('422', '4', '11', '2016-10-25 10:38:34', '系统首页→财务管理→账户管理：超级管理员批量删除了ID:5，用户名为:赵璐,的账户', '1');
INSERT INTO `operationlogs` VALUES ('423', '4', '11', '2016-10-25 10:39:01', '系统首页→财务管理→账户管理：超级管理员新增了一条ID:6，用户名为:\"kkkkk\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('424', '4', '11', '2016-10-25 10:40:40', '系统首页→财务管理→账户管理：超级管理员删除了ID:6，用户名为:\"小明\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('425', '4', '12', '2016-10-25 10:48:42', '系统首页→财务管理→银行管理：超级管理员修改了ID:6，名称为:\"杭州1银行\"的银行', '1');
INSERT INTO `operationlogs` VALUES ('426', '4', '12', '2016-10-25 10:49:07', '系统首页→财务管理→银行管理：超级管理员修改了ID:6，名称为:\"杭州银行\"的银行', '1');
INSERT INTO `operationlogs` VALUES ('427', '4', '13', '2016-10-25 10:49:38', '系统首页→财务管理→费用管理：超级管理员修改了ID:15，名称为:\"UI电话费\"的费用类型', '1');
INSERT INTO `operationlogs` VALUES ('428', '4', '13', '2016-10-25 10:49:59', '系统首页→财务管理→费用管理：超级管理员修改了ID:12，名称为:\"\"的费用类型', '1');
INSERT INTO `operationlogs` VALUES ('429', '4', '13', '2016-10-25 10:50:05', '系统首页→财务管理→费用管理：超级管理员修改了ID:12，名称为:\"差旅费\"的费用类型', '1');
INSERT INTO `operationlogs` VALUES ('430', '4', '13', '2016-10-25 10:50:29', '系统首页→财务管理→费用管理：超级管理员批量删除了ID:15，名称为:UI电话费,ID:12，名称为:差旅费,的费用类型', '1');
INSERT INTO `operationlogs` VALUES ('431', '4', '13', '2016-10-25 10:51:43', '系统首页→财务管理→费用管理：超级管理员批量删除了ID:11，名称为:停车费,ID:8，名称为:交通和车辆费用,的费用类型', '1');
INSERT INTO `operationlogs` VALUES ('432', '4', '14', '2016-10-25 10:57:04', '系统首页→财务管理→货币管理：超级管理员新增了一条ID:3，名称为:\"英镑\"的货币', '1');
INSERT INTO `operationlogs` VALUES ('433', '4', '15', '2016-10-25 11:01:23', '系统首页→财务管理→报销管理：超级管理员审核了ID:14，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('434', '4', '15', '2016-10-25 11:04:14', '系统首页→财务管理→报销管理：超级管理员修改了ID:5，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('435', '4', '15', '2016-10-25 11:04:40', '系统首页→财务管理→报销管理：超级管理员修改了ID:5，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('436', '4', '15', '2016-10-25 11:05:15', '系统首页→财务管理→报销管理：超级管理员修改了ID:13，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('437', '4', '15', '2016-10-25 11:05:56', '系统首页→财务管理→报销管理：超级管理员修改了ID:12，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('438', '4', '15', '2016-10-25 11:07:06', '系统首页→财务管理→报销管理：超级管理员修改了ID:5，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('439', '4', '15', '2016-10-25 11:07:31', '系统首页→财务管理→报销管理：超级管理员修改了ID:5，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('440', '4', '15', '2016-10-25 11:09:22', '系统首页→财务管理→报销管理：超级管理员修改了ID:5，申请人为:\"首席执行官\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('441', '4', '15', '2016-10-25 11:12:28', '系统首页→财务管理→报销管理：超级管理员支付了ID:2，申请人为:\"陈飞\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('442', '4', '15', '2016-10-25 11:20:14', '系统首页→财务管理→报销管理：陈飞支付了ID:14，申请人为:\"首席执行官\"的报销申请', '5');
INSERT INTO `operationlogs` VALUES ('443', '3', '18', '2016-10-25 11:22:55', '系统首页→公文管理→分类管理：超级管理员修改了ID:2，名称为:\"公文2\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('444', '3', '18', '2016-10-25 11:23:04', '系统首页→公文管理→分类管理：超级管理员修改了ID:1，名称为:\"公文1ut8uig\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('445', '3', '18', '2016-10-25 11:24:45', '系统首页→公文管理→分类管理：超级管理员修改了ID:2，名称为:\"公文2\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('446', '3', '18', '2016-10-25 11:24:50', '系统首页→公文管理→分类管理：超级管理员修改了ID:1，名称为:\"公文1\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('447', '3', '18', '2016-10-25 11:24:59', '系统首页→公文管理→分类管理：超级管理员删除了ID:2，名称为:\"公文2\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('448', '3', '18', '2016-10-25 11:25:11', '系统首页→公文管理→分类管理：超级管理员添加了一条ID:3，名称为:\"公文2\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('449', '3', '18', '2016-10-25 11:32:13', '系统首页→公文管理→分类管理：超级管理员修改了ID:1，名称为:\"公文13\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('450', '3', '19', '2016-10-25 11:32:40', '系统首页→公文管理→公文管理：超级管理员修改了ID:19，标题为:\"4214\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('451', '3', '19', '2016-10-25 11:39:11', '系统首页→公文管理→公文添加：超级管理员新增了一条ID:23，标题为:\"哈哈哈\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('452', '3', '19', '2016-10-25 11:41:55', '系统首页→公文管理→公文管理：超级管理员批量审批了ID:19，标题名为:4214,ID:23，标题名为:哈哈哈,的公文', '1');
INSERT INTO `operationlogs` VALUES ('453', '3', '19', '2016-10-25 11:42:20', '系统首页→公文管理→公文管理：超级管理员删除了ID:23，标题为:哈哈哈的公文', '1');
INSERT INTO `operationlogs` VALUES ('454', '2', '21', '2016-10-25 11:47:28', '系统首页→组织管理→组织修改：超级管理员修改了ID:4，组织名称为:\"QCPJ\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('455', '2', '21', '2016-10-25 11:47:49', '系统首页→组织管理→组织修改：超级管理员修改了ID:4，组织名称为:\"QCPJ\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('456', '2', '21', '2016-10-25 11:48:48', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:15，组织名称为:\"行政二部\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('457', '2', '21', '2016-10-25 11:49:45', '系统首页→组织管理→组织添加：超级管理员添加了一条ID:16，组织名称为:\"啦啦\"的组织', '1');
INSERT INTO `operationlogs` VALUES ('458', '8', '22', '2016-10-25 11:54:47', '系统首页→新闻管理→分类管理：超级管理员进行了一次添加新闻分类的操作', '1');
INSERT INTO `operationlogs` VALUES ('459', '8', '24', '2016-10-25 12:15:50', '系统首页→新闻管理→新闻添加：超级管理员增加了一条ID:5，标题名称为:\"jj uyj\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('460', '8', '24', '2016-10-25 12:16:05', '系统首页→新闻管理→新闻添加：超级管理员增加了一条ID:6，标题名称为:\"tyutu\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('461', '8', '23', '2016-10-25 12:16:27', '系统首页→新闻管理→新闻修改：超级管理员修改了ID:6，标题名称为:\"tyutu\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('462', '2', '21', '2016-10-25 12:16:38', '系统首页→组织管理：超级管理员批量审批了ID:5，标题名为:jj uyj,ID:6，标题名为:tyutu,的新闻', '1');
INSERT INTO `operationlogs` VALUES ('463', '2', '21', '2016-10-25 12:17:10', '系统首页→组织管理：超级管理员批量删除了ID:5，标题名为:jj uyj,ID:6，标题名为:tyutu,的新闻', '1');
INSERT INTO `operationlogs` VALUES ('464', '8', '23', '2016-10-25 12:17:26', '系统首页→新闻管理→新闻管理：超级管理员删除了ID:4，标题名称为:\"d\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('465', '8', '24', '2016-10-25 12:17:36', '系统首页→新闻管理→新闻添加：超级管理员增加了一条ID:7，标题名称为:\"hghh\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('466', '8', '24', '2016-10-25 12:17:46', '系统首页→新闻管理→新闻添加：超级管理员增加了一条ID:8，标题名称为:\"ytuu\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('467', '8', '23', '2016-10-25 12:17:57', '系统首页→新闻管理→新闻管理：超级管理员审核了ID:7，标题名称为:\"hghh\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('468', '2', '21', '2016-10-25 12:18:05', '系统首页→组织管理：超级管理员批量审批了ID:8，标题名为:ytuu,的新闻', '1');
INSERT INTO `operationlogs` VALUES ('469', '2', '21', '2016-10-25 12:18:10', '系统首页→组织管理：超级管理员批量删除了ID:8，标题名为:ytuu,的新闻', '1');
INSERT INTO `operationlogs` VALUES ('470', '8', '24', '2016-10-25 12:20:05', '系统首页→新闻管理→新闻添加：超级管理员增加了一条ID:9，标题名称为:\"ewrfr\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('471', '2', '21', '2016-10-25 12:20:11', '系统首页→组织管理：超级管理员批量审批了ID:9，标题名为:ewrfr,的新闻', '1');
INSERT INTO `operationlogs` VALUES ('472', '8', '23', '2016-10-25 12:23:34', '系统首页→新闻管理→新闻管理：超级管理员置顶了ID:1，标题名称为:\"tesssssssssssssst\"的新闻', '1');
INSERT INTO `operationlogs` VALUES ('473', '1', '25', '2016-10-25 13:46:49', '系统首页→用户管理→用户管理：超级管理员停用了ID:21，中文名为:\"辅导费\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('474', '1', '25', '2016-10-25 13:46:55', '系统首页→用户管理→用户管理：超级管理员停用了ID:15，中文名为:\"赵璐\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('475', '1', '25', '2016-10-25 13:47:10', '系统首页→用户管理→用户管理：超级管理员批量启用了ID:15，中文名为:赵璐,ID:21，中文名为:辅导费,的用户', '1');
INSERT INTO `operationlogs` VALUES ('476', '1', '25', '2016-10-25 13:47:38', '系统首页→用户管理→用户管理：超级管理员停用了ID:15，中文名为:\"赵璐\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('477', '1', '25', '2016-10-25 13:47:46', '系统首页→用户管理→用户管理：超级管理员批量停用了ID:19，中文名为:小明,ID:20，中文名为:天天,ID:21，中文名为:辅导费,的用户', '1');
INSERT INTO `operationlogs` VALUES ('478', '1', '25', '2016-10-25 13:48:00', '系统首页→用户管理→用户管理：超级管理员启用了ID:15，中文名为:\"赵璐\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('479', '1', '25', '2016-10-25 13:52:10', '系统首页→用户管理→用户管理：超级管理员对ID:15，中文名为:\"赵璐\"的用户的角色进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('480', '1', '25', '2016-10-25 13:52:32', '系统首页→用户管理→用户管理：超级管理员修改了ID:15，中文名为:\"赵璐\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('481', '4', '15', '2016-10-25 13:56:29', '系统首页→财务管理→报销管理：赵璐添加了ID:17，申请人为:\"赵璐\"的报销申请', '15');
INSERT INTO `operationlogs` VALUES ('482', '1', '25', '2016-10-25 13:58:28', '系统首页→用户管理→用户管理：超级管理员修改了ID:20，中文名为:\"天天\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('483', '1', '25', '2016-10-25 14:02:02', '系统首页→用户管理→用户管理：超级管理员删除了ID:21，中文名为:\"辅导费\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('484', '1', '25', '2016-10-25 14:05:44', '系统首页→用户管理→用户管理：超级管理员修改了ID:13，中文名为:\"吴捷\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('485', '1', '25', '2016-10-25 14:06:20', '系统首页→用户管理→用户管理：超级管理员对ID:13，中文名为:\"吴捷\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('486', '9', '29', '2016-10-25 14:11:17', '系统首页→系统配置→系统配置：超级管理员修改了公司Logo', '1');
INSERT INTO `operationlogs` VALUES ('487', '10', '31', '2016-10-25 14:16:45', '系统首页→请假加班→请假申请：超级管理员新增了ID:24，请假原因:\"some\"的请假申请', '1');
INSERT INTO `operationlogs` VALUES ('488', '10', '31', '2016-10-25 14:18:02', '系统首页→请假加班→请假申请：吴捷新增了ID:25，请假原因:\"frf\"的请假申请', '13');
INSERT INTO `operationlogs` VALUES ('489', '1', '25', '2016-10-25 14:21:34', '系统首页→用户管理→用户管理：超级管理员修改了ID:10，中文名为:\"陈杰\"的用户的密码', '1');
INSERT INTO `operationlogs` VALUES ('490', '10', '31', '2016-10-25 14:23:15', '系统首页→请假加班→请假申请：吴捷新增了ID:26，请假原因:\"ewde\"的请假申请', '12');
INSERT INTO `operationlogs` VALUES ('491', '10', '31', '2016-10-25 14:31:09', '系统首页→请假加班→请假申请：吴捷删除了ID:19，请假人:\"吴捷\"的请假申请', '12');
INSERT INTO `operationlogs` VALUES ('492', '10', '31', '2016-10-25 14:31:58', '系统首页→请假加班→请假申请：吴捷批量删除了ID:20，请假原因为:1111,的请假记录', '12');
INSERT INTO `operationlogs` VALUES ('493', '10', '32', '2016-10-25 14:33:44', '系统首页→请加加班→加班申请：吴捷新增了ID:18，原因为:\"gyutyt\"的加班记录', '12');
INSERT INTO `operationlogs` VALUES ('494', '10', '32', '2016-10-25 14:38:23', '系统首页→请加加班→加班申请：吴捷新增了ID:19，原因为:\"qqq\"的加班记录', '12');
INSERT INTO `operationlogs` VALUES ('495', '10', '31', '2016-10-26 10:27:49', '系统首页→请假加班→请假申请：吴捷新增了ID:27，请假原因:\"检查\"的请假申请', '12');
INSERT INTO `operationlogs` VALUES ('496', '10', '31', '2016-10-26 10:27:57', '系统首页→请假加班→请假申请：吴捷修改了ID:27，请假原因:\"检查\"的请假申请', '12');
INSERT INTO `operationlogs` VALUES ('497', '4', '15', '2016-10-31 10:47:48', '系统首页→财务管理→报销管理：超级管理员审核了ID:17，申请人为:\"赵璐\"的报销申请', '1');
INSERT INTO `operationlogs` VALUES ('498', '3', '18', '2016-11-18 14:28:20', '系统首页→公文管理→分类管理：超级管理员添加了一条ID:4，名称为:\"qwe\"的公文分类', '1');
INSERT INTO `operationlogs` VALUES ('499', '0', '1', '2016-11-23 12:39:40', '系统首页→官网管理→文章管理：超级管理员取消了ID:9，标题为:\"1\"的文章的置顶', '1');
INSERT INTO `operationlogs` VALUES ('500', '1', '25', '2016-11-23 16:50:36', '系统首页→用户管理→用户管理：超级管理员批量启用了ID:1，中文名为:超级管理员,ID:2，中文名为:首席执行官,的用户', '1');
INSERT INTO `operationlogs` VALUES ('501', '1', '25', '2016-11-23 16:51:11', '系统首页→用户管理→用户管理：超级管理员启用了ID:20，中文名为:\"天天\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('502', '1', '25', '2016-11-23 16:51:12', '系统首页→用户管理→用户管理：超级管理员停用了ID:20，中文名为:\"天天\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('503', '4', '11', '2016-11-23 16:52:05', '系统首页→财务管理→账户管理：超级管理员删除了ID:2，用户名为:\"天天\"的账户', '1');
INSERT INTO `operationlogs` VALUES ('504', '1', '25', '2016-11-25 17:49:18', '系统首页→用户管理→用户管理：超级管理员停用了ID:5，中文名为:\"陈飞\"的用户', '1');
INSERT INTO `operationlogs` VALUES ('505', '1', '25', '2016-12-12 17:29:10', '系统首页→用户管理→用户管理：超级管理员对ID:3，中文名为:\"张志林\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('506', '1', '25', '2016-12-12 17:32:05', '系统首页→用户管理→用户管理：超级管理员对ID:4，中文名为:\"曹思翀\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('507', '1', '25', '2016-12-12 17:47:02', '系统首页→用户管理→用户管理：超级管理员对ID:6，中文名为:\"高洋\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('508', '1', '25', '2016-12-12 17:49:14', '系统首页→用户管理→用户管理：超级管理员对ID:7，中文名为:\"蒋丹丹\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('509', '1', '25', '2016-12-13 10:51:11', '系统首页→用户管理→用户管理：超级管理员对ID:3，中文名为:\"张志林\"的用户的组织进行了一次操作', '1');
INSERT INTO `operationlogs` VALUES ('510', '3', '19', '2016-12-13 17:58:53', '系统首页→公文管理→公文管理：超级管理员取消了ID:22，标题为:\"提示\"的公文的置顶', '1');
INSERT INTO `operationlogs` VALUES ('511', '3', '19', '2016-12-13 17:58:57', '系统首页→公文管理→公文管理：超级管理员取消了ID:19，标题为:\"4214\"的公文的置顶', '1');
INSERT INTO `operationlogs` VALUES ('512', '3', '19', '2016-12-13 17:59:01', '系统首页→公文管理→公文管理：超级管理员置顶了ID:22，标题为:\"提示\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('513', '3', '19', '2016-12-13 17:59:03', '系统首页→公文管理→公文管理：超级管理员取消了ID:22，标题为:\"提示\"的公文的置顶', '1');
INSERT INTO `operationlogs` VALUES ('514', '3', '19', '2016-12-13 17:59:43', '系统首页→公文管理→公文管理：超级管理员置顶了ID:19，标题为:\"4214\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('515', '3', '19', '2016-12-14 14:01:01', '系统首页→公文管理→公文管理：超级管理员置顶了ID:22，标题为:\"提示\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('516', '3', '19', '2016-12-14 14:01:10', '系统首页→公文管理→公文管理：超级管理员取消了ID:19，标题为:\"4214\"的公文的置顶', '1');
INSERT INTO `operationlogs` VALUES ('517', '3', '19', '2016-12-14 14:01:11', '系统首页→公文管理→公文管理：超级管理员置顶了ID:19，标题为:\"4214\"的公文', '1');
INSERT INTO `operationlogs` VALUES ('518', '3', '19', '2016-12-14 14:01:16', '系统首页→公文管理→公文管理：超级管理员取消了ID:22，标题为:\"提示\"的公文的置顶', '1');
INSERT INTO `operationlogs` VALUES ('519', '3', '19', '2016-12-14 14:01:20', '系统首页→公文管理→公文管理：超级管理员取消了ID:19，标题为:\"4214\"的公文的置顶', '1');
INSERT INTO `operationlogs` VALUES ('520', '0', '0', '2016-12-16 10:52:49', '系统首页→官网管理→分类管理：超级管理员删除了ID:20，标题为:\"kk\"的文章分类', '1');
INSERT INTO `operationlogs` VALUES ('521', '0', '1', '2016-12-16 11:13:47', '系统首页→官网管理→文章管理：超级管理员审核了ID:6，标题为:\"15\"的文章', '1');
INSERT INTO `operationlogs` VALUES ('522', '5', '8', '2016-12-30 15:18:18', '系统首页→人事管理→档案管理：超级管理员修改了ID:18，中文名为:\"天天\"的员工档案', '1');

-- ----------------------------
-- Table structure for organizations
-- ----------------------------
DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `SpecialType` int(11) DEFAULT NULL,
  `ParentId` longtext,
  `Path` longtext,
  `DingDeptId` longtext,
  `OrgLeader_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organizations
-- ----------------------------
INSERT INTO `organizations` VALUES ('1', '行政部', '1', '0', '0', null, '0', '3');
INSERT INTO `organizations` VALUES ('2', '财务部', '1', '0', '0', null, '5807480', '2');
INSERT INTO `organizations` VALUES ('3', '人力资源', '1', '0', '0', null, '5806553', '2');
INSERT INTO `organizations` VALUES ('4', 'QCPJ', '1', '0', '0', null, '5805513', '4');
INSERT INTO `organizations` VALUES ('9', '市场', '0', '0', '0', null, null, '2');
INSERT INTO `organizations` VALUES ('10', '市场', '0', '0', '9', null, null, '12');
INSERT INTO `organizations` VALUES ('11', '市场-B团队', '1', '0', '10', null, null, '10');
INSERT INTO `organizations` VALUES ('12', '市场一', '0', '0', '9', null, null, '12');
INSERT INTO `organizations` VALUES ('13', '市场一-A团队', '1', '0', '12', null, null, '10');
INSERT INTO `organizations` VALUES ('14', '市场办公室', '1', '0', '9', null, null, '12');
INSERT INTO `organizations` VALUES ('15', '行政', '1', '0', '0', null, null, '18');
INSERT INTO `organizations` VALUES ('16', '啦啦', '1', '0', '10', null, null, '18');
INSERT INTO `organizations` VALUES ('18', '03120', '0', '0', '1', null, null, '1');
INSERT INTO `organizations` VALUES ('19', 'yyyy', '0', '0', '2', null, null, '3');

-- ----------------------------
-- Table structure for orguserrelations
-- ----------------------------
DROP TABLE IF EXISTS `orguserrelations`;
CREATE TABLE `orguserrelations` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IsMainOrg` longtext,
  `User_Id` int(11) DEFAULT NULL,
  `Org_Id` int(11) DEFAULT NULL,
  `ReportTo_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orguserrelations
-- ----------------------------
INSERT INTO `orguserrelations` VALUES ('2', '1', '3', '1', '2');
INSERT INTO `orguserrelations` VALUES ('3', '1', '4', '4', '1');
INSERT INTO `orguserrelations` VALUES ('4', '1', '5', '4', '1');
INSERT INTO `orguserrelations` VALUES ('5', '1', '6', '1', '2');
INSERT INTO `orguserrelations` VALUES ('6', '1', '7', '1', '2');
INSERT INTO `orguserrelations` VALUES ('7', '1', '8', '4', '1');
INSERT INTO `orguserrelations` VALUES ('8', '1', '9', '4', '1');
INSERT INTO `orguserrelations` VALUES ('9', '1', '10', '4', '1');
INSERT INTO `orguserrelations` VALUES ('10', null, '9', '3', '2');
INSERT INTO `orguserrelations` VALUES ('12', '1', '12', '4', '4');
INSERT INTO `orguserrelations` VALUES ('13', null, '12', '13', '10');
INSERT INTO `orguserrelations` VALUES ('14', null, '12', '14', '12');
INSERT INTO `orguserrelations` VALUES ('15', '1', '13', '11', '10');
INSERT INTO `orguserrelations` VALUES ('16', null, '7', '3', '9');
INSERT INTO `orguserrelations` VALUES ('17', '1', '14', '11', '10');
INSERT INTO `orguserrelations` VALUES ('18', '1', '15', '4', '4');
INSERT INTO `orguserrelations` VALUES ('20', null, '15', '1', '3');
INSERT INTO `orguserrelations` VALUES ('22', '1', '18', '4', '4');
INSERT INTO `orguserrelations` VALUES ('23', '1', '19', '4', '4');
INSERT INTO `orguserrelations` VALUES ('24', '1', '20', '4', '4');
INSERT INTO `orguserrelations` VALUES ('26', null, '13', '4', '9');
INSERT INTO `orguserrelations` VALUES ('27', null, '3', '3', '9');
INSERT INTO `orguserrelations` VALUES ('28', null, '4', '2', '2');
INSERT INTO `orguserrelations` VALUES ('29', null, '4', '3', '3');
INSERT INTO `orguserrelations` VALUES ('30', null, '6', '4', '9');
INSERT INTO `orguserrelations` VALUES ('31', null, '7', '15', '18');
INSERT INTO `orguserrelations` VALUES ('32', null, '7', '4', '15');
INSERT INTO `orguserrelations` VALUES ('33', null, '3', '15', '18');
INSERT INTO `orguserrelations` VALUES ('34', null, '3', '4', '20');
INSERT INTO `orguserrelations` VALUES ('44', '1', '41', '1', '2');
INSERT INTO `orguserrelations` VALUES ('59', '0', '1', '8', '7');
INSERT INTO `orguserrelations` VALUES ('60', '1', '43', '1', '2');
INSERT INTO `orguserrelations` VALUES ('61', '1', '44', '1', '2');
INSERT INTO `orguserrelations` VALUES ('62', '0', '24', '8', '7');
INSERT INTO `orguserrelations` VALUES ('64', '1', '45', '15', '18');
INSERT INTO `orguserrelations` VALUES ('65', '0', '45', '9', '2');
INSERT INTO `orguserrelations` VALUES ('66', '1', '2', '1', '3');
INSERT INTO `orguserrelations` VALUES ('67', '1', '2', '3', '2');
INSERT INTO `orguserrelations` VALUES ('68', '1', '2', '15', '18');
INSERT INTO `orguserrelations` VALUES ('69', '0', '2', '9', '2');
INSERT INTO `orguserrelations` VALUES ('70', '1', '46', '1', '3');
INSERT INTO `orguserrelations` VALUES ('71', '1', '47', '1', '3');
INSERT INTO `orguserrelations` VALUES ('72', '1', '48', '1', '3');
INSERT INTO `orguserrelations` VALUES ('73', '1', '49', '1', '3');

-- ----------------------------
-- Table structure for otpays
-- ----------------------------
DROP TABLE IF EXISTS `otpays`;
CREATE TABLE `otpays` (
  `Id` int(11) NOT NULL,
  `Hours` float DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of otpays
-- ----------------------------

-- ----------------------------
-- Table structure for overtimes
-- ----------------------------
DROP TABLE IF EXISTS `overtimes`;
CREATE TABLE `overtimes` (
  `Id` int(11) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FromTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ToTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ApplyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ApprovalTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Hours` float DEFAULT NULL,
  `OTType` int(11) DEFAULT NULL,
  `ApplyFor` int(11) DEFAULT NULL,
  `Reason` longtext,
  `Status` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `Org_Id` int(11) DEFAULT NULL,
  `Auditor_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of overtimes
-- ----------------------------
INSERT INTO `overtimes` VALUES ('1', '2016-07-13 00:00:00', '2016-07-13 03:14:00', '2016-07-13 15:14:00', '2016-07-13 15:14:48', '2016-07-13 15:14:48', '1', '0', '0', '11', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('2', '2016-07-14 00:00:00', '2016-07-13 03:14:00', '2016-07-13 15:14:00', '2016-07-13 15:15:02', '2016-07-13 15:15:02', '1', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('3', '2016-07-21 00:00:00', '2016-07-13 03:15:00', '2016-07-13 15:15:00', '2016-07-13 15:15:22', '2016-07-13 15:15:22', '2', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('4', '2016-07-14 00:00:00', '2016-07-13 03:15:00', '2016-07-13 15:15:00', '2016-07-13 15:15:37', '2016-07-13 15:15:37', '1', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('5', '2016-07-14 00:00:00', '2016-07-13 03:15:00', '2016-07-13 15:15:00', '2016-07-13 15:15:47', '2016-07-13 15:15:47', '2', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('6', '2016-07-09 00:00:00', '2016-07-13 03:15:00', '2016-07-13 15:15:00', '2016-07-13 15:15:57', '2016-07-13 15:15:57', '5', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('7', '2016-07-14 00:00:00', '2016-07-13 03:16:00', '2016-07-13 15:16:00', '2016-07-13 15:16:07', '2016-07-13 15:16:07', '4', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('8', '2016-07-15 00:00:00', '2016-07-13 01:00:00', '2016-07-13 01:00:00', '2016-07-13 15:16:15', '2016-07-13 15:16:15', '1', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('9', '2016-07-13 00:00:00', '2016-07-13 03:16:00', '2016-07-13 15:16:00', '2016-07-13 15:16:26', '2016-07-13 15:16:26', '7', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('10', '2016-07-29 00:00:00', '2016-07-13 03:16:00', '2016-07-13 15:16:00', '2016-07-13 15:16:43', '2016-07-13 15:16:43', '5', '0', '1', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('11', '2016-07-21 00:00:00', '2016-07-13 03:16:00', '2016-07-13 15:16:00', '2016-07-13 15:16:59', '2016-07-13 15:16:59', '8', '2', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('12', '2016-06-29 00:00:00', '2016-07-13 15:17:00', '2016-07-13 15:17:00', '2016-07-13 15:17:15', '2016-07-13 15:17:15', '1', '2', '1', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('13', '2016-06-29 00:00:00', '2016-07-13 15:17:00', '2016-07-13 15:17:00', '2016-07-13 15:17:28', '2016-07-13 15:17:28', '4', '0', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('14', '2016-06-30 00:00:00', '2016-07-13 15:17:00', '2016-07-13 15:17:00', '2016-07-13 15:17:39', '2016-07-13 15:17:39', '1', '1', '0', '1', '0', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('15', '2016-07-22 00:00:00', '2016-07-13 03:27:00', '2016-07-13 15:27:00', '2016-07-13 15:27:07', '2016-07-13 15:38:43', '4', '0', '0', '4', '1', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('16', '2016-07-13 00:00:00', '2016-07-13 03:27:00', '2016-07-13 15:27:00', '2016-07-13 15:27:20', '2016-07-13 15:38:42', '4', '1', '1', '4', '1', '2', '1', '2');
INSERT INTO `overtimes` VALUES ('17', '2016-10-17 00:00:00', '2016-10-17 17:01:00', '2016-10-17 19:01:00', '2016-10-17 17:02:02', '2016-10-17 17:02:02', '2', '0', '0', '112233', '0', '12', '1', '2');
INSERT INTO `overtimes` VALUES ('18', '2016-10-24 00:00:00', '2016-10-25 17:33:00', '2016-10-25 22:32:00', '2016-10-25 14:33:44', '2016-10-25 14:33:44', '5', '0', '1', 'gyutyt', '0', '12', '4', '4');
INSERT INTO `overtimes` VALUES ('19', '2016-10-23 00:00:00', '2016-10-25 17:30:00', '2016-10-25 20:30:00', '2016-10-25 14:38:22', '2016-10-25 14:38:22', '4', '0', '0', 'qqq', '0', '12', '1', '2');

-- ----------------------------
-- Table structure for pagepermissions
-- ----------------------------
DROP TABLE IF EXISTS `pagepermissions`;
CREATE TABLE `pagepermissions` (
  `Page_Id` int(11) DEFAULT NULL,
  `Permissions_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pagepermissions
-- ----------------------------
INSERT INTO `pagepermissions` VALUES ('1', '1');
INSERT INTO `pagepermissions` VALUES ('3', '3');
INSERT INTO `pagepermissions` VALUES ('3', '4');
INSERT INTO `pagepermissions` VALUES ('5', '1');
INSERT INTO `pagepermissions` VALUES ('1', '10');
INSERT INTO `pagepermissions` VALUES ('2', '10');
INSERT INTO `pagepermissions` VALUES ('5', '10');
INSERT INTO `pagepermissions` VALUES ('3', '2');
INSERT INTO `pagepermissions` VALUES ('4', '2');
INSERT INTO `pagepermissions` VALUES ('5', '2');
INSERT INTO `pagepermissions` VALUES ('8', '2');
INSERT INTO `pagepermissions` VALUES ('9', '2');
INSERT INTO `pagepermissions` VALUES ('12', '2');
INSERT INTO `pagepermissions` VALUES ('13', '2');
INSERT INTO `pagepermissions` VALUES ('14', '2');
INSERT INTO `pagepermissions` VALUES ('1', '2');
INSERT INTO `pagepermissions` VALUES ('2', '2');
INSERT INTO `pagepermissions` VALUES ('6', '2');
INSERT INTO `pagepermissions` VALUES ('7', '2');
INSERT INTO `pagepermissions` VALUES ('10', '2');
INSERT INTO `pagepermissions` VALUES ('11', '2');
INSERT INTO `pagepermissions` VALUES ('15', '2');
INSERT INTO `pagepermissions` VALUES ('16', '2');
INSERT INTO `pagepermissions` VALUES ('17', '2');
INSERT INTO `pagepermissions` VALUES ('18', '2');
INSERT INTO `pagepermissions` VALUES ('19', '2');
INSERT INTO `pagepermissions` VALUES ('20', '2');
INSERT INTO `pagepermissions` VALUES ('21', '2');
INSERT INTO `pagepermissions` VALUES ('22', '2');
INSERT INTO `pagepermissions` VALUES ('23', '2');
INSERT INTO `pagepermissions` VALUES ('24', '2');
INSERT INTO `pagepermissions` VALUES ('25', '2');
INSERT INTO `pagepermissions` VALUES ('26', '2');
INSERT INTO `pagepermissions` VALUES ('27', '2');
INSERT INTO `pagepermissions` VALUES ('28', '2');
INSERT INTO `pagepermissions` VALUES ('29', '2');
INSERT INTO `pagepermissions` VALUES ('30', '2');
INSERT INTO `pagepermissions` VALUES ('31', '2');
INSERT INTO `pagepermissions` VALUES ('32', '2');
INSERT INTO `pagepermissions` VALUES ('33', '2');
INSERT INTO `pagepermissions` VALUES ('34', '2');
INSERT INTO `pagepermissions` VALUES ('35', '2');
INSERT INTO `pagepermissions` VALUES ('36', '2');
INSERT INTO `pagepermissions` VALUES ('37', '2');
INSERT INTO `pagepermissions` VALUES ('38', '2');
INSERT INTO `pagepermissions` VALUES ('39', '2');
INSERT INTO `pagepermissions` VALUES ('40', '2');
INSERT INTO `pagepermissions` VALUES ('41', '2');
INSERT INTO `pagepermissions` VALUES ('42', '2');
INSERT INTO `pagepermissions` VALUES ('43', '2');
INSERT INTO `pagepermissions` VALUES ('44', '2');
INSERT INTO `pagepermissions` VALUES ('45', '2');
INSERT INTO `pagepermissions` VALUES ('46', '2');
INSERT INTO `pagepermissions` VALUES ('47', '2');
INSERT INTO `pagepermissions` VALUES ('48', '2');
INSERT INTO `pagepermissions` VALUES ('49', '2');
INSERT INTO `pagepermissions` VALUES ('50', '2');
INSERT INTO `pagepermissions` VALUES ('51', '2');
INSERT INTO `pagepermissions` VALUES ('52', '2');
INSERT INTO `pagepermissions` VALUES ('53', '2');
INSERT INTO `pagepermissions` VALUES ('54', '2');
INSERT INTO `pagepermissions` VALUES ('55', '2');
INSERT INTO `pagepermissions` VALUES ('56', '2');
INSERT INTO `pagepermissions` VALUES ('57', '2');
INSERT INTO `pagepermissions` VALUES ('58', '2');
INSERT INTO `pagepermissions` VALUES ('59', '2');
INSERT INTO `pagepermissions` VALUES ('60', '2');
INSERT INTO `pagepermissions` VALUES ('61', '2');
INSERT INTO `pagepermissions` VALUES ('62', '2');
INSERT INTO `pagepermissions` VALUES ('63', '2');
INSERT INTO `pagepermissions` VALUES ('64', '2');
INSERT INTO `pagepermissions` VALUES ('65', '2');
INSERT INTO `pagepermissions` VALUES ('66', '2');
INSERT INTO `pagepermissions` VALUES ('67', '2');
INSERT INTO `pagepermissions` VALUES ('68', '2');
INSERT INTO `pagepermissions` VALUES ('69', '2');
INSERT INTO `pagepermissions` VALUES ('70', '2');
INSERT INTO `pagepermissions` VALUES ('71', '2');
INSERT INTO `pagepermissions` VALUES ('72', '2');
INSERT INTO `pagepermissions` VALUES ('73', '2');
INSERT INTO `pagepermissions` VALUES ('74', '2');
INSERT INTO `pagepermissions` VALUES ('75', '2');
INSERT INTO `pagepermissions` VALUES ('76', '2');
INSERT INTO `pagepermissions` VALUES ('77', '2');
INSERT INTO `pagepermissions` VALUES ('78', '2');
INSERT INTO `pagepermissions` VALUES ('79', '2');
INSERT INTO `pagepermissions` VALUES ('80', '2');
INSERT INTO `pagepermissions` VALUES ('81', '2');
INSERT INTO `pagepermissions` VALUES ('82', '2');
INSERT INTO `pagepermissions` VALUES ('83', '2');
INSERT INTO `pagepermissions` VALUES ('84', '2');
INSERT INTO `pagepermissions` VALUES ('85', '2');
INSERT INTO `pagepermissions` VALUES ('86', '2');
INSERT INTO `pagepermissions` VALUES ('87', '2');
INSERT INTO `pagepermissions` VALUES ('88', '2');
INSERT INTO `pagepermissions` VALUES ('89', '2');
INSERT INTO `pagepermissions` VALUES ('90', '2');
INSERT INTO `pagepermissions` VALUES ('91', '2');
INSERT INTO `pagepermissions` VALUES ('92', '2');
INSERT INTO `pagepermissions` VALUES ('93', '2');
INSERT INTO `pagepermissions` VALUES ('94', '2');
INSERT INTO `pagepermissions` VALUES ('95', '2');
INSERT INTO `pagepermissions` VALUES ('96', '2');
INSERT INTO `pagepermissions` VALUES ('97', '2');
INSERT INTO `pagepermissions` VALUES ('98', '2');
INSERT INTO `pagepermissions` VALUES ('99', '2');
INSERT INTO `pagepermissions` VALUES ('100', '2');
INSERT INTO `pagepermissions` VALUES ('101', '2');
INSERT INTO `pagepermissions` VALUES ('102', '2');
INSERT INTO `pagepermissions` VALUES ('103', '2');
INSERT INTO `pagepermissions` VALUES ('104', '2');
INSERT INTO `pagepermissions` VALUES ('105', '2');
INSERT INTO `pagepermissions` VALUES ('106', '2');
INSERT INTO `pagepermissions` VALUES ('107', '2');
INSERT INTO `pagepermissions` VALUES ('108', '2');
INSERT INTO `pagepermissions` VALUES ('109', '2');
INSERT INTO `pagepermissions` VALUES ('110', '2');
INSERT INTO `pagepermissions` VALUES ('111', '2');
INSERT INTO `pagepermissions` VALUES ('112', '2');
INSERT INTO `pagepermissions` VALUES ('113', '2');
INSERT INTO `pagepermissions` VALUES ('114', '2');
INSERT INTO `pagepermissions` VALUES ('115', '2');
INSERT INTO `pagepermissions` VALUES ('116', '2');
INSERT INTO `pagepermissions` VALUES ('117', '2');
INSERT INTO `pagepermissions` VALUES ('118', '2');
INSERT INTO `pagepermissions` VALUES ('119', '2');
INSERT INTO `pagepermissions` VALUES ('120', '2');
INSERT INTO `pagepermissions` VALUES ('121', '2');
INSERT INTO `pagepermissions` VALUES ('122', '2');
INSERT INTO `pagepermissions` VALUES ('123', '2');
INSERT INTO `pagepermissions` VALUES ('124', '2');
INSERT INTO `pagepermissions` VALUES ('125', '2');
INSERT INTO `pagepermissions` VALUES ('2', '13');
INSERT INTO `pagepermissions` VALUES ('3', '13');
INSERT INTO `pagepermissions` VALUES ('10', '13');
INSERT INTO `pagepermissions` VALUES ('11', '13');
INSERT INTO `pagepermissions` VALUES ('8', '13');
INSERT INTO `pagepermissions` VALUES ('9', '13');
INSERT INTO `pagepermissions` VALUES ('12', '13');
INSERT INTO `pagepermissions` VALUES ('13', '13');
INSERT INTO `pagepermissions` VALUES ('19', '13');
INSERT INTO `pagepermissions` VALUES ('20', '13');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `Id` int(11) DEFAULT NULL,
  `Name` longtext,
  `Url` longtext,
  `Menu_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Announcement', 'Announcement\\AddAnnouncement', '38');
INSERT INTO `pages` VALUES ('2', 'Announcement', 'Announcement\\AddAnnouncementType', '36');
INSERT INTO `pages` VALUES ('3', 'Announcement', 'Announcement\\AnnouncementDetail', null);
INSERT INTO `pages` VALUES ('4', 'Announcement', 'Announcement\\AnnouncementList', null);
INSERT INTO `pages` VALUES ('5', 'Announcement', 'Announcement\\AnnouncementManagement', '37');
INSERT INTO `pages` VALUES ('6', 'Announcement', 'Announcement\\AnnouncementTypeManagement', '36');
INSERT INTO `pages` VALUES ('7', 'Announcement', 'Announcement\\ToDoAnnouncementDetail', null);
INSERT INTO `pages` VALUES ('8', 'Announcement', 'Announcement\\UpdateAnnouncement', '37');
INSERT INTO `pages` VALUES ('9', 'Announcement', 'Announcement\\UpdateAnnouncementType', '36');
INSERT INTO `pages` VALUES ('10', 'Auth', 'Auth\\AddPermission', '19');
INSERT INTO `pages` VALUES ('11', 'Auth', 'Auth\\ConfigPermission', '19');
INSERT INTO `pages` VALUES ('12', 'Auth', 'Auth\\Index', '19');
INSERT INTO `pages` VALUES ('13', 'Auth', 'Auth\\MenuConfig', '19');
INSERT INTO `pages` VALUES ('14', 'File', 'File\\Index', '21');
INSERT INTO `pages` VALUES ('15', 'Accounts', 'Accounts\\AccountManagement', '28');
INSERT INTO `pages` VALUES ('16', 'Accounts', 'Accounts\\AddAccount', '28');
INSERT INTO `pages` VALUES ('17', 'Accounts', 'Accounts\\UpdateAccount', '28');
INSERT INTO `pages` VALUES ('18', 'Banks', 'Banks\\AddBank', '29');
INSERT INTO `pages` VALUES ('19', 'Banks', 'Banks\\BankManagement', '29');
INSERT INTO `pages` VALUES ('20', 'Banks', 'Banks\\UpdateBank', '29');
INSERT INTO `pages` VALUES ('21', 'ClaimRequests', 'ClaimRequests\\AddClaimRequest', '32');
INSERT INTO `pages` VALUES ('22', 'ClaimRequests', 'ClaimRequests\\ClaimManagement', '34');
INSERT INTO `pages` VALUES ('23', 'ClaimRequests', 'ClaimRequests\\ClaimRequestCheck', '33');
INSERT INTO `pages` VALUES ('24', 'ClaimRequests', 'ClaimRequests\\ClaimRequestPreview', '32');
INSERT INTO `pages` VALUES ('25', 'ClaimRequests', 'ClaimRequests\\PersonalClaimManagement', null);
INSERT INTO `pages` VALUES ('26', 'ClaimRequests', 'ClaimRequests\\UpdateClaimRequest', '32');
INSERT INTO `pages` VALUES ('27', 'Currencys', 'Currencys\\AddCurrency', '31');
INSERT INTO `pages` VALUES ('28', 'Currencys', 'Currencys\\CurrencyManagement', '31');
INSERT INTO `pages` VALUES ('29', 'Currencys', 'Currencys\\UpdateCurrency', '31');
INSERT INTO `pages` VALUES ('30', 'ExpenseTypes', 'ExpenseTypes\\AddExpenseType', '30');
INSERT INTO `pages` VALUES ('31', 'ExpenseTypes', 'ExpenseTypes\\ExpenseTypeManagement', '30');
INSERT INTO `pages` VALUES ('32', 'ExpenseTypes', 'ExpenseTypes\\UpdateExpenseType', '30');
INSERT INTO `pages` VALUES ('33', 'Home', 'Home\\AnnouncementViewPage', null);
INSERT INTO `pages` VALUES ('34', 'Home', 'Home\\Index', null);
INSERT INTO `pages` VALUES ('35', 'Home', 'Home\\NewsViewPage', null);
INSERT INTO `pages` VALUES ('36', 'Home', 'Home\\ToDoList', null);
INSERT INTO `pages` VALUES ('37', 'HumanResource', 'HumanResource\\AddComment', null);
INSERT INTO `pages` VALUES ('38', 'HumanResource', 'HumanResource\\AddEnroll', '24');
INSERT INTO `pages` VALUES ('39', 'HumanResource', 'HumanResource\\AddPersonnelFile', '23');
INSERT INTO `pages` VALUES ('40', 'HumanResource', 'HumanResource\\EnrollManagement', '24');
INSERT INTO `pages` VALUES ('41', 'HumanResource', 'HumanResource\\EnrollProcessDetail', '24');
INSERT INTO `pages` VALUES ('42', 'HumanResource', 'HumanResource\\Index', null);
INSERT INTO `pages` VALUES ('43', 'HumanResource', 'HumanResource\\PersonnelFileDetail', '23');
INSERT INTO `pages` VALUES ('44', 'HumanResource', 'HumanResource\\PersonnelFileManage', '23');
INSERT INTO `pages` VALUES ('45', 'HumanResource', 'HumanResource\\RecordManagement', null);
INSERT INTO `pages` VALUES ('46', 'HumanResource', 'HumanResource\\ResignManagement', '25');
INSERT INTO `pages` VALUES ('47', 'HumanResource', 'HumanResource\\ResignProcessDetail', '25');
INSERT INTO `pages` VALUES ('48', 'HumanResource', 'HumanResource\\UpdatePersonnelFile', '23');
INSERT INTO `pages` VALUES ('49', 'HumanResource', 'HumanResource\\UploadPersonnelFile', '23');
INSERT INTO `pages` VALUES ('50', 'Login', 'Login\\Index', null);
INSERT INTO `pages` VALUES ('51', 'News', 'News\\AddNews', '44');
INSERT INTO `pages` VALUES ('52', 'News', 'News\\AddType', '42');
INSERT INTO `pages` VALUES ('53', 'News', 'News\\Index', null);
INSERT INTO `pages` VALUES ('54', 'News', 'News\\NewsDetail', null);
INSERT INTO `pages` VALUES ('55', 'News', 'News\\NewsList', null);
INSERT INTO `pages` VALUES ('56', 'News', 'News\\NewsManagement', '43');
INSERT INTO `pages` VALUES ('57', 'News', 'News\\TypeManagement', '42');
INSERT INTO `pages` VALUES ('58', 'News', 'News\\UpdateNews', '43');
INSERT INTO `pages` VALUES ('59', 'News', 'News\\UpdateType', '42');
INSERT INTO `pages` VALUES ('60', 'Organization', 'Organization\\AddOrganization', '40');
INSERT INTO `pages` VALUES ('61', 'Organization', 'Organization\\OrganizationManagement', '40');
INSERT INTO `pages` VALUES ('62', 'Organization', 'Organization\\UpdateOrganization', '40');
INSERT INTO `pages` VALUES ('63', 'Personalization', 'Personalization\\AccountStatus', null);
INSERT INTO `pages` VALUES ('64', 'Personalization', 'Personalization\\HomePage', null);
INSERT INTO `pages` VALUES ('65', 'Personalization', 'Personalization\\Index', null);
INSERT INTO `pages` VALUES ('66', 'Personalization', 'Personalization\\ModifyPassword', null);
INSERT INTO `pages` VALUES ('67', 'Personalization', 'Personalization\\UpdateMessage', null);
INSERT INTO `pages` VALUES ('68', 'Personalization', 'Personalization\\UploadPortrait', null);
INSERT INTO `pages` VALUES ('69', 'PortalNews', 'PortalNews\\AddNews', '6');
INSERT INTO `pages` VALUES ('70', 'PortalNews', 'PortalNews\\AddType', '4');
INSERT INTO `pages` VALUES ('71', 'PortalNews', 'PortalNews\\NewsDetail', '5');
INSERT INTO `pages` VALUES ('72', 'PortalNews', 'PortalNews\\NewsManagement', '5');
INSERT INTO `pages` VALUES ('73', 'PortalNews', 'PortalNews\\TypeManagement', '4');
INSERT INTO `pages` VALUES ('74', 'PortalNews', 'PortalNews\\UpdateNews', '5');
INSERT INTO `pages` VALUES ('75', 'PortalNews', 'PortalNews\\UpdateType', '4');
INSERT INTO `pages` VALUES ('76', 'PortalTalent', 'PortalTalent\\AddDep', '7');
INSERT INTO `pages` VALUES ('77', 'PortalTalent', 'PortalTalent\\CandiDetail', '8');
INSERT INTO `pages` VALUES ('78', 'PortalTalent', 'PortalTalent\\CandiManagement', '8');
INSERT INTO `pages` VALUES ('79', 'PortalTalent', 'PortalTalent\\DepManagement', '7');
INSERT INTO `pages` VALUES ('80', 'PortalTalent', 'PortalTalent\\JobAddPage', '9');
INSERT INTO `pages` VALUES ('81', 'PortalTalent', 'PortalTalent\\JobDetail', '8');
INSERT INTO `pages` VALUES ('82', 'PortalTalent', 'PortalTalent\\JobManagement', '8');
INSERT INTO `pages` VALUES ('83', 'PortalTalent', 'PortalTalent\\JobUpdatePage', '8');
INSERT INTO `pages` VALUES ('84', 'PortalTalent', 'PortalTalent\\UpdateDep', '7');
INSERT INTO `pages` VALUES ('85', 'Shared', 'Shared\\AuthAlert', null);
INSERT INTO `pages` VALUES ('86', 'Shared', 'Shared\\Error', null);
INSERT INTO `pages` VALUES ('87', 'Shared', 'Shared\\_Layout', null);
INSERT INTO `pages` VALUES ('88', 'Shared', 'Shared\\_LoginPartial', null);
INSERT INTO `pages` VALUES ('89', 'UserManage', 'UserManage\\AddUser', '46');
INSERT INTO `pages` VALUES ('90', 'UserManage', 'UserManage\\Index', '46');
INSERT INTO `pages` VALUES ('91', 'UserManage', 'UserManage\\UpdateUser', '46');
INSERT INTO `pages` VALUES ('92', 'WorkFlow', 'WorkFlow\\Index', null);
INSERT INTO `pages` VALUES ('93', 'WorkFlow', 'WorkFlow\\ShowFlow', null);
INSERT INTO `pages` VALUES ('94', 'WorkFlow', 'WorkFlow\\ShowFlowTransfer', null);
INSERT INTO `pages` VALUES ('95', 'WorkFlow', 'WorkFlow\\ToDoFlow', null);
INSERT INTO `pages` VALUES ('96', 'WorkFlow', 'WorkFlow\\ToDoFlowTransfer', null);
INSERT INTO `pages` VALUES ('97', 'HumanResource', 'HumanResource\\EnrollApproval', '47');
INSERT INTO `pages` VALUES ('98', 'HumanResource', 'HumanResource\\ResignApproval', '48');
INSERT INTO `pages` VALUES ('99', 'FinanceSetting', 'FinanceSetting\\FinanceSetting', '49');
INSERT INTO `pages` VALUES ('100', 'Usermanage', 'UserManage\\ResetPwd', '46');
INSERT INTO `pages` VALUES ('101', 'Configuration', 'Configuration\\UpdateInformation', null);
INSERT INTO `pages` VALUES ('102', 'Configuration', 'Configuration\\HomePage', null);
INSERT INTO `pages` VALUES ('103', 'Configuation', 'Configuration\\UploadLogo', null);
INSERT INTO `pages` VALUES ('104', 'Configuation', 'Configuration\\Index', '52');
INSERT INTO `pages` VALUES ('105', 'ClaimRequests', 'ClaimRequests\\PrintClaim', null);
INSERT INTO `pages` VALUES ('106', 'Configuation', 'Common\\OperationLogsManage', '53');
INSERT INTO `pages` VALUES ('107', 'Personalization', 'Personalization\\MessageSetting', null);
INSERT INTO `pages` VALUES ('108', 'LeaveAndOverTime', 'LeaveAndOverTime\\LeaveTimeManagement', '56');
INSERT INTO `pages` VALUES ('109', 'LeaveAndOverTime', 'LeaveAndOverTime\\OverTimeManage', '57');
INSERT INTO `pages` VALUES ('110', 'LeaveAndOverTime', 'LeaveAndOverTime\\LeaveTimeCheck', '58');
INSERT INTO `pages` VALUES ('111', 'LeaveAndOverTime', 'LeaveAndOverTime\\OverTimeCheck', '59');
INSERT INTO `pages` VALUES ('112', 'LeaveAndOverTime', 'LeaveAndOverTime\\WelfareManagement', '61');
INSERT INTO `pages` VALUES ('113', 'LeaveAndOverTime', 'LeaveAndOverTime\\AddWelfare', '61');
INSERT INTO `pages` VALUES ('114', 'LeaveAndOverTime', 'LeaveAndOverTime\\UpdateWelfare', '61');
INSERT INTO `pages` VALUES ('115', 'LeaveAndOverTime', 'LeaveAndOverTime\\StaffWelfareManagement', '62');
INSERT INTO `pages` VALUES ('116', 'LeaveAndOverTime', 'LeaveAndOverTime\\SingleStaff_WelfareManagement', '62');
INSERT INTO `pages` VALUES ('117', 'Personalization', 'Personalization\\BasicInfo', null);
INSERT INTO `pages` VALUES ('118', 'WorkFlow', 'WorkFlow\\Designer', '65');
INSERT INTO `pages` VALUES ('119', 'WorkFlow', 'WorkFlow\\FlowManage', '66');
INSERT INTO `pages` VALUES ('120', 'WorkFlow', 'WorkFlow\\MyWorkFlow', '69');
INSERT INTO `pages` VALUES ('121', 'WorkFlow', 'WorkFlow\\WorkFlowCheck', '70');
INSERT INTO `pages` VALUES ('122', 'WorkFlow', 'WorkFlow\\InitiateWorkFlow', '67');
INSERT INTO `pages` VALUES ('123', 'WorkFlow', 'WorkFlow\\FormDesigner', null);
INSERT INTO `pages` VALUES ('124', 'WorkFlow', 'WorkFlow\\WriteForm', null);
INSERT INTO `pages` VALUES ('125', 'Configuation', 'Configuration\\AppIntegration', '71');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext,
  `Description` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('2', '公文-公文类型增加', '121');
INSERT INTO `permissions` VALUES ('5', '公文-公文类型管理-主页面', '');
INSERT INTO `permissions` VALUES ('6', '公文-公文更新', '');
INSERT INTO `permissions` VALUES ('7', '公文-公文类型更新', '');
INSERT INTO `permissions` VALUES ('8', '公文-待办公文详情', '');
INSERT INTO `permissions` VALUES ('9', '文件-文件管理-主页面', '');
INSERT INTO `permissions` VALUES ('10', '账户-账户管理-主页面', '');
INSERT INTO `permissions` VALUES ('11', '账户-账户添加', '');
INSERT INTO `permissions` VALUES ('12', '账户-账户更新', '');
INSERT INTO `permissions` VALUES ('13', '银行-银行添加', '');
INSERT INTO `permissions` VALUES ('14', '银行-银行管理-主页面', '');
INSERT INTO `permissions` VALUES ('15', '银行-银行更新', '');
INSERT INTO `permissions` VALUES ('16', '财务-报销请求添加', '');
INSERT INTO `permissions` VALUES ('17', '财务-报销请求确认', '');
INSERT INTO `permissions` VALUES ('18', '财务-报销管理-主页面', '');
INSERT INTO `permissions` VALUES ('19', '财务-报销请求预览', '');
INSERT INTO `permissions` VALUES ('20', '财务-个人报销管理-主页面', '');
INSERT INTO `permissions` VALUES ('21', '财务-报销请求更新', '');
INSERT INTO `permissions` VALUES ('22', '财务-货币增加', '');
INSERT INTO `permissions` VALUES ('23', '财务-货币管理-主页面', '');
INSERT INTO `permissions` VALUES ('24', '财务-货币更新', '');
INSERT INTO `permissions` VALUES ('25', '财务-费用类型添加', '');
INSERT INTO `permissions` VALUES ('26', '财务-费用类型管理', '');
INSERT INTO `permissions` VALUES ('27', '财务-费用类型更新', '');
INSERT INTO `permissions` VALUES ('28', 'Home-公文展示页', '');
INSERT INTO `permissions` VALUES ('29', 'Home-首页', '');
INSERT INTO `permissions` VALUES ('30', 'Home-新闻展示页', '');
INSERT INTO `permissions` VALUES ('31', 'Home-代办展示页', '');
INSERT INTO `permissions` VALUES ('32', '人事-备注添加', '');
INSERT INTO `permissions` VALUES ('33', '人事-入职添加', '');
INSERT INTO `permissions` VALUES ('34', '人事-个人档案添加', '');
INSERT INTO `permissions` VALUES ('35', '人事-入职管理-主页面', '');
INSERT INTO `permissions` VALUES ('36', '人事-入职流程详细', '');
INSERT INTO `permissions` VALUES ('37', '人事-首页', '');
INSERT INTO `permissions` VALUES ('38', '人事-个人档案详细', '');
INSERT INTO `permissions` VALUES ('39', '人事-个人档案管理', '');
INSERT INTO `permissions` VALUES ('40', '人事-记录管理', '');
INSERT INTO `permissions` VALUES ('41', '人事-离职管理-主页面', '');
INSERT INTO `permissions` VALUES ('42', '人事-离职流程详细', '');
INSERT INTO `permissions` VALUES ('43', '人事-人事档案更新', '');
INSERT INTO `permissions` VALUES ('44', '人事-人事档案上传', '');
INSERT INTO `permissions` VALUES ('45', '新闻-新闻添加', '');
INSERT INTO `permissions` VALUES ('46', '新闻-新闻类型添加', '');
INSERT INTO `permissions` VALUES ('47', '新闻-新闻首页', '');
INSERT INTO `permissions` VALUES ('48', '新闻-新闻详情', '');
INSERT INTO `permissions` VALUES ('49', '新闻-新闻列表', '');
INSERT INTO `permissions` VALUES ('50', '新闻-新闻管理-主页面', '');
INSERT INTO `permissions` VALUES ('51', '新闻-新闻类型管理-主页面', '');
INSERT INTO `permissions` VALUES ('52', '新闻-新闻更新', '');
INSERT INTO `permissions` VALUES ('53', '新闻-类型更新', '');
INSERT INTO `permissions` VALUES ('54', '组织-组织添加', '');
INSERT INTO `permissions` VALUES ('55', '组织-组织管理', '');
INSERT INTO `permissions` VALUES ('56', '组织-组织更新', '');
INSERT INTO `permissions` VALUES ('57', '个人信息-账户状态', '');
INSERT INTO `permissions` VALUES ('58', '个人信息-首页', '');
INSERT INTO `permissions` VALUES ('59', '个人信息-密码更改', '');
INSERT INTO `permissions` VALUES ('60', '个人信息-头像上传', '');
INSERT INTO `permissions` VALUES ('61', '用户管理-用户添加', '');
INSERT INTO `permissions` VALUES ('62', '用户管理-首页', '');
INSERT INTO `permissions` VALUES ('63', '用户管理-用户更新', '');
INSERT INTO `permissions` VALUES ('64', '权限管理', '控制权限设置');
INSERT INTO `permissions` VALUES ('65', '官网-新闻添加', '');
INSERT INTO `permissions` VALUES ('66', '官网-新闻审批', '');
INSERT INTO `permissions` VALUES ('67', '官网-招聘模块', '拥有整个官网招聘模块权限');
INSERT INTO `permissions` VALUES ('68', '所有页面权限', '拥有整系统所有权限');
INSERT INTO `permissions` VALUES ('69', '系统首页显示权限', '拥有系统的首页显示权限');
INSERT INTO `permissions` VALUES ('70', '人事-入职审批', '');
INSERT INTO `permissions` VALUES ('71', '人事-离职审批', '');
INSERT INTO `permissions` VALUES ('72', '财务-显示配置', '');
INSERT INTO `permissions` VALUES ('73', '普通管理员权限', '拥有除权限管理之外的所有权限。');
INSERT INTO `permissions` VALUES ('74', '公文-公文详情', '');
INSERT INTO `permissions` VALUES ('75', '个人信息-消息设置', '');
INSERT INTO `permissions` VALUES ('76', '12', '11');
INSERT INTO `permissions` VALUES ('78', '1', '1');
INSERT INTO `permissions` VALUES ('79', '123', '1');
INSERT INTO `permissions` VALUES ('80', '10086', '10086');
INSERT INTO `permissions` VALUES ('81', '111', '111');
INSERT INTO `permissions` VALUES ('82', 'ad', 'ad');
INSERT INTO `permissions` VALUES ('84', 'asd', 'asd');
INSERT INTO `permissions` VALUES ('85', '12', '12');
INSERT INTO `permissions` VALUES ('86', '123', '123');
INSERT INTO `permissions` VALUES ('87', 'qwe', 'qwe');
INSERT INTO `permissions` VALUES ('88', 'asdasd', 'asdasd');
INSERT INTO `permissions` VALUES ('89', '123123', '123123');
INSERT INTO `permissions` VALUES ('90', '1', '1');
INSERT INTO `permissions` VALUES ('91', 'ert', 'ert');
INSERT INTO `permissions` VALUES ('92', '1', '1');

-- ----------------------------
-- Table structure for permissionsroles
-- ----------------------------
DROP TABLE IF EXISTS `permissionsroles`;
CREATE TABLE `permissionsroles` (
  `Permissions_Id` int(11) DEFAULT NULL,
  `Roles_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissionsroles
-- ----------------------------
INSERT INTO `permissionsroles` VALUES ('61', '4');
INSERT INTO `permissionsroles` VALUES ('62', '4');
INSERT INTO `permissionsroles` VALUES ('63', '4');
INSERT INTO `permissionsroles` VALUES ('69', '4');
INSERT INTO `permissionsroles` VALUES ('45', '5');
INSERT INTO `permissionsroles` VALUES ('69', '5');
INSERT INTO `permissionsroles` VALUES ('49', '6');
INSERT INTO `permissionsroles` VALUES ('50', '6');
INSERT INTO `permissionsroles` VALUES ('69', '6');
INSERT INTO `permissionsroles` VALUES ('54', '7');
INSERT INTO `permissionsroles` VALUES ('55', '7');
INSERT INTO `permissionsroles` VALUES ('56', '7');
INSERT INTO `permissionsroles` VALUES ('69', '7');
INSERT INTO `permissionsroles` VALUES ('65', '8');
INSERT INTO `permissionsroles` VALUES ('69', '8');
INSERT INTO `permissionsroles` VALUES ('66', '9');
INSERT INTO `permissionsroles` VALUES ('69', '9');
INSERT INTO `permissionsroles` VALUES ('67', '10');
INSERT INTO `permissionsroles` VALUES ('69', '10');
INSERT INTO `permissionsroles` VALUES ('1', '11');
INSERT INTO `permissionsroles` VALUES ('69', '11');
INSERT INTO `permissionsroles` VALUES ('3', '12');
INSERT INTO `permissionsroles` VALUES ('4', '12');
INSERT INTO `permissionsroles` VALUES ('6', '12');
INSERT INTO `permissionsroles` VALUES ('8', '12');
INSERT INTO `permissionsroles` VALUES ('69', '12');
INSERT INTO `permissionsroles` VALUES ('74', '12');
INSERT INTO `permissionsroles` VALUES ('17', '13');
INSERT INTO `permissionsroles` VALUES ('19', '13');
INSERT INTO `permissionsroles` VALUES ('21', '13');
INSERT INTO `permissionsroles` VALUES ('10', '14');
INSERT INTO `permissionsroles` VALUES ('11', '14');
INSERT INTO `permissionsroles` VALUES ('12', '14');
INSERT INTO `permissionsroles` VALUES ('2', '14');
INSERT INTO `permissionsroles` VALUES ('14', '14');
INSERT INTO `permissionsroles` VALUES ('15', '14');
INSERT INTO `permissionsroles` VALUES ('18', '14');
INSERT INTO `permissionsroles` VALUES ('21', '14');
INSERT INTO `permissionsroles` VALUES ('22', '14');
INSERT INTO `permissionsroles` VALUES ('23', '14');
INSERT INTO `permissionsroles` VALUES ('24', '14');
INSERT INTO `permissionsroles` VALUES ('25', '14');
INSERT INTO `permissionsroles` VALUES ('26', '14');
INSERT INTO `permissionsroles` VALUES ('27', '14');
INSERT INTO `permissionsroles` VALUES ('69', '14');
INSERT INTO `permissionsroles` VALUES ('72', '14');
INSERT INTO `permissionsroles` VALUES ('32', '15');
INSERT INTO `permissionsroles` VALUES ('33', '15');
INSERT INTO `permissionsroles` VALUES ('34', '15');
INSERT INTO `permissionsroles` VALUES ('35', '15');
INSERT INTO `permissionsroles` VALUES ('36', '15');
INSERT INTO `permissionsroles` VALUES ('37', '15');
INSERT INTO `permissionsroles` VALUES ('38', '15');
INSERT INTO `permissionsroles` VALUES ('39', '15');
INSERT INTO `permissionsroles` VALUES ('40', '15');
INSERT INTO `permissionsroles` VALUES ('41', '15');
INSERT INTO `permissionsroles` VALUES ('42', '15');
INSERT INTO `permissionsroles` VALUES ('43', '15');
INSERT INTO `permissionsroles` VALUES ('44', '15');
INSERT INTO `permissionsroles` VALUES ('69', '15');
INSERT INTO `permissionsroles` VALUES ('70', '15');
INSERT INTO `permissionsroles` VALUES ('71', '15');
INSERT INTO `permissionsroles` VALUES ('36', '16');
INSERT INTO `permissionsroles` VALUES ('42', '16');
INSERT INTO `permissionsroles` VALUES ('69', '16');
INSERT INTO `permissionsroles` VALUES ('70', '16');
INSERT INTO `permissionsroles` VALUES ('71', '16');
INSERT INTO `permissionsroles` VALUES ('68', '17');
INSERT INTO `permissionsroles` VALUES ('9', '18');
INSERT INTO `permissionsroles` VALUES ('16', '18');
INSERT INTO `permissionsroles` VALUES ('19', '18');
INSERT INTO `permissionsroles` VALUES ('20', '18');
INSERT INTO `permissionsroles` VALUES ('21', '18');
INSERT INTO `permissionsroles` VALUES ('29', '18');
INSERT INTO `permissionsroles` VALUES ('48', '18');
INSERT INTO `permissionsroles` VALUES ('57', '18');
INSERT INTO `permissionsroles` VALUES ('58', '18');
INSERT INTO `permissionsroles` VALUES ('59', '18');
INSERT INTO `permissionsroles` VALUES ('60', '18');
INSERT INTO `permissionsroles` VALUES ('69', '18');
INSERT INTO `permissionsroles` VALUES ('74', '18');
INSERT INTO `permissionsroles` VALUES ('75', '18');
INSERT INTO `permissionsroles` VALUES ('73', '19');

-- ----------------------------
-- Table structure for por_article
-- ----------------------------
DROP TABLE IF EXISTS `por_article`;
CREATE TABLE `por_article` (
  `Id` int(11) NOT NULL,
  `Title` longtext,
  `Author` longtext,
  `Origin` longtext,
  `QuoteUrl` longtext,
  `Content` longtext,
  `IsTop` int(11) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `Hits` int(11) DEFAULT NULL,
  `AuditorName` longtext,
  `AuditStatus` int(11) DEFAULT NULL,
  `AuditTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EditorName` longtext,
  `CreateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SubTitle` longtext,
  `ImageUrl` longtext,
  `Auditor_Id` int(11) DEFAULT NULL,
  `Editor_Id` int(11) DEFAULT NULL,
  `Category_Id` int(11) DEFAULT NULL,
  `AnotherCategory_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of por_article
-- ----------------------------
INSERT INTO `por_article` VALUES ('1', '11', '11', '11', '', '&lt;p&gt;11&lt;/p&gt;', '0', '0', '8', null, '0', '2016-03-16 16:41:16', 'admin', '2016-03-16 16:41:16', '2016-03-16 16:41:16', '11', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('3', '1', '', '', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:51:12', 'ceo', '2016-07-13 16:51:12', '2016-07-13 16:51:12', '', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('4', '1', '11', '11', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:51:24', 'ceo', '2016-07-13 16:51:24', '2016-07-13 16:51:24', '11', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('5', '11', '1', '1', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:51:32', 'ceo', '2016-07-13 16:51:32', '2016-07-13 16:51:32', '1', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('6', '15', '12', '21', '', '&lt;p&gt;1&lt;/p&gt;', '1', '0', '3', null, '1', '2016-12-16 11:13:47', 'ceo', '2016-07-13 16:52:02', '2016-07-13 16:52:02', '', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('7', '12', '2', '2', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '1', null, '0', '2016-07-13 16:52:09', 'ceo', '2016-07-13 16:52:09', '2016-07-13 16:52:09', '', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('8', '12', '12', '2', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:52:19', 'ceo', '2016-07-13 16:52:19', '2016-07-13 16:52:19', '2', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('9', '1', '2', '2', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '3', null, '0', '2016-07-13 16:52:26', 'ceo', '2016-07-13 16:52:26', '2016-07-13 16:52:26', '2', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('10', '1', '2', '2', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:52:35', 'ceo', '2016-07-13 16:52:35', '2016-07-13 16:52:35', '2', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('12', '1', '2', '', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:52:51', 'ceo', '2016-07-13 16:52:51', '2016-07-13 16:52:51', '3', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('13', '14', '', '2', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:53:02', 'ceo', '2016-07-13 16:53:02', '2016-07-13 16:53:02', '2', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('15', '1', '', '', '', '&lt;p&gt;1&lt;/p&gt;', '0', '0', '0', null, '0', '2016-07-13 16:53:08', 'ceo', '2016-07-13 16:53:08', '2016-07-13 16:53:08', '', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('16', '1', '', '', '', '&lt;p&gt;hhghtrgrth&lt;/p&gt;', '0', '0', '9', null, '1', '2016-10-25 09:24:12', 'jiewu', '2016-07-13 16:53:15', '2016-10-24 17:10:18', 'hhhhhhh', '', null, null, '1', null);
INSERT INTO `por_article` VALUES ('17', '2222', '', '', '', '&lt;p&gt;2222&lt;/p&gt;', '0', '0', '4', null, '1', '2016-10-25 09:34:04', 'admin', '2016-10-25 09:22:30', '2016-10-25 09:22:30', '2222', '', null, null, '5', null);

-- ----------------------------
-- Table structure for por_articlecategory
-- ----------------------------
DROP TABLE IF EXISTS `por_articlecategory`;
CREATE TABLE `por_articlecategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext,
  `ParentId` int(11) DEFAULT NULL,
  `LevelPath` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of por_articlecategory
-- ----------------------------
INSERT INTO `por_articlecategory` VALUES ('1', '走进群畅', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('2', '公司新闻', '1', '1');
INSERT INTO `por_articlecategory` VALUES ('3', '群畅简介', '1', '1');
INSERT INTO `por_articlecategory` VALUES ('4', '群畅文化', '1', '1');
INSERT INTO `por_articlecategory` VALUES ('5', '组织结构', '1', '1');
INSERT INTO `por_articlecategory` VALUES ('6', '业务介绍', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('7', '银承票据贴现咨询', '6', '1');
INSERT INTO `por_articlecategory` VALUES ('8', '同业资金业务', '6', '1');
INSERT INTO `por_articlecategory` VALUES ('9', '贸金业务', '6', '1');
INSERT INTO `por_articlecategory` VALUES ('10', '市场观点', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('11', '金融市场', '10', '1');
INSERT INTO `por_articlecategory` VALUES ('12', '经济政策', '10', '1');
INSERT INTO `por_articlecategory` VALUES ('13', 'shibro行情指向', '10', '1');
INSERT INTO `por_articlecategory` VALUES ('14', '招贤纳士', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('15', '人才理念', '14', '1');
INSERT INTO `por_articlecategory` VALUES ('16', '招聘职位', '14', '1');
INSERT INTO `por_articlecategory` VALUES ('17', '联系我们', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('18', '总公司', '17', '1');
INSERT INTO `por_articlecategory` VALUES ('19', '群畅网点', '17', '1');
INSERT INTO `por_articlecategory` VALUES ('20', '1', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('21', '1', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('22', '2', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('23', '2', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('24', 'wuyifei', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('25', '123', '0', '0');
INSERT INTO `por_articlecategory` VALUES ('26', '13', '0', '0');

-- ----------------------------
-- Table structure for por_candidate
-- ----------------------------
DROP TABLE IF EXISTS `por_candidate`;
CREATE TABLE `por_candidate` (
  `Id` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `BirthPlace` varchar(50) DEFAULT NULL,
  `EthnicGroup` varchar(50) DEFAULT NULL,
  `Degree` varchar(50) DEFAULT NULL,
  `Education` varchar(50) DEFAULT NULL,
  `GraduatedCollege` varchar(50) DEFAULT NULL,
  `GraduatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Major` varchar(50) DEFAULT NULL,
  `Skill` longtext,
  `DateOfBirth` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PoliticalBackground` varchar(50) DEFAULT NULL,
  `MaritalStatus` longtext,
  `PersonalPhone` varchar(50) DEFAULT NULL,
  `HomeAddress` longtext,
  `NationalID` varchar(50) DEFAULT NULL,
  `PersonalEmail` longtext,
  `DesiredSalary` int(11) DEFAULT NULL,
  `EducationExperience` longtext,
  `WorkExperience` longtext,
  `SelfEvaluation` longtext,
  `DesiredJob_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of por_candidate
-- ----------------------------

-- ----------------------------
-- Table structure for por_recdepartment
-- ----------------------------
DROP TABLE IF EXISTS `por_recdepartment`;
CREATE TABLE `por_recdepartment` (
  `Id` int(11) DEFAULT NULL,
  `Name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of por_recdepartment
-- ----------------------------
INSERT INTO `por_recdepartment` VALUES ('1', '招聘部门');
INSERT INTO `por_recdepartment` VALUES ('3', '测试部门');
INSERT INTO `por_recdepartment` VALUES ('4', '管理部门');
INSERT INTO `por_recdepartment` VALUES ('5', '人事部门');
INSERT INTO `por_recdepartment` VALUES ('6', '财务部门');
INSERT INTO `por_recdepartment` VALUES ('7', '仓管部门');
INSERT INTO `por_recdepartment` VALUES ('8', '运营部门');
INSERT INTO `por_recdepartment` VALUES ('9', '开发部门');

-- ----------------------------
-- Table structure for por_recruitment
-- ----------------------------
DROP TABLE IF EXISTS `por_recruitment`;
CREATE TABLE `por_recruitment` (
  `Id` int(11) DEFAULT NULL,
  `Job` longtext,
  `HeadCount` int(11) DEFAULT NULL,
  `Description` longtext,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Hits` int(11) DEFAULT NULL,
  `RecDepartment_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of por_recruitment
-- ----------------------------
INSERT INTO `por_recruitment` VALUES ('1', '初级', '2', '好', '2016-10-24 17:13:23', '2016-10-24 00:00:00', '0', '1');
INSERT INTO `por_recruitment` VALUES ('2', '测试岗', '12', '1、\n2、\n3、', '2016-10-25 09:27:56', '2016-10-26 00:00:00', '0', '3');

-- ----------------------------
-- Table structure for positionroles
-- ----------------------------
DROP TABLE IF EXISTS `positionroles`;
CREATE TABLE `positionroles` (
  `Id` int(11) DEFAULT NULL,
  `Name` longtext,
  `Description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of positionroles
-- ----------------------------
INSERT INTO `positionroles` VALUES ('1', '部门主管', '部门主管');
INSERT INTO `positionroles` VALUES ('2', '普通员工', '普通员工');

-- ----------------------------
-- Table structure for readmarkrecords
-- ----------------------------
DROP TABLE IF EXISTS `readmarkrecords`;
CREATE TABLE `readmarkrecords` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserCName` longtext,
  `ReadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Announcement_Id` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readmarkrecords
-- ----------------------------
INSERT INTO `readmarkrecords` VALUES ('1', '小明', '2017-03-07 14:44:34', '31', '19');
INSERT INTO `readmarkrecords` VALUES ('7', '超级管理员', '2017-03-07 15:34:02', '34', '1');
INSERT INTO `readmarkrecords` VALUES ('8', '超级管理员', '2017-03-10 17:18:07', '35', '1');

-- ----------------------------
-- Table structure for resignprocessrecords
-- ----------------------------
DROP TABLE IF EXISTS `resignprocessrecords`;
CREATE TABLE `resignprocessrecords` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Comment` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `OperationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_Id` int(11) DEFAULT NULL,
  `StaffInfos_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resignprocessrecords
-- ----------------------------
INSERT INTO `resignprocessrecords` VALUES ('12', 'oooooo', '1', '2017-03-20 00:00:00', '1', '70');
INSERT INTO `resignprocessrecords` VALUES ('13', 'tttttt', '5', '2017-03-20 00:00:00', '1', '70');
INSERT INTO `resignprocessrecords` VALUES ('14', '66666', '6', '2017-03-20 00:00:00', '1', '70');
INSERT INTO `resignprocessrecords` VALUES ('18', 'YYYYY', '1', '2017-03-22 00:00:00', '1', '71');
INSERT INTO `resignprocessrecords` VALUES ('19', 'YYYYY', '5', '2017-03-22 00:00:00', '1', '71');
INSERT INTO `resignprocessrecords` VALUES ('20', 'YYYY', '6', '2017-03-22 00:00:00', '1', '71');
INSERT INTO `resignprocessrecords` VALUES ('21', '离职审批通过', '1', '2017-03-13 00:00:00', '1', '25');
INSERT INTO `resignprocessrecords` VALUES ('22', '同意离职申请', '5', '2017-03-13 00:00:00', '1', '25');
INSERT INTO `resignprocessrecords` VALUES ('23', '测试', '1', '2016-10-24 00:00:00', '1', '16');
INSERT INTO `resignprocessrecords` VALUES ('24', '同意离职', '5', '2016-10-24 00:00:00', '1', '16');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext,
  `Description` longtext,
  `ExtendRoleId` int(11) DEFAULT NULL,
  `MarkName` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'MIS20_Member', 'mis20 base role, it is not allowed to be delete', '0', 'MIS20_Member');
INSERT INTO `roles` VALUES ('2', 'MIS20_Administrator', '', '1', 'MIS20_Administrator');
INSERT INTO `roles` VALUES ('3', 'MIS20_Log_Administrator', 'Log Manager', '1', 'MIS20_Log_Administrator');
INSERT INTO `roles` VALUES ('4', '用户-管理员', '负责管理用户', '1', 'User-Admin');
INSERT INTO `roles` VALUES ('5', '新闻-编辑者', '负责编辑新闻模块的新闻', '1', 'News-Editor');
INSERT INTO `roles` VALUES ('6', '新闻-审核者', '负责审核新闻模块的新闻', '1', 'News-Checker');
INSERT INTO `roles` VALUES ('7', '组织-管理员', '负责管理组织', '1', 'Org-Admin');
INSERT INTO `roles` VALUES ('8', '官网-新闻-编辑者', '负责编辑官网模块新闻', '1', 'Por_News-Editor');
INSERT INTO `roles` VALUES ('9', '官网-新闻-审核者', '负责审核官网新闻', '1', 'Por_News-Checker');
INSERT INTO `roles` VALUES ('10', '官网-人员招聘', '负责官网的人员招聘', '1', 'Por_Recruitment');
INSERT INTO `roles` VALUES ('11', '公文-编辑者', '负责公文的编辑', '1', 'Announcement-Editor');
INSERT INTO `roles` VALUES ('12', '公文-审核者', '负责公文的审核', '1', 'Announcement-Checker');
INSERT INTO `roles` VALUES ('13', '财务-审批者', '负责财务的审批', '1', 'Finance-Checker');
INSERT INTO `roles` VALUES ('14', '财务-出纳', '出纳人员', '1', 'Finance-Cashier');
INSERT INTO `roles` VALUES ('15', 'HR', null, '1', 'HR');
INSERT INTO `roles` VALUES ('16', '行政人员', null, '1', 'AdminStaff');
INSERT INTO `roles` VALUES ('17', '超级管理员', null, '1', 'SuperAdmin');
INSERT INTO `roles` VALUES ('18', '普通用户', null, '1', 'RegularUser');
INSERT INTO `roles` VALUES ('19', '普通管理员', null, '1', 'RegularAdmin');
INSERT INTO `roles` VALUES ('20', '财务总监', null, '1', 'cwzj');
INSERT INTO `roles` VALUES ('21', '分管领导', null, '1', 'fgld');
INSERT INTO `roles` VALUES ('22', '总经理', null, '1', 'zjl');
INSERT INTO `roles` VALUES ('23', '董事长', null, '1', 'dsz');

-- ----------------------------
-- Table structure for rolesapplications
-- ----------------------------
DROP TABLE IF EXISTS `rolesapplications`;
CREATE TABLE `rolesapplications` (
  `Roles_Id` int(11) DEFAULT NULL,
  `Applications_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolesapplications
-- ----------------------------

-- ----------------------------
-- Table structure for staffinfos
-- ----------------------------
DROP TABLE IF EXISTS `staffinfos`;
CREATE TABLE `staffinfos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StaffNo` longtext,
  `ChineseName` longtext,
  `ForeignName` longtext,
  `Gender` int(11) DEFAULT NULL,
  `EthnicGroup` longtext,
  `PersonalPhone` longtext,
  `OfficePhone` longtext,
  `PersonalEmail` longtext,
  `CorporationEmail` longtext,
  `MaritalStatus` int(11) DEFAULT NULL,
  `Degree` longtext,
  `EducationBackground` longtext,
  `GraduatedCollege` longtext,
  `GraduatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Major` longtext,
  `EnglishLevel` longtext,
  `WorkExperienceYear` int(11) DEFAULT NULL,
  `ZhiCheng` longtext,
  `BirthPlace` longtext,
  `DateOfBirth` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PoliticalBackground` longtext,
  `BackgroundSurvey` longtext,
  `NationalID` longtext,
  `HomeAddress` longtext,
  `HukouAddress` longtext,
  `StaffType` int(11) DEFAULT NULL,
  `StaffStatus` int(11) DEFAULT NULL,
  `ProbationStatus` longtext,
  `ProbationPassDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EnrollDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FirstContractStart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FirstContractEnd` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CurrentContractStart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CurrentContractEnd` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RoleNames` longtext,
  `Mentor` longtext,
  `EmergentContact` longtext,
  `EmergentPhone` longtext,
  `Remark` longtext,
  `ResumeUpdatedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Nationality` longtext,
  `RecruitmentChannel` longtext,
  `Owner` longtext,
  `JobBand` longtext,
  `LegalEntity` longtext,
  `ResignDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ResignReason` longtext,
  `NextIntention` longtext,
  `HRPartner` longtext,
  `CreateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EnrollStatus` int(11) DEFAULT NULL,
  `ResignStatus` int(11) DEFAULT NULL,
  `OrgId` longtext,
  `User_Id` int(11) DEFAULT NULL,
  `Title_Id` int(11) DEFAULT NULL,
  `PositionRole_Id` int(11) DEFAULT NULL,
  `Location_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staffinfos
-- ----------------------------
INSERT INTO `staffinfos` VALUES ('1', 'zhilinzhang', '张志林', '', '0', '汉', '18969144833', '', '', '', '0', '', '', '', '2017-03-27 00:00:00', '', '', '5', '', '', '2017-02-23 00:00:00', '', '', '111111111111111111', '', '', '1', '0', '0', '2017-02-23 00:00:00', '2016-07-14 00:00:00', '2015-02-02 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '1', 'xxx', '', '', '备注', '2017-02-23 00:00:00', '', '', '', '', '1', '2017-04-06 15:53:08', null, null, 'partner', '2017-04-06 15:53:08', '2017-04-06 15:53:08', null, null, '1', null, '2', null, '2');
INSERT INTO `staffinfos` VALUES ('2', 'sichongcao', '曹思翀', '', '0', '汉', '15068750696', '', '', '', '0', '', '', '', '2017-02-23 16:03:48', '', '', '1', '', '', '2017-02-23 16:03:48', '', '', '111111111111111111', '', '', '1', '1', '', '2017-02-23 16:03:48', '2016-02-01 16:36:27', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '', '', '', '', '', '2017-02-23 16:03:48', '', '', '', '', '上海群畅金融服务有限公司', '2017-02-23 16:03:48', '', '', '', '2016-02-01 16:36:27', '2016-02-01 16:36:27', '3', '0', '4', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('3', 'feichen', '陈飞', '丢丢', '0', '汉', '13067903053', '', '', '', '0', '', '', '', '2017-03-27 10:10:45', '', '', '1', '', '', '2017-02-23 00:00:00', '', '', '111111111111111111', '', '', '1', '1', '0', '2017-02-23 00:00:00', '2016-02-01 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '1', '', '', '', '', '2017-02-23 00:00:00', '', '', '', '', '1', '2017-03-13 17:33:33', null, null, '', '2017-03-13 17:33:33', '2017-03-13 17:33:33', null, '0', '4', null, '2', null, '2');
INSERT INTO `staffinfos` VALUES ('4', 'yanggao', '高洋', '', '0', '汉', '18668136389', '', '', '', '0', '', '', '', '2017-02-23 16:03:48', '', '', '0', '', '', '2017-02-23 16:03:48', '', '', '111111111111111111', '', '', '1', '1', '', '2017-02-23 16:03:48', '2016-10-24 16:48:38', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '', '', '', '', '', '2017-02-23 16:03:48', '', '', '', '', '上海群畅金融服务有限公司', '2017-02-23 16:03:48', '', '', '', '2016-02-01 16:36:27', '2016-02-01 16:36:27', '3', '0', '1', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('5', 'dandanjiang', '蒋丹丹', '', '0', '汉', '18758864750', '', '', '', '0', '', '', '', '2017-02-23 16:03:48', '', '', '0', '', '', '2017-02-23 16:03:48', '', '', '111111111111111111', '', '', '1', '1', '', '2017-02-23 16:03:48', '2016-10-19 14:58:06', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '', '', '', '', '', '2017-02-23 16:03:48', '', '', '', '', '上海群畅金融服务有限公司', '2017-02-23 16:03:48', '', '', '', '2016-02-01 16:36:27', '2016-02-01 16:36:27', '3', '0', '1', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('6', 'xingmingran', '冉祥明', '', '0', '汉', '18857168663', '', '', '', '0', '', '', '', '2017-02-23 16:03:48', '', '', '1', '', '', '2017-02-23 16:03:48', '', '', '111111111111111111', '', '', '1', '1', '', '2017-02-23 16:03:48', '2016-02-01 16:36:27', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '', '', '', '', '', '2017-02-23 16:03:48', '', '', '', '', '上海群畅金融服务有限公司', '2017-02-23 16:03:48', '', '', '', '2016-02-01 16:36:27', '2016-02-01 16:36:27', '3', '0', '4', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('7', 'yubochen', '陈欲菠', '', '0', '汉', '15157140480', '', '', '', '0', '', '', '', '2017-02-23 16:03:48', '', '', '1', '', '', '2017-02-23 16:03:48', '', '', '111111111111111111', '', '', '1', '1', '', '2017-02-23 16:03:48', '2016-02-01 16:36:28', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '2017-02-23 16:03:48', '', '', '', '', '', '2017-02-23 16:03:48', '', '', '', '', '上海群畅金融服务有限公司', '2017-02-23 16:03:48', '', '', '', '2016-02-01 16:36:28', '2016-02-01 16:36:28', '3', '0', '4', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('16', 'zhaolu', '赵璐', 'laney', '1', '', '', '', '', '', '0', '', '', '', '2017-02-23 00:00:00', '', '', '2', '', '', '2017-02-23 00:00:00', '', '', '330183199501292121', '', '', '1', '4', '0', '2017-02-23 00:00:00', '2016-10-24 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', null, '', '', '', '同意离职', '2017-02-23 00:00:00', '', '', '', '', '0', '2017-02-23 00:00:00', '', '', '', '2016-10-24 00:00:00', '2016-10-24 00:00:00', '3', '5', '4', null, '1', '1', '1');
INSERT INTO `staffinfos` VALUES ('20', 'gtt', '高圆圆', '', '1', '', '', '', '', '', '0', '', '', '', '2017-03-22 00:00:00', '', '', '2', '', '', '2017-02-23 00:00:00', '', '', '444555555555555555', '', '', '0', '3', '0', '2017-02-23 00:00:00', '2017-03-11 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', null, '', '', '', '', '2017-02-23 00:00:00', '', '', '', '', '1', '2017-02-23 00:00:00', '', '', '', '2017-03-29 00:00:00', '2017-03-29 00:00:00', '2', '0', '11', null, '1', '1', '1');
INSERT INTO `staffinfos` VALUES ('25', '1456', '阿斯顿', '', '0', '', '', '', '', '', '0', '', '', '', '2017-02-23 00:00:00', '', '', '4', '', '', '2017-02-23 00:00:00', '', '', '123456789123456897', '', '', '0', '4', '0', '2017-02-23 00:00:00', '2017-03-13 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '1', '', '', '', '同意离职申请', '2017-02-23 00:00:00', '', '', '', '', '1', '2017-02-23 00:00:00', '', '', '', '2017-03-13 00:00:00', '2017-03-13 00:00:00', '3', '5', '2', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('28', '1111', '气温', '', '0', '', '', '', '', '', '0', '', '', '', '2017-02-23 00:00:00', '', '', '1', '', '', '2017-02-23 00:00:00', '', '', '123456789123456897', '', '', '0', '1', '0', '2017-02-23 00:00:00', '2017-03-11 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '1', '', '', '', '', '2017-02-23 00:00:00', '', '', '', '', '1', '2017-02-23 00:00:00', '', '', '', '2017-03-11 00:00:00', '2017-03-11 00:00:00', '3', '0', '1', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('31', '33232', '圆圆', 'yy', '0', '', '', '', '', '', '0', '', '', '', '2017-03-10 14:39:45', '', '', '1', '', '', '2017-03-10 14:39:45', '', '', '111111111111111111', '', '', '0', '1', '0', '2017-03-10 14:39:45', '2017-03-10 14:39:45', '2017-03-10 14:39:45', '2017-03-10 14:39:45', '2017-03-10 14:39:45', '2017-03-10 14:39:45', '1', '', '', '', '', '2017-03-10 14:39:45', '', '', '', '', '1', '2017-03-10 14:39:45', null, null, '', '2017-03-10 00:00:00', '2017-03-10 00:00:00', '3', '0', '3', null, '2', null, '2');
INSERT INTO `staffinfos` VALUES ('35', '565656', '小杰', 'jay', '0', '', '', '', '', '', '0', '', '', '', '2017-03-13 11:31:29', '', '', '1', '', '', '2017-03-13 11:31:29', '', '', '111111111111111111', '', '', '0', '1', '0', '2017-03-13 11:31:29', '2017-03-13 11:31:29', '2017-03-13 11:31:29', '2017-03-13 11:31:29', '2017-03-13 11:31:29', '2017-03-13 11:31:29', '1', '', '', '', '', '2017-03-13 11:31:29', '', '', '', '', '1', '2017-03-13 11:31:29', null, null, '', '2017-03-13 00:00:00', '2017-03-13 00:00:00', '3', '0', '3', null, '2', null, '2');
INSERT INTO `staffinfos` VALUES ('41', 'yyyyyy', '小明明', null, '0', '汉', '11111111111', null, null, null, '0', null, null, null, '2017-03-21 15:41:59', null, null, '1', null, null, '2017-03-15 00:00:00', null, null, '111111111111111000', null, null, '1', '3', null, '2017-03-15 00:00:00', '2017-03-15 00:00:00', '2015-02-02 00:00:00', '2017-03-15 00:00:00', '2017-03-15 00:00:00', '2017-03-15 00:00:00', null, 'xxx', null, null, '备注', '2017-03-15 00:00:00', null, null, null, null, '1', '2017-03-15 00:00:00', null, null, 'partner', '2017-03-15 00:00:00', '2017-03-15 00:00:00', '1', '0', '1', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('66', '234532', '小高', null, '0', '汉', '11111111111', null, null, null, '0', null, null, null, '2017-03-21 15:42:02', null, null, '1', null, null, '2017-03-17 00:00:00', null, null, '111111111111111000', null, null, '1', '3', null, '2017-03-17 00:00:00', '2017-03-17 00:00:00', '2015-02-02 00:00:00', '2017-03-17 00:00:00', '2017-03-17 00:00:00', '2017-03-17 00:00:00', null, 'xxx', null, null, '备注', '2017-03-17 00:00:00', null, null, null, null, '1', '2017-03-17 00:00:00', null, null, 'partner', '2017-03-17 00:00:00', '2017-03-17 00:00:00', '1', '0', '1', null, null, null, null);
INSERT INTO `staffinfos` VALUES ('70', '7689', '洋洋', 'yangyang', '0', '', '', '', '', '', '0', '', '', '', '2017-03-20 00:00:00', '', '', '1', '', '', '2017-03-20 00:00:00', '', '', '1111111111', '', '', '0', '2', '0', '2017-03-20 00:00:00', '2017-03-20 00:00:00', '2017-03-20 00:00:00', '2017-03-20 00:00:00', '2017-03-20 00:00:00', '2017-03-20 00:00:00', '1', '', '', '', '66666', '2017-03-20 00:00:00', '', '', '', '', '1', '2017-03-20 00:00:00', '', '', '', '2017-03-20 00:00:00', '2017-03-20 00:00:00', '3', '6', '3', null, '2', null, '2');

-- ----------------------------
-- Table structure for staffwelfares
-- ----------------------------
DROP TABLE IF EXISTS `staffwelfares`;
CREATE TABLE `staffwelfares` (
  `Id` int(11) DEFAULT NULL,
  `BaseDays` float DEFAULT NULL,
  `RemainingDays` float DEFAULT NULL,
  `Hours` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `Type_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staffwelfares
-- ----------------------------
INSERT INTO `staffwelfares` VALUES ('1', '50', '50', '0', '2016', '2', '1');
INSERT INTO `staffwelfares` VALUES ('2', '2', '2', '0', '2016', '2', '2');
INSERT INTO `staffwelfares` VALUES ('3', '0', '0', '3', '2016', '2', '3');
INSERT INTO `staffwelfares` VALUES ('4', '50', '50', '0', '2016', '1', '1');
INSERT INTO `staffwelfares` VALUES ('5', '2', '2', '0', '2016', '1', '2');
INSERT INTO `staffwelfares` VALUES ('6', '0', '0', '0', '2016', '1', '3');
INSERT INTO `staffwelfares` VALUES ('7', '50', '50', '0', '2016', '12', '1');
INSERT INTO `staffwelfares` VALUES ('8', '2', '2', '0', '2016', '12', '2');
INSERT INTO `staffwelfares` VALUES ('9', '0', '0', '0', '2016', '12', '3');
INSERT INTO `staffwelfares` VALUES ('10', '50', '50', '0', '2016', '13', '1');
INSERT INTO `staffwelfares` VALUES ('11', '2', '2', '0', '2016', '13', '2');
INSERT INTO `staffwelfares` VALUES ('12', '0', '0', '0', '2016', '13', '3');
INSERT INTO `staffwelfares` VALUES ('13', '50', '50', '0', '2016', '10', '1');
INSERT INTO `staffwelfares` VALUES ('14', '2', '2', '0', '2016', '10', '2');
INSERT INTO `staffwelfares` VALUES ('15', '0', '0', '0', '2016', '10', '3');
INSERT INTO `staffwelfares` VALUES ('16', '50', '50', '0', '2016', '7', '1');
INSERT INTO `staffwelfares` VALUES ('17', '2', '2', '0', '2016', '7', '2');
INSERT INTO `staffwelfares` VALUES ('18', '0', '0', '0', '2016', '7', '3');
INSERT INTO `staffwelfares` VALUES ('19', '50', '50', '0', '2016', '9', '1');
INSERT INTO `staffwelfares` VALUES ('20', '2', '2', '0', '2016', '9', '2');
INSERT INTO `staffwelfares` VALUES ('21', '0', '0', '0', '2016', '9', '3');
INSERT INTO `staffwelfares` VALUES ('22', '50', '50', '0', '2016', '4', '1');
INSERT INTO `staffwelfares` VALUES ('23', '2', '2', '0', '2016', '4', '2');
INSERT INTO `staffwelfares` VALUES ('24', '0', '0', '0', '2016', '4', '3');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `orderid` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('2', '1');
INSERT INTO `tb_order` VALUES ('3', '1');
INSERT INTO `tb_order` VALUES ('4', '1');

-- ----------------------------
-- Table structure for tb_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderitem`;
CREATE TABLE `tb_orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) DEFAULT NULL,
  `sellprice` int(10) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orderitem
-- ----------------------------
INSERT INTO `tb_orderitem` VALUES ('1', 'asd', null, '4');
INSERT INTO `tb_orderitem` VALUES ('2', 'wuyifei', null, '4');

-- ----------------------------
-- Table structure for titles
-- ----------------------------
DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles` (
  `Id` int(11) DEFAULT NULL,
  `Name` longtext,
  `Description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of titles
-- ----------------------------
INSERT INTO `titles` VALUES ('1', '正式员工', null);

-- ----------------------------
-- Table structure for todolists
-- ----------------------------
DROP TABLE IF EXISTS `todolists`;
CREATE TABLE `todolists` (
  `Id` int(11) DEFAULT NULL,
  `Title` longtext,
  `Origin` int(11) DEFAULT NULL,
  `Operation` int(11) DEFAULT NULL,
  `RelatedId` int(11) DEFAULT NULL,
  `IsUrgent` int(11) DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Role_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of todolists
-- ----------------------------
INSERT INTO `todolists` VALUES ('5', '11', '2', '0', '1', '0', '2016-03-16 16:41:18', '9');
INSERT INTO `todolists` VALUES ('126', '2', '4', '0', '5', '1', '2016-07-12 15:39:16', '13');
INSERT INTO `todolists` VALUES ('127', '2', '4', '0', '6', '1', '2016-07-12 15:39:17', '13');
INSERT INTO `todolists` VALUES ('128', '2', '4', '0', '7', '1', '2016-07-12 15:40:31', '13');
INSERT INTO `todolists` VALUES ('129', '2', '4', '0', '8', '1', '2016-07-12 15:42:12', '13');
INSERT INTO `todolists` VALUES ('130', '2', '4', '0', '9', '1', '2016-07-12 15:42:13', '13');
INSERT INTO `todolists` VALUES ('131', '2', '4', '0', '10', '1', '2016-07-12 15:42:14', '13');
INSERT INTO `todolists` VALUES ('133', '2', '4', '0', '12', '1', '2016-07-12 15:45:13', '13');
INSERT INTO `todolists` VALUES ('134', '2', '4', '0', '13', '1', '2016-07-12 15:45:48', '13');
INSERT INTO `todolists` VALUES ('138', '1', '2', '0', '3', '0', '2016-07-13 16:51:13', '9');
INSERT INTO `todolists` VALUES ('139', '1', '2', '0', '4', '0', '2016-07-13 16:51:24', '9');
INSERT INTO `todolists` VALUES ('140', '11', '2', '0', '5', '0', '2016-07-13 16:51:33', '9');
INSERT INTO `todolists` VALUES ('142', '12', '2', '0', '7', '0', '2016-07-13 16:52:09', '9');
INSERT INTO `todolists` VALUES ('143', '12', '2', '0', '8', '0', '2016-07-13 16:52:19', '9');
INSERT INTO `todolists` VALUES ('144', '1', '2', '0', '9', '0', '2016-07-13 16:52:26', '9');
INSERT INTO `todolists` VALUES ('145', '1', '2', '0', '10', '0', '2016-07-13 16:52:35', '9');
INSERT INTO `todolists` VALUES ('147', '1', '2', '0', '12', '0', '2016-07-13 16:52:52', '9');
INSERT INTO `todolists` VALUES ('148', '14', '2', '0', '13', '0', '2016-07-13 16:53:02', '9');
INSERT INTO `todolists` VALUES ('150', '1', '2', '0', '15', '0', '2016-07-13 16:53:08', '9');
INSERT INTO `todolists` VALUES ('157', '2', '4', '0', '5', '1', '2016-10-25 11:04:13', '13');
INSERT INTO `todolists` VALUES ('158', '2', '4', '0', '5', '1', '2016-10-25 11:04:40', '13');
INSERT INTO `todolists` VALUES ('159', '2', '4', '0', '13', '1', '2016-10-25 11:05:14', '13');
INSERT INTO `todolists` VALUES ('160', '2', '4', '0', '12', '1', '2016-10-25 11:05:55', '13');
INSERT INTO `todolists` VALUES ('161', '2', '4', '0', '5', '1', '2016-10-25 11:07:05', '13');
INSERT INTO `todolists` VALUES ('162', '2', '4', '0', '5', '1', '2016-10-25 11:07:31', '13');
INSERT INTO `todolists` VALUES ('163', '2', '4', '0', '5', '1', '2016-10-25 11:09:22', '13');
INSERT INTO `todolists` VALUES ('170', 'ewrfr', '1', '0', '9', '0', '2016-10-25 12:20:04', '6');

-- ----------------------------
-- Table structure for userroles
-- ----------------------------
DROP TABLE IF EXISTS `userroles`;
CREATE TABLE `userroles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Role_Id` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userroles
-- ----------------------------
INSERT INTO `userroles` VALUES ('2', '19', '2');
INSERT INTO `userroles` VALUES ('4', '18', '4');
INSERT INTO `userroles` VALUES ('5', '18', '5');
INSERT INTO `userroles` VALUES ('6', '18', '6');
INSERT INTO `userroles` VALUES ('7', '18', '7');
INSERT INTO `userroles` VALUES ('9', '18', '9');
INSERT INTO `userroles` VALUES ('10', '18', '10');
INSERT INTO `userroles` VALUES ('12', '21', '4');
INSERT INTO `userroles` VALUES ('13', '22', '5');
INSERT INTO `userroles` VALUES ('14', '23', '6');
INSERT INTO `userroles` VALUES ('16', '17', '4');
INSERT INTO `userroles` VALUES ('17', '17', '5');
INSERT INTO `userroles` VALUES ('18', '17', '6');
INSERT INTO `userroles` VALUES ('19', '17', '9');
INSERT INTO `userroles` VALUES ('21', '4', '7');
INSERT INTO `userroles` VALUES ('22', '5', '7');
INSERT INTO `userroles` VALUES ('23', '7', '7');
INSERT INTO `userroles` VALUES ('24', '8', '7');
INSERT INTO `userroles` VALUES ('25', '9', '7');
INSERT INTO `userroles` VALUES ('26', '10', '7');
INSERT INTO `userroles` VALUES ('27', '11', '7');
INSERT INTO `userroles` VALUES ('28', '12', '7');
INSERT INTO `userroles` VALUES ('29', '13', '7');
INSERT INTO `userroles` VALUES ('30', '14', '7');
INSERT INTO `userroles` VALUES ('31', '15', '7');
INSERT INTO `userroles` VALUES ('32', '6', '7');
INSERT INTO `userroles` VALUES ('33', '16', '7');
INSERT INTO `userroles` VALUES ('34', '17', '7');
INSERT INTO `userroles` VALUES ('35', '19', '7');
INSERT INTO `userroles` VALUES ('36', '20', '7');
INSERT INTO `userroles` VALUES ('37', '21', '7');
INSERT INTO `userroles` VALUES ('38', '22', '7');
INSERT INTO `userroles` VALUES ('39', '21', '9');
INSERT INTO `userroles` VALUES ('41', '15', '6');
INSERT INTO `userroles` VALUES ('42', '19', '12');
INSERT INTO `userroles` VALUES ('45', '18', '14');
INSERT INTO `userroles` VALUES ('46', '18', '15');
INSERT INTO `userroles` VALUES ('50', '18', '18');
INSERT INTO `userroles` VALUES ('51', '18', '19');
INSERT INTO `userroles` VALUES ('82', '14', '1');
INSERT INTO `userroles` VALUES ('83', '15', '1');
INSERT INTO `userroles` VALUES ('84', '18', '8');
INSERT INTO `userroles` VALUES ('85', '15', '8');
INSERT INTO `userroles` VALUES ('86', '16', '3');
INSERT INTO `userroles` VALUES ('87', '19', '13');
INSERT INTO `userroles` VALUES ('88', '6', '13');
INSERT INTO `userroles` VALUES ('93', '5', '20');
INSERT INTO `userroles` VALUES ('94', '8', '20');
INSERT INTO `userroles` VALUES ('95', '7', '20');
INSERT INTO `userroles` VALUES ('98', '5', '41');
INSERT INTO `userroles` VALUES ('99', '7', '41');
INSERT INTO `userroles` VALUES ('100', '11', '41');
INSERT INTO `userroles` VALUES ('101', '1', '45');
INSERT INTO `userroles` VALUES ('102', '8', '45');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` longtext,
  `ChineseName` longtext,
  `Nickname` longtext,
  `Password` longtext,
  `Status` int(11) DEFAULT NULL,
  `RegisterTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LastLoginTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginNum` int(11) DEFAULT NULL,
  `UserType` int(11) DEFAULT NULL,
  `SID` longtext,
  `DateOfBirth` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `WorkPhone` longtext,
  `CellPhone` longtext,
  `Email` longtext,
  `Gender` int(11) DEFAULT NULL,
  `Layout` longtext,
  `Theme` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '超级管理员', 'admin', '21232F297A57A5A743894A0E4A801FC3', '0', '2017-03-22 15:05:42', '2017-03-22 15:05:41', '2017-02-21 15:21:50', '462', '2', '5068fd40-06ce-495e-a5d2-b28759d221bd', '2017-02-23 15:30:05', '', '', '', '0', '1:2:1', null);
INSERT INTO `users` VALUES ('2', 'ceo', 'ceo', 'ceo', '21232F297A57A5A743894A0E4A801FC3', '0', '2017-03-22 15:05:34', '2017-03-22 15:05:33', '2017-03-16 14:47:07', '0', '0', null, '2017-03-22 14:55:10', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('3', 'zhilinzhang', '张志林', '张志林', '202CB962AC59075B964B07152D234B70', '0', '2017-04-06 09:10:48', '2017-04-06 09:10:47', '2016-09-09 16:05:52', '7', '0', null, '2017-02-23 16:03:49', '18969144833', '18969144833', null, null, null, null);
INSERT INTO `users` VALUES ('6', 'yanggao', '高洋', '高洋12', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:33', '2017-03-22 15:05:33', '2016-09-09 16:06:25', '3', '0', null, '2017-02-23 16:03:49', '18668136389', '18668136389', null, null, null, null);
INSERT INTO `users` VALUES ('7', 'dandanjiang', '蒋丹丹', '蒋丹丹', '81DC9BDB52D04DC20036DBD8313ED055', '0', '2017-03-22 15:05:33', '2017-03-22 15:05:32', '2016-07-28 17:23:12', '25', '0', null, '2017-02-23 16:03:49', '18758864750', '18758864750', null, null, null, 'Default');
INSERT INTO `users` VALUES ('8', 'xingmingran', '冉祥明', '冉祥明', '96E79218965EB72C92A549DD5A330112', '0', '2017-03-22 15:05:32', '2017-03-22 15:05:32', '2016-02-01 16:36:31', '0', '0', null, '2017-02-23 16:03:49', '18857168663', '18857168663', null, null, null, null);
INSERT INTO `users` VALUES ('9', 'yubochen', '陈欲菠', '陈欲菠', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:26', '2017-03-22 15:05:25', '2016-09-26 15:48:17', '8', '0', null, '2017-02-23 16:03:49', '15157140480', '15157140480', null, null, null, null);
INSERT INTO `users` VALUES ('10', 'jiechen', '陈杰', '陈杰', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:26', '2017-03-22 15:05:25', '2016-10-25 14:21:47', '1', '0', null, '2017-02-23 16:03:49', '18868831737', '18868831737', null, null, null, null);
INSERT INTO `users` VALUES ('12', 'jiewu', '吴捷', '吴捷-市场办公室', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:25', '2017-03-22 15:05:25', '2016-10-26 10:26:26', '21', '1', null, '2017-02-16 15:30:22', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('13', 'jiewu2', '吴捷', '吴捷-市场二部a团队', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:25', '2017-03-22 15:05:25', '2016-10-25 14:17:08', '5', '1', null, '2017-02-25 15:30:26', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('15', 'zl123', '赵璐', '赵璐', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:25', '2017-03-22 15:05:25', '2016-10-25 14:19:12', '7', '0', null, '2017-02-23 16:03:49', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('18', 'zhaolu', '赵璐', '赵璐', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:02', '2017-03-22 15:05:01', '2016-10-25 14:20:24', '2', '1', null, '2017-02-23 16:03:49', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('19', 'kkkkk', '小明', '小明', 'A66D92CACBCB69C63A629611A1558195', '0', '2017-03-22 15:05:02', '2017-03-22 15:05:01', '2016-10-24 17:18:39', '0', '0', null, '2017-02-23 16:03:49', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('20', 'ttt', '天天', '天天', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2017-03-22 15:05:01', '2017-03-22 15:05:01', '2016-10-25 10:02:37', '0', '0', null, '2017-02-23 16:03:49', null, null, null, null, null, null);
INSERT INTO `users` VALUES ('24', '5555', '哈哈', 'hhaha', '123456', '0', '2017-03-22 15:27:08', '2017-03-22 15:27:08', '2017-03-02 13:44:06', '1', '0', null, '2017-03-02 13:44:06', null, null, null, '0', null, null);
INSERT INTO `users` VALUES ('41', '88888', '哇哇', 'wew', '123456', '0', '2017-03-22 15:05:01', '2017-03-22 15:05:00', '2017-03-03 14:36:05', '1', '0', null, '2017-03-03 14:36:05', null, null, null, '0', null, null);
INSERT INTO `users` VALUES ('45', '03100000', '小王', '小舞', '123456', '0', '2017-03-22 15:04:53', '2017-03-22 15:04:53', '2017-03-10 17:05:44', '1', '0', null, '2017-03-10 17:05:44', null, null, null, '1', null, null);

-- ----------------------------
-- Table structure for wd_records
-- ----------------------------
DROP TABLE IF EXISTS `wd_records`;
CREATE TABLE `wd_records` (
  `Id` int(11) DEFAULT NULL,
  `Title` longtext,
  `Content` longtext,
  `DiaryType` int(11) DEFAULT NULL,
  `NeedReadUser` longtext,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IsDelete` int(11) DEFAULT NULL,
  `Sumbiter_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_records
-- ----------------------------

-- ----------------------------
-- Table structure for wd_templates
-- ----------------------------
DROP TABLE IF EXISTS `wd_templates`;
CREATE TABLE `wd_templates` (
  `Id` int(11) DEFAULT NULL,
  `HtmlContent` longtext,
  `Category` int(11) DEFAULT NULL,
  `Description` longtext,
  `IsDelete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_templates
-- ----------------------------

-- ----------------------------
-- Table structure for welfares
-- ----------------------------
DROP TABLE IF EXISTS `welfares`;
CREATE TABLE `welfares` (
  `Id` int(11) DEFAULT NULL,
  `Name` longtext,
  `BaseDays` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welfares
-- ----------------------------
INSERT INTO `welfares` VALUES ('1', '年假', '50');
INSERT INTO `welfares` VALUES ('2', '病假', '2');
INSERT INTO `welfares` VALUES ('3', '调休假', '0');

-- ----------------------------
-- Table structure for wf_condition
-- ----------------------------
DROP TABLE IF EXISTS `wf_condition`;
CREATE TABLE `wf_condition` (
  `Id` int(11) DEFAULT NULL,
  `LineId` longtext,
  `FlowId` longtext,
  `CondType` int(11) DEFAULT NULL,
  `AttrKey` longtext,
  `AttrKeyChineseName` longtext,
  `AttrValue` longtext,
  `Operator` longtext,
  `OperatorValue` longtext,
  `CondRelations` longtext,
  `Priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_condition
-- ----------------------------
INSERT INTO `wf_condition` VALUES ('128', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '1', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('129', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '2', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('130', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '3', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('131', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '4', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('132', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '5', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('133', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '6', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('134', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '7', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('135', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '8', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('136', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '9', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('137', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '10', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('138', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '11', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('139', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '12', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('140', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '13', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('141', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '14', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('142', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '15', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('143', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '16', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('144', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '17', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('145', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '18', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('146', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '19', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('147', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '20', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('148', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '21', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('149', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '22', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('150', 'flow1476344587542', 'workflow1476344578422', '2', 'Role', null, '', '', '23', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('151', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '1', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('152', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '2', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('153', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '3', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('154', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '4', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('155', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '5', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('156', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '6', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('157', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '7', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('158', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '8', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('159', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '9', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('160', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '10', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('161', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '11', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('162', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '12', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('163', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '13', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('164', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '14', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('165', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '15', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('166', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '16', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('167', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '17', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('168', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '18', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('169', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '19', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('170', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '20', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('171', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '21', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('172', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '22', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('173', 'flow1476344590035', 'workflow1476344578422', '2', 'Role', null, '', '', '23', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('178', 'flow1473405914725', 'workflow1473400098610', '2', 'Role', null, '', '', '21', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('179', 'flow1473405923500', 'workflow1473400098610', '2', 'Role', null, '', '', '16', 'OR', '0');
INSERT INTO `wf_condition` VALUES ('180', 'flow1473407104883', 'workflow1473400098610', '1', 'i5', '请输入1或2', '', '==', '1', '&&', '0');
INSERT INTO `wf_condition` VALUES ('181', 'flow1473407535372', 'workflow1473400098610', '1', 'i5', '请输入1或2', '', '==', '2', '&&', '0');
INSERT INTO `wf_condition` VALUES ('188', 'flow1473407375053', 'workflow1473407346703', '1', 'b', '下拉列表', '', '==', '主机', '&&', '0');
INSERT INTO `wf_condition` VALUES ('189', 'flow1473407377991', 'workflow1473407346703', '1', 'b', '下拉列表', '', '==', '显示器', '&&', '0');

-- ----------------------------
-- Table structure for wf_emaildetail
-- ----------------------------
DROP TABLE IF EXISTS `wf_emaildetail`;
CREATE TABLE `wf_emaildetail` (
  `Id` int(11) DEFAULT NULL,
  `NodeId` longtext,
  `EmailTitle` longtext,
  `EmailContent` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_emaildetail
-- ----------------------------

-- ----------------------------
-- Table structure for wf_fieldvaluerelation
-- ----------------------------
DROP TABLE IF EXISTS `wf_fieldvaluerelation`;
CREATE TABLE `wf_fieldvaluerelation` (
  `Id` int(11) DEFAULT NULL,
  `TableName` longtext,
  `FieldName` longtext,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_fieldvaluerelation
-- ----------------------------

-- ----------------------------
-- Table structure for wf_flow
-- ----------------------------
DROP TABLE IF EXISTS `wf_flow`;
CREATE TABLE `wf_flow` (
  `Id` int(11) DEFAULT NULL,
  `WorkFlowId` longtext,
  `Name` longtext,
  `Using` int(11) DEFAULT NULL,
  `Comment` longtext,
  `DesignerName` longtext,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifyTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Designer_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_flow
-- ----------------------------
INSERT INTO `wf_flow` VALUES ('1', 'workflow1454319698005', '新流程', '0', '', '超级管理员', '2016-02-01 17:40:37', '2016-02-01 17:40:37', '1');
INSERT INTO `wf_flow` VALUES ('2', 'workflow1454319818062', '新流程', '0', '', '超级管理员', '2016-02-01 17:42:33', '2016-02-01 17:42:33', '1');
INSERT INTO `wf_flow` VALUES ('3', 'workflow1454319899689', '新流程', '0', '', '超级管理员', '2016-02-01 17:43:54', '2016-02-01 17:43:54', '1');
INSERT INTO `wf_flow` VALUES ('4', 'workflow1458021312727', '新流程', '0', '', '超级管理员', '2016-03-15 13:55:22', '2016-03-15 13:55:22', '1');
INSERT INTO `wf_flow` VALUES ('5', 'workflow1458021346168', '新流程', '0', '', '超级管理员', '2016-03-15 13:55:54', '2016-03-15 13:55:54', '1');
INSERT INTO `wf_flow` VALUES ('6', 'workflow1458021698664', '合同会签流程', '0', '合同会签流程', '超级管理员', '2016-03-15 14:38:27', '2016-03-15 14:38:27', '1');
INSERT INTO `wf_flow` VALUES ('7', 'workflow1458024322579', 'fds', '0', '得到', '超级管理员', '2016-03-15 14:45:57', '2016-03-15 14:45:57', '1');
INSERT INTO `wf_flow` VALUES ('8', 'workflow1458024398210', 'vgfd', '0', '观点', '超级管理员', '2016-03-15 14:47:13', '2016-03-15 14:47:13', '1');
INSERT INTO `wf_flow` VALUES ('9', 'workflow1458024456769', '合同会签流程2', '0', '2', '超级管理员', '2016-03-15 14:51:29', '2016-03-15 14:51:29', '1');
INSERT INTO `wf_flow` VALUES ('10', 'workflow1458024826860', '合同会签流程3', '0', '', '超级管理员', '2016-03-15 14:55:05', '2016-03-15 14:55:05', '1');
INSERT INTO `wf_flow` VALUES ('11', 'workflow1458024975423', '爆发出风蛋糕', '0', '', '超级管理员', '2016-03-15 14:57:18', '2016-03-15 14:57:18', '1');
INSERT INTO `wf_flow` VALUES ('12', 'workflow1458025379450', '11', '0', '11', '超级管理员', '2016-03-15 15:03:20', '2016-03-15 15:03:20', '1');
INSERT INTO `wf_flow` VALUES ('13', 'workflow1458025421602', '22', '0', '22', '超级管理员', '2016-03-15 15:04:32', '2016-03-15 15:04:32', '1');
INSERT INTO `wf_flow` VALUES ('14', 'workflow1458025705180', '合同会签流程4', '0', '', '吴捷', '2016-10-26 10:51:39', '2016-10-26 10:51:39', '12');
INSERT INTO `wf_flow` VALUES ('15', 'workflow1458029420272', 'dddd', '0', 'ddd', '超级管理员', '2016-03-15 16:11:40', '2016-03-15 16:11:40', '1');
INSERT INTO `wf_flow` VALUES ('16', 'workflow1458029518082', 'fds', '0', 'fsd', '超级管理员', '2016-03-16 11:28:11', '2016-03-16 11:28:11', '1');
INSERT INTO `wf_flow` VALUES ('18', 'workflow1469692010728', '地方', '0', '', '', '2016-09-09 13:33:12', '2016-09-09 13:33:12', '1');
INSERT INTO `wf_flow` VALUES ('19', 'workflow1473393044384', '转正', '1', '', '超级管理员', '2016-09-09 13:38:20', '2016-09-09 13:38:20', '1');
INSERT INTO `wf_flow` VALUES ('20', 'workflow1473400098610', '测试cyb', '0', '', '曹思翀', '2016-10-25 17:13:50', '2016-10-25 17:13:50', '4');
INSERT INTO `wf_flow` VALUES ('21', 'workflow1473407346703', '申请审批流程', '0', '', '超级管理员', '2016-10-31 10:52:22', '2016-10-31 10:52:22', '1');
INSERT INTO `wf_flow` VALUES ('22', 'workflow1476341186054', '售前任务审批流程', '0', '', '吴捷', '2016-10-19 10:23:57', '2016-10-19 10:23:57', '12');
INSERT INTO `wf_flow` VALUES ('23', 'workflow1476344578422', 'dd', '0', '', '首席执行官', '2016-10-13 15:43:56', '2016-10-13 15:43:56', '2');
INSERT INTO `wf_flow` VALUES ('24', 'workflow1476346512592', '新流程', '0', '', '首席执行官', '2016-10-13 16:17:00', '2016-10-13 16:17:00', '2');
INSERT INTO `wf_flow` VALUES ('25', 'workflow1476863626065', 'tt', '0', '', '超级管理员', '2016-10-19 15:54:13', '2016-10-19 15:54:13', '1');
INSERT INTO `wf_flow` VALUES ('26', 'workflow1477297944412', '新流程', '0', '', '超级管理员', '2016-10-24 16:32:53', '2016-10-24 16:32:53', '1');
INSERT INTO `wf_flow` VALUES ('27', 'workflow1477297994218', 'zl', '0', '', '超级管理员', '2016-10-26 09:40:11', '2016-10-26 09:40:11', '1');
INSERT INTO `wf_flow` VALUES ('28', 'workflow1477385648757', '通天塔', '0', '', '吴捷', '2016-10-26 10:56:21', '2016-10-26 10:56:21', '12');
INSERT INTO `wf_flow` VALUES ('29', 'workflow1487658336727', '新流程', '0', '', '首席执行官', '2017-02-21 14:25:48', '2017-02-21 14:25:48', '2');

-- ----------------------------
-- Table structure for wf_form
-- ----------------------------
DROP TABLE IF EXISTS `wf_form`;
CREATE TABLE `wf_form` (
  `Id` int(11) DEFAULT NULL,
  `NodeId` longtext,
  `Html` longtext,
  `TableName` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_form
-- ----------------------------
INSERT INTO `wf_form` VALUES ('1', 'task1458021701228', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131024972827953704');
INSERT INTO `wf_form` VALUES ('2', 'task1458025709792', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131024997196080149');
INSERT INTO `wf_form` VALUES ('3', 'task1458025711838', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131024997540287884');
INSERT INTO `wf_form` VALUES ('4', 'task1458025713182', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131024997673721114');
INSERT INTO `wf_form` VALUES ('5', 'task1458025715958', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131025000107705724');
INSERT INTO `wf_form` VALUES ('6', 'task1458025714485', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131025000260044599');
INSERT INTO `wf_form` VALUES ('7', 'task1458025717950', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131025000368322384');
INSERT INTO `wf_form` VALUES ('8', 'task1458025984627', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131025000478006374');
INSERT INTO `wf_form` VALUES ('9', 'task1458196903290', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%3E%E8%A1%A8%E5%8D%95%E5%90%8D%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%222%22%20data-columns=%224%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2050%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E7%94%A8%E6%88%B7%E5%90%8D%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197025396%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22username%20%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%222%22%20style=%22width:%2050%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%B9%B4%E9%BE%84%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197040073%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22age%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%224%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197049565%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22sugggestion%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131026706742341229');
INSERT INTO `wf_form` VALUES ('10', 'task1458196904917', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%3E%E8%A1%A8%E5%8D%95%E5%90%8D%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%222%22%20data-columns=%224%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2050%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E7%94%A8%E6%88%B7%E5%90%8D%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197025396%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22username%20%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%222%22%20style=%22width:%2050%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%B9%B4%E9%BE%84%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197040073%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22age%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%224%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197049565%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22sugggestion%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131026706910149433');
INSERT INTO `wf_form` VALUES ('11', 'task1458196908805', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%3E%E8%A1%A8%E5%8D%95%E5%90%8D%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%222%22%20data-columns=%224%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2050%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E7%94%A8%E6%88%B7%E5%90%8D%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197025396%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22username%20%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%222%22%20style=%22width:%2050%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%B9%B4%E9%BE%84%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197040073%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22age%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%224%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458197049565%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22sugggestion%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131026707226547583');
INSERT INTO `wf_form` VALUES ('12', 'task1473393110352', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%3E%E8%BD%AC%E6%AD%A3%E7%94%B3%E8%AF%B7%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20class=%22layout%20active%22%20border=%221%22%20data-columns=%223%22%20data-rows=%223%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20style=%22width:%2033.33%25;%22%20data-left=%220%22%20data-top=%220%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E5%B7%A5%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473393277324%22%20data-type=%22varchar%22%3E%3Cinput%20id=%22eID%22%20type=%22text%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%221%22%20data-top=%220%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E5%A7%93%E5%90%8D%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473393319001%22%20data-type=%22varchar%22%3E%3Cinput%20id=%22Name%22%20type=%22text%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%222%22%20data-top=%220%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E5%85%A5%E8%81%8C%E6%97%B6%E9%97%B4%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473393402097%22%20data-type=%22date%22%3E%3Cinput%20id=%22JoinDate%22%20type=%22date%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%220%22%20data-top=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%3EAccount%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473393429410%22%20data-type=%22select%22%3E%3Cselect%20id=%22Account%22%3E%3Coption%20value=%22A%22%3EA%3C/option%3E%3Coption%20value=%22B%22%3EB%3C/option%3E%3Coption%20value=%22C%22%3EC%3C/option%3E%3Coption%20value=%22D%22%3ED%3C/option%3E%3Coption%20value=%22E%22%3EE%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%221%22%20data-top=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%3EProject%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473393483686%22%20data-type=%22select%22%3E%3Cselect%20id=%22project%22%3E%3Coption%20value=%22P1%22%3EP1%3C/option%3E%3Coption%20value=%22P2%22%3EP2%3C/option%3E%3Coption%20value=%22P3%22%3EP3%3C/option%3E%3Coption%20value=%22P4%22%3EP4%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%222%22%20data-top=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%A6%BB%E8%81%8C%E6%97%B6%E9%97%B4%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473393529971%22%20data-type=%22date%22%3E%3Cinput%20id=%22LeaveDate%22%20type=%22date%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%220%22%20data-top=%222%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%221%22%20data-top=%222%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20style=%22width:%2033.33%25;%22%20data-left=%222%22%20data-top=%222%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20class=%22layout%22%20border=%221%22%20data-columns=%221%22%20data-rows=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20style=%22width:%20100%25;%22%20data-left=%220%22%20data-top=%220%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%A6%BB%E8%81%8C%E7%90%86%E7%94%B1%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473393612480%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22Reason%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178672618002859');
INSERT INTO `wf_form` VALUES ('13', 'task1473400106097', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_New%20Approve1%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%225%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3ERequestType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403188891%22%20data-type=%22select%22%3E%3Cselect%20id=%22a%22%3E%3Coption%20value=%22Hardware%22%3EHardware%3C/option%3E%3Coption%20value=%22Problem%22%3EProblem%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EHardwareType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403214179%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%89%AB%E6%8F%8F%E4%BB%AA%22%3E%E6%89%AB%E6%8F%8F%E4%BB%AA%3C/option%3E%3Coption%20value=%22test%22%3Etest%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EComment%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403244831%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22c1%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403269735%22%20data-type=%22userName%22%3E%3Cspan%20id=%22d1%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403286031%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22e1%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%B5%8B%E8%AF%952%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473404978092%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22g%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178807727199031');
INSERT INTO `wf_form` VALUES ('14', 'task1473401625001', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_New%20Request%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%223%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3ERequest%20Type%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473400838646%22%20data-type=%22select%22%3E%3Cselect%20id=%22a%22%3E%3Coption%20value=%22Hardware%22%3EHardware%3C/option%3E%3Coption%20value=%22Problem%22%3EProblem%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EHardware%20Type%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401105912%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%89%AB%E6%8F%8F%E4%BB%AA%22%3E%E6%89%AB%E6%8F%8F%E4%BB%AA%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%222%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EComment%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401148024%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22c%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%94%B3%E8%AF%B7%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401259231%22%20data-type=%22userName%22%3E%3Cspan%20id=%22d%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%94%B3%E8%AF%B7%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401262383%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22e%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178775862702283');
INSERT INTO `wf_form` VALUES ('15', 'task1473400107625', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_New%20Approve2%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%225%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3ERequestType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403520164%22%20data-type=%22select%22%3E%3Cselect%20id=%22a%22%3E%3Coption%20value=%22Hardware%22%3EHardware%3C/option%3E%3Coption%20value=%22Problem%22%3EProblem%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EHardwareType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403560378%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%89%AB%E6%8F%8F%E4%BB%AA%22%3E%E6%89%AB%E6%8F%8F%E4%BB%AA%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EComment%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403593617%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22c3%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E4%BA%BA3%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403613642%22%20data-type=%22userName%22%3E%3Cspan%20id=%22d3%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E6%97%A5%E6%9C%9F3%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403632609%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22e3%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178772664326539');
INSERT INTO `wf_form` VALUES ('16', 'task1473401885754', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_New%20Approve3%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%225%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3ERequestType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403705338%22%20data-type=%22select%22%3E%3Cselect%20id=%22a%22%3E%3Coption%20value=%22Hardware%22%3EHardware%3C/option%3E%3Coption%20value=%22Problem%22%3EProblem%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EHardwareType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403751142%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%89%AB%E6%8F%8F%E4%BB%AA%22%3E%E6%89%AB%E6%8F%8F%E4%BB%AA%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EComment%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403825463%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22c4%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E4%BA%BA4%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403848981%22%20data-type=%22userName%22%3E%3Cspan%20id=%22d4%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E6%97%A5%E6%9C%9F5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473403872597%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22e5%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AF%B7%E8%BE%93%E5%85%A51%E6%88%962%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407568701%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22i5%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178811940216175');
INSERT INTO `wf_form` VALUES ('17', 'task1473407353241', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD%E7%94%B3%E8%AF%B7%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407465951%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22a%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E4%B8%8B%E6%8B%89%E5%88%97%E8%A1%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407479157%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%98%BE%E7%A4%BA%E5%99%A8%22%3E%E6%98%BE%E7%A4%BA%E5%99%A8%3C/option%3E%3Coption%20value=%22xxx%22%3Exxx%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178814418746473');
INSERT INTO `wf_form` VALUES ('18', 'task1473407354247', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD%E7%94%B3%E8%AF%B7%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407465951%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22a%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E4%B8%8B%E6%8B%89%E5%88%97%E8%A1%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407479157%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%98%BE%E7%A4%BA%E5%99%A8%22%3E%E6%98%BE%E7%A4%BA%E5%99%A8%3C/option%3E%3Coption%20value=%22xxx%22%3Exxx%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178812682697167');
INSERT INTO `wf_form` VALUES ('19', 'task1473407355575', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD%E7%94%B3%E8%AF%B7%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407465951%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22a%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E4%B8%8B%E6%8B%89%E5%88%97%E8%A1%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407479157%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%98%BE%E7%A4%BA%E5%99%A8%22%3E%E6%98%BE%E7%A4%BA%E5%99%A8%3C/option%3E%3Coption%20value=%22xxx%22%3Exxx%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178812787850725');
INSERT INTO `wf_form` VALUES ('20', 'task1473407071623', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_New%202%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%B0%B1%E6%98%AF1%E5%92%AF%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407950242%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22x%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%B5%8B%E8%AF%95%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473407980842%22%20data-type=%22userName%22%3E%3Cspan%20id=%22v%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131178815955425883');
INSERT INTO `wf_form` VALUES ('21', 'task1476346515026', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%3E%E8%A1%A8%E5%8D%95%E5%90%8D%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%223%22%20data-columns=%223%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:33.33%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346528313%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dd2%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:33.33%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E6%95%B0%E5%AD%97%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346603419%22%20data-type=%22number%22%3E%3Cinput%20type=%22number%22%20id=%22dd%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%222%22%20style=%22width:33.33%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:33.33%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%221%22%20style=%22width:33.33%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%222%22%20style=%22width:33.33%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:33.33%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%221%22%20style=%22width:33.33%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%222%22%20style=%22width:33.33%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131208202172834948');
INSERT INTO `wf_form` VALUES ('22', 'task1476341197469', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E9%94%80%E5%94%AE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%225%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%225%22%20rowspan=%221%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E7%94%B3%E8%AF%B7%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346168843%22%20data-type=%22userName%22%3E%3Cspan%20id=%22A%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%223%22%20style=%22width:%2040%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A2%E6%88%B7%E5%90%8D%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346224555%22%20data-type=%22select%22%3E%3Cselect%20id=%22C%22%3E%3Coption%20value=%22%E5%AE%A2%E6%88%B7A%22%3E%E5%AE%A2%E6%88%B7A%3C/option%3E%3Coption%20value=%22%E5%AE%A2%E6%88%B7B%22%3E%E5%AE%A2%E6%88%B7B%3C/option%3E%3Coption%20value=%22%E5%AE%A2%E6%88%B7c%22%3E%E5%AE%A2%E6%88%B7c%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%2040%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%94%AE%E5%89%8D%E5%BC%80%E5%A7%8B%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346252905%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22E%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%223%22%20style=%22width:%2040%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%94%AE%E5%89%8D%E7%BB%93%E6%9D%9F%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346284429%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22G%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%225%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%9C%B0%E5%9D%80%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346295263%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22H%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E7%94%B3%E8%AF%B7%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346350896%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22J%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131213174592794692');
INSERT INTO `wf_form` VALUES ('23', 'task1476341212775', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E9%94%80%E5%94%AE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%225%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%225%22%20rowspan=%221%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E7%94%B3%E8%AF%B7%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346168843%22%20data-type=%22userName%22%3E%3Cspan%20id=%22A%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%223%22%20style=%22width:%2040%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A2%E6%88%B7%E5%90%8D%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346224555%22%20data-type=%22select%22%3E%3Cselect%20id=%22C%22%3E%3Coption%20value=%22%E5%AE%A2%E6%88%B7A%22%3E%E5%AE%A2%E6%88%B7A%3C/option%3E%3Coption%20value=%22%E5%AE%A2%E6%88%B7B%22%3E%E5%AE%A2%E6%88%B7B%3C/option%3E%3Coption%20value=%22%E5%AE%A2%E6%88%B7c%22%3E%E5%AE%A2%E6%88%B7c%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%94%AE%E5%89%8D%E5%BC%80%E5%A7%8B%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346252905%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22E%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%223%22%20style=%22width:%2040%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%94%AE%E5%89%8D%E7%BB%93%E6%9D%9F%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346284429%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22G%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%225%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%22%20style=%22word-break:%20break-word;%22%3E%E5%9C%B0%E5%9D%80%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346295263%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22H%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E7%94%B3%E8%AF%B7%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346350896%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22J%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', 'Form131208203559805276');

-- ----------------------------
-- Table structure for wf_formfieldrelation
-- ----------------------------
DROP TABLE IF EXISTS `wf_formfieldrelation`;
CREATE TABLE `wf_formfieldrelation` (
  `Id` int(11) DEFAULT NULL,
  `FieldName` longtext,
  `FieldChineseName` longtext,
  `TableName` longtext,
  `Type` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_formfieldrelation
-- ----------------------------
INSERT INTO `wf_formfieldrelation` VALUES ('1', 'rq', '日期', 'Form131024953254517574', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('2', 'htbh', '合同编号', 'Form131024953254517574', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('3', 'dljf', '订立甲方', 'Form131024953254517574', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('4', 'dlyf', '订立乙方', 'Form131024953254517574', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('5', 'xmmc', '项目名称', 'Form131024953254517574', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('6', 'htzj', '合同总价', 'Form131024953254517574', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('7', 'rq', '日期', 'Form131024972645147054', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('8', 'htbh', '合同编号', 'Form131024972645147054', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('9', 'dljf', '订立甲方', 'Form131024972645147054', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('10', 'dlyf', '订立乙方', 'Form131024972645147054', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('11', 'xmmc', '项目名称', 'Form131024972645147054', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('12', 'htzj', '合同总价', 'Form131024972645147054', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('13', 'htnr', '合同内容', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('14', 'fkfs', '付款方式', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('15', 'ngr', '拟稿人', 'Form131024972645147054', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('16', 'bmyj', '部门意见', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('17', 'hjbmyj', '会见部门意见', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('18', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('19', 'fgldyj', '分管领导意见', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('20', 'zjlyj', '总经理意见', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('21', 'dszyj', '董事长意见', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('22', 'bz', '备注', 'Form131024972645147054', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('23', 'zw', '正文', 'Form131024972645147054', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('24', 'rq', '日期', 'Form131024972827953704', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('25', 'htbh', '合同编号', 'Form131024972827953704', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('26', 'dljf', '订立甲方', 'Form131024972827953704', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('27', 'dlyf', '订立乙方', 'Form131024972827953704', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('28', 'xmmc', '项目名称', 'Form131024972827953704', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('29', 'htzj', '合同总价', 'Form131024972827953704', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('30', 'htnr', '合同内容', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('31', 'fkfs', '付款方式', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('32', 'ngr', '拟稿人', 'Form131024972827953704', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('33', 'bmyj', '部门意见', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('34', 'hjbmyj', '会见部门意见', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('35', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('36', 'fgldyj', '分管领导意见', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('37', 'zjlyj', '总经理意见', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('38', 'dszyj', '董事长意见', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('39', 'bz', '备注', 'Form131024972827953704', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('40', 'zw', '正文', 'Form131024972827953704', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('41', 'rq', '日期', 'Form131024997196080149', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('42', 'htbh', '合同编号', 'Form131024997196080149', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('43', 'dljf', '订立甲方', 'Form131024997196080149', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('44', 'dlyf', '订立乙方', 'Form131024997196080149', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('45', 'xmmc', '项目名称', 'Form131024997196080149', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('46', 'htzj', '合同总价', 'Form131024997196080149', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('47', 'htnr', '合同内容', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('48', 'fkfs', '付款方式', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('49', 'ngr', '拟稿人', 'Form131024997196080149', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('50', 'bmyj', '部门意见', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('51', 'hjbmyj', '会见部门意见', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('52', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('53', 'fgldyj', '分管领导意见', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('54', 'zjlyj', '总经理意见', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('55', 'dszyj', '董事长意见', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('56', 'bz', '备注', 'Form131024997196080149', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('57', 'zw', '正文', 'Form131024997196080149', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('58', 'rq', '日期', 'Form131024997540287884', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('59', 'htbh', '合同编号', 'Form131024997540287884', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('60', 'dljf', '订立甲方', 'Form131024997540287884', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('61', 'dlyf', '订立乙方', 'Form131024997540287884', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('62', 'xmmc', '项目名称', 'Form131024997540287884', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('63', 'htzj', '合同总价', 'Form131024997540287884', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('64', 'htnr', '合同内容', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('65', 'fkfs', '付款方式', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('66', 'ngr', '拟稿人', 'Form131024997540287884', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('67', 'bmyj', '部门意见', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('68', 'hjbmyj', '会见部门意见', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('69', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('70', 'fgldyj', '分管领导意见', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('71', 'zjlyj', '总经理意见', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('72', 'dszyj', '董事长意见', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('73', 'bz', '备注', 'Form131024997540287884', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('74', 'zw', '正文', 'Form131024997540287884', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('75', 'rq', '日期', 'Form131024997673721114', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('76', 'htbh', '合同编号', 'Form131024997673721114', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('77', 'dljf', '订立甲方', 'Form131024997673721114', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('78', 'dlyf', '订立乙方', 'Form131024997673721114', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('79', 'xmmc', '项目名称', 'Form131024997673721114', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('80', 'htzj', '合同总价', 'Form131024997673721114', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('81', 'htnr', '合同内容', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('82', 'fkfs', '付款方式', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('83', 'ngr', '拟稿人', 'Form131024997673721114', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('84', 'bmyj', '部门意见', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('85', 'hjbmyj', '会见部门意见', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('86', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('87', 'fgldyj', '分管领导意见', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('88', 'zjlyj', '总经理意见', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('89', 'dszyj', '董事长意见', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('90', 'bz', '备注', 'Form131024997673721114', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('91', 'zw', '正文', 'Form131024997673721114', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('92', 'rq', '日期', 'Form131025000107705724', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('93', 'htbh', '合同编号', 'Form131025000107705724', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('94', 'dljf', '订立甲方', 'Form131025000107705724', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('95', 'dlyf', '订立乙方', 'Form131025000107705724', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('96', 'xmmc', '项目名称', 'Form131025000107705724', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('97', 'htzj', '合同总价', 'Form131025000107705724', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('98', 'htnr', '合同内容', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('99', 'fkfs', '付款方式', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('100', 'ngr', '拟稿人', 'Form131025000107705724', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('101', 'bmyj', '部门意见', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('102', 'hjbmyj', '会见部门意见', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('103', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('104', 'fgldyj', '分管领导意见', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('105', 'zjlyj', '总经理意见', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('106', 'dszyj', '董事长意见', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('107', 'bz', '备注', 'Form131025000107705724', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('108', 'zw', '正文', 'Form131025000107705724', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('109', 'rq', '日期', 'Form131025000260044599', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('110', 'htbh', '合同编号', 'Form131025000260044599', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('111', 'dljf', '订立甲方', 'Form131025000260044599', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('112', 'dlyf', '订立乙方', 'Form131025000260044599', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('113', 'xmmc', '项目名称', 'Form131025000260044599', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('114', 'htzj', '合同总价', 'Form131025000260044599', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('115', 'htnr', '合同内容', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('116', 'fkfs', '付款方式', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('117', 'ngr', '拟稿人', 'Form131025000260044599', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('118', 'bmyj', '部门意见', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('119', 'hjbmyj', '会见部门意见', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('120', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('121', 'fgldyj', '分管领导意见', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('122', 'zjlyj', '总经理意见', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('123', 'dszyj', '董事长意见', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('124', 'bz', '备注', 'Form131025000260044599', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('125', 'zw', '正文', 'Form131025000260044599', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('126', 'rq', '日期', 'Form131025000368322384', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('127', 'htbh', '合同编号', 'Form131025000368322384', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('128', 'dljf', '订立甲方', 'Form131025000368322384', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('129', 'dlyf', '订立乙方', 'Form131025000368322384', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('130', 'xmmc', '项目名称', 'Form131025000368322384', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('131', 'htzj', '合同总价', 'Form131025000368322384', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('132', 'htnr', '合同内容', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('133', 'fkfs', '付款方式', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('134', 'ngr', '拟稿人', 'Form131025000368322384', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('135', 'bmyj', '部门意见', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('136', 'hjbmyj', '会见部门意见', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('137', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('138', 'fgldyj', '分管领导意见', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('139', 'zjlyj', '总经理意见', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('140', 'dszyj', '董事长意见', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('141', 'bz', '备注', 'Form131025000368322384', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('142', 'zw', '正文', 'Form131025000368322384', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('143', 'rq', '日期', 'Form131025000478006374', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('144', 'htbh', '合同编号', 'Form131025000478006374', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('145', 'dljf', '订立甲方', 'Form131025000478006374', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('146', 'dlyf', '订立乙方', 'Form131025000478006374', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('147', 'xmmc', '项目名称', 'Form131025000478006374', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('148', 'htzj', '合同总价', 'Form131025000478006374', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('149', 'htnr', '合同内容', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('150', 'fkfs', '付款方式', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('151', 'ngr', '拟稿人', 'Form131025000478006374', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('152', 'bmyj', '部门意见', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('153', 'hjbmyj', '会见部门意见', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('154', 'sjhcwzjyj', '财务审计部及财务总监 ', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('155', 'fgldyj', '分管领导意见', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('156', 'zjlyj', '总经理意见', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('157', 'dszyj', '董事长意见', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('158', 'bz', '备注', 'Form131025000478006374', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('159', 'zw', '正文', 'Form131025000478006374', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('160', 'username ', '用户名', 'Form131026706742341229', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('161', 'age', '年龄', 'Form131026706742341229', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('162', 'sugggestion', '意见', 'Form131026706742341229', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('163', 'username ', '用户名', 'Form131026706910149433', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('164', 'age', '年龄', 'Form131026706910149433', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('165', 'sugggestion', '意见', 'Form131026706910149433', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('166', 'username ', '用户名', 'Form131026707226547583', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('167', 'age', '年龄', 'Form131026707226547583', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('168', 'sugggestion', '意见', 'Form131026707226547583', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('169', 'eID', '工号', 'Form131178672618002859', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('170', 'Name', '姓名', 'Form131178672618002859', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('171', 'JoinDate', '入职时间', 'Form131178672618002859', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('172', 'Account', 'Account', 'Form131178672618002859', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('173', 'project', 'Project', 'Form131178672618002859', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('174', 'LeaveDate', '离职时间', 'Form131178672618002859', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('175', 'Reason', '离职理由', 'Form131178672618002859', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('176', 'a', 'Request Type', 'Form131178751970021439', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('177', 'b', 'Hardware Type', 'Form131178751970021439', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('178', 'c', 'Comments', 'Form131178751970021439', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('179', 'd', '申请人', 'Form131178751970021439', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('180', 'e', '申请日期', 'Form131178751970021439', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('181', 'a', 'Request Type', 'Form131178752914841001', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('182', 'b', 'Hardware Type', 'Form131178752914841001', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('183', 'c', 'Comments', 'Form131178752914841001', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('184', 'd', '申请人', 'Form131178752914841001', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('185', 'e', '申请日期', 'Form131178752914841001', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('186', 'a', '审批日期', 'Form131178753749975871', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('187', 'b', '审批日期', 'Form131178753749975871', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('188', 'c', '审批日期', 'Form131178753749975871', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('189', 'd', '审批日期', 'Form131178753749975871', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('190', 'e', '审批日期', 'Form131178753749975871', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('191', 'a', '审批日期', 'Form131178754196839431', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('192', 'b', '审批日期', 'Form131178754196839431', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('193', 'c', '审批日期', 'Form131178754196839431', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('194', 'd', '审批日期', 'Form131178754196839431', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('195', 'e', '审批日期', 'Form131178754196839431', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('196', 'a', '审批日期', 'Form131178754430739693', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('197', 'b', '审批日期', 'Form131178754430739693', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('198', 'c', '审批日期', 'Form131178754430739693', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('199', 'd', '审批日期', 'Form131178754430739693', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('200', 'e', '审批日期', 'Form131178754430739693', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('201', 'a', '审批日期2', 'Form131178756141789639', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('202', 'b', '审批日期2', 'Form131178756141789639', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('203', 'c', '审批日期2', 'Form131178756141789639', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('204', 'd', '审批日期2', 'Form131178756141789639', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('205', 'e', '审批日期2', 'Form131178756141789639', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('206', 'a', '审批日期1', 'Form131178756447563061', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('207', 'b', '审批日期1', 'Form131178756447563061', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('208', 'c', '审批日期1', 'Form131178756447563061', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('209', 'd', '审批日期1', 'Form131178756447563061', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('210', 'e', '审批日期1', 'Form131178756447563061', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('211', 'a', '审批日期1', 'Form131178757740029973', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('212', 'b', '审批日期1', 'Form131178757740029973', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('213', 'c', '审批日期1', 'Form131178757740029973', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('214', 'd', '审批日期1', 'Form131178757740029973', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('215', 'e', '审批日期1', 'Form131178757740029973', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('216', 'a', '审批日期1', 'Form131178759169993365', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('217', 'b', '审批日期1', 'Form131178759169993365', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('218', 'c', '审批日期1', 'Form131178759169993365', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('219', 'd', '审批日期1', 'Form131178759169993365', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('220', 'e', '审批日期1', 'Form131178759169993365', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('221', 'a', '审批日期1', 'Form131178759496547505', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('222', 'b', '审批日期1', 'Form131178759496547505', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('223', 'c', '审批日期1', 'Form131178759496547505', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('224', 'd', '审批日期1', 'Form131178759496547505', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('225', 'e', '审批日期1', 'Form131178759496547505', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('226', 'a', 'RequestType', 'Form131178768970291707', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('227', 'b', 'HardwareType', 'Form131178768970291707', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('228', 'c1', 'Comment', 'Form131178768970291707', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('229', 'd1', '审批人', 'Form131178768970291707', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('230', 'e1', '审批日期', 'Form131178768970291707', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('231', 'a', 'RequestType', 'Form131178769730457687', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('232', 'b', 'HardwareType', 'Form131178769730457687', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('233', 'c1', 'Comment', 'Form131178769730457687', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('234', 'd1', '审批人', 'Form131178769730457687', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('235', 'e1', '审批日期', 'Form131178769730457687', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('236', 'a', 'RequestType', 'Form131178772450735523', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('237', 'b', 'HardwareType', 'Form131178772450735523', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('238', 'c3', 'Comment', 'Form131178772450735523', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('239', 'd3', '审批人3', 'Form131178772450735523', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('240', 'e3', '审批日期', 'Form131178772450735523', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('241', 'a', '审批日期3', 'Form131178772664326539', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('242', 'b', '审批日期3', 'Form131178772664326539', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('243', 'c3', '审批日期3', 'Form131178772664326539', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('244', 'd3', '审批日期3', 'Form131178772664326539', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('245', 'e3', '审批日期3', 'Form131178772664326539', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('246', 'a', 'RequestType', 'Form131178774093205816', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('247', 'b', 'HardwareType', 'Form131178774093205816', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('248', 'a', 'RequestType', 'Form131178774978970059', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('249', 'b', 'HardwareType', 'Form131178774978970059', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('250', 'c4', 'Comment', 'Form131178774978970059', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('251', 'd4', '审批人4', 'Form131178774978970059', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('252', 'e5', '审批日期5', 'Form131178774978970059', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('253', 'a', 'Request Type', 'Form131178775862702283', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('254', 'b', 'Hardware Type', 'Form131178775862702283', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('255', 'c', 'Comments', 'Form131178775862702283', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('256', 'd', '申请人', 'Form131178775862702283', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('257', 'e', '申请日期', 'Form131178775862702283', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('258', 'a', 'RequestType', 'Form131178786085409325', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('259', 'b', 'HardwareType', 'Form131178786085409325', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('260', 'c1', 'Comment', 'Form131178786085409325', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('261', 'd1', '审批人', 'Form131178786085409325', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('262', 'e1', '审批日期', 'Form131178786085409325', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('263', 'f', '测试', 'Form131178786085409325', 'radio');
INSERT INTO `wf_formfieldrelation` VALUES ('264', 'g', '测试2', 'Form131178786085409325', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('265', 'a', 'RequestType', 'Form131178789333763665', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('266', 'b', 'HardwareType', 'Form131178789333763665', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('267', 'c1', 'Comment', 'Form131178789333763665', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('268', 'd1', '审批人', 'Form131178789333763665', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('269', 'e1', '审批日期', 'Form131178789333763665', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('270', 'f', '测试', 'Form131178789333763665', 'radio');
INSERT INTO `wf_formfieldrelation` VALUES ('271', 'g', '测试2', 'Form131178789333763665', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('272', 'a', 'RequestType', 'Form131178807727199031', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('273', 'b', 'HardwareType', 'Form131178807727199031', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('274', 'c1', 'Comment', 'Form131178807727199031', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('275', 'd1', '审批人', 'Form131178807727199031', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('276', 'e1', '审批日期', 'Form131178807727199031', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('277', 'g', '测试2', 'Form131178807727199031', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('278', 'a', '文本输入', 'Form131178811349762541', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('279', 'b', '下拉列表', 'Form131178811349762541', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('280', 'a', 'RequestType', 'Form131178811940216175', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('281', 'b', 'HardwareType', 'Form131178811940216175', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('282', 'c4', 'Comment', 'Form131178811940216175', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('283', 'd4', '审批人4', 'Form131178811940216175', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('284', 'e5', '审批日期5', 'Form131178811940216175', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('285', 'i5', '请输入1或2', 'Form131178811940216175', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('286', 'a', '文本输入', 'Form131178812682697167', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('287', 'b', '下拉列表', 'Form131178812682697167', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('288', 'a', '文本输入', 'Form131178812787850725', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('289', 'b', '下拉列表', 'Form131178812787850725', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('290', 'a', '文本输入', 'Form131178814418746473', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('291', 'b', '下拉列表', 'Form131178814418746473', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('292', 'x', '就是1咯', 'Form131178815955425883', 'text');
INSERT INTO `wf_formfieldrelation` VALUES ('293', 'v', '测试人', 'Form131178815955425883', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('294', 'dd', '文本输入', 'Form131208201672866948', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('295', 'dd2', '文本输入', 'Form131208202172834948', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('296', 'dd', '数字输入', 'Form131208202172834948', 'number');
INSERT INTO `wf_formfieldrelation` VALUES ('297', 'A', '申请人', 'Form131208203235286488', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('298', 'C', '客户名', 'Form131208203235286488', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('299', 'E', '售前开始日期', 'Form131208203235286488', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('300', 'G', '售前结束日期', 'Form131208203235286488', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('301', 'H', '地址', 'Form131208203235286488', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('302', 'J', '申请日期', 'Form131208203235286488', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('303', 'A', '申请人', 'Form131208203383718288', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('304', 'C', '客户名', 'Form131208203383718288', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('305', 'E', '售前开始日期', 'Form131208203383718288', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('306', 'G', '售前结束日期', 'Form131208203383718288', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('307', 'H', '地址', 'Form131208203383718288', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('308', 'J', '申请日期', 'Form131208203383718288', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('309', 'A', '申请人', 'Form131208203559805276', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('310', 'C', '客户名', 'Form131208203559805276', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('311', 'E', '售前开始日期', 'Form131208203559805276', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('312', 'G', '售前结束日期', 'Form131208203559805276', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('313', 'H', '地址', 'Form131208203559805276', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('314', 'J', '申请日期', 'Form131208203559805276', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('315', 'A', '申请人', 'Form131208207808255841', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('316', 'C', '客户名', 'Form131208207808255841', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('317', 'E', '售前开始日期', 'Form131208207808255841', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('318', 'G', '售前结束日期', 'Form131208207808255841', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('319', 'H', '地址', 'Form131208207808255841', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('320', 'J', '申请日期', 'Form131208207808255841', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('321', 'A', '申请人', 'Form131211708023879777', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('322', 'C', '客户名', 'Form131211708023879777', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('323', 'E', '售前开始日期', 'Form131211708023879777', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('324', 'G', '售前结束日期', 'Form131211708023879777', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('325', 'H', '地址', 'Form131211708023879777', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('326', 'J', '申请日期', 'Form131211708023879777', 'requisitionDate');
INSERT INTO `wf_formfieldrelation` VALUES ('327', 'A', '申请人', 'Form131213174592794692', 'userName');
INSERT INTO `wf_formfieldrelation` VALUES ('328', 'C', '客户名', 'Form131213174592794692', 'select');
INSERT INTO `wf_formfieldrelation` VALUES ('329', 'E', '售前开始日期', 'Form131213174592794692', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('330', 'G', '售前结束日期', 'Form131213174592794692', 'date');
INSERT INTO `wf_formfieldrelation` VALUES ('331', 'H', '地址', 'Form131213174592794692', 'varchar');
INSERT INTO `wf_formfieldrelation` VALUES ('332', 'J', '申请日期', 'Form131213174592794692', 'requisitionDate');

-- ----------------------------
-- Table structure for wf_formtemplate
-- ----------------------------
DROP TABLE IF EXISTS `wf_formtemplate`;
CREATE TABLE `wf_formtemplate` (
  `Id` int(11) DEFAULT NULL,
  `FormName` longtext,
  `Html` longtext,
  `Classification` int(11) DEFAULT NULL,
  `Description` longtext,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Designer_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_formtemplate
-- ----------------------------
INSERT INTO `wf_formtemplate` VALUES ('1', '111', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%3E%E8%A1%A8%E5%8D%95%E5%90%8D%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%225%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2060%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221454319866345%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '111', '2016-02-01 17:43:43', '2016-02-01 17:43:43', '1');
INSERT INTO `wf_formtemplate` VALUES ('2', '222', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '222', '2016-03-15 13:58:50', '2016-03-15 13:58:50', '1');
INSERT INTO `wf_formtemplate` VALUES ('3', null, '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E4%BC%9A%E7%AD%BE%E5%8D%95%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021376527%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%22rq%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E7%BC%96%E5%8F%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021383199%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htbh%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E7%94%B2%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021425519%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dljf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%AE%A2%E7%AB%8B%E4%B9%99%E6%96%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021442454%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22dlyf%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%A1%B9%E7%9B%AE%E5%90%8D%E7%A7%B0%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021463758%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22xmmc%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:50.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E6%80%BB%E4%BB%B7%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458021483028%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22htzj%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%90%88%E5%90%8C%E5%86%85%E5%AE%B9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023292377%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22htnr%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BB%98%E6%AC%BE%E6%96%B9%E5%BC%8F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023375704%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fkfs%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%8B%9F%E7%A8%BF%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023394280%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22ngr%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%227%22%20data-columns=%222%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023434591%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22bmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E4%BC%9A%E8%A7%81%E9%83%A8%E9%97%A8%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023451581%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22hjbmyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%B4%A2%E5%8A%A1%E5%AE%A1%E8%AE%A1%E9%83%A8%E5%8F%8A%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91%20%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023496812%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22sjhcwzjyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%88%86%E7%AE%A1%E9%A2%86%E5%AF%BC%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023541789%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22fgldyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%224%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%80%BB%E7%BB%8F%E7%90%86%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023563875%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zjlyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%225%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E8%91%A3%E4%BA%8B%E9%95%BF%E6%84%8F%E8%A7%81%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023582721%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22dszyj%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%226%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%222%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%A4%87%E6%B3%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023598995%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%22bz%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%222%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E6%AD%A3%E6%96%87%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221458023621305%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22zw%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '合同会签模板1', '2016-03-15 14:34:19', '2016-03-15 14:34:19', '1');
INSERT INTO `wf_formtemplate` VALUES ('4', 'ITD', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_New%20Request%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%223%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3ERequest%20Type%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473400838646%22%20data-type=%22select%22%3E%3Cselect%20id=%22a%22%3E%3Coption%20value=%22HardwareApplication%22%3EHardwareApplication%3C/option%3E%3Coption%20value=%22Problem%22%3EProblem%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EHardware%20Type%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401105912%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%89%AB%E6%8F%8F%E4%BB%AA%22%3E%E6%89%AB%E6%8F%8F%E4%BB%AA%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%222%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EComments%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401148024%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22c%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%94%B3%E8%AF%B7%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401259231%22%20data-type=%22userName%22%3E%3Cspan%20id=%22d%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%94%B3%E8%AF%B7%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401262383%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22e%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '', '2016-09-09 14:10:34', '2016-09-09 14:10:34', '1');
INSERT INTO `wf_formtemplate` VALUES ('5', 'ITD2', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_NewRequest%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%223%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3ERequestType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473400838646%22%20data-type=%22select%22%3E%3Cselect%20id=%22a%22%3E%3Coption%20value=%22HardwareApplication%22%3EHardwareApplication%3C/option%3E%3Coption%20value=%22Problem%22%3EProblem%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EHardwareType%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401105912%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%89%AB%E6%8F%8F%E4%BB%AA%22%3E%E6%89%AB%E6%8F%8F%E4%BB%AA%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%222%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EComments%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401148024%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22c%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%94%B3%E8%AF%B7%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401259231%22%20data-type=%22userName%22%3E%3Cspan%20id=%22d%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%3E%E7%94%B3%E8%AF%B7%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401262383%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22e%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '', '2016-09-09 14:12:31', '2016-09-09 14:12:31', '1');
INSERT INTO `wf_formtemplate` VALUES ('6', 'ITD审批', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3EITD_New%20Approve1%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%223%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3ERequest%20Type%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473400838646%22%20data-type=%22select%22%3E%3Cselect%20id=%22a%22%3E%3Coption%20value=%22HardwareApplication%22%3EHardwareApplication%3C/option%3E%3Coption%20value=%22Problem%22%3EProblem%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EHardware%20Type%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401105912%22%20data-type=%22select%22%3E%3Cselect%20id=%22b%22%3E%3Coption%20value=%22%E4%B8%BB%E6%9C%BA%22%3E%E4%B8%BB%E6%9C%BA%3C/option%3E%3Coption%20value=%22%E6%89%AB%E6%8F%8F%E4%BB%AA%22%3E%E6%89%AB%E6%8F%8F%E4%BB%AA%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:%2099.99%25;%22%20colspan=%223%22%20rowspan=%222%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3EComments%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401148024%22%20data-type=%22text%22%3E%3Ctextarea%20id=%22c%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401259231%22%20data-type=%22userName%22%3E%3Cspan%20id=%22d%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20text-right%22%20style=%22word-break:%20break-word;%22%3E%E5%AE%A1%E6%89%B9%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221473401262383%22%20data-type=%22requisitionDate%22%3E%3Cspan%20id=%22e%22%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '', '2016-09-09 14:16:54', '2016-09-09 14:16:54', '1');
INSERT INTO `wf_formtemplate` VALUES ('7', '销售任务单', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%3E%E8%A1%A8%E5%8D%95%E5%90%8D%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%224%22%20data-columns=%225%22%20class=%22layout%20active%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:%20100%25;%22%20colspan=%225%22%20rowspan=%221%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346315406%22%20data-type=%22text%22%3E%3Ctextarea%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E7%94%B3%E8%AF%B7%E4%BA%BA%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346168843%22%20data-type=%22userName%22%3E%3Cspan%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346201383%22%20data-type=%22text%22%3E%3Ctextarea%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E4%B8%8B%E6%8B%89%E5%88%97%E8%A1%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346224555%22%20data-type=%22select%22%3E%3Cselect%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346257519%22%20data-type=%22text%22%3E%3Ctextarea%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%97%A5%E6%9C%9F%E9%80%89%E6%8B%A9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346252905%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346275648%22%20data-type=%22text%22%3E%3Ctextarea%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%97%A5%E6%9C%9F%E9%80%89%E6%8B%A9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346284429%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346287500%22%20data-type=%22text%22%3E%3Ctextarea%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346295263%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%223%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cdiv%20class=%22placeholder%22%20draggable=%22true%22%3E%3C/div%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3Ctable%20data-rows=%221%22%20data-columns=%221%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:100.00%25%22%3E%3Cspan%20class=%22control-label%20%22%3E%E7%94%B3%E8%AF%B7%E6%97%A5%E6%9C%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221476346350896%22%20data-type=%22requisitionDate%22%3E%3Cspan%3E%E5%8F%AA%E8%AF%BB%3C/span%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '', '2016-10-13 16:12:44', '2016-10-13 16:12:44', '13');
INSERT INTO `wf_formtemplate` VALUES ('8', 'test', '%0A%20%20%20%20%20%20%20%20%3Cp%20class=%22form-title%22%20style=%22word-break:%20break-word;%22%3Etest%E3%80%82%E3%80%82%E3%80%82%3C/p%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class=%22form-main%22%3E%3Ctable%20data-rows=%223%22%20data-columns=%225%22%20class=%22layout%22%20border=%221%22%3E%3Ctbody%3E%3Ctr%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3Cth%3E%3C/th%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E5%A4%8D%E9%80%89%E6%A1%86%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477447194030%22%20data-type=%22checkbox%22%3E%3Cinput%20type=%22checkbox%22%20value=%22%E5%A4%8D%E9%80%891%22%20name=%224%22%3E%E5%A4%8D%E9%80%891%3Cinput%20type=%22checkbox%22%20value=%22%E5%A4%8D%E9%80%892%22%20name=%224%22%3E%E5%A4%8D%E9%80%892%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%97%A5%E6%9C%9F%E9%80%89%E6%8B%A9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446213682%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%225%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E4%B8%8B%E6%8B%89%E5%88%97%E8%A1%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446240010%22%20data-type=%22select%22%3E%3Cselect%20id=%221%22%3E%3Coption%20value=%22%E5%A2%9E%E5%8A%A0%22%3E%E5%A2%9E%E5%8A%A0%3C/option%3E%3Coption%20value=%22%E5%88%A0%E9%99%A4%22%3E%E5%88%A0%E9%99%A4%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446250090%22%20data-type=%22text%22%3E%3Ctextarea%20id=%226%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%220%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446276326%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%227%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E5%A4%8D%E9%80%89%E6%A1%86%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477447348553%22%20data-type=%22checkbox%22%3E%3Cinput%20type=%22checkbox%22%20value=%22%E5%A4%8D%E9%80%891%22%20name=%224%22%3E%E5%A4%8D%E9%80%891%3Cinput%20type=%22checkbox%22%20value=%22%E5%A4%8D%E9%80%892%22%20name=%224%22%3E%E5%A4%8D%E9%80%892%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%97%A5%E6%9C%9F%E9%80%89%E6%8B%A9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446217537%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%225%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E4%B8%8B%E6%8B%89%E5%88%97%E8%A1%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446231090%22%20data-type=%22select%22%3E%3Cselect%20id=%222%22%3E%3Coption%20value=%22%E5%A2%9E%E5%8A%A0%22%3E%E5%A2%9E%E5%8A%A0%3C/option%3E%3Coption%20value=%22%E5%88%A0%E9%99%A4%22%3E%E5%88%A0%E9%99%A4%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446252777%22%20data-type=%22text%22%3E%3Ctextarea%20id=%226%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%221%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446278694%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%227%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3Ctr%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%220%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E5%A4%8D%E9%80%89%E6%A1%86%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477447354826%22%20data-type=%22checkbox%22%3E%3Cinput%20type=%22checkbox%22%20value=%22%E5%A4%8D%E9%80%891%22%20name=%224%22%3E%E5%A4%8D%E9%80%891%3Cinput%20type=%22checkbox%22%20value=%22%E5%A4%8D%E9%80%892%22%20name=%224%22%3E%E5%A4%8D%E9%80%892%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%221%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%97%A5%E6%9C%9F%E9%80%89%E6%8B%A9%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446220057%22%20data-type=%22date%22%3E%3Cinput%20type=%22date%22%20id=%225%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%222%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E4%B8%8B%E6%8B%89%E5%88%97%E8%A1%A8%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446243546%22%20data-type=%22select%22%3E%3Cselect%20id=%223%22%3E%3Coption%20value=%22%E5%A2%9E%E5%8A%A0%22%3E%E5%A2%9E%E5%8A%A0%3C/option%3E%3Coption%20value=%22%E5%88%A0%E9%99%A4%22%3E%E5%88%A0%E9%99%A4%3C/option%3E%3C/select%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%22%20data-top=%222%22%20data-left=%223%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%96%87%E6%9C%AC%E5%9F%9F%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446255073%22%20data-type=%22text%22%3E%3Ctextarea%20id=%226%22%3E%3C/textarea%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3Ctd%20class=%22cell%20chosen%22%20data-top=%222%22%20data-left=%224%22%20style=%22width:20.00%25%22%3E%3Cspan%20class=%22control-label%22%3E%E6%96%87%E6%9C%AC%E8%BE%93%E5%85%A5%3C/span%3E%3Cspan%20class=%22control-entity%22%20id=%221477446280854%22%20data-type=%22varchar%22%3E%3Cinput%20type=%22text%22%20id=%227%22%3E%3C/span%3E%3Ca%20title=%22%E5%88%A0%E9%99%A4%22%20class=%22glyphicon%20glyphicon-remove-sign%20remove%22%20href=%22javascript:;%22%3E%3C/a%3E%3C/td%3E%3C/tr%3E%3C/tbody%3E%3C/table%3E%3C/div%3E%0A%20%20%20%20', '6', '哈哈哈哈哈哈哈', '2016-10-26 10:18:58', '2016-10-26 10:18:58', '1');

-- ----------------------------
-- Table structure for wf_generworkflow
-- ----------------------------
DROP TABLE IF EXISTS `wf_generworkflow`;
CREATE TABLE `wf_generworkflow` (
  `Id` int(11) DEFAULT NULL,
  `FlowId` longtext,
  `Status` int(11) DEFAULT NULL,
  `StartName` longtext,
  `StartTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CurrentNodeId` longtext,
  `CurrentNodeName` longtext,
  `NextNodeId` longtext,
  `NodeName` longtext,
  `CompleteTime` float DEFAULT NULL,
  `Starter_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_generworkflow
-- ----------------------------
INSERT INTO `wf_generworkflow` VALUES ('1', 'workflow1458025705180', '4', '首席执行官', '2016-03-15 15:37:47', 'task1458025715958', '分领导意见', 'task1458025715958', '分领导意见', '0', '2');
INSERT INTO `wf_generworkflow` VALUES ('2', 'workflow1458196893415', '1', '陈飞', '2016-03-17 14:46:40', 'task1458196908805', '3', 'end1458196901459', 'End', '0', '5');
INSERT INTO `wf_generworkflow` VALUES ('3', 'workflow1458196893415', '0', '陈飞', '2016-03-17 14:48:20', 'task1458196903290', '1', 'task1458196904917', '2', '0', '5');
INSERT INTO `wf_generworkflow` VALUES ('4', 'workflow1458025705180', '0', '首席执行官', '2016-03-17 16:18:16', 'task1458025709792', '发起合同会签', 'task1458025711838', '部门意见', '0', '2');
INSERT INTO `wf_generworkflow` VALUES ('5', 'workflow1473400098610', '4', '陈飞', '2016-09-09 14:30:22', 'task1473401625001', '申请', 'task1473400106097', 'RT审批', '0', '5');
INSERT INTO `wf_generworkflow` VALUES ('6', 'workflow1473400098610', '0', '陈飞', '2016-09-09 15:00:44', 'task1473400106097', 'RT审批', 'task1473400107625', 'PM审批', '0', '5');
INSERT INTO `wf_generworkflow` VALUES ('7', 'workflow1473400098610', '0', '陈飞', '2016-09-09 15:17:34', 'task1473400106097', 'RT审批', 'task1473400107625', 'PM审批', '0', '5');
INSERT INTO `wf_generworkflow` VALUES ('8', 'workflow1473400098610', '1', '陈飞', '2016-09-09 15:40:09', 'task1473407071623', '测试节点', 'end1473406959619', 'End', '0', '5');
INSERT INTO `wf_generworkflow` VALUES ('9', 'workflow1473407346703', '0', '超级管理员', '2016-09-09 16:00:28', 'start1473407350201', 'Start', 'task1473407353241', '提交申请', '0', '1');
INSERT INTO `wf_generworkflow` VALUES ('10', 'workflow1473407346703', '0', '超级管理员', '2016-09-09 16:01:14', 'start1473407350201', 'Start', 'task1473407353241', '提交申请', '0', '1');
INSERT INTO `wf_generworkflow` VALUES ('11', 'workflow1473407346703', '0', '超级管理员', '2016-09-09 16:02:11', 'start1473407350201', 'Start', 'task1473407353241', '提交申请', '0', '1');
INSERT INTO `wf_generworkflow` VALUES ('12', 'workflow1476341186054', '1', '吴捷', '2016-10-13 16:24:32', 'task1476341212775', '售前任务一级审批', 'end1476341194862', 'End', '0', '12');
INSERT INTO `wf_generworkflow` VALUES ('13', 'workflow1476341186054', '0', '吴捷', '2016-10-13 16:30:17', 'task1476341197469', '售前发起', 'task1476341197469', 'task1476341197469', '0', '12');
INSERT INTO `wf_generworkflow` VALUES ('14', 'workflow1458025705180', '0', '吴捷', '2016-10-17 17:38:37', 'start1458025708304', 'Start', 'task1458025709792', '发起合同会签', '0', '12');
INSERT INTO `wf_generworkflow` VALUES ('15', 'workflow1473407346703', '0', '吴捷', '2016-10-25 17:27:43', 'task1473407353241', '提交申请', 'task1473407353241', 'task1473407353241', '0', '12');

-- ----------------------------
-- Table structure for wf_line
-- ----------------------------
DROP TABLE IF EXISTS `wf_line`;
CREATE TABLE `wf_line` (
  `Id` int(11) DEFAULT NULL,
  `LineId` longtext,
  `FlowId` longtext,
  `FromNode` longtext,
  `ToNode` longtext,
  `FromPort` longtext,
  `ToPort` longtext,
  `ExistCondition` int(11) DEFAULT NULL,
  `Router` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_line
-- ----------------------------
INSERT INTO `wf_line` VALUES ('1', 'flow1458023870398', 'workflow1458021698664', 'start1458023695199', 'task1458021701228', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('2', 'flow1458023873197', 'workflow1458021698664', 'task1458021701228', 'task1458023700535', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('3', 'flow1458023875999', 'workflow1458021698664', 'task1458023700535', 'task1458023702127', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('4', 'flow1458023879280', 'workflow1458021698664', 'task1458023702127', 'task1458023703781', 'bottomOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('5', 'flow1458023882231', 'workflow1458021698664', 'task1458023703781', 'task1458023705415', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('6', 'flow1458023885382', 'workflow1458021698664', 'task1458023705415', 'task1458023707503', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('7', 'flow1458023888023', 'workflow1458021698664', 'task1458023707503', 'task1458023848112', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('8', 'flow1458023889878', 'workflow1458021698664', 'task1458023848112', 'end1458023697207', 'leftOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('9', 'flow1458024348741', 'workflow1458024322579', 'start1458024327702', 'task1458024325006', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('10', 'flow1458024352643', 'workflow1458024322579', 'task1458024325006', 'end1458024326636', 'bottomOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('11', 'flow1458024413899', 'workflow1458024398210', 'start1458024400980', 'task1458024402500', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('12', 'flow1458024423258', 'workflow1458024398210', 'task1458024402500', 'task1458024403681', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('13', 'flow1458024426113', 'workflow1458024398210', 'task1458024403681', 'end1458024410277', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('14', 'flow1458024532554', 'workflow1458024456769', 'start1458024460954', 'task1458024463499', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('15', 'flow1458024536472', 'workflow1458024456769', 'task1458024463499', 'task1458024465177', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('16', 'flow1458024539713', 'workflow1458024456769', 'task1458024465177', 'task1458024466600', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('17', 'flow1458024541919', 'workflow1458024456769', 'task1458024466600', 'task1458024468482', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('18', 'flow1458024544887', 'workflow1458024456769', 'task1458024468482', 'task1458024469961', 'bottomOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('19', 'flow1458024549560', 'workflow1458024456769', 'task1458024469961', 'task1458024471393', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('20', 'flow1458024552039', 'workflow1458024456769', 'task1458024471393', 'task1458024473081', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('21', 'flow1458024553855', 'workflow1458024456769', 'task1458024473081', 'end1458024494202', 'leftOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('22', 'flow1458024868091', 'workflow1458024826860', 'start1458024831525', 'task1458024834348', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('23', 'flow1458024870858', 'workflow1458024826860', 'task1458024834348', 'task1458024835691', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('24', 'flow1458024873515', 'workflow1458024826860', 'task1458024835691', 'task1458024836867', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('25', 'flow1458024876883', 'workflow1458024826860', 'task1458024836867', 'task1458024838699', 'rightOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('26', 'flow1458024880066', 'workflow1458024826860', 'task1458024838699', 'task1458024840195', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('27', 'flow1458024881892', 'workflow1458024826860', 'task1458024840195', 'task1458024841580', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('28', 'flow1458024883962', 'workflow1458024826860', 'task1458024841580', 'task1458024843243', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('29', 'flow1458024892898', 'workflow1458024826860', 'task1458024843243', 'end1458024833205', 'leftOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('30', 'flow1458025004905', 'workflow1458024975423', 'start1458024980323', 'task1458024984769', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('31', 'flow1458025010121', 'workflow1458024975423', 'task1458024984769', 'task1458024990034', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('32', 'flow1458025012137', 'workflow1458024975423', 'task1458024990034', 'task1458024991896', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('33', 'flow1458025016376', 'workflow1458024975423', 'task1458024991896', 'task1458024993659', 'bottomOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('34', 'flow1458025019432', 'workflow1458024975423', 'task1458024993659', 'task1458024995297', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('35', 'flow1458025022032', 'workflow1458024975423', 'task1458024995297', 'task1458024997169', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('36', 'flow1458025024137', 'workflow1458024975423', 'task1458024997169', 'task1458024998818', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('37', 'flow1458025031880', 'workflow1458024975423', 'task1458024998818', 'end1458024983226', 'leftOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('38', 'flow1458025389396', 'workflow1458025379450', 'start1458025381324', 'task1458025384027', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('39', 'flow1458025391932', 'workflow1458025379450', 'task1458025384027', 'task1458025385490', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('40', 'flow1458025394323', 'workflow1458025379450', 'task1458025385490', 'end1458025387018', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('41', 'flow1458025440602', 'workflow1458025421602', 'start1458025423722', 'task1458025425658', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('42', 'flow1458025443267', 'workflow1458025421602', 'task1458025425658', 'task1458025427161', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('43', 'flow1458025445026', 'workflow1458025421602', 'task1458025427161', 'task1458025428506', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('44', 'flow1458025447433', 'workflow1458025421602', 'task1458025428506', 'task1458025429905', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('45', 'flow1458025458562', 'workflow1458025421602', 'task1458025429905', 'task1458025431530', 'rightOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('46', 'flow1458025461626', 'workflow1458025421602', 'task1458025431530', 'task1458025433666', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('47', 'flow1458025463777', 'workflow1458025421602', 'task1458025433666', 'task1458025435810', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('48', 'flow1458025466337', 'workflow1458025421602', 'task1458025435810', 'end1458025437827', 'leftOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('162', 'flow1458029456700', 'workflow1458029420272', 'start1458029448468', 'task1458029422116', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('163', 'flow1458029461555', 'workflow1458029420272', 'task1458029422116', 'task1458029423187', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('164', 'flow1458029465571', 'workflow1458029420272', 'task1458029423187', 'task1458029424483', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('165', 'flow1458029467795', 'workflow1458029420272', 'task1458029424483', 'task1458029425810', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('166', 'flow1458029471955', 'workflow1458029420272', 'task1458029425810', 'task1458029427323', 'bottomOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('167', 'flow1458029474891', 'workflow1458029420272', 'task1458029427323', 'task1458029428762', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('168', 'flow1458029476594', 'workflow1458029420272', 'task1458029428762', 'task1458029430115', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('169', 'flow1458029482532', 'workflow1458029420272', 'task1458029430115', 'task1458029431362', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('170', 'flow1458029485947', 'workflow1458029420272', 'task1458029431362', 'end1458029450012', 'leftOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('181', 'flow1458029543618', 'workflow1458029518082', 'start1458029523882', 'task1458029520947', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('182', 'flow1458029546281', 'workflow1458029518082', 'task1458029520947', 'task1458029525178', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('183', 'flow1458029548994', 'workflow1458029518082', 'task1458029525178', 'task1458029526417', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('184', 'flow1458029554034', 'workflow1458029518082', 'task1458029526417', 'task1458029527633', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('185', 'flow1458029558201', 'workflow1458029518082', 'task1458029527633', 'task1458029537330', 'rightOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('186', 'flow1458029560882', 'workflow1458029518082', 'task1458029537330', 'task1458029528834', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('187', 'flow1458029563138', 'workflow1458029518082', 'task1458029528834', 'task1458029530130', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('188', 'flow1458029565403', 'workflow1458029518082', 'task1458029530130', 'task1458029531283', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('189', 'flow1458029568123', 'workflow1458029518082', 'task1458029531283', 'task1458029532321', 'leftOutputPort', 'rightOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('190', 'flow1458098887594', 'workflow1458029518082', 'task1458029532321', 'end1458029534395', 'leftOutputPort', 'RightInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('203', 'flow1458196926183', 'workflow1458196893415', 'start1458196899918', 'task1458196903290', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('204', 'flow1458196927396', 'workflow1458196893415', 'task1458196903290', 'task1458196904917', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('205', 'flow1458196929122', 'workflow1458196893415', 'task1458196904917', 'task1458196908805', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('206', 'flow1458196934318', 'workflow1458196893415', 'task1458196908805', 'end1458196901459', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('216', 'flow1469692017574', 'workflow1469692010728', 'start1469692015116', 'task1469692011774', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('217', 'flow1469692020557', 'workflow1469692010728', 'task1469692011774', 'end1469692014150', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('693', 'flow1476344587542', 'workflow1476344578422', 'start1476344582428', 'task1476344579702', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('694', 'flow1476344590035', 'workflow1476344578422', 'task1476344579702', 'task1476344583556', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('695', 'flow1476344592035', 'workflow1476344578422', 'task1476344583556', 'end1476344581239', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('726', 'flow1476341240173', 'workflow1476341186054', 'start1476341190207', 'task1476341197469', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('727', 'flow1476341251265', 'workflow1476341186054', 'task1476341197469', 'task1476341212775', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('728', 'flow1476341255307', 'workflow1476341186054', 'task1476341212775', 'end1476341194862', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('745', 'flow1473400117042', 'workflow1473400098610', 'start1473400104170', 'task1473401625001', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('746', 'flow1473401645311', 'workflow1473400098610', 'task1473401625001', 'task1473400106097', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('747', 'flow1473405914725', 'workflow1473400098610', 'task1473400106097', 'task1473400107625', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('748', 'flow1473405923500', 'workflow1473400098610', 'task1473400106097', 'task1473401885754', 'bottomOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('749', 'flow1473405965075', 'workflow1473400098610', 'task1473400107625', 'task1473401885754', 'bottomOutputPort', 'rightOutputPort', '0', '2');
INSERT INTO `wf_line` VALUES ('750', 'flow1473407104883', 'workflow1473400098610', 'task1473401885754', 'task1473407071623', 'bottomOutputPort', 'topOutputPort', '0', '2');
INSERT INTO `wf_line` VALUES ('751', 'flow1473407529091', 'workflow1473400098610', 'task1473407071623', 'end1473406959619', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('752', 'flow1473407535372', 'workflow1473400098610', 'task1473401885754', 'end1473406959619', 'bottomOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('753', 'flow1477298014693', 'workflow1477297994218', 'start1477297998952', 'task1477298002177', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('754', 'flow1477298025601', 'workflow1477297994218', 'task1477298002177', 'end1477298021970', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('759', 'flow1458025729249', 'workflow1458025705180', 'start1458025708304', 'task1458025709792', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('760', 'flow1458025731063', 'workflow1458025705180', 'task1458025709792', 'task1458025711838', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('761', 'flow1458025733302', 'workflow1458025705180', 'task1458025711838', 'task1458025713182', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('762', 'flow1458025788622', 'workflow1458025705180', 'task1458025713182', 'task1458025714485', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('763', 'flow1458025790477', 'workflow1458025705180', 'task1458025714485', 'task1458025715958', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('764', 'flow1458025793116', 'workflow1458025705180', 'task1458025715958', 'task1458025717950', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('765', 'flow1458026001088', 'workflow1458025705180', 'task1458025717950', 'task1458025984627', 'bottomOutputPort', 'topOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('766', 'flow1458026003280', 'workflow1458025705180', 'task1458025984627', 'end1458025722056', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('767', 'flow1477385681210', 'workflow1477385648757', 'start1477385652436', 'task1477385660365', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('768', 'flow1477385800205', 'workflow1477385648757', 'task1477385660365', 'end1477385654555', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('784', 'flow1473407372455', 'workflow1473407346703', 'start1473407350201', 'task1473407353241', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('785', 'flow1473407375053', 'workflow1473407346703', 'task1473407353241', 'task1473407354247', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('786', 'flow1473407377991', 'workflow1473407346703', 'task1473407353241', 'task1473407355575', 'rightOutputPort', 'leftOutputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('787', 'flow1473407380486', 'workflow1473407346703', 'task1473407355575', 'end1473407351520', 'rightOutputPort', 'leftInputPort', '0', '1');
INSERT INTO `wf_line` VALUES ('788', 'flow1473407389254', 'workflow1473407346703', 'task1473407354247', 'end1473407351520', 'rightOutputPort', 'leftInputPort', '0', '1');

-- ----------------------------
-- Table structure for wf_node
-- ----------------------------
DROP TABLE IF EXISTS `wf_node`;
CREATE TABLE `wf_node` (
  `Id` int(11) DEFAULT NULL,
  `NodeId` longtext,
  `FlowId` longtext,
  `Name` longtext,
  `XPos` longtext,
  `YPos` longtext,
  `Width` longtext,
  `Height` longtext,
  `Type` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_node
-- ----------------------------
INSERT INTO `wf_node` VALUES ('1', 'start1454319700800', 'workflow1454319698005', 'Start', '58', '48', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('2', 'task1454319702480', 'workflow1454319698005', '新节点', '204', '81', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('3', 'task1454319820049', 'workflow1454319818062', '新节点', '211', '76', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('4', 'task1454319901918', 'workflow1454319899689', '新节点', '218', '100', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('5', 'task1458021320315', 'workflow1458021312727', '新节点', '263', '38', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('6', 'task1458021351330', 'workflow1458021346168', '新节点', '263', '66', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('11', 'task1458021701228', 'workflow1458021698664', '发起合同会签单', '184', '69', '137', '60', 'Task');
INSERT INTO `wf_node` VALUES ('12', 'start1458023695199', 'workflow1458021698664', 'Start', '61', '84', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('13', 'end1458023697207', 'workflow1458021698664', 'End', '54', '251', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('14', 'task1458023700535', 'workflow1458021698664', '部门意见', '415', '66', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('15', 'task1458023702127', 'workflow1458021698664', '会办部门意见', '671', '67', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('16', 'task1458023703781', 'workflow1458021698664', '财务审计部及财务总监意见', '688', '238', '189', '60', 'Task');
INSERT INTO `wf_node` VALUES ('17', 'task1458023705415', 'workflow1458021698664', '分管领导意见', '479', '241', '127', '60', 'Task');
INSERT INTO `wf_node` VALUES ('18', 'task1458023707503', 'workflow1458021698664', '总经理意见', '310', '242', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('19', 'task1458023848112', 'workflow1458021698664', '董事长意见', '155', '238', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('23', 'task1458024325006', 'workflow1458024322579', '新节点', '284', '40', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('24', 'end1458024326636', 'workflow1458024322579', 'End', '291', '206', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('25', 'start1458024327702', 'workflow1458024322579', 'Start', '69', '40', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('26', 'start1458024400980', 'workflow1458024398210', 'Start', '63', '119', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('27', 'task1458024402500', 'workflow1458024398210', '新节点', '235', '97', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('28', 'task1458024403681', 'workflow1458024398210', '新节点', '503', '100', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('29', 'end1458024410277', 'workflow1458024398210', 'End', '787', '116', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('30', 'start1458024460954', 'workflow1458024456769', 'Start', '38', '70', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('31', 'task1458024463499', 'workflow1458024456769', '发起合同会签', '181', '49', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('32', 'task1458024465177', 'workflow1458024456769', '部门意见', '402', '48', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('33', 'task1458024466600', 'workflow1458024456769', '会办部门意见', '623', '48', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('34', 'task1458024468482', 'workflow1458024456769', '财务审计部及财务总监意见', '825', '52', '172', '60', 'Task');
INSERT INTO `wf_node` VALUES ('35', 'task1458024469961', 'workflow1458024456769', '分管领导意见', '723', '211', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('36', 'task1458024471393', 'workflow1458024456769', '总经理意见', '459', '216', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('37', 'task1458024473081', 'workflow1458024456769', '董事长意见', '211', '211', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('38', 'end1458024494202', 'workflow1458024456769', 'End', '38', '229', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('39', 'start1458024831525', 'workflow1458024826860', 'Start', '34', '63', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('40', 'end1458024833205', 'workflow1458024826860', 'End', '25', '282', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('41', 'task1458024834348', 'workflow1458024826860', '新节点', '199', '45', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('42', 'task1458024835691', 'workflow1458024826860', '新节点', '463', '37', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('43', 'task1458024836867', 'workflow1458024826860', '新节点', '754', '45', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('44', 'task1458024838699', 'workflow1458024826860', '新节点', '802', '245', '164', '60', 'Task');
INSERT INTO `wf_node` VALUES ('45', 'task1458024840195', 'workflow1458024826860', '新节点', '621', '251', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('46', 'task1458024841580', 'workflow1458024826860', '新节点', '397', '257', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('47', 'task1458024843243', 'workflow1458024826860', '新节点', '171', '255', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('48', 'start1458024980323', 'workflow1458024975423', 'Start', '74', '68', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('49', 'end1458024983226', 'workflow1458024975423', 'End', '61', '396', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('50', 'task1458024984769', 'workflow1458024975423', '新节点', '225', '62', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('51', 'end1458024986201', 'workflow1458024975423', 'End', '98', '-54', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('52', 'task1458024990034', 'workflow1458024975423', '新节点', '452', '103', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('53', 'task1458024991896', 'workflow1458024975423', '新节点', '675', '125', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('54', 'task1458024993659', 'workflow1458024975423', '新节点', '683', '298', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('55', 'task1458024995297', 'workflow1458024975423', '新节点', '479', '306', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('56', 'task1458024997169', 'workflow1458024975423', '新节点', '296', '336', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('57', 'task1458024998818', 'workflow1458024975423', '新节点', '150', '314', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('58', 'start1458025381324', 'workflow1458025379450', 'Start', '53', '58', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('59', 'task1458025384027', 'workflow1458025379450', '新节点', '185', '48', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('60', 'task1458025385490', 'workflow1458025379450', '新节点', '358', '74', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('61', 'end1458025387018', 'workflow1458025379450', 'End', '627', '96', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('62', 'start1458025423722', 'workflow1458025421602', 'Start', '40', '49', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('63', 'task1458025425658', 'workflow1458025421602', '新节点', '139', '43', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('64', 'task1458025427161', 'workflow1458025421602', '新节点', '297', '63', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('65', 'task1458025428506', 'workflow1458025421602', '新节点', '449', '80', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('66', 'task1458025429905', 'workflow1458025421602', '新节点', '613', '146', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('67', 'task1458025431530', 'workflow1458025421602', '新节点', '602', '302', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('68', 'task1458025433666', 'workflow1458025421602', '新节点', '423', '325', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('69', 'task1458025435810', 'workflow1458025421602', '新节点', '265', '369', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('70', 'end1458025437827', 'workflow1458025421602', 'End', '80', '387', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('203', 'task1458029422116', 'workflow1458029420272', '新节点', '191', '85', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('204', 'task1458029423187', 'workflow1458029420272', '新节点', '354', '83', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('205', 'task1458029424483', 'workflow1458029420272', '新节点', '520', '84', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('206', 'task1458029425810', 'workflow1458029420272', '新节点', '658', '85', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('207', 'task1458029427323', 'workflow1458029420272', '新节点', '675', '231', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('208', 'task1458029428762', 'workflow1458029420272', '新节点', '516', '228', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('209', 'task1458029430115', 'workflow1458029420272', '新节点', '379', '225', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('210', 'task1458029431362', 'workflow1458029420272', '新节点', '216', '220', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('211', 'start1458029448468', 'workflow1458029420272', 'Start', '65', '102', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('212', 'end1458029450012', 'workflow1458029420272', 'End', '68', '229', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('224', 'task1458029520947', 'workflow1458029518082', '新节点', '207', '42', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('225', 'start1458029523882', 'workflow1458029518082', 'Start', '59', '51', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('226', 'task1458029525178', 'workflow1458029518082', '新节点', '370', '57', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('227', 'task1458029526417', 'workflow1458029518082', '新节点', '510', '85', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('228', 'task1458029527633', 'workflow1458029518082', '新节点', '693', '132', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('229', 'task1458029528834', 'workflow1458029518082', '新节点', '639', '305', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('230', 'task1458029530130', 'workflow1458029518082', '新节点', '490', '283', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('231', 'task1458029531283', 'workflow1458029518082', '新节点', '317', '295', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('232', 'task1458029532321', 'workflow1458029518082', '新节点', '180', '273', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('233', 'end1458029534395', 'workflow1458029518082', 'End', '57', '260', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('234', 'task1458029537330', 'workflow1458029518082', '新节点', '852', '255', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('250', 'start1458196899918', 'workflow1458196893415', 'Start', '66', '161', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('251', 'end1458196901459', 'workflow1458196893415', 'End', '870', '177', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('252', 'task1458196903290', 'workflow1458196893415', '1', '209', '152', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('253', 'task1458196904917', 'workflow1458196893415', '2', '432', '150', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('254', 'task1458196908805', 'workflow1458196893415', '3', '642', '145', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('269', 'task1469692011774', 'workflow1469692010728', '打包测试', '421', '92', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('270', 'end1469692014150', 'workflow1469692010728', 'End', '698', '139', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('271', 'start1469692015116', 'workflow1469692010728', 'Start', '122', '121', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('278', 'start1473393686434', 'workflow1473393044384', 'Start', '97', '157', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('279', 'task1473393691512', 'workflow1473393044384', '新节点', '172', '149', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('280', 'task1473399495443', 'workflow1473393044384', '新节点', '346', '160', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('760', 'task1476344579702', 'workflow1476344578422', '节点1', '176', '173', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('761', 'end1476344581239', 'workflow1476344578422', 'End', '561', '243', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('762', 'start1476344582428', 'workflow1476344578422', 'Start', '89', '140', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('763', 'task1476344583556', 'workflow1476344578422', '节点2', '342', '213', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('770', 'task1476346515026', 'workflow1476346512592', '新节点', '360', '186', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('807', 'start1476341190207', 'workflow1476341186054', 'Start', '94', '78', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('808', 'end1476341194862', 'workflow1476341186054', 'End', '599', '76', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('809', 'task1476341197469', 'workflow1476341186054', '售前发起', '205', '61', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('810', 'task1476341212775', 'workflow1476341186054', '售前任务一级审批', '393', '61', '156', '60', 'Task');
INSERT INTO `wf_node` VALUES ('818', 'start1477297953184', 'workflow1477297944412', 'Start', '123', '136', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('819', 'task1477297958096', 'workflow1477297944412', '新节点', '286', '124', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('832', 'start1473400104170', 'workflow1473400098610', 'Start', '89', '115', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('833', 'task1473400106097', 'workflow1473400098610', 'RT审批', '364', '95', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('834', 'task1473400107625', 'workflow1473400098610', 'PM审批', '576', '95', '130', '60', 'Task');
INSERT INTO `wf_node` VALUES ('835', 'task1473401625001', 'workflow1473400098610', '申请', '184', '95', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('836', 'task1473401885754', 'workflow1473400098610', 'HR', '364', '247', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('837', 'end1473406959619', 'workflow1473400098610', 'End', '572', '399', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('838', 'task1473407071623', 'workflow1473400098610', '测试节点', '267', '382', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('839', 'start1477297998952', 'workflow1477297994218', 'Start', '108', '173', '21', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('840', 'task1477298002177', 'workflow1477297994218', '新节点', '315', '153', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('841', 'end1477298021970', 'workflow1477297994218', 'End', '640', '168', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('848', 'start1458025708304', 'workflow1458025705180', 'Start', '16', '91', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('849', 'task1458025709792', 'workflow1458025705180', '发起合同会签', '140', '134', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('850', 'task1458025711838', 'workflow1458025705180', '部门意见', '291', '153', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('851', 'task1458025713182', 'workflow1458025705180', '会办部门意见', '432', '167', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('852', 'task1458025714485', 'workflow1458025705180', '总监意见', '593', '164', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('853', 'task1458025715958', 'workflow1458025705180', '分领导意见', '742', '177', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('854', 'task1458025717950', 'workflow1458025705180', '总经理意见', '893', '198', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('855', 'end1458025722056', 'workflow1458025705180', 'End', '977', '371', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('856', 'task1458025984627', 'workflow1458025705180', '董事长意见', '770', '331', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('857', 'start1477385652436', 'workflow1477385648757', 'Start', '167', '164', '22', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('858', 'end1477385654555', 'workflow1477385648757', 'End', '586', '150', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('859', 'task1477385660365', 'workflow1477385648757', '审批', '350', '136', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('875', 'start1473407350201', 'workflow1473407346703', 'Start', '59', '130', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('876', 'end1473407351520', 'workflow1473407346703', 'End', '797', '151', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('877', 'task1473407353241', 'workflow1473407346703', '提交申请', '196', '110', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('878', 'task1473407354247', 'workflow1473407346703', 'am审批', '446', '58', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('879', 'task1473407355575', 'workflow1473407346703', 'pm审批', '424', '232', '100', '60', 'Task');
INSERT INTO `wf_node` VALUES ('880', 'start1487658339784', 'workflow1487658336727', 'Start', '150', '127', '20', '20', 'draw2d.Start');
INSERT INTO `wf_node` VALUES ('881', 'end1487658341026', 'workflow1487658336727', 'End', '657', '172', '30', '30', 'draw2d.End');
INSERT INTO `wf_node` VALUES ('882', 'task1487658342382', 'workflow1487658336727', '新节点', '403', '160', '100', '60', 'Task');

-- ----------------------------
-- Table structure for wf_nodeformrelation
-- ----------------------------
DROP TABLE IF EXISTS `wf_nodeformrelation`;
CREATE TABLE `wf_nodeformrelation` (
  `Id` int(11) DEFAULT NULL,
  `FormName` longtext,
  `Node_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_nodeformrelation
-- ----------------------------

-- ----------------------------
-- Table structure for wf_nodepermissioncontrol
-- ----------------------------
DROP TABLE IF EXISTS `wf_nodepermissioncontrol`;
CREATE TABLE `wf_nodepermissioncontrol` (
  `Id` int(11) DEFAULT NULL,
  `NodeId` longtext,
  `Type` longtext,
  `Object` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_nodepermissioncontrol
-- ----------------------------
INSERT INTO `wf_nodepermissioncontrol` VALUES ('21', 'task1458196903290', '3', '5');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('22', 'task1458196904917', '3', '1');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('23', 'task1458196908805', '3', '1');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('278', 'task1476341197469', '1', '11');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('279', 'task1476341212775', '1', '14');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('287', 'task1473400106097', '2', '21,16');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('288', 'task1473400107625', '2', '16');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('289', 'task1473401625001', '1', '1,2,3,4');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('290', 'task1473401885754', '2', '15');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('291', 'task1473407071623', '2', '15');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('292', 'task1477298002177', '3', '15');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('294', 'task1458025709792', '1', '1,2,3,4');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('295', 'task1458025711838', '1', '1');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('296', 'task1458025713182', '1', '3');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('297', 'task1458025714485', '2', '20');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('298', 'task1458025715958', '2', '21');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('299', 'task1458025717950', '2', '22');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('300', 'task1458025984627', '2', '23');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('301', 'task1477385660365', '1', '4');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('311', 'task1473407353241', '2', '18,4,5,6,7,8,9,10,11,12,13,14,15,16,17,19,20,21,22,23');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('312', 'task1473407354247', '2', '21');
INSERT INTO `wf_nodepermissioncontrol` VALUES ('313', 'task1473407355575', '2', '13,17,23');

-- ----------------------------
-- Table structure for wf_operatebutton
-- ----------------------------
DROP TABLE IF EXISTS `wf_operatebutton`;
CREATE TABLE `wf_operatebutton` (
  `Id` int(11) DEFAULT NULL,
  `ButtonId` longtext,
  `Name` longtext,
  `Using` int(11) DEFAULT NULL,
  `Node_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_operatebutton
-- ----------------------------

-- ----------------------------
-- Table structure for wf_workflowrecord
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflowrecord`;
CREATE TABLE `wf_workflowrecord` (
  `Id` int(11) DEFAULT NULL,
  `GenerWorkFlowId` longtext,
  `NodeId` longtext,
  `NodeName` longtext,
  `OperaterName` longtext,
  `OperateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(11) DEFAULT NULL,
  `Operater_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_workflowrecord
-- ----------------------------
INSERT INTO `wf_workflowrecord` VALUES ('1', '1', 'start1458025708304', 'Start', '首席执行官', '2016-03-15 15:37:47', '0', '2');
INSERT INTO `wf_workflowrecord` VALUES ('2', '1', 'task1458025709792', '发起合同会签', '首席执行官', '2016-03-15 15:39:21', '1', '2');
INSERT INTO `wf_workflowrecord` VALUES ('3', '1', 'task1458025711838', '部门意见', '首席执行官', '2016-03-15 15:43:40', '1', '2');
INSERT INTO `wf_workflowrecord` VALUES ('4', '1', 'task1458025713182', '会办部门意见', '陈欲菠', '2016-03-15 15:45:06', '1', '9');
INSERT INTO `wf_workflowrecord` VALUES ('5', '1', 'task1458025714485', '总监意见', '张志林', '2016-03-15 15:45:47', '1', '3');
INSERT INTO `wf_workflowrecord` VALUES ('6', '1', 'task1458025715958', '分领导意见', '曹思翀', '2016-03-15 15:48:55', '1', '4');
INSERT INTO `wf_workflowrecord` VALUES ('7', '1', 'task1458025717950', '总经理意见', '陈飞', '2016-03-15 15:53:00', '2', '5');
INSERT INTO `wf_workflowrecord` VALUES ('8', '2', 'start1458196899918', 'Start', '陈飞', '2016-03-17 14:46:40', '0', '5');
INSERT INTO `wf_workflowrecord` VALUES ('9', '2', 'task1458196903290', '1', '陈飞', '2016-03-17 14:46:45', '1', '5');
INSERT INTO `wf_workflowrecord` VALUES ('10', '2', 'task1458196904917', '2', '超级管理员', '2016-03-17 14:47:07', '1', '1');
INSERT INTO `wf_workflowrecord` VALUES ('11', '2', 'task1458196908805', '3', '超级管理员', '2016-03-17 14:47:36', '1', '1');
INSERT INTO `wf_workflowrecord` VALUES ('12', '3', 'start1458196899918', 'Start', '陈飞', '2016-03-17 14:48:20', '0', '5');
INSERT INTO `wf_workflowrecord` VALUES ('13', '3', 'task1458196903290', '1', '陈飞', '2016-03-17 14:48:28', '1', '5');
INSERT INTO `wf_workflowrecord` VALUES ('14', '4', 'start1458025708304', 'Start', '首席执行官', '2016-03-17 16:18:16', '0', '2');
INSERT INTO `wf_workflowrecord` VALUES ('15', '5', 'start1473400104170', 'Start', '陈飞', '2016-09-09 14:30:22', '0', '5');
INSERT INTO `wf_workflowrecord` VALUES ('16', '5', 'task1473401625001', '申请', '陈飞', '2016-09-09 14:30:33', '1', '5');
INSERT INTO `wf_workflowrecord` VALUES ('17', '5', 'task1473400106097', 'RT审批', '陈欲菠', '2016-09-09 14:32:43', '2', '9');
INSERT INTO `wf_workflowrecord` VALUES ('18', '5', 'task1473401625001', '申请', '陈欲菠', '2016-09-09 14:33:06', '1', '9');
INSERT INTO `wf_workflowrecord` VALUES ('19', '6', 'start1473400104170', 'Start', '陈飞', '2016-09-09 15:00:45', '0', '5');
INSERT INTO `wf_workflowrecord` VALUES ('20', '6', 'task1473401625001', '申请', '陈飞', '2016-09-09 15:00:53', '1', '5');
INSERT INTO `wf_workflowrecord` VALUES ('21', '6', 'task1473400106097', 'RT审批', '陈欲菠', '2016-09-09 15:13:15', '1', '9');
INSERT INTO `wf_workflowrecord` VALUES ('22', '7', 'start1473400104170', 'Start', '陈飞', '2016-09-09 15:17:34', '0', '5');
INSERT INTO `wf_workflowrecord` VALUES ('23', '7', 'task1473401625001', '申请', '陈飞', '2016-09-09 15:17:40', '1', '5');
INSERT INTO `wf_workflowrecord` VALUES ('24', '7', 'task1473400106097', 'RT审批', '陈欲菠', '2016-09-09 15:35:08', '1', '9');
INSERT INTO `wf_workflowrecord` VALUES ('25', '8', 'start1473400104170', 'Start', '陈飞', '2016-09-09 15:40:09', '0', '5');
INSERT INTO `wf_workflowrecord` VALUES ('26', '8', 'task1473401625001', '申请', '陈飞', '2016-09-09 15:40:17', '1', '5');
INSERT INTO `wf_workflowrecord` VALUES ('27', '8', 'task1473400106097', 'RT审批', '张志林', '2016-09-09 15:41:49', '1', '3');
INSERT INTO `wf_workflowrecord` VALUES ('28', '9', 'start1473407350201', 'Start', '超级管理员', '2016-09-09 16:00:29', '0', '1');
INSERT INTO `wf_workflowrecord` VALUES ('29', '10', 'start1473407350201', 'Start', '超级管理员', '2016-09-09 16:01:15', '0', '1');
INSERT INTO `wf_workflowrecord` VALUES ('30', '11', 'start1473407350201', 'Start', '超级管理员', '2016-09-09 16:02:11', '0', '1');
INSERT INTO `wf_workflowrecord` VALUES ('31', '8', 'task1473401885754', 'HR', '高洋', '2016-09-09 16:03:08', '1', '6');
INSERT INTO `wf_workflowrecord` VALUES ('32', '8', 'task1473407071623', '测试节点', '高洋', '2016-09-09 16:06:39', '1', '6');
INSERT INTO `wf_workflowrecord` VALUES ('33', '12', 'start1476341190207', 'Start', '吴捷', '2016-10-13 16:24:33', '0', '12');
INSERT INTO `wf_workflowrecord` VALUES ('34', '12', 'task1476341197469', '售前发起', '吴捷', '2016-10-13 16:24:46', '1', '12');
INSERT INTO `wf_workflowrecord` VALUES ('35', '12', 'task1476341212775', '售前任务一级审批', '吴捷', '2016-10-13 16:25:17', '1', '12');
INSERT INTO `wf_workflowrecord` VALUES ('36', '13', 'start1476341190207', 'Start', '吴捷', '2016-10-13 16:30:18', '0', '12');
INSERT INTO `wf_workflowrecord` VALUES ('37', '13', 'task1476341197469', '售前发起', '吴捷', '2016-10-13 16:30:29', '1', '12');
INSERT INTO `wf_workflowrecord` VALUES ('38', '13', 'task1476341212775', '售前任务一级审批', '吴捷', '2016-10-13 16:30:37', '2', '12');
INSERT INTO `wf_workflowrecord` VALUES ('39', '13', 'task1476341197469', '售前发起', '吴捷', '2016-10-13 16:38:29', '2', '12');
INSERT INTO `wf_workflowrecord` VALUES ('40', '14', 'start1458025708304', 'Start', '吴捷', '2016-10-17 17:38:39', '0', '12');
INSERT INTO `wf_workflowrecord` VALUES ('41', '15', 'start1473407350201', 'Start', '吴捷', '2016-10-25 17:27:43', '0', '12');
INSERT INTO `wf_workflowrecord` VALUES ('42', '15', 'task1473407353241', '提交申请', '吴捷', '2016-10-25 17:40:13', '2', '12');
INSERT INTO `wf_workflowrecord` VALUES ('43', '4', 'task1458025709792', '发起合同会签', '吴捷', '2016-10-26 10:30:55', '1', '12');

-- ----------------------------
-- Table structure for wf_workflowtype
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflowtype`;
CREATE TABLE `wf_workflowtype` (
  `Id` int(11) DEFAULT NULL,
  `Name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wf_workflowtype
-- ----------------------------
