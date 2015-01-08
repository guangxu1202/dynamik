-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 01 月 08 日 02:45
-- 服务器版本: 5.5.25a
-- PHP 版本: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `dn201411111`
--

-- --------------------------------------------------------

--
-- 表的结构 `dn_admin`
--

CREATE TABLE IF NOT EXISTS `dn_admin` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(60) NOT NULL,
  `admin_password` varchar(60) NOT NULL,
  `admin_nich` varchar(60) NOT NULL,
  `admin_purview` mediumint(8) NOT NULL,
  `admin_admin` varchar(60) DEFAULT NULL,
  `admin_mail` varchar(60) DEFAULT NULL,
  `admin_tel` varchar(60) DEFAULT NULL,
  `is_disable` mediumint(8) NOT NULL DEFAULT '0',
  `admin_ip` varchar(60) DEFAULT NULL,
  `admin_time` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `dn_admin`
--

INSERT INTO `dn_admin` (`id`, `admin_name`, `admin_password`, `admin_nich`, `admin_purview`, `admin_admin`, `admin_mail`, `admin_tel`, `is_disable`, `admin_ip`, `admin_time`) VALUES
(9, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, NULL, '', NULL, 0, '::1', '1416894319');

-- --------------------------------------------------------

--
-- 表的结构 `dn_admin_group`
--

CREATE TABLE IF NOT EXISTS `dn_admin_group` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `admin_group_name` varchar(60) NOT NULL,
  `admin_group_info` varchar(255) DEFAULT NULL,
  `admin_group_purview` text COMMENT '分组权限-字符串以,分割',
  `is_disable` mediumint(8) NOT NULL DEFAULT '0' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dn_admin_group`
--

INSERT INTO `dn_admin_group` (`id`, `admin_group_name`, `admin_group_info`, `admin_group_purview`, `is_disable`) VALUES
(1, '超级管理员', '可以管理后台所有功能，没有任何限制', 'all_purview', 0),
(2, '信息发布员 ', '发布信息内容的管理员', 'content_create,content_edit', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_alone`
--

