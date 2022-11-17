-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 12:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advice`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID_CATE` int(11) NOT NULL,
  `NAME_CATE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID_CATE`, `NAME_CATE`) VALUES
(1, 'Notebook'),
(2, 'Keyboard'),
(3, 'Monitor'),
(4, 'Headphone'),
(5, 'Mouse'),
(6, 'Mousepad'),
(11, 'Book');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CUS_ID` int(11) NOT NULL,
  `CUS_NAME` varchar(30) NOT NULL,
  `CUS_ADD` varchar(100) NOT NULL,
  `CUS_BD` date NOT NULL,
  `CUS_TEL` char(15) NOT NULL,
  `CUS_EMAIL` varchar(30) NOT NULL,
  `CUS_Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CUS_ID`, `CUS_NAME`, `CUS_ADD`, `CUS_BD`, `CUS_TEL`, `CUS_EMAIL`, `CUS_Password`) VALUES
(0, '', '', '0000-00-00', '', '', ''),
(10, 'Sittinan Phattananun', '55/36 Rangsit', '2021-09-01', '+66957414383', 'mickystn10@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(11, 'Pimpitcha Chaisiri', '55/42 Bangkok', '2021-09-02', '097633311', 'mamui@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(26, 'Prinyada Juijarean', '50/63', '2021-10-01', '0978234561', 'pinn@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(27, 'Mickie A', '50/2', '2021-10-01', '0987654321', 'micky@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(28, 'Ananya Phatannanun', '60', '2021-10-08', '0987654321', 'micky1@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `DEALER_ID` int(11) NOT NULL,
  `DEALER_NAME` varchar(30) NOT NULL,
  `DEALER_TEL` char(15) NOT NULL,
  `DEALER_EMAIL` varchar(30) NOT NULL,
  `DEALER_PASS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`DEALER_ID`, `DEALER_NAME`, `DEALER_TEL`, `DEALER_EMAIL`, `DEALER_PASS`) VALUES
(1, 'Kittichet Adulroj', '0982345678', 'dearktc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(2, 'Sitanun Phattananun', '0988872641', 'millstn@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(3, 'Mickie B', '0987654321', 'micky1@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(4, 'Mickie V', '0987654312', 'micky2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(5, 's s', '021321321', 's@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ITEM_NO` int(11) NOT NULL,
  `ITEM_NAME` varchar(100) NOT NULL,
  `ITEM_PRICE` float NOT NULL,
  `ITEM_QUA` int(100) NOT NULL,
  `ITEM_IMG` text NOT NULL,
  `DEALER_ID` int(11) NOT NULL,
  `ID_CATE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ITEM_NO`, `ITEM_NAME`, `ITEM_PRICE`, `ITEM_QUA`, `ITEM_IMG`, `DEALER_ID`, `ID_CATE`) VALUES
(60, 'Test', 1000, 1, '1645540541860.jpg', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `NO_ORDER` int(11) NOT NULL,
  `NO_TRACK` varchar(14) NOT NULL,
  `NO_RECEIPT` int(11) NOT NULL,
  `CUS_ID` int(11) NOT NULL,
  `PRICE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `NO_ORDER` int(11) NOT NULL,
  `NO_ITEM` int(11) NOT NULL,
  `QUA_ORDER` int(100) NOT NULL,
  `PRICE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purcdetail`
--

CREATE TABLE `purcdetail` (
  `Purchase_ID` int(11) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `PRICE` float NOT NULL,
  `QUA_ITEM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchistory`
--

CREATE TABLE `purchistory` (
  `Purchase_ID` int(11) NOT NULL,
  `DATE_RECEIPT` date NOT NULL,
  `DATE_WARRANTY` date NOT NULL,
  `CUS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `NO_RECEIPT` int(11) NOT NULL,
  `DATE_RECEIPT` date NOT NULL,
  `DATE_WARRANTY` date NOT NULL,
  `Timestamp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID_CATE`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CUS_ID`),
  ADD UNIQUE KEY `CUS_EMAIL` (`CUS_EMAIL`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`DEALER_ID`),
  ADD UNIQUE KEY `DEALER_EMAIL` (`DEALER_EMAIL`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ITEM_NO`),
  ADD KEY `DEALER_ID` (`DEALER_ID`),
  ADD KEY `ID_CATE` (`ID_CATE`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`NO_ORDER`),
  ADD KEY `NO_RECEIPT` (`NO_RECEIPT`),
  ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`NO_ORDER`,`NO_ITEM`),
  ADD KEY `NO_ITEM` (`NO_ITEM`);

--
-- Indexes for table `purcdetail`
--
ALTER TABLE `purcdetail`
  ADD PRIMARY KEY (`Purchase_ID`,`Item_Name`);

--
-- Indexes for table `purchistory`
--
ALTER TABLE `purchistory`
  ADD PRIMARY KEY (`Purchase_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`NO_RECEIPT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID_CATE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CUS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `DEALER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ITEM_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `NO_ORDER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `NO_RECEIPT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`DEALER_ID`) REFERENCES `dealer` (`DEALER_ID`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`ID_CATE`) REFERENCES `category` (`ID_CATE`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `FK_Receipt` FOREIGN KEY (`NO_RECEIPT`) REFERENCES `receipt` (`NO_RECEIPT`),
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`NO_RECEIPT`) REFERENCES `receipt` (`NO_RECEIPT`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `customers` (`CUS_ID`);

--
-- Constraints for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `orderlist_ibfk_2` FOREIGN KEY (`NO_ORDER`) REFERENCES `orderitem` (`NO_ORDER`),
  ADD CONSTRAINT `orderlist_ibfk_4` FOREIGN KEY (`NO_ORDER`) REFERENCES `orderitem` (`NO_ORDER`),
  ADD CONSTRAINT `orderlist_ibfk_5` FOREIGN KEY (`NO_ITEM`) REFERENCES `item` (`ITEM_NO`);

--
-- Constraints for table `purcdetail`
--
ALTER TABLE `purcdetail`
  ADD CONSTRAINT `purcdetail_ibfk_1` FOREIGN KEY (`Purchase_ID`) REFERENCES `purchistory` (`Purchase_ID`);

--
-- Constraints for table `purchistory`
--
ALTER TABLE `purchistory`
  ADD CONSTRAINT `purchistory_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customers` (`CUS_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
