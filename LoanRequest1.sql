-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2016 at 02:07 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `LoanRequest1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `userId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT '',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `roleId` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`userId`, `username`, `password`, `firstName`, `lastName`, `sex`, `tel`, `email`, `roleId`, `created`, `createBy`, `updated`, `updateBy`, `status`) VALUES
(1, 'sumet', 'sumet', 'Beeby', 'Thailand', 'Male', '0828553301', 'sothirit.w@gmail.com', 1, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', '1'),
(2, 'sumat', 'sumat', 'Jojo', 'Thailand', 'Male', '0882345467', 'jojo@gmail.com', 2, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approveloan`
--

CREATE TABLE `tbl_approveloan` (
  `approve_id` int(11) UNSIGNED NOT NULL,
  `loanreq_id` int(11) DEFAULT NULL,
  `loanbankreq_id` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `judgment` varchar(50) DEFAULT NULL,
  `approvedamount` int(11) DEFAULT NULL,
  `installlments` int(11) DEFAULT NULL,
  `timerepayment` varchar(2) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `updateby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankrequest`
--

CREATE TABLE `tbl_bankrequest` (
  `loanbankreq_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสธนาคาร',
  `loanreq_id` int(11) DEFAULT NULL COMMENT 'รหัสสินเชื่อ',
  `banktype` varchar(50) DEFAULT NULL COMMENT 'ชื่อธนาคาร',
  `createdd` timestamp NULL DEFAULT NULL COMMENT 'วันที่สร้าง',
  `createdby` varchar(50) DEFAULT NULL COMMENT 'ชื่อผุ้สร้าง',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'วันที่แก้ไข',
  `updateby` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้แก้ไข'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bureau`
--

CREATE TABLE `tbl_bureau` (
  `bureau_id` int(11) UNSIGNED NOT NULL COMMENT 'ลำดับ',
  `citizen_id` varchar(13) DEFAULT NULL COMMENT 'เลขประจำตัว',
  `lname` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `fname` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `birthdate` date DEFAULT NULL COMMENT 'วันเดือนปีเกิด',
  `nationality` varchar(10) DEFAULT NULL COMMENT 'สัญชาติ',
  `sex` varchar(10) DEFAULT NULL COMMENT 'เพศ',
  `marital_status` varchar(10) DEFAULT NULL COMMENT 'สถานะสมรส',
  `address` varchar(150) DEFAULT NULL COMMENT 'ที่อยู่',
  `total_ac` int(2) DEFAULT NULL COMMENT 'บัญชีรวมทั้งสิ้น',
  `ac_excrcise` int(2) DEFAULT NULL COMMENT 'จำนวนบัญชีที่ใช้สิทธิ',
  `ac_status` varchar(10) DEFAULT NULL COMMENT 'สถานะบัญชี',
  `created` timestamp NULL DEFAULT NULL COMMENT 'วันที่สร้าง',
  `createdby` varchar(50) DEFAULT NULL COMMENT 'ผู้สร้าง',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'วันที่แก้ไข',
  `updateby` varchar(50) DEFAULT NULL COMMENT 'ผู้แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lov`
--

CREATE TABLE `tbl_lov` (
  `lovId` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `display` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `value1` varchar(100) DEFAULT NULL,
  `value2` varchar(100) DEFAULT NULL,
  `value3` varchar(100) DEFAULT NULL,
  `value4` varchar(100) DEFAULT NULL,
  `value5` varchar(100) DEFAULT NULL,
  `value6` varchar(100) DEFAULT NULL,
  `value7` varchar(100) DEFAULT NULL,
  `value8` varchar(100) DEFAULT NULL,
  `value9` varchar(100) DEFAULT NULL,
  `value10` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `seqNo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_lov`
--

INSERT INTO `tbl_lov` (`lovId`, `type`, `name`, `display`, `value`, `value1`, `value2`, `value3`, `value4`, `value5`, `value6`, `value7`, `value8`, `value9`, `value10`, `created`, `createBy`, `updated`, `updateBy`, `status`, `seqNo`) VALUES
(1, 'titletype', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_main_menu`
--

CREATE TABLE `tbl_main_menu` (
  `mainMenuId` int(11) NOT NULL,
  `menuName` varchar(100) NOT NULL DEFAULT '',
  `action` varchar(100) DEFAULT NULL,
  `groupMenu` varchar(1) DEFAULT '1' COMMENT '1 = 1 menu, 2 = groupmenu',
  `todoMethod` varchar(100) DEFAULT NULL,
  `onclick` varchar(100) DEFAULT NULL,
  `cssclass` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `seqNo` int(11) DEFAULT '0',
  `levelMenu` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_main_menu`
--

INSERT INTO `tbl_main_menu` (`mainMenuId`, `menuName`, `action`, `groupMenu`, `todoMethod`, `onclick`, `cssclass`, `created`, `createBy`, `updated`, `updateBy`, `seqNo`, `levelMenu`) VALUES
(1, 'ตั้งค่า', '', '2', '', NULL, 'dropdown', '2016-06-12 15:54:18', 'BrassZero', '2016-06-12 15:54:18', 'BeebyThailand', 5, '2'),
(2, 'หน้าแรก', 'PageAction.do', '1', 'gotoPageHome', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 1, '1'),
(3, 'สมัครสมาชิก', 'PageAction.do', '1', 'gotoPageRegister', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 2, '1'),
(4, 'เข้าสู่ระบบ', 'PageAction.do', '1', 'gotoPageLogin', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 4, '1'),
(7, 'เกี่ยวกับเรา', '#', '1', 'gotoPageBootstrapForm', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 5, '1'),
(10, 'ขอสินเชื่อ', 'PageAction.do', '1', 'gotoPageDetleRequest', NULL, NULL, '2016-11-22 06:40:32', 'BrassZero', '2016-11-22 06:40:32', 'BrassZero', 3, '1'),
(11, 'ขอสินเชื่อ', 'PageAction.do', '1', 'gotoPageLoanRequest', NULL, NULL, '2016-11-22 06:40:32', 'BrassZero', '2016-11-22 06:40:32', 'BrassZero', 3, '2'),
(12, 'จัดการสินเชื่อ', 'PageAction.do', '2', 'gotoPageManagermentLoan', NULL, 'dropdown', '2016-11-22 06:40:32', 'BrassZero', '2016-11-22 06:40:32', 'BrassZero', 1, '2'),
(13, 'จัดการผู้ใช้', 'PageAction.do', '1', 'gotoPageAdminManagermentProfile', NULL, NULL, '2016-11-22 06:40:32', 'BrassZero', '2016-11-22 06:40:32', 'BrassZero', 2, '2'),
(15, 'ตรวจสอบการอนุมัติ', 'PageAction.do', '1', 'gotoPageAdminManagermentLoanrequest', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2'),
(16, 'เงื่อนไขการขอกู้', '#', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_requestloan`
--

CREATE TABLE `tbl_requestloan` (
  `loanreq_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสสินเชื่อ',
  `citizen_id` varchar(13) DEFAULT NULL COMMENT 'เลขบัตรประชาชน',
  `title_type` varchar(10) DEFAULT NULL COMMENT 'คำนำหน้า',
  `firstname` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `lastname` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `birthdate` varchar(10) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `statustype` varchar(10) DEFAULT NULL COMMENT 'สถานะ',
  `mobile` varchar(10) DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `email` varchar(50) DEFAULT NULL COMMENT 'อีเมล์',
  `addressregistration` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `addresscurrent` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่ทะเบียนบ้าน',
  `addresssenddoc` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่จัดส่งเอกสาร',
  `jobtype` varchar(100) DEFAULT NULL COMMENT 'อาชีพ',
  `hometype` varchar(100) DEFAULT NULL COMMENT 'ประเภทที่อยู่อาศัย',
  `tradingprice` double DEFAULT NULL COMMENT 'ราคาชื่อขาย',
  `creditloan` double DEFAULT NULL COMMENT 'วงเงินชินเชื่อที่ขอกู้',
  `lncome_per_month` int(2) DEFAULT NULL COMMENT 'ระยะเวลาที่ขอกู้',
  `periodloan` double DEFAULT NULL COMMENT 'รายได้ประจำต่อเดือน',
  `netprofit` double DEFAULT NULL COMMENT 'รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน',
  `copyidcard` varchar(250) DEFAULT NULL COMMENT 'สำเนาบัตรประจำตัวประชาชน',
  `copylicenses` varchar(250) DEFAULT NULL COMMENT 'สำเนาใบอนุญาตประกอบวิชาชีพ (กรณีประกอบวิชาชีพเฉพาะ)',
  `copydocumenthome` varchar(250) DEFAULT '' COMMENT 'สำเนาทะเบียนบ้าน',
  `copymarriage` varchar(250) DEFAULT NULL COMMENT 'สำเนาทะเบียนสมรส/ใบหย่า',
  `copy_rename` varchar(250) DEFAULT NULL COMMENT 'ใบเปลี่ยนชื่อ-สกุล (ทุกใบ) ',
  `salary_slip` varchar(250) DEFAULT 'null' COMMENT 'สลิปเงินเดือน',
  `copy_bankaccount` varchar(250) DEFAULT 'null' COMMENT 'สำเนาบัญชีธนาคาร',
  `banktype` varchar(250) DEFAULT '' COMMENT 'ชื่อธนาคาร',
  `loanstatustype` varchar(50) DEFAULT NULL COMMENT 'สถานะขขอสินเชื่อ',
  `createby` varchar(100) DEFAULT NULL COMMENT 'ชื่อผู้สร้าง',
  `created` timestamp NULL DEFAULT NULL COMMENT 'วันที่สร้าง',
  `updateby` varchar(100) DEFAULT NULL COMMENT 'ชื่อผู้แก้ไข',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_requestloan`
--

INSERT INTO `tbl_requestloan` (`loanreq_id`, `citizen_id`, `title_type`, `firstname`, `lastname`, `birthdate`, `age`, `nationality`, `statustype`, `mobile`, `email`, `addressregistration`, `addresscurrent`, `addresssenddoc`, `jobtype`, `hometype`, `tradingprice`, `creditloan`, `lncome_per_month`, `periodloan`, `netprofit`, `copyidcard`, `copylicenses`, `copydocumenthome`, `copymarriage`, `copy_rename`, `salary_slip`, `copy_bankaccount`, `banktype`, `loanstatustype`, `createby`, `created`, `updateby`, `updated`) VALUES
(16, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, 'ไทย', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', 'โปรแกรมเมอร์', 'สินเชื่อบ้านเดี่ยว', 199999999, 2342342342, 25, 500000000, 500000000, 'a.png', 'b.png', 'c.jpeg', 'd.png', 'e.png', 'images.jpeg', 'uu.jpg', 'กรุงไทย|ธนชาติ|ทหารไทย|null|null|null|null|กรุงเทพ', 'รอตรวจสอบ', 'สุเมธ', '2016-12-04 15:55:20', 'สุเมธ', '2016-12-04 15:55:20'),
(17, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'b.png', 'a.png', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'รอตรวจสอบ', 'สุเมธ', '2016-12-05 12:17:23', 'สุเมธ', '2016-12-05 12:17:23'),
(18, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'รอตรวจสอบ', 'สุเมธ', '2016-12-06 13:52:38', 'สุเมธ', '2016-12-06 13:52:38'),
(19, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'เอกสารไม่ผ่าน', 'สุเมธ', '2016-12-06 13:54:26', 'สุเมธ', '2016-12-06 13:54:26'),
(20, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'รอตรวจสอบ', 'สุเมธ', '2016-12-06 13:55:45', 'สุเมธ', '2016-12-06 13:55:45'),
(21, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'รอตรวจสอบ', 'สุเมธ', '2016-12-06 13:56:26', 'สุเมธ', '2016-12-06 13:56:26'),
(22, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'รออนุมัติ', 'สุเมธ', '2016-12-06 13:58:19', 'สุเมธ', '2016-12-06 13:58:19'),
(23, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'ไม่อนุมัติ', 'สุเมธ', '2016-12-06 14:01:27', 'สุเมธ', '2016-12-06 14:01:27'),
(24, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'อนุมัติ', 'สุเมธ', '2016-12-06 14:18:24', 'สุเมธ', '2016-12-06 14:18:24'),
(25, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'รอตวรจสอบ', 'สุเมธ', '2016-12-07 06:25:43', 'สุเมธ', '2016-12-07 06:25:43'),
(26, '1409800246487', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', '', '', 0, 0, 0, 0, 0, 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'nofile', 'null|null|null|null|null|null|null|null', 'รอตวรจสอบ', 'สุเมธ', '2016-12-07 06:33:42', 'สุเมธ', '2016-12-07 06:33:42'),
(27, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 05:16:52', 'สุเมธ', '2016-12-08 05:16:52'),
(28, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 06:01:39', 'สุเมธ', '2016-12-08 06:01:39'),
(29, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 06:29:16', 'สุเมธ', '2016-12-08 06:29:16'),
(30, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 06:40:14', 'สุเมธ', '2016-12-08 06:40:14'),
(31, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 06:40:18', 'สุเมธ', '2016-12-08 06:40:18'),
(32, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 06:40:22', 'สุเมธ', '2016-12-08 06:40:22'),
(33, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 06:42:34', 'สุเมธ', '2016-12-08 06:42:34'),
(34, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', '083333333', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', NULL, 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 06:42:52', 'สุเมธ', '2016-12-08 06:42:52'),
(35, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 'null|null|null|null|null|null|null|null', 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 10:34:33', 'สุเมธ', '2016-12-08 10:34:33'),
(36, '1409800246487', 'นาย', 'สุเมธ', NULL, '2016-11-10', 22, '', 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', ' มหาสารคาม', ' มหาสารคาม', NULL, '', 0, 0, 0, 0, 0, 'a.png', 'b.png', '', '', '', '', '', 'กรุงเทพ|กรุงไทย|ธนชาติ|ทหารไทย|ไทยพาณิชย์|กรุงศรีอยุธยา|ออมสิน|กสิกรไทย', 'รอตวรจสอบ', 'สุเมธ', '2016-12-08 12:02:26', 'สุเมธ', '2016-12-08 12:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(100) NOT NULL DEFAULT '',
  `detail` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`roleId`, `roleName`, `detail`, `created`, `createBy`, `updated`, `updateBy`) VALUES
(1, 'Administration', 'ผู้ดูแลระบบ', '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand'),
(2, 'User', 'ผู้ใช้ทั่วไป', '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_group_menu`
--

CREATE TABLE `tbl_role_group_menu` (
  `roleId` int(11) NOT NULL DEFAULT '0',
  `mainMenuId` int(11) NOT NULL DEFAULT '0',
  `seqNo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_role_group_menu`
--

INSERT INTO `tbl_role_group_menu` (`roleId`, `mainMenuId`, `seqNo`) VALUES
(1, 1, 5),
(1, 2, 1),
(1, 7, 4),
(1, 12, 2),
(1, 13, 3),
(2, 1, 5),
(2, 2, 1),
(2, 7, 4),
(2, 11, 2),
(2, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `subMenuId` int(11) NOT NULL,
  `mainMenuId` int(11) NOT NULL DEFAULT '0',
  `menuName` varchar(100) NOT NULL DEFAULT '',
  `action` varchar(100) DEFAULT NULL,
  `todoMethod` varchar(100) DEFAULT NULL,
  `onclick` varchar(100) DEFAULT NULL,
  `cssclass` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `seqNo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`subMenuId`, `mainMenuId`, `menuName`, `action`, `todoMethod`, `onclick`, `cssclass`, `created`, `createBy`, `updated`, `updateBy`, `seqNo`) VALUES
(1, 1, 'แก้ไขข้อมูลส่วนตัว', 'PageAction.do', 'gotoPageProfile', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 1),
(2, 1, 'เปลียนระหัสผ่าน', 'ChahgewdAction.do', 'gotoPageChangePassword', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 2),
(3, 1, 'ออกจากระบบ', 'AuthenAuthorizeAction.do', 'logout', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 3),
(4, 12, 'สินเชื่อรออนุมัติ', 'PageAction.do', 'gotoPageManagermentR', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(5, 12, 'สินเชื่อที่ผ่านการอนุมัติ', 'PageAction.do', 'gotoPageManagermentAp', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 12, 'รอตรวจสอบ', 'PageAction.do', 'gotoPageManagermentLoan', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(7, 12, 'สินเชื่อไม่ผ่านการอนุมัติ', 'PageAction.do', 'gotoPageManagermentNo', NULL, NULL, NULL, NULL, NULL, NULL, 5),
(8, 12, 'แก้ไขเอกสาร', 'PageAction.do', 'gotoPageManagermentNofile', NULL, NULL, NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `citizen_id` varchar(13) NOT NULL DEFAULT '' COMMENT 'เลขบัตรประจำตัวประชาชน',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT 'ชื่อเข้าสู่ระบบ',
  `password` varchar(50) DEFAULT '' COMMENT 'รหัสผ่าน',
  `title_type` varchar(20) DEFAULT NULL COMMENT 'ประเภทคำนำหน้า',
  `firstName` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `lastName` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `birthdate` varchar(20) DEFAULT NULL COMMENT 'วัดเดือนปีเกิด',
  `age` int(3) DEFAULT NULL COMMENT 'อายุ',
  `statustype` varchar(30) DEFAULT NULL COMMENT 'สถานะ',
  `mobile` varchar(10) DEFAULT NULL COMMENT 'เบอร์โทร',
  `email` varchar(100) DEFAULT NULL COMMENT 'อีเมล์',
  `addressregistration` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่ตามทะเบียนบ้าน',
  `addresscurrent` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `addresssenddoc` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่จัดส่งเอกสาร',
  `roleId` int(11) NOT NULL DEFAULT '0' COMMENT 'รหัสสิทธิ',
  `created` timestamp NULL DEFAULT NULL COMMENT 'วันที่สร้าง',
  `createBy` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้สร้าง',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'วันที่แก้ไข',
  `updateBy` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้แก้ไข',
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `citizen_id`, `username`, `password`, `title_type`, `firstName`, `lastName`, `birthdate`, `age`, `statustype`, `mobile`, `email`, `addressregistration`, `addresscurrent`, `addresssenddoc`, `roleId`, `created`, `createBy`, `updated`, `updateBy`, `status`) VALUES
(60, '1111111111111', 'admin', 'admin', 'นาย', 'สุเมธ', 'แก่นแก้ว', '1994-03-10', 22, 'โสด', '0833412924', 'sumet68@hotmail.com', 'หนองสองห้อง\r\nขอนแก่น', 'หนองสองห้อง\r\nขอนแก่น', 'หนองสองห้อง\r\nขอนแก่น', 1, '2016-06-12 15:54:18', 'สุเมธ', '2016-06-12 15:54:18', 'สุเมธ', '1'),
(58, '1321312391287', '', '', 'นางสาว', 'สุเมธ', 'แก่นแก้ว', '1994-03-10', 22, 'โสด', '0833412924', 'sumet68@hotmail.com', 'มหาสารคาม', 'มหาสารคาม', 'มหาสารคาม', 2, '2016-11-25 04:52:34', 'à¸«à¸à¸à¸«à¸à¸', '2016-11-30 05:25:02', 'สุเมธ', '1'),
(1, '1409800246422', 'sumet', '1234', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2537-03-10', NULL, 'โสด', '0833412924', 'sumet68@hotmail.com', 'rmu', 'rmu', 'rmu', 1, '2016-06-12 15:54:18', 'brassziro', '2016-06-12 15:54:18', 'brassziro', '1'),
(59, '140980024644', 'user', 'user', 'นาย', 'สุเมธ', 'แก่นแก้ว', '1994-01-10', 22, 'โสด', '0833412924', 'sumet678@gmail.com', 'หนองสองห้อง\r\nขอนแก่น', 'หนองสองห้อง\r\nขอนแก่น', 'หนองสองห้อง\r\nขอนแก่น', 2, '2016-11-26 15:07:56', 'สุเมธ', '2016-11-26 15:07:56', 'สุเมธ', '1'),
(2, '1409800246487', 'sumet', '12345', 'นาย', 'สุเมธ', 'แก่นแก้ว', '2016-11-10', 22, 'หย่าหร้าง', '083333333', 'sumet@hotmail.com', 'มหาสารคาม', 'มหาสารคาม', 'มหาสารคาม', 2, '2016-06-12 15:54:18', 'brasszero', '2016-11-30 05:41:05', 'สุเมธ', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_approveloan`
--
ALTER TABLE `tbl_approveloan`
  ADD PRIMARY KEY (`approve_id`);

--
-- Indexes for table `tbl_bankrequest`
--
ALTER TABLE `tbl_bankrequest`
  ADD PRIMARY KEY (`loanbankreq_id`);

--
-- Indexes for table `tbl_bureau`
--
ALTER TABLE `tbl_bureau`
  ADD PRIMARY KEY (`bureau_id`);

--
-- Indexes for table `tbl_lov`
--
ALTER TABLE `tbl_lov`
  ADD PRIMARY KEY (`lovId`);

--
-- Indexes for table `tbl_main_menu`
--
ALTER TABLE `tbl_main_menu`
  ADD PRIMARY KEY (`mainMenuId`);

--
-- Indexes for table `tbl_requestloan`
--
ALTER TABLE `tbl_requestloan`
  ADD PRIMARY KEY (`loanreq_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_role_group_menu`
--
ALTER TABLE `tbl_role_group_menu`
  ADD PRIMARY KEY (`roleId`,`mainMenuId`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`subMenuId`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`citizen_id`),
  ADD KEY `userid` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_approveloan`
--
ALTER TABLE `tbl_approveloan`
  MODIFY `approve_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_bankrequest`
--
ALTER TABLE `tbl_bankrequest`
  MODIFY `loanbankreq_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'รหัสธนาคาร';
--
-- AUTO_INCREMENT for table `tbl_bureau`
--
ALTER TABLE `tbl_bureau`
  MODIFY `bureau_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ';
--
-- AUTO_INCREMENT for table `tbl_lov`
--
ALTER TABLE `tbl_lov`
  MODIFY `lovId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_main_menu`
--
ALTER TABLE `tbl_main_menu`
  MODIFY `mainMenuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_requestloan`
--
ALTER TABLE `tbl_requestloan`
  MODIFY `loanreq_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินเชื่อ', AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  MODIFY `subMenuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
