-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.45-community - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for fashion
CREATE DATABASE IF NOT EXISTS `fashion` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fashion`;

-- Dumping structure for table fashion.bargainprod
CREATE TABLE IF NOT EXISTS `bargainprod` (
  `BrandMailId` varchar(50) NOT NULL,
  `qun` varchar(50) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `maxprice` varchar(50) NOT NULL,
  `totpric` varchar(50) NOT NULL,
  `bargamnt` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.boltzorderlogin
CREATE TABLE IF NOT EXISTS `boltzorderlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.cartproducts
CREATE TABLE IF NOT EXISTS `cartproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(500) DEFAULT NULL,
  `productname` varchar(500) NOT NULL,
  `quantity` varchar(500) DEFAULT NULL,
  `price` varchar(500) NOT NULL,
  `discount` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `size` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `userCart` varchar(500) NOT NULL,
  `Lamount` varchar(500) DEFAULT NULL,
  `Gender` varchar(500) NOT NULL DEFAULT '',
  `isChecked` varchar(500) DEFAULT 'unchecked',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.crocproduct
CREATE TABLE IF NOT EXISTS `crocproduct` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(500) NOT NULL,
  `Size1` varchar(500) NOT NULL,
  `Size2` varchar(50) NOT NULL,
  `Size3` varchar(500) NOT NULL,
  `Size4` varchar(500) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Currency` varchar(500) NOT NULL,
  `MRP` varchar(500) NOT NULL,
  `SellPrice` varchar(500) NOT NULL,
  `Discount` varchar(50) NOT NULL,
  `Wear Type` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `TotQun` varchar(500) NOT NULL,
  `ExpDate` varchar(500) NOT NULL,
  `UpdDate` varchar(500) DEFAULT NULL,
  `ClothNamee` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.crocproduct_encry
