-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 04:40 PM
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
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(4, 10, 'test123@email.com', '2023-09-01', '2023-09-05', 'You know, I have planned many trips before with various travel agents and I must say you are truly one of the best agent/agency.', '2023-10-02 15:30:36', 1, NULL, '2023-10-02 15:30:58'),
(5, 11, 'test123@email.com', '2023-10-04', '2023-10-11', 'You know, I have planned many trips before with various travel agents and I must say you are truly one of the best agent/agency.', '2023-10-02 15:31:50', 0, NULL, NULL),
(6, 13, 'test123@email.com', '2023-10-13', '2023-10-17', 'You know, I have planned many trips before with various travel agents and I must say you are truly one of the best agent/agency.', '2023-10-02 15:33:12', 2, 'u', '2023-10-02 15:34:27'),
(7, 10, 'test123@email.com', '2023-10-02', '2023-10-07', 'You know, I have planned many trips before with various travel agents and I must say you are truly one of the best agent/agency I have had the pleasure to interact.', '2023-10-02 15:35:03', 2, 'a', '2023-10-02 15:35:15'),
(8, 10, 'test123@email.com', '2023-10-02', '2023-10-07', 'You know, I have planned many trips before with various travel agents and I must say you are truly one of the best agent/agency I have had the pleasure to interact.', '2023-10-02 15:35:19', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(4, 'Test User', 'test123@email.com', '0300123456', 'Tour Cancelation', 'An enquiry form is a form businesses, educational institutions, and NGOs can use to provide their customers/ students/ donors with a means of asking questions about the activity of the organization at hand.', '2023-10-02 16:02:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(9, 'test123@email.com', 'Cancellation', 'My tour booking was cancelled by TMS administration.', '2023-10-02 15:39:37', 'We are sorry! That was an error in system.', '2023-10-02 15:41:00'),
(10, 'test123@email.com', 'Booking Issues', 'I am unable to book tour. Please sort out my problem.', '2023-10-02 15:40:20', 'The system is under maintaince we will solve your issue as soon as possible.', '2023-10-02 15:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! Pakistan. 1Yahoo Web Services Pakistan Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><span style=\"font-size: small;\">Welcome to Yahoo! Pakistan. 1Yahoo Web Services Pakistan Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at:&nbsp;</span><a href=\"http://in.docs.yahoo.com/info/terms/\" style=\"background-color: rgb(255, 255, 255); font-size: small;\">http://in.docs.yahoo.com/info/terms/</a><span style=\"font-size: small;\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service.</span><br></p>\r\n<p align=\"justify\"><span style=\"font-size: small;\">Welcome to Yahoo! Pakistan. 1Yahoo Web Services Pakistan Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at:&nbsp;</span><a href=\"http://in.docs.yahoo.com/info/terms/\" style=\"background-color: rgb(255, 255, 255); font-size: small;\">http://in.docs.yahoo.com/info/terms/</a><span style=\"font-size: small;\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service.</span><br></p>\r\n										\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify; font-weight: bold; font-family: arial;\">Welcome to Tourism Management System!!!</span></div><p><span style=\"font-family: arial; color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices in Pakistan.</span><span style=\"color: rgb(80, 80, 80);\"><span style=\"font-family: arial;\"><span style=\"font-size: 13px;\">&nbsp;</span><span style=\"font-size: medium;\">We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span></span></p>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Aspire Group of Colleges, Pattoki</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(10, 'Hunza Valley  4 Days 3 Nights Tour', 'Family Package', 'Gilgit-Baltistan', 30000, 'Islamabad to Gilgit Return Tickets SEDAN Car in Hunza Gilgit inclusive Any Toll Taxes Any Fuel used for the tour Driver Accommodation is paid for by us Tickets/passes for Altit  Fort  Inclusive  Breakfast ', 'Day 01:  Take a flight from Islamabad to Gilgit, and we shall reach in 45 minutes and transfer to Hotel in Gilgit ( KALISTO HOTEL GILGIT )\r\nDay 02: Move towards Hunza, 2 Hours Drive to Reach Hunza, lots of Sightseeing on the way; Visit Karimabad Bazar & Visit Altit Fort (DARBAR HOTEL HUNZA)\r\nDay 03: On the third day, we shall visit Attabad Lake. Furthermore, see Upper Hunza &  Gulmit Village for Half Day Activity & back to Hotel (DARBAR HOTEL HUNZA)\r\nDay 04: Breakfast and transfer to Gilgit Airport – End of Tour', 'Hunza-valley-1.jpg', '2023-10-02 15:08:38', '2023-10-02 15:09:24'),
(11, 'Naran Luxury 5 Days 4 Nights Tour', 'Couple Package', 'Khyber-Pakhtunkhwa', 25000, 'Dedicated Transportation Air-conditioned GLI Car  2020 /21 Model luxury 04 Star  Accommodation Private Jeep Ride to Siri Paye Meadows Private Jeep Ride to Lake Saiful Malook Bonefire arranmens in Naran in Hotel Rafting in Naran Valley Included in Tour Pla', 'Day 01:  pick from Rawalpindi/ Islamabad  City and then Reach SHogran in 7  to 8 Hours, estimated, and check into Hotel in Shogran.\r\nDay 02:  Visit Siri Paye meadows  in Shogran on Private Willi Jeep that is covered in a Tour package and then back to Shogran to Hotel\r\nDay 03:  Breakfast and Move towards Naran in 3 Hours drive via Kaghan Valley and then reach Naran Visit Lake Saiful Malook on Private Jeep\r\nDay 04:  Breakfast and move towards Babusar Top and Lulusar Lake and back to Naran in the Evening and check into Hotel for Rest.\r\nDay 05: Breakfast and move towards Rawalpindi Islamabad and reach in 8 to 9 hours for End of Tour', 'Beautiful_Kaghan_Valley_Pakistan.jpg', '2023-10-02 15:12:43', '2023-10-02 15:13:22'),
(12, '3 Day Swat Valley Honeymoon Tour', 'Couple Package', 'Khyber-Pakhtunkhwa', 15000, 'Dedicated Private GLI Car with Driver & Fuel Breakfast for Couple 2 Nights Hotel Stay in Serena Swat Saidu Sharif Road Taxex Jeep Ride to Malam Jabba if required', 'Day 01: Start the Tour in the Morning from Islamabad at 8 am and move towards Fizzaghat, Short stay in few locations, Reach the Hotel in Saidu Sharif \r\n \r\n\r\nDay 02: Breakfast in the Hotel, Visit Malam Jabba and spend a few hours there, Visit Murghzar and White Palace back to Hotel \r\n \r\n\r\nDay 03: Breakfast in the Hotel, Visit City for Shopping, and then move towards Islamabad for the End of the Tour.', 'feature-image-min.jpg', '2023-10-02 15:17:03', '2023-10-02 15:17:58'),
(13, 'Lahore Sightseeing 2 Days Tour', 'Group Package', 'Lahore, Punjab', 20000, 'Air Conditioned Gli Toyota Car Quality Hotel Stay One Breakfast at Lahore with local Famous Lahore Breakfast Tickets for Forts included Guided trip All kinds of tolls and taxes.', 'A single-day Lahore Tour is not enough to explore the enriched Lahore culture, you need two or three days to explore the history and witness these majestic places fully. Lahore is the mystic city of Punjab and the heart of Pakistan. It has been the capital of Punjab for nearly 1,000 years and has a rich history, art, and culture. It is also the hub of different activities throughout the year.', '6421_577158092309099_1498971570_n.jpg', '2023-10-02 15:21:03', NULL),
(14, '7 Days Punjab & Potohar Tour', 'Group Package', 'Punjab', 35000, 'Day 01: Meet on arrival at Lahore Afternoon Sightseeing tour of Lahore. Visit Lahore fort and Badshahi mosque later drive to Pakistan India border to witness the flag ceremony. Evening special dinner at famous food street of Lahore, overnight at Lahore Ho', 'Day 01: Meet on arrival at Lahore Afternoon Sightseeing tour of Lahore. Visit Lahore fort and Badshahi mosque later drive to Pakistan India border to witness the flag ceremony. Evening special dinner at famous food street of Lahore, overnight at Lahore Hotel.\r\nDay 02: Early morning drive to Multan enroute visit Harrapa on arrival at Multan check in at hotel, overnight at Multan Hotel.\r\nDay 03: Full day tour of Bahawapur & Uch Shrines and the monuments in Multan , overnight at Multan Hotel.\r\nDay 04: Drive to Lahore, overnight at Lahore Hotel\r\nDay 05: Morning half day tour of Lahore Afternoon drive to Islamabad enroute visit salt mines at khewra, overnight at Islamabad Hotel.\r\nDay 06: Morning tour of Rawalpindi & Islamabad Afternoon tour of Taxila, overnight at Islamabad Hotel.\r\nDay 07: Morning at leisure in time transfer to airport for your flight to home.', 'L_Badshahi Masjid Lahore.jpg', '2023-10-02 15:26:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(8, 'Test User', '0300123456', 'test123@email.com', 'f925916e2754e5e03f75dd58a5733251', '2023-10-02 14:48:10', NULL),
(9, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2023-10-02 15:39:37', NULL),
(10, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2023-10-02 15:40:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