CREATE TABLE IF NOT EXISTS `dn_alone` (
  `id` mediumint(8) NOT NULL,
  `content` text,
  `pics` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dn_alone`
--

INSERT INTO `dn_alone` (`id`, `content`, `pics`) VALUES
(38, '<p>\r\n	戴纳米克（大连）科技有限公司</p>\r\n<p>\r\n	德国Tailer Hydraulik GmH公司参与成立的中德合资企业，致力于为企业提供优质、快捷的服务，成为国内外沟通、合作的桥梁。</p>\r\n<p>\r\n	<img alt="" src="../upload/img/201411101539064402.jpg" style="width: 558px; height: 342px;" /></p>\r\n', NULL),
(41, '<p>\r\n	<a href="../product/product.php?id=14" target="_blank" title="德国AEC">德国AEC</a></p>\r\n<p>\r\n	代理德国AEC行星减速机，符合国际通用安装尺寸的行走减速机，优点是：性能可靠、故障率低、免维护、使用寿命长。</p>\r\n<p>\r\n	配套马达选用国际知名品牌。</p>\r\n<p>\r\n	典型应用：煤矿机械、履带式起重机、行驶速度低于40公里/小时的特种车辆。</p>\r\n<p>\r\n	&nbsp;</p>\r\n', NULL),
(37, '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;">戴纳米克（大连）科技有限公司</span><br style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;">中国大连市中山区中山路136号希望大厦926室</span><br style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;">电话：+86（0411）39567919</span><br style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;">传真：+86（0411）39036246</span><br style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;">邮编：116000</span><br style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 20px;">网址：www.dynamik.com.cn</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', NULL),
(46, '<p>\r\n	<a href="../product/product.php?id=11" target="_blank" title="德国力士乐">德国力士乐</a></p>\r\n<p>\r\n	<a href="../product/product.php?id=13" target="_blank" title="意大利阿托斯">意大利阿托斯</a></p>\r\n<p>\r\n	代理德国AEC及意大利Atos油缸，符合ISO国际标准的安装方式，模块化工程设计，高品质加工，以适应现代化的机器和系统的要求。</p>\r\n<p>\r\n	优点是：性能可靠、易于安装和服务、使用寿命长、交货期准确。</p>\r\n<p>\r\n	典型应用：钢厂、有色金属、压机、矿山机械、物料输送、石油、海洋、包装、电厂等。</p>\r\n', NULL),
(47, '<p>\r\n	<a href="../product/product.php?id=11" target="_blank" title="德国力士乐" class="blue_btn">德国力士乐</a></p>\r\n<p>\r\n	<a href="../product/product.php?id=13" target="_blank" title="意大利阿托斯" class="blue_btn">意大利阿托斯</a></p>\r\n<p>\r\n	代理意大利Atos全系列产品。</p>\r\n<p>\r\n	优点是：其尺寸、品质保证及质量管理体系均符合ISO国际标准，并在设计制造过程中始终贯彻了&ldquo;模块化制造&rdquo;的理念，确保了元件品质的稳定，交货期准时，能够满足绝大多数液压传动系统的要求，其中比例阀和电子元件以及ATEX防爆产品是Atos的特色，所有元件均获得了欧洲CE认证，并同时符合欧洲严格的环保要求。</p>\r\n<p>\r\n	典型应用：钢厂、有色金属、压机、矿山机械、物料输送、石油、海洋、包装、电厂、注塑机、橡胶、机床、工程机械等。</p>\r\n', NULL),
(48, '<p>\r\n	<a href="../product/product.php?id=15" target="_blank" title="瑞典Aventics（原博世气动）">瑞典Aventics（原博世气动）</a></p>\r\n<p>\r\n	代理瑞典Aventics(原Bosch)全系列产品，致力于帮助客户实现生产自动化，提高生产效率，降低生产成本。</p>\r\n<p>\r\n	典型应用：钢厂、有色金属、压机、石油、海洋、包装、电厂、橡胶、机床、汽车、自动化、工程机械等。</p>\r\n', NULL),
(49, '<p>\r\n	<a href="../product/product.php?id=14" target="_blank" title="德国AEC">德国AEC</a></p>\r\n<p>\r\n	代理德国AEC全系列产品，包括压油过滤器、回油过滤器、过滤小车、空气滤清器、净油机、油水分离机、污染检测仪、标准法兰、焊接式管接头、卡套式管接头、液压胶管等。</p>\r\n<p>\r\n	优点是：性能可靠、易于安装和服务、交货期准确。</p>\r\n<p>\r\n	典型应用：钢厂、有色金属、压机、矿山机械、物料输送、石油、海洋、包装、电厂、工程机械等。</p>\r\n', NULL),
(50, '<p>\r\n	<a href="../product/product.php?id=14" target="_blank" title="德国AEC">德国AEC</a></p>\r\n<p>\r\n	代理德国AEC全系列产品，并可以按照客户的要求定制化生产，配套元件采用国际知名品牌。</p>\r\n', NULL),
(51, '<p>\r\n	<a href="../product/product.php?id=16" target="_blank" title="意大利HV">意大利HV</a></p>\r\n<p>\r\n	&nbsp;</p>\r\n', NULL),
(52, '<p>\r\n	<a href="../product/product.php?id=53" target="_blank" title="German AEC">German AEC</a></p>\r\n', NULL),
(53, '<p>\r\n	<a href="../product/product.php?id=51" target="_blank" title="Bosch Rextoth">Bosch Rextoth</a></p>\r\n<p>\r\n	<a href="../product/product.php?id=52" target="_blank" title="Itlay Atos">Itlay Atos</a></p>\r\n', NULL),
(54, '<p>\r\n	<a href="../product/product.php?id=51" target="_blank" title="Bosch Rextoth">Bosch Rextoth</a></p>\r\n<p>\r\n	<a href="../product/product.php?id=52" target="_blank" title="Itlay Atos">Itlay Atos</a></p>\r\n', NULL),
(55, '<p>\r\n	<a href="../product/product.php?id=54" target="_blank" title="Sweden Aventics">Sweden Aventics</a></p>\r\n', NULL),
(56, '<p>\r\n	<a href="../product/product.php?id=53" target="_blank" title="German AEC">German AEC</a></p>\r\n', NULL),
(57, '<p>\r\n	<a href="../product/product.php?id=53" target="_blank" title="German AEC">German AEC</a></p>\r\n', NULL),
(58, '<p>\r\n	<a href="../product/product.php?id=55" target="_blank" title="Italy HV Hydraulic">Italy HV Hydraulic</a></p>\r\n', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dn_article`
--

CREATE TABLE IF NOT EXISTS `dn_article` (
  `id` mediumint(8) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dn_article`
--

INSERT INTO `dn_article` (`id`, `content`) VALUES
(35, '<p style="padding: 0px; margin: 26px 0px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; text-align: justify;">\r\n	【环球网综合报道】据英国《都市日报》11月6日报道，英国12岁的女孩查理&bull;阿姆斯泰德(Charlea Amstead)竟然出现老年痴呆迹象：记忆力丧失，四肢僵硬，大小便失禁等。</p>\r\n<p style="padding: 0px; margin: 26px 0px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; text-align: justify;">\r\n	据悉，小查理患有C型尼曼氏病，这加速其大脑年龄增长，功能急速退化，暂无治疗方法。由于这种疾病十分罕见，医生从小查理的胳膊上取下部分皮肤送往法国进行了长达6个月的化验分析。诊断结果显示，该疾病产生过多的胆固醇，对大脑和其他器官均产生影响。</p>\r\n<p style="padding: 0px; margin: 26px 0px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; text-align: justify;">\r\n	<span style="text-indent: 2em;">据调查，在英国仅有82个人患有此类精神性疾病，在世界范围内也只有500例。</span><span style="text-indent: 2em;">小查理29岁的妈妈丹尼尔&bull;克雷格 (Danielle Craig)说：&ldquo;当她还是一个新生儿的时候，我就发现她和正常的宝宝不太一样，像得了黄疸病似的，且胃部浮肿。通过检查发现，我和男友都携带有这种疾病的遗传基因。医生告诉我们女儿永远不能说话和走路，在幼年时期就会失去这些功能。她的情形每况愈下，甚至不能握笔，也不能笑。不久之后，她开始忘记别人的名字，并且不断重复自己的名字，还经常忘记所放东西的位置。她的手也渐渐地开始颤抖，每次见他拿起杯子喝水的时候，我都十分担心。&rdquo;</span></p>\r\n<p style="padding: 0px; margin: 26px 0px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; text-align: justify;">\r\n	目前，小查理的家人都在为她祈祷，她的弟弟甚至立志长大以后要做一名医生来治好姐姐。</p>\r\n<p style="padding: 0px; margin: 26px 0px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; text-align: justify;">\r\n	(原标题：稀奇！英12岁女童竟出现老年痴呆迹象)</p>\r\n'),
(36, '<p style="padding: 0px; margin: 26px 0px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; text-align: justify;">\r\n	好莱坞当地时间11月8日晚，美国电影艺术与科学学院在洛杉矶举行颁奖礼，日本著名动画大师宫崎骏被授予终身成就奖荣誉，这是继已故导演黑泽明于1990年获得该奖以来，第二位获此殊荣的日本导演。宫崎骏在接受美国媒体采访时表示，自己将会继续短篇动画的创作。</p>\r\n<p style="padding: 0px; margin: 26px 0px; font-size: 14px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 24px; text-align: justify;">\r\n	当晚颁奖礼现场群星闪耀，包括杰克&middot;吉伦哈尔、本尼迪克特&middot;康伯巴奇、凯拉&middot;奈特莉、詹妮弗&middot;安妮斯顿、艾米莉&middot;布朗特、杰西卡&middot;查斯坦、克林特&middot;伊斯特伍德等大腕均现身捧场。亨瑞&middot;贝拉方特（Harry Belafonte）获得琼&middot;赫肖尔特人道主义奖(Jean Hersholt Humanitarian Award)，玛琳&middot;奥哈拉（Maureen O&#39;Hara）获得终身成就奖。让&middot;克劳德&middot;卡里埃尔（Jean-Claude Carriere）从导演菲利普&middot;考夫曼（Philip Kaufman）手中接过终身成就奖的奖杯，日本动漫大师宫崎骏（Miyazaki Hayao）获得终身成就奖激动举起奖杯，他成为继已故黑泽明导演1990年获奖以来荣获该奖的第二名日本人。</p>\r\n'),
(42, '<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>The</z>&nbsp;<z>recent</z>&nbsp;<z>crash</z>&nbsp;<z>of</z>&nbsp;<z>Virgin</z>&nbsp;<z>Galactic</z>&#39;<z>s</z>&nbsp;<z>passenger</z>&nbsp;<z>spaceship</z>&nbsp;<z>has</z>&nbsp;<z>done</z>&nbsp;<z>little</z>&nbsp;<z>to</z>&nbsp;<z>quench</z>&nbsp;<z>many</z><z>people</z>&#39;<z>s</z>&nbsp;<z>aspirations</z>&nbsp;<z>of</z>&nbsp;<z>exploring</z>&nbsp;<z>space</z>,&nbsp;<z>nor</z>&nbsp;<z>interest</z>&nbsp;<z>from</z>&nbsp;<z>Chinese</z>&nbsp;<z>investors</z>&nbsp;<z>in</z>&nbsp;<z>the</z>&nbsp;<z>idea</z>,<z>according</z>&nbsp;<z>to</z>&nbsp;<z>a</z>&nbsp;<z>leading</z>&nbsp;<z>provider</z>&nbsp;<z>of</z>&nbsp;<z>adventure</z>,&nbsp;<z>high-altitude</z>&nbsp;<z>travel</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>Jane</z>&nbsp;<z>Poynter</z>,&nbsp;<z>co-founder</z>&nbsp;<z>and</z>&nbsp;<z>chief</z>&nbsp;<z>executive</z>&nbsp;<z>officer</z>&nbsp;<z>of</z>&nbsp;<z>the</z>&nbsp;<z>Tucson-based</z>&nbsp;<z>World</z>&nbsp;<z>View</z><z>Enterprises</z>&nbsp;<z>Inc</z>,&nbsp;<z>which</z>&nbsp;<z>operates</z>&nbsp;<z>high-altitude</z>&nbsp;<z>balloons</z>&nbsp;<z>that</z>&nbsp;<z>offer</z>&nbsp;<z>what</z>&nbsp;<z>it</z>&nbsp;<z>calls</z>&nbsp;&quot;<z>an</z>&nbsp;<z>accessible</z>,<z>affordable</z>&nbsp;<z>way</z>&nbsp;<z>to</z>&nbsp;<z>access</z>&nbsp;<z>nearspace</z>&quot;,&nbsp;<z>said</z>&nbsp;<z>in</z>&nbsp;<z>Beijing</z>&nbsp;<z>on</z>&nbsp;<z>Saturday</z>&nbsp;<z>that</z>&nbsp;<z>the</z>&nbsp;<z>company</z>&nbsp;<z>has</z>&nbsp;<z>just</z><z>received</z>&nbsp;<z>another</z>&nbsp;<z>round</z>&nbsp;<z>of</z>&nbsp;<z>investment</z>&nbsp;<z>from</z>&nbsp;<z>those</z>&nbsp;<z>still</z>&nbsp;<z>excited</z>&nbsp;<z>about</z>&nbsp;<z>space</z>&nbsp;<z>travel</z>&nbsp;<z>technology</z>,<z>including</z>&nbsp;<z>from</z>&nbsp;<z>Chinese</z>&nbsp;<z>Internet</z>&nbsp;<z>giant</z>&nbsp;<z>Tencent</z>&nbsp;<z>Holdings</z>&nbsp;<z>Ltd</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	&nbsp;</p>\r\n<table border="1" style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<z style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;"><z>She</z>&nbsp;<z>said</z>&nbsp;<z>David</z>&nbsp;<z>Wallerstein</z>,&nbsp;<z>senior</z>&nbsp;<z>executive</z>&nbsp;<z>vice-president</z>&nbsp;<z>and</z>&nbsp;<z>chairman</z>&nbsp;<z>of</z>&nbsp;<z>Tencent</z>&nbsp;<z>USA</z>,&nbsp;<z>has</z><z>already</z>&nbsp;<z>met</z>&nbsp;<z>with</z>&nbsp;<z>one</z>&nbsp;<z>of</z>&nbsp;<z>World</z>&nbsp;<z>View</z>&#39;<z>s</z>&nbsp;<z>pilots</z>&nbsp;<z>and</z>&nbsp;<z>exchanged</z>&nbsp;<z>ideas</z>&nbsp;<z>on</z>&nbsp;<z>future</z>&nbsp;<z>technology</z>,&nbsp;<z>and</z>&nbsp;<z>that</z><z>she</z>&nbsp;<z>considered</z>&nbsp;<z>the</z>&nbsp;<z>passion</z>&nbsp;<z>and</z>&nbsp;<z>contribution</z>&nbsp;<z>that</z>&nbsp;<z>Tencent</z>&nbsp;<z>could</z>&nbsp;<z>give</z>&nbsp;<z>to</z>&nbsp;<z>the</z>&nbsp;<z>project</z>&nbsp;<z>of</z>&nbsp;<z>huge</z><z>significance</z>&nbsp;<z>to</z>&nbsp;<z>her</z>&nbsp;<z>operation</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	&nbsp;</p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>World</z>&nbsp;<z>View</z>&nbsp;<z>is</z>&nbsp;<z>currently</z>&nbsp;<z>in</z>&nbsp;<z>the</z>&nbsp;<z>process</z>&nbsp;<z>of</z>&nbsp;<z>planning</z>&nbsp;<z>suborbital</z>&nbsp;<z>spaceflights</z>&nbsp;<z>for</z>&nbsp;$75,000&nbsp;<z>per</z>&nbsp;<z>seat</z>,<z>which</z>&nbsp;<z>it</z>&nbsp;<z>hopes</z>&nbsp;<z>to</z>&nbsp;<z>launch</z>&nbsp;<z>in</z>&nbsp;2016.</z></p>\r\n'),
(43, '<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>Both</z>&nbsp;<z>have</z>&nbsp;<z>received</z>&nbsp;<z>investment</z>&nbsp;<z>from</z>&nbsp;<z>global</z>&nbsp;<z>Internet</z>&nbsp;<z>giant</z>&nbsp;<z>Google</z>&nbsp;<z>Inc</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>Zhang</z>&nbsp;<z>Zhidong</z>,&nbsp;<z>co-founder</z>&nbsp;<z>of</z>&nbsp;<z>Tencent</z>,&nbsp;<z>said</z>&nbsp;<z>in</z>&nbsp;<z>March</z>&nbsp;<z>when</z>&nbsp;<z>he</z>&nbsp;<z>resigned</z>&nbsp;<z>from</z>&nbsp;<z>his</z>&nbsp;<z>position</z>&nbsp;<z>as</z>&nbsp;<z>chief</z><z>technology</z>&nbsp;<z>officer</z>,&nbsp;<z>that</z>&nbsp;<z>he</z>&nbsp;<z>considered</z>&nbsp;<z>Google</z>&nbsp;<z>one</z>&nbsp;<z>of</z>&nbsp;<z>the</z>&nbsp;<z>world</z>&#39;<z>s</z>&nbsp;<z>pioneering</z>&nbsp;<z>forces</z>&nbsp;<z>in</z>&nbsp;<z>the</z><z>information</z>&nbsp;<z>technology</z>&nbsp;<z>industry</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>Google</z>&nbsp;<z>has</z>&nbsp;<z>already</z>&nbsp;<z>invested</z>&nbsp;<z>heavily</z>&nbsp;<z>in</z>&nbsp;<z>unmanned</z>&nbsp;<z>cars</z>,&nbsp;<z>hot-air</z>&nbsp;<z>balloons</z>,&nbsp;<z>and</z>&nbsp;<z>even</z>&nbsp;<z>space</z>&nbsp;<z>mining</z>,<z>some</z>&nbsp;<z>of</z>&nbsp;<z>which</z>&nbsp;<z>was</z>&nbsp;<z>spent</z>&nbsp;<z>when</z>&nbsp;<z>the</z>&nbsp;<z>company</z>&nbsp;<z>was</z>&nbsp;<z>nothing</z>&nbsp;<z>like</z>&nbsp;<z>the</z>&nbsp;<z>size</z>&nbsp;<z>it</z>&nbsp;<z>is</z>&nbsp;<z>today</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>Zhang</z>&nbsp;<z>suggested</z>&nbsp;<z>that</z>&nbsp;<z>Tencent</z>&nbsp;<z>should</z>&nbsp;<z>follow</z>&nbsp;<z>Google</z>&nbsp;<z>in</z>&nbsp;<z>this</z>&nbsp;<z>respect</z>,&nbsp;<z>a</z>&nbsp;<z>path</z>&nbsp;<z>not</z>&nbsp;<z>necessarily</z>&nbsp;<z>in</z>&nbsp;<z>line</z><z>with</z>&nbsp;<z>what</z>&nbsp;<z>many</z>&nbsp;<z>see</z>&nbsp;<z>as</z>&nbsp;<z>the</z>&nbsp;<z>company</z>&#39;<z>s</z>&nbsp;<z>more</z>&nbsp;<z>sensible</z>&nbsp;<z>investment</z>&nbsp;<z>route</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>Pony</z>&nbsp;<z>Ma</z>,&nbsp;<z>Tencent</z>&#39;<z>s</z>&nbsp;<z>chairman</z>,&nbsp;<z>once</z>&nbsp;<z>said</z>&nbsp;<z>that</z>&nbsp;<z>his</z>&nbsp;<z>childhood</z>&nbsp;<z>dream</z>&nbsp;<z>had</z>&nbsp;<z>been</z>&nbsp;<z>to</z>&nbsp;<z>become</z>&nbsp;<z>an</z><z>astronomer</z>,&nbsp;<z>after</z>&nbsp;<z>looking</z>&nbsp;<z>through</z>&nbsp;<z>a</z>&nbsp;<z>friend</z>&#39;<z>s</z>&nbsp;<z>telescope</z>&nbsp;<z>at</z>&nbsp;<z>outer</z>&nbsp;<z>space</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z>&quot;<z>Although</z>&nbsp;<z>we</z>&nbsp;<z>are</z>&nbsp;<z>running</z>&nbsp;<z>a</z>&nbsp;<z>commercial</z>&nbsp;<z>enterprise</z>,&nbsp;<z>we</z>&nbsp;<z>are</z>&nbsp;<z>also</z>&nbsp;<z>pursuing</z>&nbsp;<z>technological</z>&nbsp;<z>progress</z><z>and</z>&nbsp;<z>realizing</z>&nbsp;<z>something</z>&nbsp;<z>which</z>&nbsp;<z>used</z>&nbsp;<z>to</z>&nbsp;<z>only</z>&nbsp;<z>exist</z>&nbsp;<z>in</z>&nbsp;<z>the</z>&nbsp;<z>imagination</z>.&nbsp;<z>This</z>&nbsp;<z>is</z>&nbsp;<z>a</z>&nbsp;<z>dream</z>,&quot;&nbsp;<z>said</z>&nbsp;<z>Ma</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>Poynter</z>&#39;<z>s</z>&nbsp;<z>comments</z>&nbsp;<z>in</z>&nbsp;<z>Beijing</z>&nbsp;<z>come</z>&nbsp;<z>just</z>&nbsp;<z>days</z>&nbsp;<z>after</z>&nbsp;<z>a</z>&nbsp;<z>suborbital</z>&nbsp;<z>passenger</z>&nbsp;<z>spaceship</z><z>developed</z>&nbsp;<z>by</z>&nbsp;<z>Virgin</z>&nbsp;<z>Galactic</z>&nbsp;<z>crashed</z>&nbsp;<z>during</z>&nbsp;<z>a</z>&nbsp;<z>test</z>&nbsp;<z>flight</z>&nbsp;<z>over</z>&nbsp;<z>the</z>&nbsp;<z>company</z>&#39;<z>s</z>&nbsp;<z>Mojave</z>&nbsp;<z>Air</z>&nbsp;<z>and</z><z>Space</z>&nbsp;<z>Port</z>&nbsp;<z>in</z>&nbsp;<z>California</z>,&nbsp;<z>killing</z>&nbsp;<z>one</z>&nbsp;<z>pilot</z>&nbsp;<z>and</z>&nbsp;<z>seriously</z>&nbsp;<z>injuring</z>&nbsp;<z>another</z>.</z></p>\r\n<p style="margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22.399999618530273px;">\r\n	<z><z>More</z>&nbsp;<z>than</z>&nbsp;800&nbsp;<z>people</z>&nbsp;<z>have</z>&nbsp;<z>already</z>&nbsp;<z>paid</z>&nbsp;<z>deposits</z>&nbsp;<z>to</z>&nbsp;<z>fly</z>&nbsp;<z>aboard</z>&nbsp;<z>the</z>&nbsp;<z>spaceship</z>,&nbsp;<z>which</z>&nbsp;<z>will</z>&nbsp;<z>be</z><z>transported</z>&nbsp;<z>to</z>&nbsp;<z>an</z>&nbsp;<z>altitude</z>&nbsp;<z>of</z>&nbsp;<z>about</z>&nbsp;13,700&nbsp;<z>meters</z>&nbsp;<z>before</z>&nbsp;<z>being</z>&nbsp;<z>released</z>.</z></p>\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `dn_ask`
--

CREATE TABLE IF NOT EXISTS `dn_ask` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `addtime` varchar(60) NOT NULL,
  `reply` text,
  `member` mediumint(8) NOT NULL,
  `replytime` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dn_auto_fields`
--

CREATE TABLE IF NOT EXISTS `dn_auto_fields` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(60) NOT NULL,
  `use_name` varchar(60) NOT NULL COMMENT '表单提示文字',
  `field_type` varchar(60) NOT NULL,
  `field_value` varchar(255) DEFAULT NULL COMMENT '字段默认值',
  `field_length` mediumint(8) DEFAULT NULL,
  `channel_id` mediumint(8) NOT NULL COMMENT '所属频道id',
  `field_info` varchar(255) DEFAULT NULL COMMENT '字段提示信息',
  `is_disable` mediumint(8) NOT NULL,
  `check_value` varchar(60) DEFAULT NULL,
  `field_order` mediumint(8) NOT NULL DEFAULT '10',
  `is_del` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `dn_auto_fields`
--

INSERT INTO `dn_auto_fields` (`id`, `field_name`, `use_name`, `field_type`, `field_value`, `field_length`, `channel_id`, `field_info`, `is_disable`, `check_value`, `field_order`, `is_del`) VALUES
(1, 'content', '内容', 'html', '', 255, 2, '', 0, '', 1, 1),
(2, 'model', '型号', 'text', '', 255, 3, '', 1, '', 1, 1),
(28, 'content', '详细内容', 'html', '', 255, 5, '', 0, '', 16, 1),
(6, 'down', '下载地址', 'upload_file', '', 255, 4, '', 0, '', 1, 1),
(27, 'content', '详细内容', 'html', '', 255, 4, '', 0, '', 4, 1),
(10, 'jobnum', '招聘人数', 'text', '', 255, 5, '', 0, '', 2, 0),
(12, 'jopaddress', '工作地点', 'text', '', 255, 5, '', 0, '', 5, 0),
(16, 'joblasttime', '截止日期', 'text', '2011-1-2', 255, 5, '', 0, '', 9, 0),
(26, 'content', '产品介绍', 'html', '', 255, 3, '', 0, '', 4, 1),
(24, 'content', '详细内容', 'html', '', 255, 1, '', 0, '', 1, 1),
(25, 'pics', '产品图片', 'upload_pic_more', '', 255, 3, '', 0, '', 10, 0),
(29, 'filesize', '文件大小', 'text', '', 255, 4, '单位为K', 1, '', 3, 1),
(30, 'filetype', '文件类型', 'select', '.exe,.rar,其他', 255, 4, '', 1, '', 2, 1),
(36, 'pics', '图集', 'upload_pic_more', '', 255, 1, '', 0, '', 10, 0),
(37, 'tech_detail', '技术参数', 'html', '', 255, 3, '', 0, NULL, 5, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_block`
--

CREATE TABLE IF NOT EXISTS `dn_block` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `tag` varchar(60) NOT NULL,
  `content` text,
  `tag_name` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `dn_block`
--

INSERT INTO `dn_block` (`id`, `tag`, `content`, `tag_name`, `lang`) VALUES
(4, 'contact_us', '<p>联系电话：</p>\r\n<p>QQ：</p>\r\n<p>联系地址：</p>\r\n<p>网址：<a href="http://www.beescms.com">http://www.beescms.com</a></p>\r\n<p>论坛：<a href="http://www.beescms.com/bbs">http://www.beescms.com/bbs</a></p>\r\n<p>帮助：<a href="http://www.beescms.com/help">http://www.beescms.com/help</a></p>', '', ''),
(5, 'about_us', '<p><img alt="" style="width: 96px; float: left; height: 122px;" src="/beescms3/upload/fck/20110625030630_fck.png" />BEES 企业网站管理系统拥有简单方便的模板标签，能够快速做出模板；自定义表单，自定义模型，内置新闻、下载、产品、招聘、单页模型；SEO功   能，每个页面都可以单独SEO优化，并且可以自定义URL生成；多语言，多风格，每种语言每个页面都可以定义风格；html静态页面生成功能；人性化后台 操作，不用太多知识就可以快速建好网站，维护管理方便。</p>', '', ''),
(9, 'contactus', '<div class="lb_body_img">\r\n	<img alt="" src="../upload/img/201411111340574116.jpg" style="width: 250px; height: 90px;" /></div>\r\n<div class="content">\r\n	戴纳米克（大连）科技有限公司<br />\r\n	中国大连市中山区中山路136号希望大厦926室<br />\r\n	电话：+86（0411）39567919<br />\r\n	传真：+86（0411）39036246<br />\r\n	邮编：116000<br />\r\n	网址：www.dynamik.com.cn</div>\r\n', '输出联系我们', 'cn'),
(10, 'en_contact', '<div class="lb_body_img">\r\n	<img alt="" src="../upload/img/201411111340574116.jpg" style="width: 250px; height: 90px;" /></div>\r\n<div class="content">\r\n	Dynamik (Dalian) Technology Co., LTD<br />\r\n	Room92,Dalian xiwang Tower NO.136 ZhongShan Road ZhongShan District Dalian,China<br />\r\n	Tel: +86（0411）39567919<br />\r\n	Fax: +86（0411）39036246<br />\r\n	post:116000<br />\r\n	web:http:// www.dynamik.com.cn</div>\r\n', '英文联系方式', 'en');

-- --------------------------------------------------------

--
-- 表的结构 `dn_book`
--

CREATE TABLE IF NOT EXISTS `dn_book` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(60) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `book_type` mediumint(8) NOT NULL DEFAULT '0' COMMENT '0-留言,1-投诉,2-询问,3-售后',
  `pr_id` mediumint(8) DEFAULT NULL COMMENT '产品',
  `book_title` varchar(60) NOT NULL,
  `book_content` text NOT NULL,
  `addtime` varchar(60) NOT NULL,
  `reply` text,
  `verify` mediumint(8) NOT NULL DEFAULT '0',
  `lang` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dn_book`
--

INSERT INTO `dn_book` (`id`, `book_name`, `mail`, `book_type`, `pr_id`, `book_title`, `book_content`, `addtime`, `reply`, `verify`, `lang`) VALUES
(1, '测试名', 'test@163.com', 2, 23, '询问价格', '问下这个产品的价格', '1309053643', '', 1, 'cn');

-- --------------------------------------------------------

--
-- 表的结构 `dn_book_info`
--

CREATE TABLE IF NOT EXISTS `dn_book_info` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `is_book` varchar(60) DEFAULT NULL,
  `book_pos` varchar(60) DEFAULT NULL,
  `book_verify` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dn_book_info`
--

INSERT INTO `dn_book_info` (`id`, `is_book`, `book_pos`, `book_verify`) VALUES
(1, '1', '2', '0');

-- --------------------------------------------------------

--
-- 表的结构 `dn_category`
--

CREATE TABLE IF NOT EXISTS `dn_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `custom_url` varchar(255) DEFAULT NULL,
  `cate_name` varchar(60) NOT NULL,
  `cate_mb_is` mediumint(8) NOT NULL,
  `cate_hide` mediumint(8) NOT NULL,
  `cate_channel` mediumint(8) NOT NULL,
  `cate_fold_name` varchar(60) NOT NULL,
  `cate_order` mediumint(8) NOT NULL,
  `cate_rank` mediumint(8) DEFAULT '0',
  `cate_tpl` mediumint(8) NOT NULL,
  `cate_tpl_index` varchar(60) DEFAULT NULL,
  `cate_tpl_list` varchar(60) DEFAULT NULL,
  `cate_tpl_content` varchar(60) DEFAULT NULL,
  `cate_title_seo` varchar(60) DEFAULT NULL,
  `cate_key_seo` varchar(60) DEFAULT NULL,
  `cate_info_seo` varchar(350) DEFAULT NULL,
  `lang` varchar(60) NOT NULL,
  `cate_parent` mediumint(8) NOT NULL,
  `cate_html` mediumint(8) NOT NULL DEFAULT '0',
  `cate_nav` varchar(60) NOT NULL DEFAULT '0',
  `is_content` mediumint(8) DEFAULT '0',
  `cate_url` varchar(60) DEFAULT NULL,
  `cate_is_open` mediumint(8) NOT NULL DEFAULT '0',
  `form_id` mediumint(8) DEFAULT NULL,
  `cate_pic1` varchar(255) DEFAULT NULL,
  `cate_pic2` varchar(255) DEFAULT NULL,
  `cate_pic3` varchar(255) DEFAULT NULL,
  `cate_content` text,
  `temp_id` mediumint(8) DEFAULT NULL,
  `list_num` mediumint(8) NOT NULL DEFAULT '20',
  `nav_show` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- 转存表中的数据 `dn_category`
--

INSERT INTO `dn_category` (`id`, `custom_url`, `cate_name`, `cate_mb_is`, `cate_hide`, `cate_channel`, `cate_fold_name`, `cate_order`, `cate_rank`, `cate_tpl`, `cate_tpl_index`, `cate_tpl_list`, `cate_tpl_content`, `cate_title_seo`, `cate_key_seo`, `cate_info_seo`, `lang`, `cate_parent`, `cate_html`, `cate_nav`, `is_content`, `cate_url`, `cate_is_open`, `form_id`, `cate_pic1`, `cate_pic2`, `cate_pic3`, `cate_content`, `temp_id`, `list_num`, `nav_show`) VALUES
(4, '', '新闻中心', 0, 0, 2, 'xwzx', 1, 0, 0, '', 'list_article.html', 'article_content.html', '', '', '', 'cn', 0, 1, '2,3', 0, 'http://', 0, 0, '', '', '', '', 2, 20, '0'),
(5, '', '产品中心', 0, 0, 3, 'cpzx', 3, 0, 2, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 0, 1, '2,3', 0, '../product/product.php?id=11', 0, 0, '', '', '', '', 3, 20, '0'),
(8, '', '关于我们', 0, 0, 1, 'gywm', 2, 0, 3, '', 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 0, 1, '2,3', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(9, '', '行业新闻', 0, 0, 2, 'news_hyxw', 1, 0, 0, '', 'list_article.html', 'article_content.html', '', '', '', 'cn', 4, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(28, '', '企业动态', 0, 0, 2, 'new_qydt', 10, 0, 0, NULL, 'list_article.html', 'article_content.html', '', '', '', 'cn', 4, 1, '', 0, 'http://', 0, 0, '', '', '', '', 1, 20, '0'),
(11, '', '德国力士乐', 0, 0, 3, 'pro_01', 1, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'cn', 5, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(13, '', '意大利阿托斯', 0, 0, 3, 'pro_02', 2, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'cn', 5, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(14, '', '德国AEC', 0, 0, 3, 'pro_03', 3, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'cn', 5, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(15, '', '瑞典Aventics（原博世气动）', 0, 0, 3, 'pro_04', 4, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'cn', 5, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(16, '', '意大利HV', 0, 0, 3, 'pro_05', 5, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'cn', 5, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(18, '', 'News', 0, 0, 2, 'news', 1, 0, 0, '', 'list_article.html', 'article_content.html', '', '', '', 'en', 0, 1, '2,3', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(19, '', 'Product', 0, 0, 3, 'product', 3, 0, 2, '', 'list_product.html', 'product_content.html', '', '', '', 'en', 0, 1, '2,3', 0, '../product/product.php?id=51', 0, 0, '', '', '', '', 4, 20, '9'),
(20, '', 'Sample', 0, 0, 4, 'down', 4, 0, 0, '', 'list_down.html', 'down_content.html', '', '', '', 'en', 0, 1, '2,3', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(49, '', 'Contact Us', 0, 0, 1, 'contact_us', 5, 0, 3, '', 'list_alone.html', 'alone_content.html', '', '', '', 'en', 0, 1, '2,3', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(22, '', 'About Us', 0, 0, 1, 'about-us', 2, 0, 3, '', 'list_alone.html', 'alone_content.html', '', '', '', 'en', 0, 1, '2,3', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(29, '', '样本下载', 0, 0, 4, 'download', 4, 0, 0, NULL, 'list_down.html', 'down_content.html', '', '', '', 'cn', 0, 1, '2,3', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(30, '', '联系我们', 0, 0, 1, 'contact', 5, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 0, 1, '2,3', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(31, '', '液压油泵', 0, 0, 3, 'rex_pumps', 1, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 11, 1, '', 0, 'http://', 0, 0, 'img/201411101838004054.jpg', '', '', '', 0, 20, '0'),
(32, '', '液压阀', 0, 0, 3, 'rex_motors', 2, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 11, 1, '', 0, 'http://', 0, 0, 'img/201411101838003226.jpg', '', '', '', 0, 20, '0'),
(33, '', '液压马达', 0, 0, 3, 'rex_electronics', 3, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 11, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(34, '', '轴向柱塞泵', 0, 0, 3, 'rex_elc01', 10, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 31, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(35, '', '径向柱塞泵', 0, 0, 3, 'rex_elc02', 10, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 31, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(36, '', '外啮齿轮泵', 0, 0, 3, 'rex_ele03', 10, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 31, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(37, '', '液压阀001', 0, 0, 3, 'rex_mot01', 10, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 32, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(38, '', '液压阀002', 0, 0, 3, 'rex_mot02', 2, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 32, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(39, '', '液压油缸', 0, 0, 3, 'rex_cylinders', 5, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 11, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(40, '', '重载型油缸', 0, 0, 3, 'rex_cyl01', 10, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 39, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(41, '', '业务组成', 0, 0, 1, 'ywzc', 10, 0, 3, '', 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 0, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(42, '', '减速机', 0, 0, 1, 'yw_jsj', 1, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 41, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(43, '', '液压油缸', 0, 0, 1, 'yw_yyyg', 2, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 41, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(44, '', '液压元件', 0, 0, 1, 'yw_yyyj', 3, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 41, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(45, '', '气动元件', 0, 0, 1, 'yw_qdyj', 4, 0, 3, '', 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 41, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(46, '', '液压过滤器&液压附件', 0, 0, 1, 'yw_yy', 5, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 41, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(47, '', '非标准阀块及动力单元', 0, 0, 1, 'yw_dldy', 6, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 41, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(48, '', '液压油泵', 0, 0, 3, 'atos_pumps', 1, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 13, 1, '', 0, 'http://', 0, 0, 'img/20141110183800619.jpg', '', '', '', 0, 20, '0'),
(50, '', 'Business Component', 0, 0, 1, 'business_component', 10, 0, 3, '', 'list_alone.html', 'alone_content.html', '', '', '', 'en', 0, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(51, '', 'Bosch Rextoth', 0, 0, 3, 'rextoth', 1, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'en', 19, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(52, '', 'Itlay Atos', 0, 0, 3, 'atos', 2, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'en', 19, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(53, '', 'German AEC', 0, 0, 3, 'aec', 3, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'en', 19, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(54, '', 'Sweden Aventics', 0, 0, 3, 'aventics', 4, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'en', 19, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(55, '', 'Italy HV Hydraulic', 0, 0, 3, 'hydraulic_joint', 5, 0, 0, '', 'list_product2.html', 'product_content.html', '', '', '', 'en', 19, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(83, '', 'valve', 0, 0, 3, 'ato_002', 2, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 52, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(56, '', 'gearbox', 0, 0, 1, 'gearbox', 1, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 50, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(57, '', 'hydraulic cylinder', 0, 0, 1, 'hydraulic_cylinder', 2, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 50, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(58, '', 'hydraulic components', 0, 0, 1, 'hydraulic_components', 3, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 50, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(59, '', 'pneumatic components', 0, 0, 1, 'pneumatic_components', 4, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 50, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(60, '', 'hydraulic filter', 0, 0, 1, 'hydraulic_filter', 5, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 50, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(61, '', 'power unit', 0, 0, 1, 'power_unit', 6, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 50, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(62, '', 'pump', 0, 0, 3, 'rex_001', 1, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'en', 51, 1, '', 0, 'http://', 0, 0, 'img/201411101838004054.jpg', '', '', '', 0, 20, '0'),
(63, '', 'cylinder', 0, 0, 3, 'rex_002', 10, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'en', 51, 1, '', 0, 'http://', 0, 0, 'img/201411101838003226.jpg', '', '', '', 0, 20, '0'),
(64, '', 'valve', 0, 0, 3, 'rex_003', 3, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'en', 51, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(65, '', 'pump', 0, 0, 3, 'ato_001', 1, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'en', 52, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(66, '', 'motor', 0, 0, 3, 'rex_004', 4, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'en', 51, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(67, '', '阀', 0, 0, 3, 'atos_fa', 2, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 13, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(68, '', '液压油缸', 0, 0, 3, 'atos_gang', 3, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 13, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(69, '', '减速机', 0, 0, 3, 'ace_01', 1, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 14, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(70, '', '液压油缸', 0, 0, 3, 'ace_02', 2, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 14, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(71, '', '液压过滤器', 0, 0, 3, 'aec_03', 3, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 14, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(72, '', '液压球阀', 0, 0, 3, 'aec_04', 4, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 14, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(73, '', '液压管接头', 0, 0, 3, 'aec_05', 5, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 14, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(74, '', '液压附件', 0, 0, 3, 'aec_06', 6, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 14, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(75, '', '非标准阀块', 0, 0, 3, 'aec_07', 7, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 14, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(76, '', '汽缸', 0, 0, 3, 'ave_01', 1, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 15, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(77, '', '三联件', 0, 0, 3, 'ave_02', 2, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 15, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(78, '', '换向阀', 0, 0, 3, 'ave_03', 3, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 15, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(79, '', '阀岛', 0, 0, 3, 'ave_04', 4, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 15, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(80, '', '压缩空气处理单元', 0, 0, 3, 'ave_05', 5, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 15, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(81, '', '手动阀', 0, 0, 3, 'hv_01', 1, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 16, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(82, '', '转阀', 0, 0, 3, 'hv_02', 2, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 16, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(84, '', 'cylinder', 0, 0, 3, 'ato_003', 3, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 52, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(85, '', 'gearbox', 0, 0, 3, 'aec_01', 1, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 53, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(86, '', 'cylinder', 0, 0, 3, 'aec_02', 2, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 53, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(87, '', 'filter', 0, 0, 3, 'ace_03', 3, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 53, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(88, '', 'ball valve', 0, 0, 3, 'aec_004', 4, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 53, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(89, '', 'union coupling', 0, 0, 3, 'aec_005', 5, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 53, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(90, '', 'hydraulic accessory', 0, 0, 3, 'aec_006', 6, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 53, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(91, '', 'block', 0, 0, 3, 'aec_007', 7, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 53, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(92, '', 'hand pump', 0, 0, 3, 'hv001', 1, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 55, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(93, '', 'diverter valve', 0, 0, 3, 'hv_002', 2, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'en', 55, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(94, '', '手动泵&转阀', 0, 0, 1, 'yw_sdb', 7, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'cn', 41, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0'),
(95, '', 'hand pump & diverter valve', 0, 0, 1, 'hpdv', 7, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 50, 1, '', 1, 'http://', 0, 0, '', '', '', '', 0, 20, '0');

-- --------------------------------------------------------

--
-- 表的结构 `dn_channel`
--

CREATE TABLE IF NOT EXISTS `dn_channel` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(60) NOT NULL,
  `channel_mark` varchar(60) NOT NULL,
  `channel_table` varchar(60) NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  `is_member` mediumint(8) DEFAULT NULL,
  `channel_mb_grade` mediumint(8) DEFAULT '0',
  `is_verify` mediumint(8) NOT NULL COMMENT '发布内容是否审核',
  `is_del` mediumint(8) NOT NULL DEFAULT '0',
  `channel_order` mediumint(8) NOT NULL DEFAULT '10',
  `is_alone` mediumint(8) NOT NULL DEFAULT '0',
  `list_php` varchar(150) DEFAULT NULL,
  `content_php` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dn_channel`
--

INSERT INTO `dn_channel` (`id`, `channel_name`, `channel_mark`, `channel_table`, `is_disable`, `is_member`, `channel_mb_grade`, `is_verify`, `is_del`, `channel_order`, `is_alone`, `list_php`, `content_php`) VALUES
(1, '单页模型', 'alone', 'alone', 0, 0, 2, 0, 1, 5, 1, 'alone/alone.php', 'alone/show_alone.php'),
(2, '文章模块', 'article', 'article', 0, 0, 2, 0, 0, 1, 0, 'article/article.php', 'article/show_article.php'),
(3, '产品模块', 'product', 'product', 0, 0, 2, 0, 0, 2, 0, 'product/product.php', 'product/show_product.php'),
(4, '下载模块', 'down', 'down', 0, 0, 2, 0, 0, 3, 0, 'down/down.php', 'down/show_down.php'),
(5, '招聘模块', 'job', 'job', 1, 0, 2, 0, 0, 4, 0, 'job/job.php', 'job/show_job.php'),
(-9, '表单模块', 'mx_form', 'mx_form', 1, 0, 0, 0, 0, 10, 0, 'mx_form/mx_form.php', 'mx_form/show_mx_form.php');

-- --------------------------------------------------------

--
-- 表的结构 `dn_cmsinfo`
--

CREATE TABLE IF NOT EXISTS `dn_cmsinfo` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `info_tag` varchar(60) DEFAULT NULL COMMENT '配置信息标识',
  `info_array` text COMMENT '配置信息内容',
  `info_name` varchar(60) DEFAULT NULL COMMENT '配置信息名',
  `lang_tag` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `dn_cmsinfo`
--

INSERT INTO `dn_cmsinfo` (`id`, `info_tag`, `info_array`, `info_name`, `lang_tag`) VALUES
(1, 'sys', 'array (\n  ''web_upload_file'' => ''zip|gz|rar|iso|doc|xsl|ppt|wps|swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|pdf|docx|xlsx'',\n  ''thump_width'' => ''300'',\n  ''thump_height'' => ''200'',\n  ''upload_size'' => ''2024000'',\n  ''web_member'' => \n  array (\n    0 => ''0'',\n  ),\n  ''is_member'' => \n  array (\n    0 => ''1'',\n  ),\n  ''member_mail'' => \n  array (\n    0 => ''0'',\n  ),\n  ''member_no_name'' => ''admin|administrator|user|users'',\n  ''image_is'' => \n  array (\n    0 => ''0'',\n  ),\n  ''image_url_is'' => \n  array (\n    0 => ''1'',\n  ),\n  ''image_type'' => \n  array (\n    0 => ''0'',\n  ),\n  ''image_text'' => ''http://www.dynamik.com.cn/'',\n  ''image_text_color'' => ''0,0,0'',\n  ''image_text_size'' => ''12'',\n  ''pic'' => ''mark_logo.gif'',\n  ''image_position'' => \n  array (\n    0 => ''9'',\n  ),\n  ''mail_type'' => \n  array (\n    0 => ''1'',\n  ),\n  ''mail_host'' => ''smtp.163.com'',\n  ''mail_pot'' => ''25'',\n  ''mail_mail'' => '''',\n  ''mail_user'' => '''',\n  ''mail_pw'' => '''',\n  ''mail_js'' => '''',\n  ''mail_jw'' => ''http://www.dynamik.com.cn/'',\n  ''safe_open'' => \n  array (\n    0 => ''1'',\n    1 => ''2'',\n    2 => ''3'',\n  ),\n  ''web_content_title'' => ''180'',\n  ''web_content_info'' => ''200'',\n  ''is_hits'' => ''1'',\n  ''fialt_words'' => ''她妈|它妈|他妈|你妈|去死|贱人|非典|艾滋病|阳痿'',\n  ''arc_html'' => \n  array (\n    0 => ''1'',\n  ),\n  ''nav'' => ''syssys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '系统配置', ''),
(2, 'index_info', 'array (\n  ''flash_is'' => ''0'',\n  ''index_lang'' => ''9'',\n)', '首页配置', ''),
(6, 'info', 'array (\n  ''web_name'' => ''戴纳米克（大连）科技有限公司 | Dynamik（Dalian）Technology Co.,LTD'',\n  ''web_index_name'' => ''戴纳米克（大连）科技有限公司 | Dynamik（Dalian）Technology Co.,LTD'',\n  ''web_html'' => ''0'',\n  ''is_cache'' => ''0'',\n  ''cache_time'' => ''30'',\n  ''web_logo'' => ''img/201411251346196683.gif'',\n  ''web_template'' => ''default'',\n  ''web_powerby'' => ''<p>辽ICP备07006829号</p>\r\n<p>Copyright © 2014 戴纳米克（大连）科技有限公司. All Rights Reserved.</p>'',\n  ''web_keywords'' => ''液压油缸,液压过滤器&液压附件,液压元件,减速机,气动元件,非标准阀块及动力单元'',\n  ''web_description'' => ''戴纳米克（大连）科技有限公司是德国Tailer Hydraulik GmbH公司参与成立的中德合资企业，经营代理世界领先技术的电液元件，致力于为客户提供优质、快捷的服务，成为国内外沟通、合作的桥梁。'',\n  ''web_yinxiao'' => '''',\n  ''hot_key'' => '''',\n  ''all_key'' => '''',\n  ''nav'' => ''websys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '网站配置', 'cn'),
(7, 'info', 'array (\n  ''web_name'' => ''Dynamik（Dalian）Technology Co.,LTD'',\n  ''web_index_name'' => ''Dynamik（Dalian）Technology Co.,LTD'',\n  ''web_html'' => ''0'',\n  ''is_cache'' => ''1'',\n  ''cache_time'' => ''30'',\n  ''web_logo'' => ''img/201411251346196683.gif'',\n  ''web_template'' => ''default_en'',\n  ''web_powerby'' => ''<p>Copyright © 2014 Dynamik（Dalian）Technology Co.,LTD All Rights Reserved.</p>'',\n  ''web_keywords'' => ''gearbox,hydraulic cylinder,hydraulic components,pneumatic components,hydraulic filter/hydraulic accessories'',\n  ''web_description'' => '''',\n  ''web_yinxiao'' => '''',\n  ''hot_key'' => '''',\n  ''all_key'' => '''',\n  ''nav'' => ''websys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '网站配置', 'en');

-- --------------------------------------------------------

--
-- 表的结构 `dn_collect`
--

CREATE TABLE IF NOT EXISTS `dn_collect` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(8) NOT NULL,
  `arc_id` mediumint(8) NOT NULL,
  `addtime` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dn_down`
--

CREATE TABLE IF NOT EXISTS `dn_down` (
  `id` mediumint(8) NOT NULL,
  `down` varchar(255) DEFAULT NULL,
  `body` text,
  `content` text,
  `filesize` varchar(255) DEFAULT NULL,
  `filetype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dn_down`
--

INSERT INTO `dn_down` (`id`, `down`, `body`, `content`, `filesize`, `filetype`) VALUES
(39, '../upload/file/-20141110155527.docx', NULL, '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Simsun; line-height: 20px;">教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...</span><span style="color: rgb(51, 51, 51); font-family: Simsun; line-height: 20px;">教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...</span><span style="color: rgb(51, 51, 51); font-family: Simsun; line-height: 20px;">教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Simsun; line-height: 20px;">教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Simsun; line-height: 20px;">教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...</span></p>\r\n', NULL, NULL),
(45, '../upload/file/text download-20141111172323.rar', NULL, '<p>\r\n	test sample downloadtest sample downloadtest sample download</p>\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dn_feedform`
--

CREATE TABLE IF NOT EXISTS `dn_feedform` (
  `id` mediumint(8) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_mail` varchar(255) DEFAULT NULL,
  `f_tel` varchar(255) DEFAULT NULL,
  `f_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dn_flash_ad`
--

CREATE TABLE IF NOT EXISTS `dn_flash_ad` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `pic_text` varchar(255) DEFAULT NULL,
  `pic_order` mediumint(8) NOT NULL DEFAULT '10',
  `lang` varchar(60) CHARACTER SET latin1 NOT NULL,
  `cate_id` mediumint(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dn_flash_ad`
--

INSERT INTO `dn_flash_ad` (`id`, `pic`, `pic_url`, `pic_text`, `pic_order`, `lang`, `cate_id`) VALUES
(1, 'img/20110625/201106251133539086.gif', 'http://www.beescms.com', '', 1, 'cn', 1),
(2, 'img/20110625/201106251134131106.gif', 'http://www.beescms.com', '', 10, 'cn', 1),
(3, 'img/20121208/201212082315546094.gif', 'http://www.beescms.com', '', 1, 'en', 1),
(4, 'img/20121208/201212082315531698.gif', 'http://www.beescms.com', '', 2, 'en', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dn_flash_ad_cate`
--

CREATE TABLE IF NOT EXISTS `dn_flash_ad_cate` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(60) NOT NULL,
  `cate_tpl_id` mediumint(8) DEFAULT '0',
  `is_disable` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dn_flash_ad_cate`
--

INSERT INTO `dn_flash_ad_cate` (`id`, `cate_name`, `cate_tpl_id`, `is_disable`) VALUES
(1, '默认', 0, 1),
(2, '成功案例', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_flash_info`
--

CREATE TABLE IF NOT EXISTS `dn_flash_info` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `flash_width` varchar(60) DEFAULT NULL,
  `flash_height` varchar(60) DEFAULT NULL,
  `flash_style` mediumint(8) NOT NULL,
  `lang` varchar(60) NOT NULL,
  `cate_id` mediumint(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dn_flash_info`
--

INSERT INTO `dn_flash_info` (`id`, `flash_width`, `flash_height`, `flash_style`, `lang`, `cate_id`) VALUES
(1, '1000', '200', 1, 'cn', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dn_form`
--

CREATE TABLE IF NOT EXISTS `dn_form` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(60) NOT NULL,
  `form_mark` varchar(60) NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `dn_form`
--

INSERT INTO `dn_form` (`id`, `form_name`, `form_mark`, `is_disable`) VALUES
(5, '产品购买', 'prinfo', 0),
(8, '在线应聘', 'webjob', 0),
(9, '留言反馈', 'feedform', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_formfield`
--

CREATE TABLE IF NOT EXISTS `dn_formfield` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(60) NOT NULL,
  `use_name` varchar(60) NOT NULL,
  `field_type` varchar(60) NOT NULL,
  `field_value` varchar(255) NOT NULL,
  `field_length` mediumint(8) NOT NULL,
  `form_id` mediumint(8) NOT NULL,
  `field_info` varchar(60) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  `form_order` mediumint(8) NOT NULL DEFAULT '0',
  `is_empty` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `dn_formfield`
--

INSERT INTO `dn_formfield` (`id`, `field_name`, `use_name`, `field_type`, `field_value`, `field_length`, `form_id`, `field_info`, `is_disable`, `form_order`, `is_empty`) VALUES
(9, 'username', '姓名', 'text', '', 255, 5, '', 0, 1, 0),
(32, 'web_contact', 'QQ/MSN/旺旺', 'text', '', 255, 5, '', 0, 4, 0),
(17, 'address', '公司地址', 'text', '', 255, 5, '', 0, 5, 0),
(12, 'mail', '邮箱', 'text', '', 255, 5, '', 0, 2, 1),
(13, 'tel', '电话/传真', 'text', '', 255, 5, '', 0, 3, 0),
(14, 'content', '详细内容', 'textarea', '', 255, 5, '', 0, 6, 0),
(19, 'jobname', '姓名', 'text', '', 255, 8, '', 0, 1, 0),
(20, 'jobsex', '性别', 'select', '男\r\n女', 255, 8, '', 0, 2, 0),
(21, 'jobmoth', '出生年月', 'text', '', 255, 8, '', 0, 3, 0),
(22, 'jobjg', '籍贯', 'text', '', 255, 8, '', 0, 4, 0),
(23, 'jobxl', '学历', 'text', '', 255, 8, '', 0, 5, 0),
(24, 'jobzy', '专业', 'text', '', 255, 8, '', 0, 6, 0),
(25, 'jobbyyx', '毕业院校', 'text', '', 255, 8, '', 0, 7, 0),
(26, 'jobphone', '联系电话', 'text', '', 255, 8, '', 0, 8, 0),
(27, 'jobmail', 'E–mail', 'text', '', 255, 8, '', 0, 9, 0),
(28, 'jobhj', '所获奖项', 'textarea', '', 255, 8, '', 0, 10, 0),
(29, 'jobgzjl', '工作经历', 'textarea', '', 255, 8, '', 0, 11, 0),
(30, 'jobzyjn', '专业技能', 'textarea', '', 255, 8, '', 0, 12, 0),
(31, 'jobyyah', '业余爱好', 'textarea', '', 255, 8, '', 0, 13, 0),
(33, 'title', '主题', 'text', '', 255, 9, '', 0, 1, 0),
(34, 'f_name', '姓名', 'text', '', 255, 9, '', 0, 2, 0),
(35, 'f_mail', 'E-mail', 'text', '', 255, 9, '', 0, 3, 0),
(36, 'f_tel', '电话', 'text', '', 255, 9, '', 0, 4, 0),
(37, 'f_content', '内容', 'textarea', '', 255, 9, '', 0, 5, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_formlist`
--

CREATE TABLE IF NOT EXISTS `dn_formlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) DEFAULT NULL,
  `form_time` varchar(60) DEFAULT NULL,
  `form_ip` varchar(60) DEFAULT NULL,
  `is_read` mediumint(8) NOT NULL DEFAULT '0',
  `member_id` mediumint(8) DEFAULT '0',
  `arc_id` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dn_job`
--

CREATE TABLE IF NOT EXISTS `dn_job` (
  `id` mediumint(8) NOT NULL,
  `jobnum` varchar(255) DEFAULT NULL,
  `jopaddress` varchar(255) DEFAULT NULL,
  `joblasttime` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dn_keywords`
--

CREATE TABLE IF NOT EXISTS `dn_keywords` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(60) NOT NULL,
  `wordsurl` varchar(60) NOT NULL,
  `lang` varchar(60) CHARACTER SET ucs2 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dn_lang`
--

CREATE TABLE IF NOT EXISTS `dn_lang` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(60) NOT NULL,
  `lang_order` mediumint(8) NOT NULL,
  `lang_tag` varchar(60) NOT NULL,
  `lang_is_use` mediumint(8) NOT NULL DEFAULT '1',
  `lang_is_open` mediumint(8) NOT NULL,
  `lang_is_url` mediumint(8) NOT NULL,
  `lang_url` varchar(60) DEFAULT NULL,
  `lang_is_fix` mediumint(8) NOT NULL DEFAULT '0',
  `lang_main` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `dn_lang`
--

INSERT INTO `dn_lang` (`id`, `lang_name`, `lang_order`, `lang_tag`, `lang_is_use`, `lang_is_open`, `lang_is_url`, `lang_url`, `lang_is_fix`, `lang_main`) VALUES
(10, 'English', 9, 'en', 1, 0, 0, 'http://', 0, 0),
(9, '简体中文', 10, 'cn', 1, 0, 0, 'http://', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dn_lang_cate`
--

CREATE TABLE IF NOT EXISTS `dn_lang_cate` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lang_cate` varchar(60) NOT NULL,
  `lang_info` text,
  `lang` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dn_lang_cate`
--

INSERT INTO `dn_lang_cate` (`id`, `lang_cate`, `lang_info`, `lang`) VALUES
(1, '模板语言', '模板中使用到的语言，如栏目名等', 'cn'),
(2, '全局语言', '程序中使用的语言，为了程序运行正常，请勿删除', 'cn'),
(3, '信息提示', '前台一些反馈信息', 'cn'),
(4, '会员中心', '会员中心使用的导航等语言', 'cn'),
(18, '会员中心', '会员中心使用的导航等语言', 'en'),
(17, '信息提示', '前台一些反馈信息', 'en'),
(16, '全局语言', '程序中使用的语言，为了程序运行正常，请勿删除', 'en'),
(15, '模板语言', '模板中使用到的语言，如栏目名等', 'en');

-- --------------------------------------------------------

--
-- 表的结构 `dn_lang_lang`
--

CREATE TABLE IF NOT EXISTS `dn_lang_lang` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lang_tag` varchar(60) NOT NULL,
  `lang_value` varchar(240) DEFAULT NULL,
  `lang` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=460 ;

--
-- 转存表中的数据 `dn_lang_lang`
--

INSERT INTO `dn_lang_lang` (`id`, `lang_tag`, `lang_value`, `lang`) VALUES
(5, 'pages', '共', 'cn'),
(6, 'pagesize', '条记录', 'cn'),
(7, 'page', '当前第', 'cn'),
(8, 'pagehome', '首页', 'cn'),
(9, 'pageend', '尾页', 'cn'),
(10, 'pagapre', '上一页', 'cn'),
(11, 'pagenext', '下一页', 'cn'),
(12, 'pagego', '转到', 'cn'),
(13, 'previous', '上一条', 'cn'),
(14, 'next', '下一条', 'cn'),
(15, 'nonestr', '没有了', 'cn'),
(17, 'sitemap', '网站地图', 'cn'),
(384, 'order_msg4', '表单已经处理，我们会及时和你联系！', 'cn'),
(382, 'order_msg3', '发生错误,该表单已经停止使用,不能添加表单信息', 'cn'),
(380, 'order_msg2', '表单不能为空', 'cn'),
(376, 'index', '首页', 'cn'),
(377, 'book', '留言本', 'cn'),
(378, 'order_msg1', '发生错误，无法处理该表单，清重新操作！', 'cn'),
(84, 'member_msg', '请先登录', 'cn'),
(85, 'member_msg2', '验证码不正确', 'cn'),
(86, 'member_smg3', '用户名或密码不能为空', 'cn'),
(87, 'member_msg3', '用户名名或密码不正确', 'cn'),
(88, 'member_msg4', '登录失败,该账号已被锁定', 'cn'),
(89, 'member_msg5', '会员注册已经暂停', 'cn'),
(90, 'member_msg6', '用户名只能是字母数字，4以上长度', 'cn'),
(91, 'member_msg7', '昵称只能是字母数字，4以上长度', 'cn'),
(92, 'member_msg8', '密码不能为空', 'cn'),
(93, 'member_msg9', '两次密码不一样', 'cn'),
(94, 'member_msg10', '邮箱不正确', 'cn'),
(95, 'member_msg11', '该用户名不能注册', 'cn'),
(96, 'member_msg12', '已经存在相同的用户名，请更换用户名', 'cn'),
(97, 'member_msg13', '该邮箱已经被使用,请更换', 'cn'),
(98, 'member_msg14', '用户注册成功', 'cn'),
(99, 'msg_info', '不存在flash引导页模板', 'cn'),
(100, 'msg_info2', '不存在【@】语言首页模板', 'cn'),
(101, 'msg_info3', '找不到【@】语言模板文件', 'cn'),
(102, 'msg_info4', '请先生成【@】语言首页', 'cn'),
(103, 'msg_info5', '请先更新栏目缓存', 'cn'),
(104, 'msg_info6', '请先更新频道缓存', 'cn'),
(105, 'msg_info7', '你当前的会员权限不能浏览', 'cn'),
(106, 'msg_info8', '该内容未审核,还不能浏览', 'cn'),
(107, 'msg_info9', '还没有添加内容', 'cn'),
(422, 'msg_info4', 'Please generate【@】Language Home', 'en'),
(421, 'msg_info3', 'Unable to find【@】language template file', 'en'),
(420, 'msg_info2', 'Does not exist【@】Language Home template', 'en'),
(419, 'msg_info', 'Not flash boot Pages template', 'en'),
(418, 'member_msg14', 'Register success', 'en'),
(417, 'member_msg13', 'he mailbox is already in use, replace', 'en'),
(439, 'member_msg25', 'Deleted successfully', 'en'),
(438, 'member_msg24', 'Advisory modified successfully', 'en'),
(437, 'member_msg23', 'The content can not be empty', 'en'),
(436, 'member_msg22', 'The consultation has been processed, please re-add', 'en'),
(435, 'member_msg21', 'The consultation does not exist', 'en'),
(434, 'member_msg20', 'Consulting successfully added', 'en'),
(433, 'member_msg19', 'Title or content can not be empty', 'en'),
(432, 'msg_info10', 'Parameter passing errors', 'en'),
(431, 'member_msg18', 'Modified successfully', 'en'),
(430, 'member_msg17', 'From form submission', 'en'),
(429, 'member_msg16', 'Phone must be numeric', 'en'),
(428, 'member_msg15', 'QQ number is incorrect', 'en'),
(427, 'msg_info9', 'Has not yet added content', 'en'),
(426, 'msg_info8', 'The content is not audited, but also can not browse', 'en'),
(425, 'msg_info7', 'Your current membership privileges can not browse', 'en'),
(424, 'msg_info6', 'Please update the channel cache', 'en'),
(423, 'msg_info5', 'Please update section cache', 'en'),
(416, 'member_msg12', 'The same user name already exists, replace the user name', 'en'),
(415, 'member_msg11', 'The user name can not be registered', 'en'),
(414, 'member_msg10', 'E-mail is incorrect', 'en'),
(413, 'member_msg9', 'Not the same password twice', 'en'),
(412, 'member_msg8', 'Password can not be empty', 'en'),
(411, 'member_msg7', 'The nickname can only contain alphanumeric, length of 4 or more', 'en'),
(410, 'member_msg6', 'The user name can only be alphanumeric longer than 4', 'en'),
(409, 'member_msg5', 'Member registration has been suspended', 'en'),
(408, 'member_msg4', 'Login failed, the account has been locked', 'en'),
(266, 'member_msg15', 'QQ号码不正确', 'cn'),
(267, 'member_msg16', '手机必须为数字', 'cn'),
(268, 'member_msg17', '请从表单提交', 'cn'),
(269, 'member_msg18', '修改成功', 'cn'),
(407, 'member_msg3', 'Username name or password is incorrect', 'en'),
(406, 'member_smg3', 'User name or password can not be empty', 'en'),
(274, 'msg_info10', '参数传递错误,请重新操作', 'cn'),
(276, 'member_msg19', '标题或内容不能为空', 'cn'),
(277, 'member_msg20', '咨询添加成功', 'cn'),
(278, 'member_msg21', '不存在该咨询', 'cn'),
(279, 'member_msg22', '咨询已经处理,请重新添加', 'cn'),
(280, 'member_msg23', '内容不能为空', 'cn'),
(281, 'member_msg24', '咨询修改成功', 'cn'),
(282, 'member_msg25', '删除成功', 'cn'),
(283, 'member_msg26', '原始密码不正确', 'cn'),
(284, 'member_msg27', '已经退出', 'cn'),
(449, 'member_msg28', 'User Center', 'en'),
(450, 'member_out', '退出登陆', 'cn'),
(451, 'member_out', 'Logout', 'en'),
(447, 'member_wel', 'Welcome back!', 'en'),
(448, 'member_msg28', '用户中心', 'cn'),
(445, 'book_msg4', 'Successfully added', 'en'),
(444, 'book_msg3', 'The message can not be empty', 'en'),
(443, 'book_msg2', 'Message title can not be empty', 'en'),
(442, 'book_msg1', 'The Guestbook can not use', 'en'),
(441, 'member_msg27', 'Has withdrawn from the', 'en'),
(440, 'member_msg26', 'Original password is incorrect', 'en'),
(386, 'pages', 'Common', 'en'),
(387, 'pagesize', 'Records', 'en'),
(388, 'page', 'Current', 'en'),
(389, 'pagehome', 'Home', 'en'),
(390, 'pageend', 'Last', 'en'),
(391, 'pagapre', 'Previous', 'en'),
(392, 'pagenext', 'Next', 'en'),
(393, 'pagego', 'Go to', 'en'),
(405, 'member_msg2', 'Incorrect verification code', 'en'),
(404, 'member_msg', 'Please login', 'en'),
(350, 'book_msg1', '留言本不能使用', 'cn'),
(351, 'book_msg2', '留言标题不能为空', 'cn'),
(352, 'book_msg3', '留言内容不能为空', 'cn'),
(353, 'book_msg4', '添加成功', 'cn'),
(403, 'order_msg1', 'An error occurs, can not process the form, clear!', 'en'),
(402, 'book', 'Guestbook', 'en'),
(401, 'index', 'Home', 'en'),
(400, 'order_msg2', 'The form can not be empty', 'en'),
(399, 'order_msg3', 'An error occurs, the form has to stop using, you can not add form', 'en'),
(398, 'order_msg4', 'The form has been processed, we will promptly contact you!', 'en'),
(397, 'sitemap', 'Site Map', 'en'),
(396, 'nonestr', 'No', 'en'),
(395, 'next', 'Next', 'en'),
(446, 'member_wel', '欢迎你回来!', 'cn'),
(394, 'previous', 'Previous', 'en'),
(452, 'code', '验证码：', 'cn'),
(453, 'code', 'Code:', 'en'),
(454, 'code_info', '看不清？更换一张', 'cn'),
(455, 'code_info', 'See? Replacing a', 'en'),
(456, 'form_submit', '提交', 'cn'),
(457, 'form_submit', 'submit', 'en'),
(458, 'form_reset', '重置', 'cn'),
(459, 'form_reset', 'reset', 'en');

-- --------------------------------------------------------

--
-- 表的结构 `dn_link`
--

CREATE TABLE IF NOT EXISTS `dn_link` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `link_url` varchar(60) NOT NULL,
  `link_name` varchar(60) NOT NULL,
  `link_logo` varchar(60) DEFAULT NULL,
  `link_order` mediumint(8) NOT NULL DEFAULT '1',
  `link_info` varchar(255) DEFAULT NULL,
  `link_mail` varchar(60) DEFAULT NULL,
  `lang` varchar(60) NOT NULL,
  `addtime` varchar(60) DEFAULT NULL,
  `link_type` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dn_link`
--

INSERT INTO `dn_link` (`id`, `link_url`, `link_name`, `link_logo`, `link_order`, `link_info`, `link_mail`, `lang`, `addtime`, `link_type`) VALUES
(1, 'http://www.beescms.com', '企业网站管理系统', 'http://', 1, '', '', 'cn', '1309053704', 0),
(2, 'http://www.beescms.com/bbs', '交流论坛', 'http://', 2, '', '', 'cn', '1309053729', 0),
(3, 'http://www.beescms.com/help', '在线帮助', 'http://', 3, '', '', 'cn', '1309053749', 0),
(4, 'http://www.beescms.com', 'BEES企业网站管理系统', 'img/20110812/201108121414162883.gif', 1, '', '', 'cn', '1313129685', 1),
(5, 'http://www.169host.com', '域名空间', '', 1, '', '', 'cn', '1323935030', 0),
(6, 'http://www.lp0874.com', '罗平生活网', '', 10, '', '', 'cn', '1355143203', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_maintb`
--

CREATE TABLE IF NOT EXISTS `dn_maintb` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `filter` varchar(60) DEFAULT NULL,
  `tbpic` varchar(60) DEFAULT NULL,
  `keywords` varchar(60) DEFAULT NULL,
  `info` text,
  `author` varchar(60) DEFAULT NULL,
  `source` varchar(60) DEFAULT NULL,
  `hits` mediumint(8) NOT NULL DEFAULT '0',
  `category` mediumint(8) NOT NULL,
  `channel` mediumint(9) NOT NULL,
  `addtime` varchar(60) NOT NULL,
  `updatetime` varchar(60) DEFAULT NULL,
  `top` mediumint(8) NOT NULL,
  `purview` mediumint(8) NOT NULL COMMENT '浏览权限',
  `is_html` mediumint(8) NOT NULL COMMENT '1为动态浏览,0为静态',
  `verify` mediumint(8) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(60) DEFAULT NULL,
  `is_url` mediumint(8) NOT NULL DEFAULT '0',
  `url_add` varchar(60) DEFAULT NULL,
  `title_color` varchar(60) DEFAULT NULL,
  `title_style` mediumint(8) NOT NULL DEFAULT '0',
  `is_open` mediumint(8) NOT NULL DEFAULT '0',
  `cache_time` varchar(60) DEFAULT NULL,
  `custom_url` varchar(255) DEFAULT NULL,
  `c_order` mediumint(8) DEFAULT NULL,
  `content_key` varchar(200) DEFAULT NULL,
  `small_title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- 转存表中的数据 `dn_maintb`
--

INSERT INTO `dn_maintb` (`id`, `title`, `filter`, `tbpic`, `keywords`, `info`, `author`, `source`, `hits`, `category`, `channel`, `addtime`, `updatetime`, `top`, `purview`, `is_html`, `verify`, `url`, `lang`, `is_url`, `url_add`, `title_color`, `title_style`, `is_open`, `cache_time`, `custom_url`, `c_order`, `content_key`, `small_title`) VALUES
(40, '型号 KAV', '', 'img/201411111023087644.jpg', '', '	压力截止阀，先导式（高性能）\r\n\r\n	\r\n		规格2\r\n	\r\n		螺丝孔R/KAV.2\r\n	\r\n		4种压力等级：50, 100, 210, 315 bar\r\n	\r\n		切换能力强\r\n	\r\n		无限可变切换压差\r\n	\r\n		有主阀芯的先导单元\r\n	\r\n		带护罩的六角...', '未知', '未知', 37, 36, 3, '1415671891', '1415671877', 0, 0, 0, 0, 'htm/rex_ele03/2014_1111_40.html', 'cn', 0, 'http://', '', 0, 0, '30', '', NULL, '', '型号 KAV'),
(41, '减速机', NULL, '', '', '                            代理德国AEC行星减速机，符合国际通用安装尺寸的行走减速机，优点是：性能可靠、故障率低、免维护、使用寿命长。\r\n                        \r\n                        配套...', '未知', '未知', 1, 42, 1, '1415686299', '1416885077', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(50, '非标准阀块及动力单元', NULL, '', '', '\r\n	德国AEC\r\n\r\n	代理德国AEC全系列产品，并可以按照客户的要求定制化生产，配套元件采用国际知名品牌。\r\n', '未知', '未知', 1, 47, 1, '1416885116', '1416885116', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(51, '手动泵&转阀', NULL, '', '', '\r\n	意大利HV\r\n\r\n	&nbsp;\r\n', '未知', '未知', 1, 94, 1, '1416885111', '1416885111', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(52, 'gearbox', NULL, '', '', '\r\n	German AEC\r\n', '未知', '未知', 1, 56, 1, '1416885106', '1416885106', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(53, 'hydraulic cylinder', NULL, '', '', '\r\n	Bosch Rextoth\r\n\r\n	Itlay Atos\r\n', '未知', '未知', 1, 57, 1, '1416885116', '1416885116', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(54, 'hydraulic components', NULL, '', '', '\r\n	Bosch Rextoth\r\n\r\n	Itlay Atos\r\n', '未知', '未知', 1, 58, 1, '1416885106', '1416885106', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(55, 'pneumatic components', NULL, '', '', '\r\n	Sweden Aventics\r\n', '未知', '未知', 1, 59, 1, '1416885108', '1416885108', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(56, 'hydraulic filter', NULL, '', '', '\r\n	German AEC\r\n', '未知', '未知', 1, 60, 1, '1416885119', '1416885119', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(57, 'power unit', NULL, '', '', '\r\n	German AEC\r\n', '未知', '未知', 1, 61, 1, '1416885109', '1416885109', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(58, 'hand pump & diverter valve', NULL, '', '', '\r\n	Italy HV Hydraulic\r\n', '未知', '未知', 1, 95, 1, '1416885073', '1416885073', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(38, '关于我们', NULL, '', '', '\r\n	戴纳米克（大连）科技有限公司\r\n\r\n	德国Tailer Hydraulik GmH公司参与成立的中德合资企业，致力于为企业提供优质、快捷的服务，成为国内外沟通、合作的桥梁。\r\n\r\n	\r\n', '未知', '未知', 1, 8, 1, '1415603508', '1415603508', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(39, '下载测试001', '', '', '', '\r\n	教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下载是...教你如何使用PPT下...', '未知', '未知', 20, 29, 4, '1415603480', '1415607093', 0, 0, 0, 0, 'htm/download/2014_1110_39.html', 'cn', 0, 'http://', '', 0, 0, '30', '', NULL, '', '下载测试001'),
(35, '测试文章', '', '', '', '\r\n	【环球网综合报道】据英国《都市日报》11月6日报道，英国12岁的女孩查理&bull;阿姆斯泰德(Charlea Amstead)竟然出现老年痴呆迹象：记忆力丧失，四肢僵硬，大小便失禁等。\r\n\r\n	据悉，小...', '未知', '未知', 4, 28, 2, '1415599862', '1415599862', 0, 0, 0, 0, 'htm/new_qydt/2014_1110_35.html', 'cn', 0, 'http://', '', 0, 0, '30', '', NULL, '', '测试文章'),
(36, '测试文章002', '', '', '', '\r\n	好莱坞当地时间11月8日晚，美国电影艺术与科学学院在洛杉矶举行颁奖礼，日本著名动画大师宫崎骏被授予终身成就奖荣誉，这是继已故导演黑泽明于1990年获得该奖以来，第二位获此...', '未知', '未知', 33, 28, 2, '1415599862', '1415599862', 0, 0, 0, 0, 'htm/new_qydt/2014_1110_36.html', 'cn', 0, 'http://', '', 0, 0, '30', '', NULL, '', '测试文章002'),
(37, '联系我们', NULL, '', '', '	戴纳米克（大连）科技有限公司\r\n	中国大连市高新园区世达街19号-1-2414号\r\n	电话：+86（411）8445 7746\r\n	传真：+86（411）8445 8976\r\n	网址：www.dynamik.com.cn\r\n\r\n	\r\n', '未知', '未知', 2, 30, 1, '1415603502', '1416903071', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(42, 'test title', '', '', '', '\r\n	The&nbsp;recent&nbsp;crash&nbsp;of&nbsp;Virgin&nbsp;Galactic&#39;s&nbsp;passenger&nbsp;spaceship&nbsp;has&nbsp;done&nbsp;little&nbsp;to&nbsp;quench&nbsp;manypeople&#39;s&nbsp;aspirations&nbsp;of&nbsp;exploring&nbsp;space,&nbsp;nor&nbsp;in...', '未知', '未知', 4, 18, 2, '1415689899', '1415689899', 0, 0, 0, 0, 'htm/news/2014_1111_42.html', 'en', 0, 'http://', '', 0, 0, '30', '', NULL, '', 'test title'),
(43, 'test title 2', '', '', '', '\r\n	Both&nbsp;have&nbsp;received&nbsp;investment&nbsp;from&nbsp;global&nbsp;Internet&nbsp;giant&nbsp;Google&nbsp;Inc.\r\n\r\n	Zhang&nbsp;Zhidong,&nbsp;co-founder&nbsp;of&nbsp;Tencent,&nbsp;said&nbsp;in&nbsp;March&nbsp;when&nbsp;he&nbsp;resigned&n...', '未知', '未知', 11, 18, 2, '1415689876', '1415689876', 0, 0, 0, 0, 'htm/news/2014_1111_43.html', 'en', 0, 'http://', '', 0, 0, '30', '', NULL, '', 'test title 2'),
(44, 'pro moudle test 001', '', 'img/201411111023087644.jpg', '', '	产品介绍产品介绍产品介绍产品介绍产品介绍\r\n', '未知', '未知', 12, 62, 3, '1415693464', '1415693497', 0, 0, 0, 0, 'htm/rex_001/2014_1111_44.html', 'en', 0, 'http://', '', 0, 0, '30', '', NULL, '', 'pro moudle test 001'),
(45, 'test sample download', '', '', '', '\r\n	test sample downloadtest sample downloadtest sample download\r\n', '未知', '未知', 2, 20, 4, '1415697098', '1415697098', 0, 0, 0, 0, 'htm/down/2014_1111_45.html', 'en', 0, 'http://', '', 0, 0, '30', '', NULL, '', 'test sample download'),
(46, '液压油缸', NULL, '', '', '\r\n	德国力士乐\r\n\r\n	意大利阿托斯\r\n\r\n	代理德国AEC及意大利Atos油缸，符合ISO国际标准的安装方式，模块化工程设计，高品质加工，以适应现代化的机器和系统的要求。\r\n\r\n	优点是：性能可靠...', '未知', '未知', 1, 43, 1, '1416885117', '1416885117', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(47, '液压元件', NULL, '', '', '	德国力士乐\r\n\r\n	意大利阿托斯\r\n\r\n	代理意大利Atos全系列产品。\r\n\r\n	优点是：其尺寸、品质保证及质量管理体系均符合ISO国际标准，并在设计制造过程中始终贯彻了“模块化制造&rdqu...', '未知', '未知', 1, 44, 1, '1416885117', '1419145948', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(48, '气动元件', NULL, '', '', '\r\n	瑞典Aventics（原博世气动）\r\n\r\n	代理瑞典Aventics(原Bosch)全系列产品，致力于帮助客户实现生产自动化，提高生产效率，降低生产成本。\r\n\r\n	典型应用：钢厂、有色金属、压机、石油、海...', '未知', '未知', 1, 45, 1, '1416885072', '1416885072', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(49, '液压过滤器&液压附件', NULL, '', '', '\r\n	德国AEC\r\n\r\n	代理德国AEC全系列产品，包括压油过滤器、回油过滤器、过滤小车、空气滤清器、净油机、油水分离机、污染检测仪、标准法兰、焊接式管接头、卡套式管接头、液压胶管等...', '未知', '未知', 1, 46, 1, '1416885093', '1416885093', 0, 0, 0, 0, NULL, 'cn', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dn_market`
--

CREATE TABLE IF NOT EXISTS `dn_market` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `market_name` varchar(60) DEFAULT NULL,
  `market_type` mediumint(8) NOT NULL DEFAULT '0',
  `market_num` varchar(60) NOT NULL,
  `market_order` varchar(60) NOT NULL DEFAULT '10',
  `market_is` mediumint(8) NOT NULL DEFAULT '1',
  `lang` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dn_market`
--

INSERT INTO `dn_market` (`id`, `market_name`, `market_type`, `market_num`, `market_order`, `market_is`, `lang`) VALUES
(1, '销售客服', 1, '2429256177', '1', 1, 'cn'),
(2, '销售客服', 1, '2429256177', '1', 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `dn_member`
--

CREATE TABLE IF NOT EXISTS `dn_member` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(60) DEFAULT NULL,
  `member_password` varchar(60) NOT NULL,
  `member_nich` varchar(60) NOT NULL,
  `member_purview` mediumint(8) NOT NULL DEFAULT '0',
  `member_user` varchar(60) NOT NULL,
  `member_mail` varchar(60) NOT NULL,
  `member_tel` varchar(60) DEFAULT NULL,
  `is_disable` mediumint(8) NOT NULL DEFAULT '0',
  `member_ip` varchar(60) DEFAULT NULL,
  `member_time` varchar(60) DEFAULT NULL,
  `member_count` mediumint(8) NOT NULL DEFAULT '0',
  `member_qq` varchar(60) DEFAULT NULL,
  `member_phone` varchar(60) DEFAULT NULL,
  `member_sex` mediumint(8) DEFAULT '0',
  `member_addtime` varchar(60) DEFAULT NULL,
  `member_birth` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `dn_member_group`
--

CREATE TABLE IF NOT EXISTS `dn_member_group` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `member_group_name` varchar(60) NOT NULL,
  `member_group_info` varchar(255) NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dn_member_group`
--

INSERT INTO `dn_member_group` (`id`, `member_group_name`, `member_group_info`, `is_disable`) VALUES
(1, '注册会员', '注册完成的所有会员都是这个级别', 0),
(2, 'VIP会员', '注册会员通过管理后台升级的级别', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_mx_form`
--

CREATE TABLE IF NOT EXISTS `dn_mx_form` (
  `id` mediumint(8) NOT NULL,
  `form_id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dn_prinfo`
--

CREATE TABLE IF NOT EXISTS `dn_prinfo` (
  `id` mediumint(8) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `web_contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dn_product`
--

CREATE TABLE IF NOT EXISTS `dn_product` (
  `id` mediumint(8) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `pics` varchar(255) DEFAULT NULL,
  `content` text,
  `tech_detail` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dn_product`
--

INSERT INTO `dn_product` (`id`, `model`, `pics`, `content`, `tech_detail`) VALUES
(40, NULL, ',32,,31,,30', '<p style="border: 0px; font-family: sans-serif, Arial; font-size: 26px; margin: 0px 0px 4rem; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(64, 64, 64); line-height: 46.08000183105469px;">\r\n	压力截止阀，先导式（高性能）</p>\r\n', '<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<ul>\r\n		<li style="color: rgb(64, 64, 64); font-family: inherit; font-size: 26px; font-style: inherit; font-weight: inherit; line-height: 44.20000076293945px; border: 0px; margin: 0px 0px 0px 3.6rem; outline: 0px; padding: 0px; vertical-align: baseline;">\r\n			规格2</li>\r\n		<li style="color: rgb(64, 64, 64); font-family: inherit; font-size: 26px; font-style: inherit; font-weight: inherit; line-height: 44.20000076293945px; border: 0px; margin: 0px 0px 0px 3.6rem; outline: 0px; padding: 0px; vertical-align: baseline;">\r\n			螺丝孔R/KAV.2</li>\r\n		<li style="color: rgb(64, 64, 64); font-family: inherit; font-size: 26px; font-style: inherit; font-weight: inherit; line-height: 44.20000076293945px; border: 0px; margin: 0px 0px 0px 3.6rem; outline: 0px; padding: 0px; vertical-align: baseline;">\r\n			4种压力等级：50, 100, 210, 315 bar</li>\r\n		<li style="color: rgb(64, 64, 64); font-family: inherit; font-size: 26px; font-style: inherit; font-weight: inherit; line-height: 44.20000076293945px; border: 0px; margin: 0px 0px 0px 3.6rem; outline: 0px; padding: 0px; vertical-align: baseline;">\r\n			切换能力强</li>\r\n		<li style="color: rgb(64, 64, 64); font-family: inherit; font-size: 26px; font-style: inherit; font-weight: inherit; line-height: 44.20000076293945px; border: 0px; margin: 0px 0px 0px 3.6rem; outline: 0px; padding: 0px; vertical-align: baseline;">\r\n			无限可变切换压差</li>\r\n		<li style="color: rgb(64, 64, 64); font-family: inherit; font-size: 26px; font-style: inherit; font-weight: inherit; line-height: 44.20000076293945px; border: 0px; margin: 0px 0px 0px 3.6rem; outline: 0px; padding: 0px; vertical-align: baseline;">\r\n			有主阀芯的先导单元</li>\r\n		<li style="color: rgb(64, 64, 64); font-family: inherit; font-size: 26px; font-style: inherit; font-weight: inherit; line-height: 44.20000076293945px; border: 0px; margin: 0px 0px 0px 3.6rem; outline: 0px; padding: 0px; vertical-align: baseline;">\r\n			带护罩的六角螺钉</li>\r\n	</ul>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(44, NULL, NULL, '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Product introduction</span></p>\r\n', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 18px; line-height: 22px;">Technical parameters</span></p>\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `dn_upfiles`
--

CREATE TABLE IF NOT EXISTS `dn_upfiles` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `file_info` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `file_size` mediumint(8) DEFAULT '0',
  `file_path` varchar(255) DEFAULT NULL,
  `file_time` varchar(255) DEFAULT NULL,
  `hits` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dn_upfiles`
--

INSERT INTO `dn_upfiles` (`id`, `file_info`, `file_ext`, `file_size`, `file_path`, `file_time`, `hits`) VALUES
(1, '', 'docx', 12968, 'upload/file/-20141110155527.docx', '1415606127', 0),
(2, '', 'rar', 10219, 'upload/file/text download-20141111172323.rar', '1415697803', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dn_uppics`
--

CREATE TABLE IF NOT EXISTS `dn_uppics` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(60) NOT NULL COMMENT '图片名称',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '外部链接',
  `pic_ext` varchar(60) NOT NULL COMMENT '图片后缀',
  `pic_alt` varchar(255) DEFAULT NULL COMMENT '图片alt',
  `pic_size` varchar(60) DEFAULT NULL,
  `pic_path` varchar(60) DEFAULT NULL COMMENT '图片路径',
  `pic_time` varchar(60) DEFAULT NULL COMMENT '图片上传修改时间',
  `pic_thumb` varchar(60) DEFAULT NULL COMMENT '缩略图',
  `pic_cate` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `dn_uppics`
--

INSERT INTO `dn_uppics` (`id`, `pic_name`, `pic_url`, `pic_ext`, `pic_alt`, `pic_size`, `pic_path`, `pic_time`, `pic_thumb`, `pic_cate`) VALUES
(1, '201106251457435418', '', 'jpg', '', '91718', 'upload/img/20110625/', '1308985063', 'img/20110625/201106251457435418_thumb.jpeg', 0),
(2, '20110625145753523', '', 'jpg', '', '28173', 'upload/img/20110625/', '1308985073', 'img/20110625/20110625145753523_thumb.jpeg', 0),
(3, '201106251457589343', '', 'jpg', '', '213545', 'upload/img/20110625/', '1308985078', 'img/20110625/201106251457589343_thumb.jpeg', 0),
(4, '201106251458052470', '', 'jpg', '', '115786', 'upload/img/20110625/', '1308985085', 'img/20110625/201106251458052470_thumb.jpeg', 0),
(5, '201106251458118388', '', 'JPG', '', '203626', 'upload/img/20110625/', '1308985091', 'img/20110625/201106251458118388_thumb.jpeg', 0),
(6, '201106251458309693', '', 'jpg', '', '552104', 'upload/img/20110625/', '1308985110', 'img/20110625/201106251458309693_thumb.jpeg', 0),
(7, '201106251458309992', '', 'jpg', '', '626030', 'upload/img/20110625/', '1308985110', 'img/20110625/201106251458309992_thumb.jpeg', 0),
(8, '201106251458316084', '', 'jpg', '', '8738', 'upload/img/20110625/', '1308985111', 'img/20110625/201106251458316084_thumb.jpeg', 0),
(9, '201106251459034996', '', 'jpg', '', '30121', 'upload/img/20110625/', '1308985143', 'img/20110625/201106251459034996_thumb.jpeg', 0),
(10, '201106251459032990', '', 'jpg', '', '32967', 'upload/img/20110625/', '1308985143', 'img/20110625/201106251459032990_thumb.jpeg', 0),
(26, '201411101341544831', NULL, 'jpg', '', '3915', 'upload/img/', '1415598114', 'img/201411101341544831_thumb.jpeg', 3),
(27, '201411101345518306', NULL, 'jpg', '', '2624', 'upload/img/', '1415598351', 'img/201411101345518306_thumb.jpeg', 1),
(28, '201411101539064402', NULL, 'jpg', '', '57190', 'upload/img/', '1415605146', 'img/201411101539064402_thumb.jpeg', 1),
(29, '201411101539143693', NULL, 'jpg', '', '34674', 'upload/img/', '1415605154', 'img/201411101539143693_thumb.jpeg', 1),
(30, '20141110183800619', NULL, 'jpg', '', '20902', 'upload/img/', '1415615880', 'img/20141110183800619_thumb.jpeg', 1),
(31, '201411101838003226', NULL, 'jpg', '', '31284', 'upload/img/', '1415615880', 'img/201411101838003226_thumb.jpeg', 1),
(32, '201411101838004054', NULL, 'jpg', '', '4390', 'upload/img/', '1415615880', 'img/201411101838004054_thumb.jpeg', 1),
(33, '201411111023087644', NULL, 'jpg', '', '2246', 'upload/img/', '1415672588', 'img/201411111023087644_thumb.jpeg', 1),
(34, '201411111340574116', NULL, 'jpg', '', '7570', 'upload/img/', '1415684457', 'img/201411111340574116_thumb.jpeg', 1),
(35, '201411251346196683', NULL, 'gif', '', '4346', 'upload/img/', '1416894379', 'img/201411251346196683_thumb.gif', 3),
(25, '20141110100142127', NULL, 'gif', '', '5571', 'upload/img/', '1415584902', 'img/20141110100142127_thumb.gif', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dn_uppic_cate`
--

CREATE TABLE IF NOT EXISTS `dn_uppic_cate` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dn_uppic_cate`
--

INSERT INTO `dn_uppic_cate` (`id`, `cate_name`) VALUES
(1, '产品图片'),
(2, '下载图片'),
(3, '其它图片');

-- --------------------------------------------------------

--
-- 表的结构 `dn_webjob`
--

CREATE TABLE IF NOT EXISTS `dn_webjob` (
  `id` mediumint(8) NOT NULL,
  `jobname` varchar(255) DEFAULT NULL,
  `jobsex` varchar(255) DEFAULT NULL,
  `jobmoth` varchar(255) DEFAULT NULL,
  `jobjg` varchar(255) DEFAULT NULL,
  `jobxl` varchar(255) DEFAULT NULL,
  `jobzy` varchar(255) DEFAULT NULL,
  `jobbyyx` varchar(255) DEFAULT NULL,
  `jobphone` varchar(255) DEFAULT NULL,
  `jobmail` varchar(255) DEFAULT NULL,
  `jobhj` varchar(255) DEFAULT NULL,
  `jobgzjl` varchar(255) DEFAULT NULL,
  `jobzyjn` varchar(255) DEFAULT NULL,
  `jobyyah` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
