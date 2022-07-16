-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 09:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin No.` text NOT NULL,
  `Password` text NOT NULL,
  `id` int(11) NOT NULL,
  `school` text NOT NULL,
  `website` text NOT NULL,
  `alias` text NOT NULL,
  `adm` text NOT NULL,
  `tel` text NOT NULL,
  `addr` text NOT NULL,
  `tagline` text NOT NULL,
  `blksmsname` text NOT NULL,
  `stud` text NOT NULL,
  `admn` text NOT NULL,
  `staf` text NOT NULL,
  `emal` text NOT NULL,
  `session` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin No.`, `Password`, `id`, `school`, `website`, `alias`, `adm`, `tel`, `addr`, `tagline`, `blksmsname`, `stud`, `admn`, `staf`, `emal`, `session`) VALUES
('admin', '8f96e4f5fcff936298f13a4b8db8a242', 1, 'De-Guide Light School', 'https://deguidelightschool.com.ng', 'De-Guide', 'DGLS', '+234(0) 806 429 1917', 'Iyana Iyesi, Ota, Ogun State', 'Rasising Future leaders', 'DeGuide', 'https://student.deguidelightschool.com.ng', 'https://admin.deguidelightschool.com.ng', 'https://staff.deguidelightschool.com.ng', 'info@deguidelightschool.com.ng', '2021/2022');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `file` text NOT NULL,
  `date` datetime NOT NULL,
  `class` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `entrance`
--

CREATE TABLE `entrance` (
  `sn` int(11) NOT NULL,
  `id` text NOT NULL,
  `entyr` text NOT NULL,
  `ent_id` text NOT NULL,
  `email` text NOT NULL,
  `surname` text NOT NULL,
  `otherName` text NOT NULL,
  `lastName` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL,
  `disablity` text NOT NULL,
  `parent` text NOT NULL,
  `parent_rel` text NOT NULL,
  `parent_occ` text NOT NULL,
  `parent_res` text NOT NULL,
  `parent_tel` text NOT NULL,
  `parent_tel2` text NOT NULL,
  `parent_offadd1` text NOT NULL,
  `parent_offadd2` text NOT NULL,
  `schlst` text NOT NULL,
  `classcomp` text NOT NULL,
  `Active` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `id` int(11) NOT NULL,
  `term` text NOT NULL,
  `class` text NOT NULL,
  `admno` text NOT NULL,
  `attendance` text NOT NULL,
  `punctuality` text NOT NULL,
  `honesty` int(11) NOT NULL,
  `neatness` text NOT NULL,
  `nonaggr` text NOT NULL,
  `leader` text NOT NULL,
  `principal` text NOT NULL,
  `mrkpos` text NOT NULL,
  `mrkobt` text NOT NULL,
  `perc` text NOT NULL,
  `totgra` text NOT NULL,
  `ses` text NOT NULL,
  `resm` date NOT NULL,
  `tess` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `sn` text NOT NULL,
  `class` text NOT NULL,
  `admno` text NOT NULL,
  `name` text NOT NULL,
  `subject` text NOT NULL,
  `test` text NOT NULL,
  `ass` text NOT NULL,
  `classex` text NOT NULL,
  `exam` text NOT NULL,
  `total` text NOT NULL,
  `mid` text NOT NULL,
  `grade` text NOT NULL,
  `remark` text NOT NULL,
  `term` text NOT NULL,
  `ses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `admno` text NOT NULL,
  `class` text NOT NULL,
  `subject` text NOT NULL,
  `fscore` text NOT NULL,
  `sndscore` text NOT NULL,
  `tscore` text NOT NULL,
  `id` int(11) NOT NULL,
  `ses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `id` int(11) NOT NULL,
  `identifier` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`id`, `identifier`) VALUES
