-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 02:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `profile` varchar(60) NOT NULL,
  `terms` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `subject` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `mobile_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `dob`, `gender`, `profile`, `terms`, `subject`, `address`, `email_id`, `password`, `mobile_no`) VALUES
(65, 'cat', '2022-11-03', 'Female', 'media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'marathi', 'forest', 'cat@gmail.com', 'fxgdcv1234', 2147483647),
(66, 'cat', '2022-11-03', 'Female', '/studentsmedia_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'marathi', 'forest', 'cat@gmail.com', 'fxgdcv1234', 2147483647),
(67, 'prathamesh', '2022-11-02', 'Male', '/studentsswan_beauty_nature_264533.jpg', 'I agree', 'marathi', 'nerul', 'prathamesh@gmail.com', 'dfbgdfb', 2147483647),
(68, 'Ashok', '2022-11-02', 'Male', 'photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'nehrul', 'ashok@gmail.com', 'yADYagcf', 346262563),
(69, 'Ashok', '2022-11-02', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'nehrul', 'ashok@gmail.com', 'yADYagcf', 346262563),
(70, 'prathamesh', '2022-11-08', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'English', 'in house', 'prathamesh@gmail.com', 'fgbdzfb', 2147483647),
(71, 'catt', '2022-11-02', 'Female', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'English', 'in door', 'catt@gmail.com', 'sdfbhsdgf', 4523456),
(72, 'tushar', '2022-11-01', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'marathi', 'dfbgdsf', 'prathamesh@gmail.com', 'dsfbd', 34562346),
(73, 'prathamesh', '2022-11-01', 'Male', '/gallerymedia_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'English', 'fxdyht', 'rahul@yahoo.in', 'khjvkh', 54252542),
(74, 'tiger', '2022-11-17', 'Female', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'English', 'hjtdryj', 'tiger@gmail.com', 'sadrg', 23456346),
(75, 'tiger', '2022-11-17', 'Female', 'media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'English', 'hjtdryj', 'tiger@gmail.com', 'sadrg', 23456346),
(76, 'tiger', '2022-11-02', 'Male', 'photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'in forest', 'tiger@gmail.com', 'fdsgsg', 2364546),
(77, 'duck', '2022-11-23', 'Female', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', 'dfbhdxfhb', 'duck@gmail.com', 'tyuitfi', 3457547),
(78, 'tiger', '2022-11-01', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'English', 'ubdvgsikasdbv', 'tiger@gmail.com', 'fgmn', 2362456),
(79, 'prathamesh', '2022-11-03', 'Male', 'gallery/website.jpg', 'I agree', 'marathi', 'bvasjcvas', 'acsa', 'acasc', 2352345),
(80, 'yuyu', '2022-11-02', 'Female', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'English', 'ryjryuj', 'ryuj', '', 3456435),
(81, 'rthj', '2022-11-03', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'dyhjdty', 'pradhrth', '', 45234),
(82, 'wetawet', '2022-11-03', 'Male', 'gallery/website.jpg', 'I agree', 'Hindi', 'aewtawet', 'eataeryt', 'asdfg', 2147483647),
(83, 'yjurty', '2022-11-01', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'tyj', 'tyit', '123', 45645),
(84, 'therth', '2022-11-01', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'marathi', 'rtyhrt', 'ryertyh', '123', 23466),
(85, 'grg', '2022-11-03', 'Female', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'ergerg', 'ergeg', '123412345', 3456456),
(86, 'jkll', '2022-11-02', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'jljkljl', 'jhl', '123123456', 5678),
(87, 'ipui', '2022-11-01', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', 'uipuiop', 'iopuip', '1234134554', 780678),
(88, 'dfthjdt', '2022-11-02', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', 'drtjd', 'drtj', 'dfdfghjghj', 567856),
(89, 'jtyj', '2022-11-02', 'Female', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', '6t7ju6', 'tyjtyj', 'sdfrtbhrtg', 456456),
(90, 'dbh', '2022-11-02', 'Female', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'fgbfggf', 'tghdfg', 'fggfbngfg2', 57476),
(91, 'uioui', '2022-11-03', 'Female', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'marathi', 'tuiolui', 'yuioui', 'prathamesh', 4567567),
(92, 'rtuhty', '2022-11-02', 'Female', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'xdfghs', 'srgts', 'abcdefghi1', 1234567891),
(93, 'suresh', '2022-11-10', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', 'rdgederg', 'suresh@gmail.com', '2149842dd7', 2147483647),
(94, 'prathamesh', '2022-11-10', 'Male', 'gallery/website.jpg', 'I agree', 'marathi', 'nehrul', 'prathamesh@gmail.com', 'a99cd0dbd1', 1234567891),
(95, 'prathamesh', '2022-11-02', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'Hindi', 'dsgag', 'prathamesh@', 'b28c3492ff', 234),
(96, 'prathamesh', '2022-10-31', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'Hindi', 'ascfvsdv', 'prathamesh@gmail.comm', '3c77f4029b', 0),
(97, 'yogesh', '2022-11-02', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'marathi', 'ascdc', 'ascd@gmail.coom', '4715efcf05', 0),
(98, 'rryre', '2022-11-02', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'English', 'ryerty', 'pratham@gmail.com', 'a3d9248cb1', 63456),
(99, 'prathamesh', '2022-10-31', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'marathi', 'svfsdfv', 'part@gmail.com', 'a5cb338df8', 3546754),
(100, 'pratham', '2022-11-01', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', 'I agree', 'English', 'nerul east', 'partth@gmail.com', '157835ccdc', 2345),
(101, 'egter', '2022-11-03', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', 'erge', 'pprath@gmail.com', '68462824eb', 1234567891),
(102, 'wag', '2022-11-02', 'Male', 'gallery/website.jpg', 'I agree', 'marathi', 'argsaedrsg', 'ppprath@gmail.com', '624159270c', 1234567891),
(103, 'rhrth', '2022-11-02', 'Mal3e', 'gallery/website.jpg', 'I agree', 'Hindi', 'tyhde', 'dtyj@gmail.com', ' ', 0),
(104, 'aergwe', '2022-11-03', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', 'wergewg', 'wergewg@gmail.com', 'c3bc5b016e', 123545),
(105, 'fsgdg', '2022-11-02', 'Male', 'gallery/website.jpg', 'I agree', 'Hindi', 'dsgsfg', 'asfa@gmail.com', '7788fb9368', 2147483647),
(106, 'uhfea', '2022-11-03', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'marathi', 'wesfewaf', 'awsef@gmail.com', '9973651cc6', 1244545678),
(107, 'rtj', '2022-11-02', 'Male', 'gallery/website.jpg', 'I agree', 'Hindi', 'rykj', 'dfhd@gmail.com', 'eab7c169c8', 1235423),
(108, 'prathamesh', '2022-11-10', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agreeI agreeI agreeI agree', 'English', 'asgerag', 'pprathamesh@gmail.com', 'hdhtdht ', 542542542),
(109, 'prathamesh', '2022-11-09', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agreeI agreeI agree', 'English', 'yvsacv', 'asdas@gmail.com', '12345678 ', 345456),
(110, 'prathamesh', '2022-11-09', 'Male', 'gallery/website.jpg', 'I agree', 'Hindi', 'qwtrtg', 'eafge@gmail.com', '25d55ad283', 123545),
(111, 'prathamehs', '2022-11-11', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'marathi', 'asdvasd', 'assd@gmail.com', '25d55ad283', 1241235),
(112, 'gderg', '2022-11-09', 'Male', 'gallery/website.jpg', 'I agree', 'English', 'hdf', 'dx@gmail.com', 'fcea920f74', 15256436),
(113, 'eryry', '2022-11-03', 'Male', 'gallery/website.jpg', 'I agree', 'English', 'eyey', 'rey@gmail.com', '202cb962ac', 573567),
(114, 'tyhetrh', '2022-11-03', 'Female', 'gallery/swan_beauty_nature_264533.jpg', 'I agree', 'Hindi', 'ehrth', 'fgh@gmail.com', '76d8022461', 456456),
(115, 'fdgsf', '2022-11-03', 'Male', 'gallery/website.jpg', 'I agree', 'Hindi', 'dsgfdsg', 'sdg@gmail.com', '76d8022461', 1235412),
(116, 'qefqwe', '2022-11-16', 'Male', 'gallery/website.jpg', 'I agree', 'Hindi', 'wfeweqfg', 'wfewqfe@gmail.com', 'fcea920f74', 1345134),
(117, 'ergerg', '2022-11-04', 'Male', 'gallery/website.jpg', 'I agree', 'English,Hindi,marath', 'asgderg', 'sgr@gmail.com', '@Prathames', 1234567891),
(118, 'prathamesh', '2022-11-02', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agreeI agreeI agreeI agree', 'Hindi', 'efw', 'sdv@gmail.com', '2790bc3b1d', 3456346),
(119, 'prathamesh', '2022-11-02', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', 'I agree', 'English', 'qfwef', 'wef@gmail.com', '2790bc3b1d', 54345),
(120, 'prathamesh', '2022-11-02', 'Male', 'gallery/website.jpg', 'I agreeI agree', 'Hindi', 'ewtger', 'asvf@gmail.com', '07812ddeed', 123453456),
(121, 'prathamesh', '2022-11-02', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agreeI agree', 'marathi', 'ewsfw', 'wefw@gmail.com', '07812ddeed', 0),
(122, 'asgf', '2022-11-03', 'Male', 'gallery/website.jpg', 'I agree', 'Hindi', 'desrg', 'sderg@gmail.com', '07812ddeed', 0),
(123, 'prathamesh', '2022-11-03', 'Male', 'gallery/swan_beauty_nature_264533.jpg', 'I agreeI agreeI agree', 'Hindi', 'gwsedgw', 'aedsgf@gmail.com', '7b1f002ba2', 1234567891),
(124, 'pratahmesh', '2022-11-03', 'Male', 'gallery/website.jpg', '1', 'English', 'wasrger', 'asd@gmail.com', '7b1f002ba2', 0),
(125, 'prathamesh', '2022-11-08', 'Male', 'gallery/website.jpg', '1', 'gujrati', 'grfwerg', 'wergt@gmail.com', '253666b481', 1234567891),
(126, 'prathamesh', '2022-11-06', 'on', 'gallery/', 'on', 'English', '23ewd23', 'asif@gmail.com', 'c32ec359ed', 2456246),
(127, 'prathamesh', '2022-11-05', 'on', 'gallery/', '1', 'Marathi', 'qwertfqew', 'asdff@gmail.com', 'daff39cf3f', 546245646),
(128, 'prathamesh', '2022-11-07', 'on', 'gallery/', '1', 'Marathi', 'sdfadf', 'asdfas@gmail.com', '912ec803b2', 12351345),
(129, 'prathamesh', '2022-11-06', 'on', 'gallery/', '1', 'Marathi', 'fghf', 'dsgf@gmail.com', '4c35abffe1', 134534346),
(130, 'prathamesh', '2022-11-05', 'on', 'gallery/', '1', 'Marathi', 'xfdb', 'sdfg@gmail.com', '252b56d684', 12351),
(131, 'sfaf', '2022-11-11', 'on', 'gallery/', '1', 'Gujarathi', 'asf', 'asifdf@gmail.com', 'e8a88bb6f4', 153454),
(132, 'prathamesh', '2022-11-12', 'on', 'gallery/', '1', 'Marathi', 'afa', 'cnzaf@gmail.com', 'd86ec7ac67', 2345234),
(133, 'prathamesh', '2022-11-03', 'on', 'gallery/', '1', 'English', 'dsfg', 'czdgfnz@gmail.com', '8221bc7534', 2346256),
(134, 'prathamesh', '2022-11-06', 'on', 'gallery/', '1', 'Marathi', 'ASCD', 'asca@gmail.com', '76d8022461', 345634),
(135, 'asdf', '2022-11-12', 'on', 'gallery/', '1', 'Hindi', 'sdfasdf', 'bdksc@gmail.com', '912ec803b2', 1242354),
(136, 'sdfas', '2022-11-06', 'on', 'gallery/', '1', 'Marathi', 'sadfas', 'asdfdfv@gmail.com', '93611210a8', 254654645),
(137, 'prathamesh', '2022-11-05', 'Male', 'gallery/', '1', 'Hindi', 'Zxcsdc', 'sdrga@gmail.com', '94747a1470', 234654654),
(138, 'wdefwe', '2022-11-06', 'Male', 'gallery/', '1', 'Marathi', 'wefwef', 'fwefqw@gmail.com', '7b064dad50', 234562346),
(139, 'ASfasdf', '2022-11-05', 'Male', 'student/', '1', 'Hindi', 'asdfasdf', 'cnasdfz@gmail.com', '7815696ecb', 2542345),
(140, 'prathamesh', '2022-11-10', 'Male', 'student/', '1', 'Marathi', 'dsfasdgf', 'dsgfas@gmail.com', '85941756c3', 24562546),
(141, 'prathamesh', '2022-11-06', 'Male', 'student/', '1', 'Marathi', 'ZXZXxxccds', 'asdffcv@gmail.com', 'd3259eba0d', 34573475),
(142, 'prathamesh', '2022-11-06', 'Male', 'student/', '1', 'Marathi', 'ghmghj', 'fghjfgh@gmail.com', 'cafdcfd64b', 13452346),
(143, 'agfgf', '2022-11-07', 'Male', 'student/', '1', 'Marathi', 'asdgf', 'aaf@gmail.com', 'b3ef3748e8', 13451345),
(144, 'prathamesh', '2022-11-11', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', '1', 'Marathi', 'eswf', 'asdfasdf@gmail.com', 'ae24ae4914', 12351345),
(145, 'tushar', '2022-11-04', 'Male', 'gallery/swan_beauty_nature_264533.jpg', '1', 'English', 'asdds', 'dduck@gmail.com', '8675c6cc9e', 15234562),
(146, 'priyank', '2022-11-25', 'Male', 'gallery/swan_beauty_nature_264533.jpg', '1', 'English,Hindi,Gujara', 'arege', 'assergdf@gmail.com', '9a26f20384', 12351345),
(147, 'prathamesh', '2022-11-11', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', '1', 'English,Marathi', 'rstfht', 'qwefsrt@gmail.com', '7c8db9682e', 345767),
(148, 'prathamesh', '2022-11-11', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', '1', 'English,Marathi', 'rstfht', 'qwefsrart@gmail.com', '1d7ccf7d5b', 345767),
(149, 'prathamesh', '2022-11-13', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', '1', 'English,Marathi,Hind', 'sgawg', 'qwefagasrt@gmail.com', '07812ddeed', 125351456),
(150, 'prathamesh', '2022-11-13', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', '1', 'English,Marathi', 'asg', 'sdrasggae@gmail.com', 'a52b64caa1', 2346546),
(151, 'prathamesh', '2022-11-06', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', '1', 'Hindi,Gujarathi', 'dzrfghsd', 'assdhsdf@gmail.com', '7b1f002ba2', 456644),
(152, 'prathamesh', '2022-11-05', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', '1', 'English,Marathi', 'sdgfhdgh', 'sdrgasdge@gmail.com', 'e332a76c29', 12351345),
(153, 'prathamesh', '2022-11-02', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', '1', 'Hindi,Gujarathi', 'asdvg', 'sdargae@gmail.com', '3e8a6ab1d0', 456345645),
(154, 'prathamesh', '2022-11-05', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', '1', 'English,Marathi', 'rtshreh', 'arthesdf@gmail.com', 'cc9943b4f0', 12351345),
(155, 'tushar', '2022-11-05', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', '1', 'English,Marathi', 'sdrgsdrfg', 'asdgssdf@gmail.com', 'd41d8cd98f', 12351345),
(156, 'Ashok', '2022-11-09', 'Male', 'gallery/photo-1533450718592-29d45635f0a9.jpg', '1', 'Hindi,Gujarathi', 'fjdtykjtk', 'asrtuydsrtsdf@gmail.com', 'd41d8cd98f', 32452364),
(157, 'aarti', '2022-11-06', 'Male', 'gallery/swan_beauty_nature_264533.jpg', '1', 'Marathi,Hindi,Gujara', 'sdfbhs', 'sdrsdfhgae@gmail.com', 'd41d8cd98f', 12351345),
(158, 'prathamesh', '2022-11-05', 'Male', 'gallery/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png', '1', 'Marathi,Hindi', 'dsfbsdf', 'asdfsdf@gmail.com', 'd41d8cd98f', 32452364);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
