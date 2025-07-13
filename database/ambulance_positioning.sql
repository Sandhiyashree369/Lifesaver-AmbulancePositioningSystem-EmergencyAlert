-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2024 at 04:52 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ambulance_positioning`
--

-- --------------------------------------------------------

--
-- Table structure for table `ap_admin`
--

CREATE TABLE `ap_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `utype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_admin`
--

INSERT INTO `ap_admin` (`username`, `password`, `utype`) VALUES
('admin', 'admin', 1),
('nhai', '1234', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ap_alert`
--

CREATE TABLE `ap_alert` (
  `id` int(11) NOT NULL,
  `vno` varchar(20) NOT NULL,
  `vspeed` int(11) NOT NULL,
  `acc_st` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `dtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_alert`
--

INSERT INTO `ap_alert` (`id`, `vno`, `vspeed`, `acc_st`, `city`, `dtime`) VALUES
(1, 'TN2121', 100, 0, 'Salem', '2024-03-07 22:48:45'),
(2, 'TN2121', 100, 0, 'Salem', '2024-03-07 22:49:21'),
(3, 'TN2121', 80, 0, 'Salem', '2024-03-07 22:49:38'),
(4, 'TN2121', 70, 1, 'Salem', '2024-03-07 22:49:50'),
(5, 'TN2121', 100, 0, 'Salem', '2024-03-07 22:49:55'),
(6, 'TN2121', 70, 0, 'Salem', '2024-03-07 23:26:39'),
(7, 'TN2121', 70, 0, 'Salem', '2024-03-08 00:34:33'),
(8, 'TN2121', 80, 1, 'Salem', '2024-03-08 00:34:36'),
(9, 'TN2121', 120, 1, 'Salem', '2024-03-08 01:02:47'),
(10, 'TN2121', 80, 1, 'Salem', '2024-03-08 04:52:07'),
(11, 'TN2121', 70, 0, 'Salem', '2024-03-08 04:52:53'),
(12, 'TN2121', 120, 1, 'Salem', '2024-03-08 04:53:04'),
(13, 'TN2121', 110, 1, 'Trichy', '2024-03-08 04:58:27'),
(14, 'TN2121', 120, 1, 'Trichy', '2024-03-08 05:00:17'),
(15, 'TN2121', 100, 1, 'Trichy', '2024-03-08 05:00:19'),
(16, 'TN2121', 110, 1, 'Thanjavur', '2024-03-08 05:07:17'),
(17, 'TN2525', 70, 0, 'Thanjavur', '2024-03-08 09:19:45'),
(18, 'TN2525', 110, 0, 'Thanjavur', '2024-03-08 09:11:33'),
(19, 'TN2525', 80, 0, 'Thanjavur', '2024-03-08 09:19:22'),
(20, 'TN2525', 100, 1, 'Thanjavur', '2024-03-08 09:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `ap_ambulance`
--

CREATE TABLE `ap_ambulance` (
  `id` int(11) NOT NULL,
  `ambulance_no` varchar(20) NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `driver` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_ambulance`
--

INSERT INTO `ap_ambulance` (`id`, `ambulance_no`, `area`, `city`, `driver`, `mobile`) VALUES
(1, 'TN4585', 'ARK Nagar', 'Trichy', 'Ramesh', 9894442716),
(2, 'TN6641', 'Velayudhapuram', 'Trichy', 'Gokul', 9894442716),
(3, 'TN5574', 'Ammanpettai', 'Thanjavur', 'Ravi', 9894442716),
(4, 'TN8875', 'Uthukuli', 'Erode', 'Kumar', 9894442716),
(5, 'TN8989', 'Rayapuram', 'Chennai', 'Suresh', 9894442716);

-- --------------------------------------------------------

--
-- Table structure for table `ap_geo_location`
--

CREATE TABLE `ap_geo_location` (
  `id` int(11) NOT NULL,
  `location` varchar(30) NOT NULL,
  `detail` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `nh_number` varchar(20) NOT NULL,
  `test_st` int(11) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lon` varchar(20) NOT NULL,
  `lat2` varchar(20) NOT NULL,
  `lon2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_geo_location`
--

INSERT INTO `ap_geo_location` (`id`, `location`, `detail`, `city`, `nh_number`, `test_st`, `lat`, `lon`, `lat2`, `lon2`) VALUES
(1, 'Trichy', 'new google.maps.LatLng(10.886908,78.691389), new google.maps.LatLng(10.849145,78.728468), new google.maps.LatLng(10.825541,78.688299), new google.maps.LatLng(10.862632,78.643324), ', '', '', 2, '', '', '', ''),
(2, 'ARK Nagar', 'new google.maps.LatLng(10.826353,78.712434), new google.maps.LatLng(10.826874,78.712439), new google.maps.LatLng(10.827575,78.712493), new google.maps.LatLng(10.827628,78.712649), new google.maps.LatLng(10.827296,78.712649), new google.maps.LatLng(10.826798,78.712627), new google.maps.LatLng(10.826292,78.712622), new google.maps.LatLng(10.825744,78.7126), new google.maps.LatLng(10.825478,78.712579), new google.maps.LatLng(10.825526,78.712437), new google.maps.LatLng(10.826063,78.712442), new google.maps.LatLng(10.826353,78.712434), ', 'Trichy', 'NH 67', 0, '10.826217', '78.712228', '', ''),
(3, 'Velayudhapuram', 'new google.maps.LatLng(10.87446,78.773432), new google.maps.LatLng(10.874723,78.774848), new google.maps.LatLng(10.875229,78.777798), new google.maps.LatLng(10.875229,78.781124), new google.maps.LatLng(10.874807,78.775663), new google.maps.LatLng(10.87446,78.773432), ', 'Trichy', 'NH 81', 0, '10.874647', '78.777059', '', ''),
(4, 'Ammanpettai', 'new google.maps.LatLng(10.839,79.121939), new google.maps.LatLng(10.839432,79.121555), new google.maps.LatLng(10.839853,79.121281), new google.maps.LatLng(10.840043,79.121239), new google.maps.LatLng(10.839276,79.121764), new google.maps.LatLng(10.839,79.121939), ', 'Thanjavur', 'NH 136', 0, '10.839251', '79.121160', '', ''),
(5, 'Uthukuli', 'new google.maps.LatLng(11.294129,77.759313), new google.maps.LatLng(11.294739,77.759096), new google.maps.LatLng(11.295465,77.758908), new google.maps.LatLng(11.295623,77.758929), new google.maps.LatLng(11.294639,77.759208), ', 'Erode', '84A', 0, '11.294519', '77.758791', '', ''),
(6, 'Rayapuram', 'new google.maps.LatLng(13.111897,80.292085), new google.maps.LatLng(13.11349,80.292321), new google.maps.LatLng(13.114609,80.292514), new google.maps.LatLng(13.115131,80.292659), new google.maps.LatLng(13.112406,80.292221), ', 'Chennai', 'NH 114', 0, '13.113111', '80.292070', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_hospital`
--

CREATE TABLE `ap_hospital` (
  `id` int(11) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_hospital`
--

INSERT INTO `ap_hospital` (`id`, `hospital`, `area`, `city`, `mobile`) VALUES
(1, 'Apollo', 'Egmore', 'Chennai', 9894442716),
(2, 'GH', 'Worriyur', 'Trichy', 9856442889);

-- --------------------------------------------------------

--
-- Table structure for table `ap_location_data`
--

CREATE TABLE `ap_location_data` (
  `id` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `num_accident` int(11) NOT NULL,
  `nh_number` varchar(20) NOT NULL,
  `test_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_location_data`
--

INSERT INTO `ap_location_data` (`id`, `gid`, `area`, `city`, `latitude`, `longitude`, `num_accident`, `nh_number`, `test_st`) VALUES
(1, 2, 'ARK Nagar', 'Trichy', '10.826353', '78.712434', 4, 'NH 67', 0),
(2, 2, 'ARK Nagar', 'Trichy', '10.826874', '78.712439', 2, 'NH 67', 0),
(3, 2, 'ARK Nagar', 'Trichy', '10.827575', '78.712493', 1, 'NH 67', 0),
(4, 2, 'ARK Nagar', 'Trichy', '10.827628', '78.712649', 3, 'NH 136', 0),
(5, 2, 'ARK Nagar', 'Trichy', '10.827296', '78.712649', 5, '84A', 0),
(6, 2, 'ARK Nagar', 'Trichy', '10.826798', '78.712627', 2, 'NH 114', 0),
(7, 2, 'ARK Nagar', 'Trichy', '10.826292', '78.712622', 1, 'NH 67', 0),
(8, 2, 'ARK Nagar', 'Trichy', '10.825744', '78.712611', 3, 'NH 67', 0),
(9, 2, 'ARK Nagar', 'Trichy', '10.825478', '78.712579', 4, 'NH 67', 0),
(10, 2, 'ARK Nagar', 'Trichy', '10.825526', '78.712437', 3, 'NH 67', 0),
(11, 2, 'ARK Nagar', 'Trichy', '10.826063', '78.712442', 3, 'NH 67', 0),
(12, 2, 'ARK Nagar', 'Trichy', '10.826353', '78.712434', 2, 'NH 67', 0),
(13, 3, 'Velayudhapuram', 'Trichy', '10.874465', '78.773432', 2, 'NH 81', 0),
(14, 3, 'Velayudhapuram', 'Trichy', '10.874723', '78.774848', 1, 'NH 81', 0),
(15, 3, 'Velayudhapuram', 'Trichy', '10.875229', '78.777798', 3, 'NH 81', 0),
(16, 3, 'Velayudhapuram', 'Trichy', '10.875229', '78.781124', 4, 'NH 81', 0),
(17, 3, 'Velayudhapuram', 'Trichy', '10.874807', '78.775663', 2, 'NH 81', 0),
(18, 3, 'Velayudhapuram', 'Trichy', '10.874461', '78.773432', 1, 'NH 81', 0),
(19, 4, 'Ammanpettai', 'Thanjavur', '10.839125', '79.121939', 2, 'NH 136', 0),
(20, 4, 'Ammanpettai', 'Thanjavur', '10.839432', '79.121555', 3, 'NH 136', 0),
(21, 4, 'Ammanpettai', 'Thanjavur', '10.839853', '79.121281', 7, 'NH 136', 0),
(22, 4, 'Ammanpettai', 'Thanjavur', '10.840043', '79.121239', 2, 'NH 136', 0),
(23, 4, 'Ammanpettai', 'Thanjavur', '10.839276', '79.121764', 1, 'NH 136', 0),
(24, 4, 'Ammanpettai', 'Thanjavur', '10.839134', '79.121939', 1, 'NH 136', 0),
(25, 5, 'Uthukuli', 'Erode', '11.294129', '77.759313', 2, '84A', 0),
(26, 5, 'Uthukuli', 'Erode', '11.294739', '77.759096', 3, '84A', 0),
(27, 5, 'Uthukuli', 'Erode', '11.295465', '77.758908', 5, '84A', 0),
(28, 5, 'Uthukuli', 'Erode', '11.295623', '77.758929', 4, '84A', 0),
(29, 5, 'Uthukuli', 'Erode', '11.294639', '77.759208', 1, '84A', 0),
(30, 6, 'Rayapuram', 'Chennai', '13.111897', '80.292085', 2, 'NH 114', 0),
(31, 6, 'Rayapuram', 'Chennai', '13.11349', '80.292321', 3, 'NH 114', 0),
(32, 6, 'Rayapuram', 'Chennai', '13.114609', '80.292514', 8, 'NH 114', 0),
(33, 6, 'Rayapuram', 'Chennai', '13.115131', '80.292659', 6, 'NH 114', 0),
(34, 6, 'Rayapuram', 'Chennai', '13.112406', '80.292221', 4, 'NH 114', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ap_register`
--

CREATE TABLE `ap_register` (
  `id` int(11) NOT NULL,
  `vno` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `mobile2` bigint(20) NOT NULL,
  `mobile3` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `vtype` varchar(20) NOT NULL,
  `vehicle` varchar(30) NOT NULL,
  `vmodel` varchar(30) NOT NULL,
  `vcolor` varchar(20) NOT NULL,
  `vehicle_photo` varchar(50) NOT NULL,
  `aadhar` varchar(50) NOT NULL,
  `driving` varchar(50) NOT NULL,
  `pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_register`
--

INSERT INTO `ap_register` (`id`, `vno`, `name`, `gender`, `dob`, `mobile`, `mobile2`, `mobile3`, `email`, `address`, `city`, `uname`, `pass`, `photo`, `rdate`, `vtype`, `vehicle`, `vmodel`, `vcolor`, `vehicle_photo`, `aadhar`, `driving`, `pincode`) VALUES
(1, 'TN2525', 'Jegan', 'Male', '1995-06-05', 9517558647, 9638527415, 9874562145, 'jegan@gmail.com', '45, FR Nagar', 'Salem', 'Jeg001', '81161', 'P1person_2-min.jpg', '2024-02-02', '4 Wheeler', 'Maruthi', 'Nexa 2024', 'Blue', 'V1V2car.png', 'A1a4.jpg', 'D1dd2.jpg', '652114');

-- --------------------------------------------------------

--
-- Table structure for table `ap_traffic`
--

CREATE TABLE `ap_traffic` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_traffic`
--

INSERT INTO `ap_traffic` (`id`, `name`, `location`, `city`, `uname`, `pass`, `mobile`, `email`) VALUES
(1, 'Ashok', 'ARK Nagar', 'Trichy', 'TC1', '123456', 9894442716, 'bgeduscanner@gmail.com'),
(2, 'Harish', 'Velayudhapuram', 'Trichy', 'TC2', '123456', 9894442716, 'harish@gmail.com'),
(3, 'Varun', 'Ammanpettai', 'Thanjavur', 'TC3', '123456', 9894442716, 'varun@gmail.com'),
(4, 'Dharun', 'Uthukuli', 'Erode', 'TC4', '123456', 9894442716, 'dharun@gmail.com'),
(5, 'Rahul', 'Rayapuram', 'Chennai', 'TC5', '123456', 9894442716, 'rahul@gmail.com');