CREATE TABLE IF NOT EXISTS `crocproduct_encry` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `BrandName` varchar(500) NOT NULL,
  `Size1` varchar(500) NOT NULL,
  `Size2` varchar(50) NOT NULL,
  `Size3` varchar(500) NOT NULL,
  `Size4` varchar(500) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Currency` varchar(500) NOT NULL,
  `MRP` varchar(500) NOT NULL,
  `SellPrice` varchar(500) NOT NULL,
  `Discount` varchar(50) NOT NULL,
  `Wear Type` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `TotQun` varchar(500) NOT NULL,
  `ExpDate` varchar(500) NOT NULL,
  `UpdDate` varchar(500) DEFAULT NULL,
  `ClothNamee` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.

-- Dumping structure for table fashion.croczclient
CREATE TABLE IF NOT EXISTS `croczclient` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(500) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Currrency` varchar(500) NOT NULL,
  `MRP` int(50) NOT NULL DEFAULT '0',
  `SellPrice` varchar(500) NOT NULL,
  `WearType` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `ManufDate` date NOT NULL,
  `Type` varchar(50) NOT NULL,
  `TotPrice` int(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.customerorderlogin
CREATE TABLE IF NOT EXISTS `customerorderlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(500) NOT NULL DEFAULT 'pending',
  `Deal` varchar(500) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.dclog
CREATE TABLE IF NOT EXISTS `dclog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.decryptionkey
CREATE TABLE IF NOT EXISTS `decryptionkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Name` varchar(50) NOT NULL,
  `selcprocss` varchar(50) NOT NULL,
  `decriptionid` varchar(50) DEFAULT '0',
  `user_area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_area` (`user_area`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.productorreq
CREATE TABLE IF NOT EXISTS `productorreq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandname` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `currency` varchar(500) NOT NULL,
  `MaxMRP` int(11) NOT NULL DEFAULT '0',
  `totPrice` int(11) NOT NULL DEFAULT '0',
  `gender` varchar(500) NOT NULL,
  `sleeves` varchar(500) NOT NULL,
  `wearmaterial` varchar(500) NOT NULL,
  `weartype` varchar(500) NOT NULL,
  `manfdate` varchar(500) NOT NULL,
  `selcprocess` varchar(50) DEFAULT NULL,
  `Deal` varchar(50) DEFAULT 'pending',
  `BrandEmailID` varchar(50) DEFAULT NULL,
  `upddate` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.productorreq_encry
CREATE TABLE IF NOT EXISTS `productorreq_encry` (
  `id` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `brandname` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `currency` varchar(500) NOT NULL,
  `MaxMRP` varchar(50) NOT NULL DEFAULT '0',
  `totPrice` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(500) NOT NULL,
  `sleeves` varchar(500) NOT NULL,
  `wearmaterial` varchar(500) NOT NULL,
  `weartype` varchar(500) NOT NULL,
  `manfdate` varchar(500) NOT NULL,
  `selcprocess` varchar(50) DEFAULT NULL,
  `Deal` varchar(50) DEFAULT 'pending',
  `BrandEmailID` varchar(50) DEFAULT NULL,
  `upddate` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.

-- Dumping structure for table fashion.ssjproduct
CREATE TABLE IF NOT EXISTS `ssjproduct` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(500) NOT NULL,
  `Sizes1` varchar(50) NOT NULL,
  `Sizes2` varchar(50) NOT NULL,
  `Sizes3` varchar(50) NOT NULL,
  `Sizes4` varchar(50) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Currrency` varchar(500) NOT NULL,
  `MRP` varchar(500) NOT NULL,
  `Discount` varchar(500) NOT NULL,
  `SellPrice` varchar(500) NOT NULL,
  `WearType` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `TotQun` varchar(500) NOT NULL,
  `ExpDate` varchar(50) NOT NULL,
  `UpdDate` varchar(50) DEFAULT NULL,
  `ClothName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.ssjproduct_encry
CREATE TABLE IF NOT EXISTS `ssjproduct_encry` (
  `Id` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `BrandName` varchar(500) NOT NULL,
  `Sizes1` varchar(50) NOT NULL,
  `Sizes2` varchar(50) NOT NULL,
  `Sizes3` varchar(50) NOT NULL,
  `Sizes4` varchar(50) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Currrency` varchar(500) NOT NULL,
  `MRP` varchar(500) NOT NULL,
  `Discount` varchar(500) NOT NULL,
  `SellPrice` varchar(500) NOT NULL,
  `WearType` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `TotQun` varchar(500) NOT NULL,
  `ExpDate` varchar(50) NOT NULL,
  `UpdDate` varchar(50) DEFAULT NULL,
  `ClothName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.

-- Dumping structure for table fashion.startupslogin
CREATE TABLE IF NOT EXISTS `startupslogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.start_upreq
CREATE TABLE IF NOT EXISTS `start_upreq` (
  `clothes` varchar(500) NOT NULL,
  `fname` varchar(500) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `area` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `qun` varchar(500) NOT NULL,
  `quality` varchar(500) NOT NULL,
  `wear` varchar(500) NOT NULL,
  `size` varchar(500) NOT NULL,
  `plan` varchar(500) NOT NULL,
  `totInvest` varchar(500) NOT NULL,
  `shopname` varchar(500) NOT NULL,
  `season` varchar(500) NOT NULL,
  `report` varchar(50) NOT NULL DEFAULT '0',
  `uploadDate` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `upiId` varchar(50) DEFAULT NULL,
  `expdat` varchar(50) DEFAULT NULL,
  `paymentstatus` varchar(50) DEFAULT 'pending',
  `margin` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.statdataup
CREATE TABLE IF NOT EXISTS `statdataup` (
  `season` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `profit margin` varchar(50) DEFAULT NULL,
  `statergies` varchar(500) DEFAULT NULL,
  `clotheswear` varchar(50) DEFAULT NULL,
  `clotheswear1` varchar(50) DEFAULT NULL,
  `clotheswear2` varchar(50) DEFAULT NULL,
  `clotheswear3` varchar(50) DEFAULT NULL,
  `capitalIncome1` varchar(50) DEFAULT NULL,
  `capitalIncome2` varchar(50) DEFAULT NULL,
  `capitalIncome3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.statg
CREATE TABLE IF NOT EXISTS `statg` (
  `Statergy` varchar(500) DEFAULT NULL,
  `updDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.super_adlogin
CREATE TABLE IF NOT EXISTS `super_adlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.update_boltzorder
CREATE TABLE IF NOT EXISTS `update_boltzorder` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(50) NOT NULL,
  `Deatils` varchar(500) NOT NULL,
  `Sizes1` varchar(500) NOT NULL,
  `Sizes2` varchar(500) NOT NULL,
  `Sizes3` varchar(500) NOT NULL,
  `Sizes4` varchar(500) NOT NULL,
  `MRP` varchar(500) NOT NULL,
  `SellPrice` varchar(450) NOT NULL DEFAULT '',
  `Discount` varchar(500) NOT NULL DEFAULT '',
  `Category` varchar(500) NOT NULL DEFAULT '',
  `Gender` varchar(50) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Wear` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `TolQun` varchar(500) NOT NULL,
  `ExpDate` varchar(500) NOT NULL,
  `UpdDate` varchar(500) DEFAULT NULL,
  `ClothName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.uploadboltzec
CREATE TABLE IF NOT EXISTS `uploadboltzec` (
  `id` varchar(50) NOT NULL DEFAULT 'null',
  `BrandName` varchar(500) DEFAULT NULL,
  `Deatils` varchar(500) DEFAULT NULL,
  `Sizes1` varchar(500) DEFAULT NULL,
  `Sizes2` varchar(500) DEFAULT NULL,
  `Sizes3` varchar(500) DEFAULT NULL,
  `Sizes4` varchar(500) DEFAULT NULL,
  `MRP` varchar(500) DEFAULT NULL,
  `SellPrice` varchar(500) DEFAULT NULL,
  `Discount` varchar(500) DEFAULT NULL,
  `Category` varchar(500) DEFAULT NULL,
  `Gender` varchar(500) DEFAULT NULL,
  `Sleeves` varchar(500) DEFAULT NULL,
  `Images` varchar(500) DEFAULT NULL,
  `Wear` varchar(500) DEFAULT NULL,
  `Quantity` varchar(500) DEFAULT NULL,
  `TotQun` varchar(500) DEFAULT NULL,
  `ExpDate` varchar(500) DEFAULT NULL,
  `UpdDate` varchar(500) DEFAULT NULL,
  `ClothName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.userpaymentdetail
CREATE TABLE IF NOT EXISTS `userpaymentdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `totQuntity` varchar(500) DEFAULT NULL,
  `totPrice` varchar(500) DEFAULT NULL,
  `paystatus` varchar(500) DEFAULT 'pending',
  `cardnum` varchar(50) DEFAULT NULL,
  `paydat` varchar(50) DEFAULT NULL,
  `ccv` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cardnum` (`cardnum`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.userpaymentdetail_encry
CREATE TABLE IF NOT EXISTS `userpaymentdetail_encry` (
  `id` varchar(500) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `fullname` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `totQuntity` varchar(500) DEFAULT NULL,
  `totPrice` varchar(500) DEFAULT NULL,
  `paystatus` varchar(500) DEFAULT NULL,
  `cardnum` varchar(500) DEFAULT NULL,
  `paydat` varchar(500) DEFAULT NULL,
  `ccv` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.viendiaproduct
CREATE TABLE IF NOT EXISTS `viendiaproduct` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(500) NOT NULL,
  `Sizes1` varchar(50) NOT NULL,
  `Sizes2` varchar(50) NOT NULL,
  `Sizes3` varchar(50) NOT NULL,
  `Sizes4` varchar(50) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Currency` varchar(500) NOT NULL,
  `MRP` varchar(500) NOT NULL,
  `Discont` varchar(50) NOT NULL,
  `SellPrice` varchar(500) NOT NULL,
  `WearType` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `TotQun` varchar(50) DEFAULT NULL,
  `ExpDate` varchar(500) NOT NULL,
  `UpdDate` varchar(500) NOT NULL,
  `ClothName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table fashion.viendiaproduct_encry
CREATE TABLE IF NOT EXISTS `viendiaproduct_encry` (
  `Id` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `BrandName` varchar(500) NOT NULL,
  `Sizes1` varchar(50) NOT NULL,
  `Sizes2` varchar(50) NOT NULL,
  `Sizes3` varchar(50) NOT NULL,
  `Sizes4` varchar(50) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Currency` varchar(500) NOT NULL,
  `MRP` varchar(500) NOT NULL,
  `Discont` varchar(50) NOT NULL,
  `SellPrice` varchar(500) NOT NULL,
  `WearType` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL,
  `Sleeves` varchar(500) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Quantity` varchar(500) NOT NULL,
  `TotQun` varchar(50) DEFAULT NULL,
  `ExpDate` varchar(500) NOT NULL,
  `UpdDate` varchar(500) NOT NULL,
  `ClothName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
