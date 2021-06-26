-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2021 at 05:59 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mili_policy`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_info`
--

CREATE TABLE `address_info` (
  `per_village` varchar(50) NOT NULL,
  `per_postoffice` varchar(50) NOT NULL,
  `per_policestation` varchar(50) NOT NULL,
  `per_postcode` varchar(50) NOT NULL,
  `per_district` varchar(50) NOT NULL,
  `per_phonenumber` varchar(50) NOT NULL,
  `pre_village` varchar(50) NOT NULL,
  `pre_postoffice` varchar(50) NOT NULL,
  `pre_policestation` varchar(50) NOT NULL,
  `pre_postcode` varchar(50) NOT NULL,
  `pre_district` varchar(50) NOT NULL,
  `pre_phonenumber` varchar(50) NOT NULL,
  `documentId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_info`
--

INSERT INTO `address_info` (`per_village`, `per_postoffice`, `per_policestation`, `per_postcode`, `per_district`, `per_phonenumber`, `pre_village`, `pre_postoffice`, `pre_policestation`, `pre_postcode`, `pre_district`, `pre_phonenumber`, `documentId`) VALUES
('asdasd', 'sadasd', 'asdas', 'sdas', 'qweqw', 'wqeqwe', 'qweqw', 'wqeqwe', 'qweqw', 'wqeqw', 'weq', 'qweqw', 'dasdasd'),
('', '', '', '', '', '', '', '', '', '', '', '', ''),
('sadas', 'asdas', 'sadas', 'rwqr', 'wqeqw', 'ewrer', 'wew', 'qwe', 'wew', 'wew', 'wew', 'rewre', 'asdas');

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `documentId` varchar(50) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `bankbranch` varchar(100) NOT NULL,
  `bankaccount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`documentId`, `bankname`, `bankbranch`, `bankaccount`) VALUES
('dasdasd', 'qwewq', 'wqeqwe', 'wqeqw'),
('', '', '', ''),
('asdas', 'qweqwe', 'qweqwewq', 'wqeqw');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` smallint(100) NOT NULL,
  `documentId` varchar(255) NOT NULL,
  `afname` varchar(255) NOT NULL,
  `alname` varchar(255) NOT NULL,
  `affname` varchar(255) NOT NULL,
  `aflname` varchar(255) NOT NULL,
  `amfname` varchar(255) NOT NULL,
  `amlname` varchar(255) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `mstatus` enum('single','married','divorced','widowed') NOT NULL,
  `profession` varchar(255) NOT NULL,
  `eduqualification` enum('psc','jsc','ssc','hsc','bsc','msc','phd') NOT NULL,
  `phonenuber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` longblob NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `country` enum('Afganistan','Albania','Algeria','American Samoa','Andorra','Angola','Anguilla','Antigua & Barbuda','Argentina','Armenia','Aruba','Australia','Austria','Azerbaijan','Bahamas','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bermuda','Bhutan','Bolivia','Bonaire','Bosnia & Herzegovina','Botswana','Brazil','British Indian Ocean Ter','Brunei','Bulgaria','Burkina Faso','Burundi','Cambodia','Cameroon','Canada','Canary Islands','Cape Verde','Cayman Islands','Central African Republic','Chad','Channel Islands','Chile','China','Christmas Island','Cocos Island','Colombia','Comoros','Congo','Cook Islands','Costa Rica','Cote DIvoire','Croatia','Cuba','Curaco','Cyprus','Czech Republic','Denmark','Djibouti','Dominica','Dominican Republic','East Timor','Ecuador','Egypt','El Salvador','Equatorial Guinea','Eritrea','Estonia','Ethiopia','Falkland Islands','Faroe Islands','Fiji','Finland','France','French Guiana','French Polynesia','French Southern Ter','Gabon','Gambia','Georgia','Germany','Ghana','Gibraltar','Great Britain','Greece','Greenland','Grenada','Guadeloupe','Guam','Guatemala','Guinea','Guyana','Haiti','Hawaii','Honduras','Hong Kong','Hungary','Iceland','Indonesia','India','Iran','Iraq','Ireland','Isle of Man','Israel','Italy','Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','Korea North','Korea South','Kuwait','Kyrgyzstan','Laos','Latvia','Lebanon','Lesotho','Liberia','Libya','Liechtenstein','Lithuania','Luxembourg','Macau','Macedonia','Madagascar','Malaysia','Malawi','Maldives','Mali','Malta','Marshall Islands','Martinique','Mauritania','Mauritius','Mayotte','Mexico','Midway Islands','Moldova','Monaco','Mongolia','Montserrat','Morocco','Mozambique','Myanmar','Nambia','Nauru','Nepal','Netherland Antilles','Netherlands','Nevis','New Caledonia','New Zealand','Nicaragua','Niger','Nigeria','Niue','Norfolk Island','Norway','Oman','Pakistan','Palau Island','Palestine','Panama','Papua New Guinea','Paraguay','Peru','Phillipines','Pitcairn Island','Poland','Portugal','Puerto Rico','Qatar','Republic of Montenegro','Republic of Serbia','Reunion','Romania','Russia','Rwanda','St Barthelemy','St Eustatius','St Helena','St Kitts-Nevis','St Lucia','St Maarten','St Pierre & Miquelon','St Vincent & Grenadines','Saipan','Samoa','Samoa American','San Marino','Sao Tome & Principe','Saudi Arabia','Senegal','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia','South Africa','Spain','Sri Lanka','Sudan','Suriname','Swaziland','Sweden','Switzerland','Syria','Tahiti','Taiwan','Tajikistan','Tanzania','Thailand','Togo','Tokelau','Tonga','Trinidad & Tobago','Tunisia','Turkey','Turkmenistan','Turks & Caicos Is','Tuvalu','Uganda','United Kingdom','Ukraine','United Arab Erimates','United States of America','Uraguay','Uzbekistan','Vanuatu','Vatican City State','Venezuela','Vietnam','Virgin Islands (Brit)','Virgin Islands (USA)','Wake Island','Wallis & Futana Is','Yemen','Zaire','Zambia','Zimbabwe') NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `documenttype` enum('voterid','birthcertificate','passport','ssccertificate','drivinglicense') NOT NULL,
  `verificationid` varchar(255) NOT NULL,
  `document` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_info`
--
ALTER TABLE `address_info`
  ADD KEY `documentId` (`documentId`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD KEY `documentId` (`documentId`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`documentId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