(1, '184da1856d2c36dc9e95cff7582a07dc');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `ses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `ses`) VALUES
(6, '2015/2016'),
(7, '2016/2017'),
(8, '2017/2018'),
(9, '2018/2019'),
(10, '2020/2021'),
(11, '2021/2022');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sn` text NOT NULL,
  `id` int(11) NOT NULL,
  `staffcode` text NOT NULL,
  `staffno` text NOT NULL,
  `staffid` text NOT NULL,
  `qrid` text NOT NULL,
  `title` text NOT NULL,
  `surname` text NOT NULL,
  `firstname` text NOT NULL,
  `othername` text NOT NULL,
  `date` text NOT NULL,
  `month` text NOT NULL,
  `year` text NOT NULL,
  `gender` text NOT NULL,
  `tertiary` text NOT NULL,
  `discipline` text NOT NULL,
  `category` text NOT NULL,
  `staffpost` text NOT NULL,
  `staffclass` text NOT NULL,
  `subject` text NOT NULL,
  `salary` text NOT NULL,
  `transport` text NOT NULL,
  `medical` text NOT NULL,
  `gross` text NOT NULL,
  `datereg` datetime NOT NULL,
  `qual` text NOT NULL,
  `marital` text NOT NULL,
  `nok` text NOT NULL,
  `relation` text NOT NULL,
  `nokocc` text NOT NULL,
  `radd` text NOT NULL,
  `nokradd` text NOT NULL,
  `tel1` text NOT NULL,
  `tel2` text NOT NULL,
  `passport` text NOT NULL,
  `qrcode` text NOT NULL,
  `admletter` text NOT NULL,
  `idcard` text NOT NULL,
  `active` text NOT NULL,
  `bday` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sn`, `id`, `staffcode`, `staffno`, `staffid`, `qrid`, `title`, `surname`, `firstname`, `othername`, `date`, `month`, `year`, `gender`, `tertiary`, `discipline`, `category`, `staffpost`, `staffclass`, `subject`, `salary`, `transport`, `medical`, `gross`, `datereg`, `qual`, `marital`, `nok`, `relation`, `nokocc`, `radd`, `nokradd`, `tel1`, `tel2`, `passport`, `qrcode`, `admletter`, `idcard`, `active`, `bday`) VALUES
('', 22, '', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', 'DMSSTAFF20211001.pdf', '', '9', '0'),
('1', 30, 'DGLS/STAFF/2022/', '34', 'DGLS/STAFF/2022/34', '98af7430818f5d46296f8758ad2ca59e', 'Mrs.', 'Ayodele', 'Esther ', 'Konyinsola', '28', '07', '2022', 'Female', 'Osun state college of education ', 'Economics and social studies ', 'Teaching Staff', 'Class teacher', 'Kindergarten', 'All subjects ', '10000', '0', '0', '10000', '2022-07-13 09:46:12', 'Degree', 'Married', 'Ayodele bright', 'Family Member', 'Student ', ' 5, Outstanding estate water water bus stop ilasa road iyesi ota.', 'Same as above ', '07040344434', '08102644495', '16577055777646314137866873133916.jpg', '', '', '', '0', ''),
('1', 31, 'DGLS/STAFF/2022/', '5426', 'DGLS/STAFF/2022/5426', '2b2bfdc9ff44e2d336ea637e48dc036e', 'Mrs.', 'Ayodele ', 'Esther ', 'Konyinsola', '28', '05', '2022', 'Female', 'Osun state college of education ', 'Economics and social studies ', 'Teaching Staff', 'Class teacher', 'Nursery 2', 'All subjects ', '10000', '0', '0', '10000', '2022-07-13 09:50:52', 'Degree', 'Married', 'Ayodele bright', 'Family Member', 'Student ', '5 Outstanding estate water water bus stop ilasa road iyesi ota Ogun state.', 'Same as above', '2347040344434', '2348102644495', '1657705857309130503200738546065.jpg', '', '', '', '0', ''),
('1', 32, 'DGLS/STAFF/2022/', '8884', 'DGLS/STAFF/2022/8884', '58a381b893e9cc142113c75fc548efed', 'Mr.', 'Okoroafor ', 'Ndubuisi', 'Andrew', '07', '10', '2022', 'Male', 'Bells University of Technology, Ota', 'Mechanical Engineering ', 'Teaching Staff', 'Subject Teacher', 'S.S.S 2', 'Physics', '20000', '0', '0', '20000', '2022-07-13 10:03:42', 'Degree', 'Single', 'Nelson Okoroafor ', 'Nelson Okoroafor', 'Trader and clergy', '1 Kaz Was Avenue, Ijaba , Iyesi ota ', '12 Wokeocha street, Port Harcourt ', '08068578114', '07039734335', '16577066998056302456644607748049.jpg', '', '', '', '0', ''),
('1', 34, 'DGLS/STAFF/2022/', '3659', 'DGLS/STAFF/2022/3659', '9f58be2c01599840bd95317aa09a3925', 'Mr.', 'Owolabi', 'Ayobami', 'Emmanuel', '29', '03', '2022', 'Male', 'Headway Comprehensive College', 'Computer science', 'Teaching Staff', 'Class teacher', 'Grade 4', 'All subjects ', '16000', '0', '0', '16000', '2022-07-13 11:00:08', 'SSCE', 'Single', 'Mr and Mrs Owolabi', 'Parent', 'Business ', '6 Tejumade street, Victory Estate, Egan road', '6 Tejumade street, Victory Estate Egan road ', '08133623613', '08023010349', '16577100112082478262189883024891.jpg', '', '', '', '0', ''),
('1', 37, 'DGLS/STAFF/2022/', '7280', 'DGLS/STAFF/2022/7280', 'ead78b410ed4cea955836b87eac0a21a', 'Mrs.', 'Bolarinwa ', 'Folashade ', 'Olufunke', '22', '04', '2022', 'Female', 'Royal city college of education ', 'English', 'Teaching Staff', 'Subject teacher', 'S.S.S 1', 'Government ', '15000', '0', '0', '15000', '2022-07-13 11:47:19', 'NCE', 'Married', 'Mr. M. O. Bolarinwa', 'Mr. M. O. Bolarinwa', 'Clergy', '11, victory close, promise estate, iyesi - Ota, Ogun state.', '11, victory close, promise estate, iyesi - Ota, Ogun state', '08178366448', '08163875811', '16577985487533228492384785727269.jpg', '', '', '', '0', ''),
('1', 40, 'DGLS/STAFF/2022/', '6161', 'DGLS/STAFF/2022/6161', '5b9552b11b9151a7c6acbf42123815ca', 'Mrs.', 'Aimienwanwu', 'Iyesogie', 'Supreme', '10', '08', '2022', 'Male', 'Western Delta University ', 'Economics', 'Teaching Staff', 'Subject teacher', 'S.S.S 1', 'Biology and Economics ', '25000', '0', '0', '25000', '2022-07-13 12:19:34', 'Degree', 'Single', 'Mr Success', 'Mr Success', 'Educator', '34, Fela hotel Street, off Egan road, iyesi-Ota. Ogun state ', '34, Fela hotel Street, off Egan road, iyesi-ota. Ogun state', '08029885883', '08068578114', '16577147793395255426811879454747.jpg', '', '', '', '0', ''),
('1', 42, 'DGLS/STAFF/2022/', '8470', 'DGLS/STAFF/2022/8470', '8c238536bbb5d02adcb3a0dbeed22711', 'Mr.', 'Oni', 'Taiwo', 'Sunday ', '06', '06', '2022', 'Male', 'Ekiti State University (Part-Time)', 'Yoruba Language ', 'Teaching Staff', 'Subject teacher', 'J.S.S 1', 'Yoruba Language ', '15000', '0', '0', '15000', '2022-07-14 09:53:43', 'Degree', 'Single', 'Miss Damilola', 'Wife', 'Educator', 'Surelere Estate, Ilasa road, iyesi ota', 'No. 47 Hamza Babylonia Street, Egan road, Harmony Estate', '08067074218', '07034618113', '165779249431967398191576289890.jpg', '', '', '', '0', ''),
('1', 47, 'DGLS/STAFF/2022/', '2640', 'DGLS/STAFF/2022/2640', '47175b82c60682ab3e695ebf736bc4f0', 'Mr.', 'Oamen', 'Samuel', 'Olajide', '04', '05', '2022', 'Male', 'Kwarastate polytechnic', 'Statistics and Mathematics', 'Teaching Staff', 'Subject teacher', 'S.S.S 1', 'Mathematics and further mathematics', '20000', '0', '0', '20000', '2022-07-14 10:35:17', 'HND', 'Single', 'Adeoye kehinde', 'Family Member', 'Educator', '23 osholase Baba Monday  street,iyana iyesi Ota ogun state', '23 osholase Baba Monday  street,iyana iyesi Ota ogun state', '09099336982', '08122091802', '16577949393965815093542124720565.jpg', '', '', '', '0', ''),
('1', 49, 'DGLS/STAFF/2022/', '7631', 'DGLS/STAFF/2022/7631', 'e0538ad4fab7d3250f1bd875365dc6aa', 'Miss', 'Bammeke', 'Oluwadamilola', 'Dorcas', '06', '07', '2022', 'Female', 'Ekiti State University (Part-Time)', 'English language', 'Teaching Staff', 'Subject teacher', 'J.S.S 1', 'Social studies ', '15000', '0', '0', '15000', '2022-07-14 10:55:39', 'Degree', 'Single', 'Mr bammeke', 'Dad', 'Engineer ', 'No 47 Hamzat babalola Street Egan road ', 'No. 47 Hamzat Babalola Street, Egan road, Harmony Estate', '07034618113', '08028944277', '16577961501322230647840710580068.jpg', '', '', '', '0', ''),
('1', 55, 'DGLS/STAFF/2022/', '9224', 'DGLS/STAFF/2022/9224', 'fad39943566f8e368da1447b08b9c931', 'Miss', 'Oluwayemi ', 'Favour', 'Deborah', '07', '02', '2022', 'Female', 'Fulfilment international school', 'Economics and social studies ', 'Teaching Staff', 'Class teacher', 'Grade 3', 'All subjects ', '10000', '0', '0', '10000', '2022-07-14 11:31:27', 'SSCE', 'Single', 'Mrs Oluwayemi ', 'Mum', 'Teaching', '10, favour of God street, iyesi ota Ogun state', '10, favour of God street, iyesi ota Ogun state', '08064908876', '07035375596', '1657798314192246671770733682802.jpg', '', '', '', '0', ''),
('1', 58, 'DGLS/STAFF/2022/', '1009', 'DGLS/STAFF/2022/1009', '1607c77d8d30cf5529e9ba912a158f00', 'Mrs.', 'Oluwayemi', 'Christianah', 'Omowunmi', '25', '03', '2022', 'Female', 'Adeniran Ogunsanya college of education', 'Business Education ', 'Teaching Staff', 'Class Teacher', 'J.S.S 1', 'Civic Education', '20000', '0', '0', '20000', '2022-07-14 12:12:49', 'NCE', 'Single', 'Miss. Favor Oluwayemi ', 'Family Member', 'Student', '10, favor of God Street, Baba Esther Area, iyesi -Ota, Ogun state', '10, favor of God Street, Baba Esther Area, iyesi-ota, Ogun state ', '07035375596', '08064908876', '16578007752127315208609212892079.jpg', '', '', '', '0', ''),
('1', 59, 'DGLS/STAFF/2022/', '7899', 'DGLS/STAFF/2022/7899', 'e08b40fc7c2fea35f851ddf622aefe08', 'Mr.', 'Oshoja', 'Olamilekan', 'Abraham ', '29', '10', '2022', 'Male', 'Moshood abiola polytechnic (mapoly)', 'Business administration and management ', 'Teaching Staff', 'Class Teacher', 'S.S.S 2', 'Financial accounting', '20000', '0', '0', '20000', '2022-07-14 12:36:02', 'HND', 'Single', 'Mr opeyemi', 'Family Member', 'Educator', 'No 29 ifelodun Street off ilasa road,iyana iyesi otta, Ogun state ', 'No 29 ifelodun Street off ilasa road,iyana iyesi otta, Ogun state', '07067138787', '08039229128', '16578021720582637638786041912572.jpg', '', '', '', '0', ''),
('1', 60, 'DGLS/STAFF/2022/', '5381', 'DGLS/STAFF/2022/5381', '81472d425845d56b96446f686ce90c47', 'Mr.', 'Afolabi', 'Olusola', 'Oyebamiji', '04', '03', '2022', 'Male', 'University of ilorin ', 'Mathematics ', 'Teaching Staff', 'Class teacher ', 'S.S.S 1', 'Agriculture ', '20000', '0', '0', '20000', '2022-07-14 12:44:48', 'Degree', 'Married', 'Mrs Temitope Afolabi', 'Wife', 'Teaching ', '3, progress avenue, Adebisi Ilasa road, iyesi-Ota. Ogun state ', '3, progress avenue, Adebisi ilasa road, iyana-ota. Ogun state', '07033465476', '08053092206', '16578026977335963587882748738697.jpg', '', '', '', '0', ''),
('1', 61, 'DGLS/STAFF/2022/', '1207', 'DGLS/STAFF/2022/1207', 'e335aec14ec85fdc52eb954c5fc027fa', 'Mrs.', 'DARE', 'Adenike ', 'Dorcas', '08', '08', '2022', 'Female', 'Olabisi onabanjo university', 'Cooperative and business management ', 'Teaching Staff', 'Class teacher ', 'J.S.S 3', 'Home economics', '23000', '0', '0', '23000', '2022-07-15 08:23:03', 'Degree', 'Married', 'Mr Dare', 'Husband', 'Principal ', '1 omosefe Street iyesi ota', '1 omosefe osaro iyesi ota', '07065262854', '08069845897', '16578733889855731151410866494721.jpg', '', '', '', '0', ''),
('1', 62, 'DGLS/STAFF/2022/', '7985', 'DGLS/STAFF/2022/7985', '82e6bf598a52616e03ec3839cac3c4f5', 'Mr.', 'Inuolaji', 'Paul', 'Samson ', '17', '12', '2022', 'Male', 'Federal university of minna', 'Cooperative and business management ', 'Teaching Staff', 'Science teacher', 'S.S.S 1', 'Chemistry ', '15000', '0', '0', '15000', '2022-07-15 08:52:56', 'SSCE', 'Single', 'Peter inuolaji', 'Family Member', 'Teacher', '9 kola busari sango ota Ogun state ', '9 kola busari sango ota Ogun state ', '09037812645', '08127922828', '16578751979348631490737818283136.jpg', '', '', '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `staffattend`
--

CREATE TABLE `staffattend` (
  `id` int(11) NOT NULL,
  `staffid` text NOT NULL,
  `qrid` text NOT NULL,
  `name` text NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL,
  `date` date NOT NULL,
  `month` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `sn` text NOT NULL,
  `Admincode` text NOT NULL,
  `Admission No.` text NOT NULL,
  `AdminID` text NOT NULL,
  `qrid` text NOT NULL,
  `SurName` text NOT NULL,
  `Middle Name` text NOT NULL,
  `Last Name` text NOT NULL,
  `Date` int(255) NOT NULL,
  `Month` int(255) NOT NULL,
  `Year` int(255) NOT NULL,
  `Gender` text NOT NULL,
  `cbk` text NOT NULL,
  `suF` text NOT NULL,
  `schlst` text NOT NULL,
  `parent` text NOT NULL,
  `relation` text NOT NULL,
  `occupation` text NOT NULL,
  `SchF` text NOT NULL,
  `AcF` text NOT NULL,
  `Telephone1` text NOT NULL,
  `Address 1` text NOT NULL,
  `Address 2` text NOT NULL,
  `Telephone2` text NOT NULL,
  `Datereg` date NOT NULL,
  `Class` text NOT NULL,
  `Department` text NOT NULL,
  `Active` text NOT NULL,
  `Passport` text NOT NULL,
  `admletter` text NOT NULL,
  `qrcode` text NOT NULL,
  `idcard` text NOT NULL,
  `bday` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `sn`, `Admincode`, `Admission No.`, `AdminID`, `qrid`, `SurName`, `Middle Name`, `Last Name`, `Date`, `Month`, `Year`, `Gender`, `cbk`, `suF`, `schlst`, `parent`, `relation`, `occupation`, `SchF`, `AcF`, `Telephone1`, `Address 1`, `Address 2`, `Telephone2`, `Datereg`, `Class`, `Department`, `Active`, `Passport`, `admletter`, `qrcode`, `idcard`, `bday`) VALUES
(136, '', '', '1000', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '9', '', 'DMSSTUD20211001.pdf', '', 'upload/IdCard/.php', '0'),
(165, '1', 'DGLS/STUD/2022/', '1110', 'DGLS/STUD/2022/1110', '8c99f80f3191b6102a7396f344c2a3ff', 'Dare ', 'Iyanuoluwa ', 'John', 10, 8, 2018, 'Male', '', '', 'Nil', 'Mr Dare and Mrs Adenike Dare', 'Parent', 'Educator and Business ', '', '', '08069845897', '1 omosefe osaro street iyesi ota, Ogun state.', '', '07065262854', '2022-07-13', 'Kindergarten', 'Null', '0', '16577030455868547049408960764636.jpg', '', '', '', ''),
(166, '1', 'DGLS/STUD/2022/', '5145', 'DGLS/STUD/2022/5145', '44581f9a985528dc0dedcffebde6ed73', 'Olalekan', 'Hephzibah ', 'Testimony ', 13, 6, 2019, 'Female', '', '', 'Nil', 'Mr and Mrs olalekan ', 'Parent', 'Trader and clergy', '', '', '08038469972', 'Zone 5,water water bus stop,Promise Estate, iyesi ota, Ogun state ', '', '08032238381', '2022-07-13', 'Kindergarten', 'Null', '0', '16577036085544198736360768501581.jpg', '', '', '', ''),
(167, '1', 'DGLS/STUD/2022/', '5430', 'DGLS/STUD/2022/5430', 'aac9c86fe1394018d8037142776a8e4c', 'Ayodele', 'Bruce ', 'Andrew', 8, 11, 2018, 'Male', '', '', 'Divine charity Montessori school, iyesi ota.', 'Mr and Mrs Ayodele', 'Parent', 'Educator and dock worker', '', '', '2348102644495', 'House 5 Outstanding estate,water water bus stop, iyesi ota.', '', '2347040344434', '2022-07-13', 'Kindergarten', 'Null', '0', '16577038120782579097078395156746.jpg', '', '', '', ''),
(168, '1', 'DGLS/STUD/2022/', '5776', 'DGLS/STUD/2022/5776', 'e439edf1adbb73f052ced0147d08e8e9', 'Afolabi', 'Paul', 'Olamiposi', 18, 3, 2017, 'Male', '', '', 'Nil', 'Mr and Mrs Afolabi', 'Parent', 'Traders', '', '', '08029078005', '15 Dapo Adepoju close , ilasa, iyesi ota.', '', '08088740150', '2022-07-13', 'Nursery 2', 'Nursery School', '0', '16577041350191953032118559807948.jpg', '', '', '', ''),
(169, '1', 'DGLS/STUD/2022/', '8535', 'DGLS/STUD/2022/8535', 'cf15096007f916274d1fe22240dc11e6', 'Onyeibe', 'Daniel', 'Iteoluwakisi', 21, 5, 2017, 'Male', '', '', 'Prestidge model college ', 'Mr and Mrs Onyeibe ', 'Parent', 'Traders', '', '', '08034000434', '2,ilasa road block industry,iyesi ota.', '', '07046533192', '2022-07-13', 'Nursery 2', 'Nursery School', '0', '1657704537902457432656651637336.jpg', '', '', '', ''),
(170, '1', 'DGLS/STUD/2022/', '5747', 'DGLS/STUD/2022/5747', '9e2b09676a7cfb28a5299e0f962c7204', 'Adeleye', 'Mercy', 'Foluke', 11, 8, 2014, 'Female', '', '', 'Engravers Nursery and primary school ', 'Mr and Mrs Adeleye ', 'Parent', 'Educator and building contractor', '', '', '08035820491', 'Ogo oluwa community Ijaba ota Ogun state ', '', '08058882008', '2022-07-13', 'Grade 3', 'Primary School', '0', '16577070539997716918298011565390.jpg', '', '', '', ''),
(171, '1', 'DGLS/STUD/2022/', '2667', 'DGLS/STUD/2022/2667', '8c5c2e2b2ef58318de1266a79ee84001', 'Fadare', 'Rebecca ', 'Darasimi', 1, 6, 2015, 'Female', '', '', 'God will Nry and pry school ', 'Mr and Mrs fadare ', 'Parent', 'Immigration officer ', '', '', '2348055851454', 'Baba Esther street, water water iyesi ota Ogun state.', '', '07062731264', '2022-07-13', 'Grade 3', 'Primary School', '0', '16577078809357232511865353129068.jpg', '', '', '', ''),
(172, '1', 'DGLS/STUD/2022/', '8764', 'DGLS/STUD/2022/8764', 'cad8b35bd52fceffef5c0b0419bb5813', 'Olaogun', 'Muiz', 'Lekan', 31, 1, 2013, 'Male', '', '', 'Godwill Nry and pry school ', 'Mr and Mrs olaogun ', 'Parent', 'Fabricator', '', '', '07061262539', '2,Olorunwa street baba olopa bus stop iyesi ota Ogun state ', '', '09035695484', '2022-07-13', 'Grade 3', 'Primary School', '0', '16577083911021363314946695121170.jpg', '', '', '', ''),
(173, '1', 'DGLS/STUD/2022/', '3104', 'DGLS/STUD/2022/3104', '5890487ccb3a2c0e50d935193d77b20e', 'Oluwayemi ', 'John', 'Oluwatosin', 11, 8, 2014, 'Male', '', '', 'Grace heritage model school ', 'Mr and Mrs Oluwayemi ', 'Parent', 'Educator And clergy', '', '', '08069807661', 'Baba Esther area Area iyesi ota.', '', '07035375596', '2022-07-13', 'Grade 3', 'Primary School', '0', '16577951291312501283587952967122.jpg', '', '', '', ''),
(174, '1', 'DGLS/STUD/2022/', '6065', 'DGLS/STUD/2022/6065', '7c3007d98aa3469a647f758e31fa8361', 'Dare', 'Anuoluwapo', 'Rebecca ', 9, 1, 2016, 'Female', '', '', 'Nil', 'Mr Dare and Mrs Adenike Dare', 'Parent', 'Educator and Business ', '', '', '08069845897', '1, omosefe osaro street iyesi ota Ogun state ', '', '07065262854', '2022-07-13', 'Grade 2', 'Primary School', '0', '16577091892686277218811045415542.jpg', '', '', '', ''),
(175, '1', 'DGLS/STUD/2022/', '43', 'DGLS/STUD/2022/43', '5fdae114427e34581a260699c04b30f2', 'Fadodun', 'Tomiwa', 'Abraham ', 27, 1, 2016, 'Male', '', '', 'Learning van Nry  school ', 'Mr and Mrs Fadodun', 'Parent', 'Educator and Banker', '', '', '08023377422', '27 Aduragba street promise Estate iyesi ota Ogun state ', '', '08057944697', '2022-07-13', 'Grade 2', 'Primary School', '0', '16577094837712998890964986193792.jpg', '', '', '', ''),
(176, '1', 'DGLS/STUD/2022/', '2360', 'DGLS/STUD/2022/2360', '4a1c50429e5e50efc044f0c48eeadfa0', 'Akinsanya', 'Rahmat', 'Omosewa', 5, 10, 2013, 'Female', '', '', 'Rahman school ', 'Mr and Mrs Akinsanya ', 'Guardian', 'Health worker', '', '', '07036370636', 'Zone 1, Adebowale street, Nupeng bus stop iyesi Ota.', '', '08061222808', '2022-07-13', 'Grade 4', 'Primary School', '0', '16577917452925862843267165048191.jpg', '', '', '', ''),
(177, '1', 'DGLS/STUD/2022/', '9544', 'DGLS/STUD/2022/9544', 'b97de00e544ff6f5b4ca2e1ccc4c1ad1', 'Afolayan', 'Elijah', 'Godwin', 7, 2, 2012, 'Male', '', '', 'Dooren school', 'Mr and Mrs Afolayan', 'Parent', 'Clergy and Naval officer ', '', '', '08102644495', '5,Outstanding estate water water bus stop iyesi ota Ogun state ', '', '07082226817', '2022-07-13', 'Grade 4', 'Primary School', '0', '16577107375799001086117904530509.jpg', '', '', '', ''),
(178, '1', 'DGLS/STUD/2022/', '2291', 'DGLS/STUD/2022/2291', 'd816e68055971e7f2d6d45782404b778', 'Taiwo', 'Glory', 'Ayomiposi', 12, 6, 2012, 'Female', '', '', 'Christalball school', 'Mr and Mrs Taiwo', 'Parent', 'Traders', '', '', '08133798662', '1, Ifetoluwani crescent,olomowewe bus stop iyesi ota Ogun state.', '', '08023819631', '2022-07-13', 'Grade 5', 'Primary School', '0', '16577109644295518017625913272268.jpg', '', '', '', ''),
(179, '1', 'DGLS/STUD/2022/', '5531', 'DGLS/STUD/2022/5531', '4fecde51d50a8ec05c63a60180039ec2', 'Afolabi', 'Silas', 'Olayinka', 2, 9, 2013, 'Male', '', '', 'Nil', 'Mr and Mrs Afolabi', 'Guardian', 'Business ', '', '', '2347063308604', '15 Dapo Adepoju close, Ajikawo bus stop, ilasa iyana iyesi ota Ogun state.', '', '09060780164', '2022-07-13', 'Grade 4', 'Primary School', '0', '1657711193488642103755728195554.jpg', '', '', '', ''),
(180, '1', 'DGLS/STUD/2022/', '9331', 'DGLS/STUD/2022/9331', '2aac1b7a6876b581706f2316f614fd03', 'Fadare', 'Deborah ', 'Oluwajomiloju', 11, 7, 2013, 'Female', '', '', 'Parental touch school ', 'Mr and Mrs fadare ', 'Parent', 'Immigration officer and trader', '', '', '08063169984', 'Baba Esther street, water water iyesi ota Ogun state.', '', '2348055851454', '2022-07-13', 'Grade 5', 'Primary School', '0', '16577113760878262422644644539341.jpg', '', '', '', ''),
(181, '1', 'DGLS/STUD/2022/', '3178', 'DGLS/STUD/2022/3178', '123dce11282bdf49ae7f3fdd68c9b3ef', 'Olalekan ', 'Jeremiah ', 'Sunday', 23, 6, 2013, 'Male', '', '', 'Golden kiddes school', 'Mr and Mrs olalekan ', 'Parent', 'Trader and clergy', '', '', '08038469972', 'Zone 5,Water water bus stop iyesi ota Ogun ', '', '2348032238381', '2022-07-13', 'Grade 4', 'Primary School', '0', '16577116395778866045466545986129.jpg', '', '', '', ''),
(182, '1', 'DGLS/STUD/2022/', '2737', 'DGLS/STUD/2022/2737', '5f68e75daaa9db3715d5ca76c23b5c6a', 'Ayodele ', 'Bright ', 'Osia', 10, 12, 2009, 'Male', '', '', 'Divine Montessori school ', 'Mr and Mrs Ayodele', 'Guardian', 'Educator and dock worker', '', '', '2348102644495', '5,Outstanding estate water water bus stop iyesi ota Ogun state ', '', '07040344434', '2022-07-13', 'J.S.S 2', 'Secondary School', '0', '16577124202712783305186884660140.jpg', '', '', '', ''),
(183, '1', 'DGLS/STUD/2022/', '5087', 'DGLS/STUD/2022/5087', '447f5f5388bfad46a7461e533214dc54', 'Akinsanya ', 'Rahman', 'Oyindamola', 8, 5, 2011, 'Male', '', '', 'The pillars model school ', 'Mr and Mrs Akinsanya ', 'Parent', 'Health worker ', '', '', '07036370636', 'Nupeng bus stop iyesi ota Ogun state ', '', '08161222808', '2022-07-13', 'J.S.S 1', 'Secondary School', '0', '16577125904379147938263459300253.jpg', '', '', '', ''),
(184, '1', 'DGLS/STUD/2022/', '2076', 'DGLS/STUD/2022/2076', '04ba64a1cf6bcd07a31e79ab5eeaeca9', 'Fadare ', 'Precious ', 'Tunmise', 7, 3, 2012, 'Female', '', '', 'Parental school ', 'Mr and Mrs Fadare ', 'Parent', 'Immigration officer and trader', '', '', '08062169984', 'Baba Esther street, water water iyesi ota Ogun state.', '', '2348055851454', '2022-07-13', 'J.S.S 1', 'Secondary School', '0', '16577127489673295792678145943502.jpg', '', '', '', ''),
(185, '1', 'DGLS/STUD/2022/', '3634', 'DGLS/STUD/2022/3634', 'af71234bec7cdf64b1e58bcd8cc31c52', 'Onyeibe ', 'Emmanuel ', 'Oluwaseyifunmi', 8, 5, 2012, 'Male', '', '', 'Prestidge model college ', 'Mr and Mrs Onyeibe ', 'Parent', 'Business ', '', '', '08034000434', '2,Ilasa road block industry iyesi ota Ogun state ', '', '07086533192', '2022-07-13', 'J.S.S 1', 'Secondary School', '0', '16577129408192463065325036349959.jpg', '', '', '', ''),
(186, '1', 'DGLS/STUD/2022/', '8378', 'DGLS/STUD/2022/8378', '5383bdcf4b4888a037385bba70437047', 'Shoyoye', 'Israel ', 'Olamide', 28, 6, 2010, 'Male', '', '', 'Josjay model school ', 'Mr Gbenga and Mrs Temilola shoyoye', 'Parent', 'Automobile Engineer and business ', '', '', '08149648434', 'Aliamin street opposite the betel royal school ilasa road iyesi ota Ogun state ', '', '08149648434', '2022-07-13', 'J.S.S 1', 'Secondary School', '0', '16577132204294307085236984514889.jpg', '', '', '', ''),
(187, '1', 'DGLS/STUD/2022/', '5303', 'DGLS/STUD/2022/5303', 'f722ee07d563af1ee079d76ce54c6ec9', 'Olajesu', 'Steven', 'Nifemi', 30, 5, 2011, 'Male', '', '', 'Grace heritage school ', 'Mr Samuel Mrs Bose olajesu ', 'Parent', 'Business ', '', '', '08030596757', 'Alabi Emmanuel street promise Estate iyesi ota Ogun state ', '', '08030596757', '2022-07-13', 'J.S.S 1', 'Secondary School', '0', '16577134212674284138932728982371.jpg', '', '', '', ''),
(188, '1', 'DGLS/STUD/2022/', '4013', 'DGLS/STUD/2022/4013', '65071fd8e48df92808db8d16bfa044c7', 'Bamgbose', 'Sulaimon ', 'Olamide ', 17, 6, 2010, 'Male', '', '', 'Ola\'s model college ', 'Mr Lukman and Mrs Kadijat Bamgbose', 'Parent', 'Building contractor and photographer ', '', '', '09028563330', 'Ikotan olorunda street ilasa road iyesi ota Ogun state ', '', '09028563330', '2022-07-13', 'J.S.S 1', 'Secondary School', '0', '16577136421913114318111482869140.jpg', '', '', '', ''),
(189, '1', 'DGLS/STUD/2022/', '5124', 'DGLS/STUD/2022/5124', '3892bba38404aa0a3abe4b3d51a882e1', 'Ibiteye', 'Joseph', 'Ayomide', 13, 12, 2007, 'Male', '', '', 'Morayo kiddies Nry and pry school ', 'Mr Solomon Mrs Bose Ibiteye', 'Parent', 'Educator and Engineer', '', '', '07045325249', 'Adebowale street baba olopa bus stop iyesi ota Ogun state ', '', '07045325249', '2022-07-13', 'J.S.S 2', 'Secondary School', '0', '16577138778787911546806326203589.jpg', '', '', '', ''),
(190, '1', 'DGLS/STUD/2022/', '7926', 'DGLS/STUD/2022/7926', 'e6c8b7f8d07d57a954e8c2cc2e8c8e85', 'Lawal', 'Abdulahi ', 'Opeyemi ', 30, 6, 2010, 'Male', '', '', 'Daykem Nry and pry school ', 'Mr Fatai Mrs Adetayo Lawal', 'Parent', 'Caterer and police officer ', '', '', '08028398087', '12 Harmony estate, iyesi ota Ogun state.', '', '08028398087', '2022-07-13', 'J.S.S 2', 'Secondary School', '0', '1657714096435823537329854006203.jpg', '', '', '', ''),
(191, '1', 'DGLS/STUD/2022/', '3809', 'DGLS/STUD/2022/3809', 'a57e8569163b7cabae5d804a71ff4226', 'Adewoye', 'Imisi', 'Timileyin', 31, 3, 2009, 'Male', '', '', 'De optimist school ', 'Mr Toba and  Mrs Adetoun Adewoye ', 'Parent', 'Business ', '', '', '08034104138', '7 iludunoro street, water water bus stop iyesi ota Ogun state ', '', '08038331680', '2022-07-13', 'J.S.S 2', 'Secondary School', '0', '16577143864255204168103985053711.jpg', '', '', '', ''),
(192, '1', 'DGLS/STUD/2022/', '5462', 'DGLS/STUD/2022/5462', '45b5c1e7e8856b19208c90ed6d48fe64', 'Adewoye', 'Iyanu', 'Olamide ', 7, 9, 2012, 'Female', '', '', 'De optimist school ', 'Mr Toba and  Mrs Adetoun Adewoye ', 'Parent', 'Business ', '', '', '08034104138', '7 iludunoro street, water water bus stop iyesi ota Ogun state ', '', '08038331680', '2022-07-13', 'J.S.S 2', 'Secondary School', '0', '165771450833294396569704376961.jpg', '', '', '', ''),
(193, '1', 'DGLS/STUD/2022/', '4929', 'DGLS/STUD/2022/4929', 'ac15b8e08b0200d28676342e414bd081', 'Afolabi', 'Favour ', 'Boluwatife', 12, 1, 2012, 'Male', '', '', 'First model baptist school ', 'Mr Oluwaseyi Mrs Odunola Afolabi', 'Parent', 'Business ', '', '', '07063308604', '15,Dapo Adepoju close ilasa road iyesi ota Ogun state ', '', '08088740150', '2022-07-13', 'J.S.S 2', 'Secondary School', '0', '16577147627503407851979248686585.jpg', '', '', '', ''),
(194, '1', 'DGLS/STUD/2022/', '6192', 'DGLS/STUD/2022/6192', '5df43693ab58dff698b892ad6c435dd8', 'Oluwole', 'Jesutofunmi', 'Rebecca ', 5, 8, 2010, 'Female', '', '', 'Gaint foundation international school ', 'Mr Abiodun Mrs Agata Oluwole ', 'Parent', 'Logistics officer and business ', '', '', '09065376499', 'Ikotun olorunda estate iyesi ota Ogun state ', '', '07033088650', '2022-07-13', 'J.S.S 2', 'Secondary School', '0', '16577149481745767933901816081496.jpg', '', '', '', ''),
(195, '1', 'DGLS/STUD/2022/', '4061', 'DGLS/STUD/2022/4061', '34c43adc75e3a047cae85afbc787172b', 'Bolarinwa', 'Peter', 'Jesutomisin', 4, 11, 2009, 'Male', '', '', 'All saints Academy school ', 'Mr Moses Mrs Folashade Bolarinwa ', 'Parent', 'Educator and farmer', '', '', '08163875811', '15 honorable Alabi Emmanuel street, Iyesi ota Ogun state.', '', '07062689506', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577153883658983378057630243324.jpg', '', '', '', ''),
(196, '1', 'DGLS/STUD/2022/', '76', 'DGLS/STUD/2022/76', '723c416de1683a94edac1445dba277c4', 'Oloyede', 'Israel ', 'Oluwanifemi', 14, 9, 2008, 'Male', '', '', 'Headway school ', 'Mr Dotun Oloyede', 'Parent', 'Furniture maker', '', '', '08131153703', '11 olorunwa street, baba Esther area iyesi ota Ogun state ', '', '08131153703', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577156024221650152723958725727.jpg', '', '', '', ''),
(197, '1', 'DGLS/STUD/2022/', '3254', 'DGLS/STUD/2022/3254', '7a3328407ab19b4d348b2dd1e6f5ecbf', 'Fadodun', 'Timileyin ', 'Joshua ', 26, 3, 2007, 'Male', '', '', 'Forthright Montessori school ', 'Mr Peter and Mrs Adenike Fadodun', 'Parent', 'Educator and Banker', '', '', '08023377422', '27 Aduragba street promise Estate iyesi ota Ogun state ', '', '08057944697', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '1657715771283567761376281078117.jpg', '', '', '', ''),
(198, '1', 'DGLS/STUD/2022/', '6452', 'DGLS/STUD/2022/6452', 'f87af5f9ce6771961bff273be3bd9608', 'Afolabi', 'Josiah ', 'Olamide', 14, 1, 2008, 'Male', '', '', 'First baptist Nry and pry school ', 'Mr Oluwaseyi and Mrs Odunola Afolabi ', 'Parent', 'Business ', '', '', '08029078005', '15,Dapo Adepoju close ilasa road iyesi ota Ogun state ', '', '08088740150', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577159132681949027031249255597.jpg', '', '', '', ''),
(199, '1', 'DGLS/STUD/2022/', '8832', 'DGLS/STUD/2022/8832', '1b16119aa9cae9554be319b6232ef3ba', 'Olatunji', 'David ', 'Oluwapelumi', 29, 8, 2008, 'Male', '', '', 'Josjay model school ', 'Mr Clement and Mrs Stella Olatunji', 'Parent', 'Health worker and civil servant ', '', '', '08104019476', '23, palm avenue Ijaba Iyesi ota Ogun state ', '', '08067443235', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577160729638149515408618665193.jpg', '', '', '', ''),
(200, '1', 'DGLS/STUD/2022/', '1095', 'DGLS/STUD/2022/1095', 'bf90948c7e50abcf7471f2ac60517d4c', 'Oluwadamilare ', 'Westley ', 'Daniel ', 20, 8, 2008, 'Male', '', '', 'Grace heritage model school ', 'Mrs Funke Oluwole', 'Parent', 'Educator ', '', '', '09099262814', 'promise Estate beside Nupeng block Ilasa road ota Ogun state ', '', '09099262814', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '1657716248897523415685820591226.jpg', '', '', '', ''),
(201, '1', 'DGLS/STUD/2022/', '8349', 'DGLS/STUD/2022/8349', '4bbc3f3dd9c0230b8c6ee3a2ed94626c', 'Taiwo ', 'Ayomide ', 'Emmanuel ', 21, 5, 2008, 'Male', '', '', 'Christalball pry school ', 'Mr Taiwo and funmilayo', 'Parent', 'Business ', '', '', '08023250576', '1, Ifetoluwani crescent olomowewe bus stop iyesi ota Ogun state ', '', '08163194335', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577164067586605723814598470512.jpg', '', '', '', ''),
(202, '1', 'DGLS/STUD/2022/', '6200', 'DGLS/STUD/2022/6200', '409bc88665aa35a4383896c7d0658417', 'Liadi', 'Sheriffdeen', 'Oluwapelumi ', 16, 10, 2008, 'Male', '', '', 'Le companion school ', 'Mr Abduljelili and Mrs Ganiyat ', 'Parent', 'Computer scientist ', '', '', '08121663448', '3,Tejumade street water water bus stop iyesi ota Ogun state ', '', '07066828568', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577166363068158887082729040575.jpg', '', '', '', ''),
(203, '1', 'DGLS/STUD/2022/', '5220', 'DGLS/STUD/2022/5220', '51c37002ea4ff38978e21db67b5c7c6f', 'Sunday', 'Silvanus ', 'Nzubechi', 16, 6, 2009, 'Male', '', '', 'Holy blessing college ', 'Mr Sunday and Mrs peace ', 'Parent', 'Civil servant and business ', '', '', '08054811682', 'Promise Estate,ilasa road baba olopa bus stop iyesi ota Ogun state ', '', '07030977599', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577168038826529020407912364610.jpg', '', '', '', ''),
(204, '1', 'DGLS/STUD/2022/', '9490', 'DGLS/STUD/2022/9490', 'c237173be4ee35f490d8d2ee79fd3932', 'Agbabiaka ', 'Isalamiyat', 'Olamide ', 20, 1, 2010, 'Female', '', '', 'Josjay model school ', 'Mr Nurudeen and Mrs Risquat', 'Parent', 'Pharmacist and trader', '', '', '08062393551', '60 zombi promise Estate iyesi ota Ogun state ', '', '07039852393', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577170079731793438632079110151.jpg', '', '', '', ''),
(205, '1', 'DGLS/STUD/2022/', '6094', 'DGLS/STUD/2022/6094', '8e99c968803d445d79b99102f64b9ee8', 'Olawole', 'Bisola', 'Mariam', 14, 11, 2007, 'Female', '', '', 'Belove model college ', 'Mr olasunkanmi and Mrs Adesewa', 'Parent', 'Civil servant and business ', '', '', '08028757064', 'Ikotun olorunda estate,aperu phase2 okeigbala street iyesi ota Ogun state ', '', '08028757064', '2022-07-13', 'S.S.S 1', 'Secondary School', '0', '16577172465267719154678503783534.jpg', '', '', '', ''),
(206, '1', 'DGLS/STUD/2022/', '2384', 'DGLS/STUD/2022/2384', 'c488fca9edfd6336f9fedd3a5901209c', 'Olalekan ', 'Marvelous ', 'Oluwaseyi ', 6, 10, 2007, 'Male', '', '', 'Mebibel international school ', 'Mr solarin and Mrs Mary Olalekan ', 'Parent', 'Business and clergy', '', '', '08038469972', 'Zone 5, promise Estate water water iyesi ota Ogun state.', '', '08032238381', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577175308651588697778731388552.jpg', '', '', '', ''),
(207, '1', 'DGLS/STUD/2022/', '413', 'DGLS/STUD/2022/413', '1f2ad6fe90eaaa00f05195cf5fae4a20', 'Folarin', 'Joy', 'Titilayo ', 29, 3, 2006, 'Female', '', '', 'Shomolu senior high school ', 'Mr Gbenga and Mrs Mary Folarin', 'Parent', 'Civil servant and pharmacist ', '', '', '08023756748', ' Harmony estate Baba olopa bus stop iyesi ota Ogun state ', '', '08023756748', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577178647181400618296106886664.jpg', '', '', '', ''),
(208, '1', 'DGLS/STUD/2022/', '2164', 'DGLS/STUD/2022/2164', 'cdce2b96bb762b8120ed3e3e64b070de', 'Beyioku', 'Aliat', 'Anike', 20, 12, 2006, 'Female', '', '', 'Charlie worker school ', 'Mr muyideen Beyioku ', 'Parent', 'Business ', '', '', '08023806303', '8, olorunwa street baba olopa bus stop ilasa road iyesi ota Ogun state ', '', '08148388807', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577180987241656157594363749299.jpg', '', '', '', ''),
(209, '1', 'DGLS/STUD/2022/', '4786', 'DGLS/STUD/2022/4786', '97399dc8723a749ae029dc950f8b24b0', 'Olugbenga', 'Deborah ', 'Oluwanifemi ', 3, 12, 2007, 'Female', '', '', 'Josjay model school ', 'Mr Samuel and Mrs Grace olugbenga ', 'Parent', 'Business ', '', '', '08034242390', '28, iludunoro street water water bus stop iyesi ota Ogun state ', '', '08034242390', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577182710825656642148745678117.jpg', '', '', '', ''),
(210, '1', 'DGLS/STUD/2022/', '7494', 'DGLS/STUD/2022/7494', '7e4eff400e95af0fc38cfac65a8dd98d', 'Sunday ', 'Divine ', 'Chizitere', 15, 12, 2007, 'Female', '', '', 'Holy blessing college ', 'Mr Sunday and Mrs peace ', 'Parent', 'Civil servant and business ', '', '', '08051167712', 'Before baba olopa bus stop iyesi ota Ogun state ', '', '09085834655', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '1657718493557950374609614970713.jpg', '', '', '', ''),
(211, '1', 'DGLS/STUD/2022/', '6328', 'DGLS/STUD/2022/6328', '9eea266f2d5d6875529c51705d22aed9', 'Babatunde ', 'Mary', 'Motunrayo ', 15, 10, 2007, 'Female', '', '', 'Charlie worker school ', 'Mr Rufus and Mrs Rebecca Babatunde ', 'Parent', 'Traders', '', '', '08070542258', '7 olorunwa street baba olopa bus stop iyesi ota Ogun state ', '', '08070542258', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577186858024854794783695498786.jpg', '', '', '', ''),
(212, '1', 'DGLS/STUD/2022/', '3975', 'DGLS/STUD/2022/3975', '05084ebeea2b2ff90e7aae34e67f0c9b', 'Agunbiade', 'Oreoluwa', 'Esther', 25, 3, 2007, 'Female', '', '', 'De optimist private school ', 'Mrs Aderike Agunbiade ', 'Parent', 'Business ', '', '', '08038331680', '7 iludunoro street, water water bus stop iyesi ota Ogun state ', '', '08038331680', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577188837369102402580032000288.jpg', '', '', '', ''),
(213, '1', 'DGLS/STUD/2022/', '7486', 'DGLS/STUD/2022/7486', '74178d128128f8860e17029a7c94dc8e', 'Falade', 'Ayomide ', 'Emmanuel ', 25, 11, 2007, 'Male', '', '', 'Greaters tomorrow school ', 'Mr and Mrs olalekan ', 'Guardian', 'Clergy and business ', '', '', '08038469972', 'Promise estate water water bus stop iyesi ota Ogun state ', '', '08032238381', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577190868471391318280774808171.jpg', '', '', '', ''),
(214, '1', 'DGLS/STUD/2022/', '8789', 'DGLS/STUD/2022/8789', 'f010cc95310c1484dc3a6c1a68d86daa', 'Agbabiaka ', 'Muhammad faruq', 'Ayomide', 12, 12, 2007, 'Male', '', '', 'Josjay model school ', 'Mr Nurudeen and Mr Risqat', 'Parent', 'Pharmacist and trader ', '', '', '08062393551', 'Zone 5, B60 promise Estate iyesi ota Ogun state ', '', '07039852393', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '1657719370964814801744585410237.jpg', '', '', '', ''),
(215, '1', 'DGLS/STUD/2022/', '8387', 'DGLS/STUD/2022/8387', 'dc557336da4e7957aeaf101a2de8728d', 'Popoola', 'Festus', 'Oluwanifemi ', 10, 7, 2008, 'Male', '', '', 'Housing estate college ', 'Mr Olusesan and Mrs Adenike ', 'Parent', 'Business ', '', '', '08023725507', '22,alafia street off Nupeng bus stop iyesi ota Ogun state ', '', '08137589090', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577195663567208631142228282613.jpg', '', '', '', ''),
(216, '1', 'DGLS/STUD/2022/', '1029', 'DGLS/STUD/2022/1029', 'f67cf017a97785a0f441adc9a6f15ea0', 'Agbalenyo', 'Godwin ', 'Chinedu', 23, 7, 2006, 'Male', '', '', 'Daykem Nry and pry school ', 'Mr Robinson and Mrs Rita', 'Parent', 'Business ', '', '', '08141155065', 'Zone 5, B23 promise Estate iyesi ota Ogun state ', '', '08131140744', '2022-07-13', 'S.S.S 2', 'Secondary School', '0', '16577197177534920630056937940638.jpg', '', '', '', ''),
(217, '1', 'DGLS/STUD/2022/', '229', 'DGLS/STUD/2022/229', 'bd2d279ec46d43327aa6a29c0e79b33f', 'Oluwayemi ', 'Paul', 'Ayomide', 22, 2, 2008, 'Male', '', '', 'Grace heritage model school ', 'Mr and Mrs omowunmi Oluwayemi ', 'Parent', 'Educator and clergy ', '', '', '07035375596', '10 favour of God, baba Esther street iyana iyesi ota Ogun state ', '', '07035375596', '2022-07-14', 'S.S.S 1', 'Secondary School', '0', '16577992192406109353881100589622.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `upassignment`
--

CREATE TABLE `upassignment` (
  `sn` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `file` text NOT NULL,
  `name` text NOT NULL,
  `date` datetime NOT NULL,
  `class` text NOT NULL,
  `adminid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrance`
--
ALTER TABLE `entrance`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffattend`
--
ALTER TABLE `staffattend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upassignment`
--
ALTER TABLE `upassignment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `entrance`
--
ALTER TABLE `entrance`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motor`
--
ALTER TABLE `motor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1569;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=836;

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `staffattend`
--
ALTER TABLE `staffattend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `upassignment`
--
ALTER TABLE `upassignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
