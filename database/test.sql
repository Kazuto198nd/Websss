-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 08:13 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `diemdanh`
--

CREATE TABLE `diemdanh` (
  `id` int(11) NOT NULL,
  `mal` char(10) NOT NULL,
  `ngay` date DEFAULT NULL,
  `dihoc` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diemdanh`
--

INSERT INTO `diemdanh` (`id`, `mal`, `ngay`, `dihoc`) VALUES
(32, 'T1', '2019-08-19', 0),
(33, 'T1', '2019-08-19', 1),
(34, 'T1', '2019-08-19', 1),
(35, 'T1', '2019-08-19', 0),
(36, 'T2', '2019-08-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoc`
--

CREATE TABLE `hoc` (
  `id` int(11) NOT NULL,
  `MaL` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoc`
--

INSERT INTO `hoc` (`id`, `MaL`) VALUES
(1203202, 'T1'),
(1203202, 'T2'),
(1203202, 'T3'),
(1203202, 'T4'),
(1203302, 'T1'),
(1203302, 'T2'),
(1203302, 'T3'),
(1203302, 'T4'),
(1203405, 'T2'),
(1203406, 'T1'),
(1203407, 'T1'),
(1203408, 'T1'),
(1203409, 'T1'),
(1205502, 'T1'),
(1205502, 'T2'),
(1205502, 'T3'),
(1205502, 'T4'),
(12031102, 'T2'),
(12031102, 'T3'),
(12031102, 'T4'),
(12031202, 'T2'),
(12031202, 'T3'),
(12031202, 'T4'),
(12031452, 'T2'),
(12031452, 'T3'),
(12031452, 'T4'),
(12034242, 'T1'),
(12034242, 'T2'),
(12034242, 'T3'),
(12034242, 'T4'),
(120321302, 'T2'),
(120321302, 'T3'),
(120321302, 'T4');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `MaL` char(10) NOT NULL,
  `TenL` varchar(30) DEFAULT NULL,
  `soLuongsv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`MaL`, `TenL`, `soLuongsv`) VALUES
('T1', 'CN-Web', 35),
('T2', 'MMT', 35),
('T3', 'CNPM', 35),
('T4', 'SQL', 35);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_public` tinyint(4) DEFAULT 0,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL,
  `ROLE` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `fullname`, `createdate`, `ROLE`) VALUES
(1203402, 'dthienpro1', '123456', 'thinv62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'admin'),
(1203412, 'dthienpro12', '123456', 'thinv63@wru.vn', 'Hoàng Hiếu', '2019-05-30 00:00:00', 'giangvien'),
(1203712, 'thuthu123', '123456', 'thivn63@wru.vn', 'Hoàng Hiếu', '2019-05-30 00:00:00', 'giangvien'),
(1201212, 'thueehu123', '123456', 'thivn12@wru.vn', 'Hoàng Hiếu', '2019-05-30 00:00:00', 'giangvien'),
(1203403, 'dthienpro2', '123456', 'thinv64@wru.vn', 'Trần Văn B', '2019-05-30 00:00:00', 'giangvien'),
(1203404, 'dthienpro3', '123456', 'thinv65@wru.vn', 'Phạm Văn A', '2019-05-30 00:00:00', 'giangvien'),
(1203405, 'dthienpro4', '123456', 'thinv66@wru.vn', 'Nguyễn Văn A', '2019-05-30 00:00:00', 'sinhvien'),
(1203406, 'dthienpro46', '123456', 'thincd66@wru.vn', 'Nguyễn Văn A', '2019-05-30 00:00:00', 'sinhvien'),
(1203407, 'dthienpro41', '123456', 'thincs66@wru.vn', 'Nguyễn Văn B', '2019-05-30 00:00:00', 'sinhvien'),
(1203408, 'dthienpro42', '123456', 'thinvcs6@wru.vn', 'Nguyễn Văn C', '2019-05-30 00:00:00', 'sinhvien'),
(1203409, 'dthienpro43', '123456', 'thinvc66@wru.vn', 'Nguyễn Văn D', '2019-05-30 00:00:00', 'sinhvien'),
(12034010, 'dthienpro44', '123456', 'thinvqq66@wru.vn', 'Nguyễn Văn E', '2019-05-30 00:00:00', 'sinhvien'),
(1203302, 'dthienpro112', '123456', 'thinv122@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien'),
(1205502, 'dthienpro113', '123456', 'thiennv62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien'),
(1203202, 'dthienpro114', '123456', 'thenv62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien'),
(12034242, 'dthienpro115', '123456', 'tinnv62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien'),
(12031202, 'dthienpro116', '123456', 'thangnv62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien'),
(12031102, 'dthienpro117', '123456', 'than62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien'),
(120321302, 'dthienpro118', '123456', 'tannv62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien'),
(12031452, 'dthienpro119', '123456', 'thuyennv62@wru.vn', 'Nguyễn Văn T', '2019-05-30 00:00:00', 'sinhvien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id`,`mal`);

--
-- Indexes for table `hoc`
--
ALTER TABLE `hoc`
  ADD PRIMARY KEY (`id`,`MaL`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaL`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120321303;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
