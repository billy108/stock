/*
Navicat MySQL Data Transfer

Source Server         : MY
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : stock

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2017-02-23 16:07:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `order_time` date DEFAULT NULL,
  `ebay_account` varchar(20) DEFAULT NULL,
  `ean` varchar(20) DEFAULT NULL,
  `sold_quantity` int(2) DEFAULT NULL,
  `total` float(8,2) DEFAULT NULL,
  `pattern_size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('2017-01-19', 'rugaustralia', '9350329002768', '1', '399.99', 'Floor Rug MOD03 190x280cm');
INSERT INTO `orderlist` VALUES ('2016-07-18', 'aussierugs', '9350329000597', '1', '99.99', 'SILVIA Floor Rug SIL05 190x280cm');
INSERT INTO `orderlist` VALUES ('2017-01-18', 'rugaustralia', '9350329001464', '1', '435.00', 'Floor Rug SIL06 240x340cm');
INSERT INTO `orderlist` VALUES ('2016-03-30', 'aussierugs', '9350329000504', '1', '179.99', 'SILVIA Floor Rug SIL01 155x225cm');
INSERT INTO `orderlist` VALUES ('2016-03-15', 'aussierugs', '9350329000504', '1', '179.99', 'SILVIA Floor Rug SIL01 155x225cm');
INSERT INTO `orderlist` VALUES ('2017-01-04', 'rugaustralia', '9350329002768', '1', '300.00', '');
INSERT INTO `orderlist` VALUES ('2017-01-04', 'rugaustralia', '9350329000429', '1', '187.49', '');
INSERT INTO `orderlist` VALUES ('2017-01-03', 'aussierugs', '9350329002737', '1', '280.00', '');

-- ----------------------------
-- Table structure for productlist
-- ----------------------------
DROP TABLE IF EXISTS `productlist`;
CREATE TABLE `productlist` (
  `ean` varchar(15) DEFAULT NULL,
  `sku` varchar(20) DEFAULT NULL,
  `design_id` varchar(10) DEFAULT NULL,
  `supplier_design_id` varchar(10) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `area` float(5,2) DEFAULT NULL,
  `supplier` varchar(20) DEFAULT NULL,
  `delivery` int(2) DEFAULT NULL,
  `shipping_cycle` int(2) DEFAULT NULL,
  `stocking_cycle` int(2) DEFAULT NULL,
  `stock` int(2) DEFAULT NULL,
  `shipping_stock` int(2) DEFAULT NULL,
  `moq` float(5,2) DEFAULT NULL,
  `density` int(10) DEFAULT NULL,
  `packing_size` varchar(15) DEFAULT NULL,
  `gross_weight` float(5,2) DEFAULT NULL,
  `cubic_weight` float(5,2) DEFAULT NULL,
  `pile_height` float(5,2) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `cost` float(6,2) DEFAULT NULL,
  `wholesale_price_1` float(5,2) DEFAULT NULL,
  `wholesale_price_2` float(5,2) DEFAULT NULL,
  `msrp_aud` float(6,2) DEFAULT NULL,
  `msrp_usd` float(6,2) DEFAULT NULL,
  `msrp_euro` float(6,2) DEFAULT NULL,
  `msrp_4` float(6,2) DEFAULT NULL,
  `msrp_5` float(6,2) DEFAULT NULL,
  `msrp_6` float(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productlist
-- ----------------------------
INSERT INTO `productlist` VALUES ('9350329002768', 'MC002SIL05BLU1928', 'SIL05', '', '', 'IVORY_BLUE', '290x280', '5.32', '福荣达机织', '25', '30', '4', '5', '5', '20.00', '100000', '12*12*190', '13.00', '15.00', '1.00', 'Polyester', '200.00', '80.00', '80.00', '200.00', '200.00', '200.00', '200.00', '200.00', '200.00');
INSERT INTO `productlist` VALUES ('9350329000597', 'MC002SIL05BLU2000', 'SIL11', '', '', 'IVORY_WITHE', '230x280', '15.34', '印度手工', '15', '15', '2', '5', '5', '20.00', '100000', '11*11*190', '13.00', '15.00', '1.00', 'Polyester', '200.00', '80.00', '80.00', '200.00', '200.00', '200.00', '200.00', '200.00', '200.00');
INSERT INTO `productlist` VALUES ('9350329001464', 'MC002SIL05BLU7841', 'CEW34', '', '', 'IVORY_BLACK', '110x280', '25.22', '土耳其机织', '25', '32', '2', '5', '5', '20.00', '100000', '12*11*190', '13.00', '15.00', '1.00', 'Polyester', '200.00', '80.00', '80.00', '200.00', '200.00', '200.00', '200.00', '200.00', '200.00');
INSERT INTO `productlist` VALUES ('9350329000504', 'MC002SIL05BLU8972', 'YRW33', '', '', 'IVORY_RED', '540x280', '65.12', '熊亚机织', '55', '23', '2', '5', '5', '20.00', '100000', '13*13*140', '13.00', '15.00', '1.00', 'Polyester', '200.00', '80.00', '80.00', '200.00', '200.00', '200.00', '200.00', '200.00', '200.00');
INSERT INTO `productlist` VALUES ('9350329000092', 'MC002SIL05BLU4789', 'IEJ05', '', '', 'IVORY_YELLOW', '30x280', '2.32', '鑫源皮毛', '45', '2', '7', '5', '5', '20.00', '100000', '13*12*196', '13.00', '15.00', '1.00', 'Polyester', '200.00', '80.00', '80.00', '200.00', '200.00', '200.00', '200.00', '200.00', '200.00');
INSERT INTO `productlist` VALUES ('9350329000009', 'HI001DRI01GRE1623', 'DRI01', 'RL-01', '-', 'GREY', '160x230cm ', '3.68', '印度手工', '120', '30', '150', '5', '5', '20.00', '100000', '12*12*160', '0.00', '15.00', '1.00', 'Polyester', '200.00', '80.00', '80.00', '200.00', '200.00', '200.00', '200.00', '200.00', '200.00');
INSERT INTO `productlist` VALUES ('9350329000016', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001112', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000023', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000030', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001129', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000047', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000054', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001136', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000061', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000078', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001143', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000085', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000092', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001150', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000108', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000115', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001167', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000122', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000139', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001174', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000146', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000153', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001181', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000160', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000177', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001198', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000184', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000191', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001204', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000207', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000214', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001211', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000221', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000238', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001228', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000245', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000252', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001235', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000269', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000276', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001242', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000283', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000290', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001259', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000306', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000313', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001266', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001976', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001983', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001990', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000320', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000337', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001273', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000344', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000351', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001662', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001280', null, null, null, '', null, null, '0.20', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000368', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000375', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001679', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001297', null, null, null, '', null, null, '0.20', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000382', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000399', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001686', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001303', null, null, null, '', null, null, '0.20', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000405', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000412', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001693', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001310', null, null, null, '', null, null, '0.20', null, '75', '30', '105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000429', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000436', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001327', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000443', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000450', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001334', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000467', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000474', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001341', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000481', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000498', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001358', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000504', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000511', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001365', null, null, null, '', null, null, '8.16', null, '60', '30', '90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001372', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000528', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000535', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001389', null, null, null, '', null, null, '8.16', null, '60', '30', '90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001396', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000542', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000559', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001402', null, null, null, '', null, null, '8.16', null, '60', '30', '90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001419', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000566', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000573', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001426', null, null, null, '', null, null, '8.16', null, '60', '30', '90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001433', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000580', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000597', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001440', null, null, null, '', null, null, '8.16', null, '60', '30', '90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001457', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000603', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000610', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001464', null, null, null, '', null, null, '8.16', null, '60', '30', '90', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001471', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000627', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000634', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001488', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000641', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000658', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001495', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000665', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000672', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001501', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000689', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000696', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001518', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000702', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000719', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001525', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000825', null, null, null, '', null, null, '3.01', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001532', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000832', null, null, null, '', null, null, '3.01', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001549', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000849', null, null, null, '', null, null, '3.01', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001556', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000856', null, null, null, '', null, null, '3.01', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001563', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000900', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000917', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '14.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002843', null, null, null, '', null, null, '2.04', null, '45', '30', '75', null, null, null, null, null, '5.10', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001570', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000924', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000931', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '14.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002850', null, null, null, '', null, null, '2.04', null, '45', '30', '75', null, null, null, null, null, '5.10', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001587', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000948', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000955', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '14.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002874', null, null, null, '', null, null, '2.04', null, '45', '30', '75', null, null, null, null, null, '5.10', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001594', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000962', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000979', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '14.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002881', null, null, null, '', null, null, '2.04', null, '45', '30', '75', null, null, null, null, null, '5.10', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001600', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000986', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '10.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329000993', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '15.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001617', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001006', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '10.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001013', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '15.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001624', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001020', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '10.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001037', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '15.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001631', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001044', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '10.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001051', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '15.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001648', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001068', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '10.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001075', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '15.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001655', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001082', null, null, null, '', null, null, '2.04', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001099', null, null, null, '', null, null, '3.68', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001105', null, null, null, '', null, null, '5.80', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001709', null, null, null, '', null, null, '8.16', null, '45', '30', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001716', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001723', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001730', null, null, null, '', null, null, '7.92', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001860', null, null, null, '', null, null, '0.25', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001747', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001754', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001761', null, null, null, '', null, null, '7.92', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001877', null, null, null, '', null, null, '0.25', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001778', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001785', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001792', null, null, null, '', null, null, '7.92', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001884', null, null, null, '', null, null, '0.25', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001808', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001815', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001822', null, null, null, '', null, null, '7.92', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001891', null, null, null, '', null, null, '0.25', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001839', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001846', null, null, null, '', null, null, '5.80', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001853', null, null, null, '', null, null, '7.92', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001907', null, null, null, '', null, null, '0.25', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001914', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001921', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001938', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001945', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001952', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329001969', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002812', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002829', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002836', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002003', null, null, null, '', null, null, '3.68', null, '120', '30', '150', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002010', null, null, null, '', null, null, '5.80', null, '120', '30', '150', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002027', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002034', null, null, null, '', null, null, '1.20', null, '120', '30', '150', null, null, null, null, null, '1.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002041', null, null, null, '', null, null, '3.49', null, '120', '30', '150', null, null, null, null, null, '5.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002058', null, null, null, '', null, null, '5.32', null, '120', '30', '150', null, null, null, null, null, '8.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002065', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.30', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002072', null, null, null, '', null, null, '1.20', null, '120', '30', '150', null, null, null, null, null, '1.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002089', null, null, null, '', null, null, '3.49', null, '120', '30', '150', null, null, null, null, null, '5.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002096', null, null, null, '', null, null, '5.32', null, '120', '30', '150', null, null, null, null, null, '8.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002102', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.30', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002119', null, null, null, '', null, null, '1.20', null, '120', '30', '150', null, null, null, null, null, '1.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002126', null, null, null, '', null, null, '3.49', null, '120', '30', '150', null, null, null, null, null, '5.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002133', null, null, null, '', null, null, '5.32', null, '120', '30', '150', null, null, null, null, null, '8.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002140', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.30', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002157', null, null, null, '', null, null, '1.20', null, '120', '30', '150', null, null, null, null, null, '1.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002164', null, null, null, '', null, null, '3.49', null, '120', '30', '150', null, null, null, null, null, '5.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002171', null, null, null, '', null, null, '5.32', null, '120', '30', '150', null, null, null, null, null, '8.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002188', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.30', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002195', null, null, null, '', null, null, '1.20', null, '120', '30', '150', null, null, null, null, null, '1.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002201', null, null, null, '', null, null, '3.49', null, '120', '30', '150', null, null, null, null, null, '5.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002218', null, null, null, '', null, null, '5.32', null, '120', '30', '150', null, null, null, null, null, '8.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002225', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.30', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002232', null, null, null, '', null, null, '1.20', null, '120', '30', '150', null, null, null, null, null, '1.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002249', null, null, null, '', null, null, '3.49', null, '120', '30', '150', null, null, null, null, null, '5.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002256', null, null, null, '', null, null, '5.32', null, '120', '30', '150', null, null, null, null, null, '8.60', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002263', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.30', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002270', null, null, null, '', null, null, '3.49', null, '45', '0', '45', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002287', null, null, null, '', null, null, '5.32', null, '45', '0', '45', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002294', null, null, null, '', null, null, '0.20', null, '45', '0', '45', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002300', null, null, null, '', null, null, '3.49', null, '45', '0', '45', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002317', null, null, null, '', null, null, '5.32', null, '45', '0', '45', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002324', null, null, null, '', null, null, '0.20', null, '45', '0', '45', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002331', null, null, null, '', null, null, '3.49', null, '45', '0', '45', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002348', null, null, null, '', null, null, '5.32', null, '45', '0', '45', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002355', null, null, null, '', null, null, '0.20', null, '45', '0', '45', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002362', null, null, null, '', null, null, '3.49', null, '45', '0', '45', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002379', null, null, null, '', null, null, '5.32', null, '45', '0', '45', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002386', null, null, null, '', null, null, '0.20', null, '45', '0', '45', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002393', null, null, null, '', null, null, '3.49', null, '45', '0', '45', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002409', null, null, null, '', null, null, '5.32', null, '45', '0', '45', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002416', null, null, null, '', null, null, '0.20', null, '45', '0', '45', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002423', null, null, null, '', null, null, '3.49', null, '45', '0', '45', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002430', null, null, null, '', null, null, '5.32', null, '45', '0', '45', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002447', null, null, null, '', null, null, '0.20', null, '45', '0', '45', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002454', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002461', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002478', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002485', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002492', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002508', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002515', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002522', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002539', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002546', null, null, null, '', null, null, '3.49', null, '45', '30', '75', null, null, null, null, null, '9.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002553', null, null, null, '', null, null, '5.32', null, '45', '30', '75', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002560', null, null, null, '', null, null, '0.20', null, '45', '30', '75', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002577', null, null, null, '', null, null, '3.49', null, null, null, '0', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002584', null, null, null, '', null, null, '5.32', null, null, null, '0', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002591', null, null, null, '', null, null, '0.20', null, null, null, '0', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002607', null, null, null, '', null, null, '3.49', null, null, null, '0', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002614', null, null, null, '', null, null, '5.32', null, null, null, '0', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002621', null, null, null, '', null, null, '0.20', null, null, null, '0', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002638', null, null, null, '', null, null, '3.49', null, null, null, '0', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002645', null, null, null, '', null, null, '5.32', null, null, null, '0', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002652', null, null, null, '', null, null, '0.20', null, null, null, '0', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002669', null, null, null, '', null, null, '3.49', null, null, null, '0', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002676', null, null, null, '', null, null, '5.32', null, null, null, '0', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002683', null, null, null, '', null, null, '0.20', null, null, null, '0', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002690', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002706', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002713', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002720', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002737', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002744', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002751', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002768', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002775', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002782', null, null, null, '', null, null, '3.49', null, '60', '30', '90', null, null, null, null, null, '7.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002799', null, null, null, '', null, null, '5.32', null, '60', '30', '90', null, null, null, null, null, '11.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002805', null, null, null, '', null, null, '0.20', null, '60', '30', '90', null, null, null, null, null, '0.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002898', null, null, null, '', null, null, '0.77', null, '120', '30', '150', null, null, null, null, null, '1.54', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002904', null, null, null, '', null, null, '1.87', null, '120', '30', '150', null, null, null, null, null, '3.74', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002911', null, null, null, '', null, null, '3.45', null, '120', '30', '150', null, null, null, null, null, '6.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002928', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.32', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002935', null, null, null, '', null, null, '0.77', null, '120', '30', '150', null, null, null, null, null, '1.54', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002942', null, null, null, '', null, null, '1.87', null, '120', '30', '150', null, null, null, null, null, '3.74', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002959', null, null, null, '', null, null, '3.45', null, '120', '30', '150', null, null, null, null, null, '6.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002966', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.32', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002973', null, null, null, '', null, null, '0.77', null, '120', '30', '150', null, null, null, null, null, '1.54', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002980', null, null, null, '', null, null, '1.87', null, '120', '30', '150', null, null, null, null, null, '3.74', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329002997', null, null, null, '', null, null, '3.45', null, '120', '30', '150', null, null, null, null, null, '6.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003000', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.32', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003017', null, null, null, '', null, null, '0.77', null, '120', '30', '150', null, null, null, null, null, '1.54', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003024', null, null, null, '', null, null, '1.87', null, '120', '30', '150', null, null, null, null, null, '3.74', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003031', null, null, null, '', null, null, '3.45', null, '120', '30', '150', null, null, null, null, null, '6.90', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003048', null, null, null, '', null, null, '0.20', null, '120', '30', '150', null, null, null, null, null, '0.32', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003253', null, null, null, '', null, null, '2.04', null, '75', '30', '105', null, null, null, null, null, '4.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003055', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003062', null, null, null, '', null, null, '5.70', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003079', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003086', null, null, null, '', null, null, '0.16', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003260', null, null, null, '', null, null, '2.04', null, '75', '30', '105', null, null, null, null, null, '4.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003093', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003109', null, null, null, '', null, null, '5.70', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003116', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003123', null, null, null, '', null, null, '0.16', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003277', null, null, null, '', null, null, '2.04', null, '75', '30', '105', null, null, null, null, null, '4.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003130', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003147', null, null, null, '', null, null, '5.70', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003154', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003161', null, null, null, '', null, null, '0.16', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003284', null, null, null, '', null, null, '2.04', null, '75', '30', '105', null, null, null, null, null, '4.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003178', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003185', null, null, null, '', null, null, '5.70', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003192', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003208', null, null, null, '', null, null, '0.16', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003291', null, null, null, '', null, null, '2.04', null, '75', '30', '105', null, null, null, null, null, '4.40', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003215', null, null, null, '', null, null, '3.68', null, '75', '30', '105', null, null, null, null, null, '8.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003222', null, null, null, '', null, null, '5.70', null, '75', '30', '105', null, null, null, null, null, '13.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003239', null, null, null, '', null, null, '8.16', null, '75', '30', '105', null, null, null, null, null, '18.00', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `productlist` VALUES ('9350329003246', null, null, null, '', null, null, '0.16', null, '75', '30', '105', null, null, null, null, null, '0.50', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for salesstatistics
-- ----------------------------
DROP TABLE IF EXISTS `salesstatistics`;
CREATE TABLE `salesstatistics` (
  `ean` varchar(20) DEFAULT NULL,
  `d201603` int(2) DEFAULT '0',
  `s201603` float(8,2) DEFAULT '0.00',
  `d201604` int(2) DEFAULT '0',
  `s201604` float(8,2) DEFAULT '0.00',
  `d201605` int(2) DEFAULT '0',
  `s201605` float(8,2) DEFAULT '0.00',
  `d201606` int(2) DEFAULT '0',
  `s201606` float(8,2) DEFAULT '0.00',
  `d201607` int(2) DEFAULT '0',
  `s201607` float(8,2) DEFAULT '0.00',
  `d201608` int(2) DEFAULT '0',
  `s201608` float(8,2) DEFAULT '0.00',
  `d201609` int(2) DEFAULT '0',
  `s201609` float(8,2) DEFAULT '0.00',
  `d201610` int(2) DEFAULT '0',
  `s201610` float(8,2) DEFAULT '0.00',
  `d201611` int(2) DEFAULT '0',
  `s201611` float(8,2) DEFAULT '0.00',
  `d201612` int(2) DEFAULT '0',
  `s201612` float(8,2) DEFAULT '0.00',
  `d201701` int(2) DEFAULT '0',
  `s201701` float(8,2) DEFAULT '0.00',
  `d201702` int(2) DEFAULT '0',
  `s201702` float(8,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salesstatistics
-- ----------------------------
INSERT INTO `salesstatistics` VALUES ('9350329002768', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '31', '9300.00', '0', '0.00');
INSERT INTO `salesstatistics` VALUES ('9350329000429', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '31', '5812.19', '0', '0.00');
INSERT INTO `salesstatistics` VALUES ('9350329002737', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '0', '0.00', '31', '8680.00', '0', '0.00');

-- ----------------------------
-- Table structure for temp_orderlist
-- ----------------------------
DROP TABLE IF EXISTS `temp_orderlist`;
CREATE TABLE `temp_orderlist` (
  `order_time` date DEFAULT NULL,
  `ebay_account` varchar(20) DEFAULT NULL,
  `ean` varchar(20) DEFAULT NULL,
  `sold_quantity` int(2) DEFAULT NULL,
  `total` float(8,2) DEFAULT NULL,
  `pattern_size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp_orderlist
-- ----------------------------
INSERT INTO `temp_orderlist` VALUES ('2017-01-04', 'rugaustralia', '9350329002768', '1', '300.00', '');
INSERT INTO `temp_orderlist` VALUES ('2017-01-04', 'rugaustralia', '9350329000429', '1', '187.49', '');
INSERT INTO `temp_orderlist` VALUES ('2017-01-03', 'aussierugs', '9350329002737', '1', '280.00', '');
