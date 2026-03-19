-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2026 at 08:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` varchar(255) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_PASSWORD`) VALUES
('1', 'Sonam@9930'),
('ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE `bikes` (
  `BIKE_ID` int(11) NOT NULL,
  `BIKE_NAME` varchar(255) NOT NULL,
  `FUEL_TYPE` varchar(50) NOT NULL,
  `CAPACITY` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `BIKE_IMG` varchar(255) NOT NULL,
  `AVAILABLE` char(1) NOT NULL DEFAULT 'Y',
  `vehicle_type` enum('NA','Bike') DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`BIKE_ID`, `BIKE_NAME`, `FUEL_TYPE`, `CAPACITY`, `PRICE`, `BIKE_IMG`, `AVAILABLE`, `vehicle_type`) VALUES
(4, 'Harley', 'petrol', 2, 4000, 'harley.jpg', 'Y', 'Bike'),
(21, 'KTM', 'petrol', 2, 3000, 'ktm.jpeg', 'Y', 'Bike'),
(22, 'Duke', 'petrol', 2, 3000, 'duke.png', 'Y', 'Bike'),
(31, 'honda', 'diesal', 3, 1, 'IMG-67c31470c48b93.03545325.jpg', 'Y', 'Bike');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BOOK_ID` int(11) NOT NULL,
  `CAR_ID` int(11) DEFAULT NULL,
  `Bike_Id` int(11) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `BOOK_PLACE` varchar(255) NOT NULL,
  `BOOK_DATE` date NOT NULL,
  `DURATION` int(11) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `DESTINATION` varchar(255) NOT NULL,
  `RETURN_DATE` date NOT NULL,
  `PRICE` int(11) NOT NULL,
  `vehicle_type` enum('NA','Car','Bike') DEFAULT 'NA',
  `BOOK_STATUS` varchar(255) NOT NULL DEFAULT 'UNDER PROCESSING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOK_ID`, `CAR_ID`, `Bike_Id`, `EMAIL`, `BOOK_PLACE`, `BOOK_DATE`, `DURATION`, `PHONE_NUMBER`, `DESTINATION`, `RETURN_DATE`, `PRICE`, `vehicle_type`, `BOOK_STATUS`) VALUES
(76, 2, NULL, 'sonam@gmail.com', 'dsbjdfb', '2025-02-26', 3, 6768768778, 'dssd', '2025-02-28', 21000, 'NA', 'UNDER PROCESSING'),
(78, 5, NULL, 'sonam@gmail.com', 'mumbai', '2025-02-26', 2, 6768768778, 'dfefef', '2025-02-27', 8000, 'NA', 'UNDER PROCESSING'),
(79, 2, NULL, 'sonam@gmail.com', 'mumbai', '2025-02-26', 2, 9898989898, 'dfefef', '2025-02-28', 14000, 'NA', 'UNDER PROCESSING'),
(80, 2, NULL, 'sonam@gmail.com', 'mumbai', '2025-02-26', 1, 9898989898, 'dfefef', '2025-02-28', 7000, 'NA', 'APPROVED'),
(81, 20, NULL, 'sonam@gmail.com', 'dsds', '2025-02-26', 2, 9898989898, 'da', '2025-02-28', 2000, 'NA', 'APPROVED'),
(82, 2, NULL, 'sonam@gmail.com', 'thane', '2025-02-26', 5, 987879, 'bjbj', '2025-03-04', 35000, 'NA', 'UNDER PROCESSING'),
(86, 5, 0, 'sonam@gmail.com', 'tsest', '2025-02-28', 4, 987654321, 'designer', '2025-03-07', 16000, 'Car', 'UNDER PROCESSING'),
(87, 5, 0, 'sonam@gmail.com', 'tsest', '2025-02-28', 4, 987654321, 'designer', '2025-03-07', 16000, 'Car', 'UNDER PROCESSING'),
(92, NULL, 21, 'sonam@gmail.com', 'mumbai', '2025-02-27', 3, 6768768778, 'delhi', '2025-03-02', 9000, 'Bike', 'UNDER PROCESSING'),
(94, NULL, 21, 'sonam@gmail.com', 'mumbai', '2025-02-28', 1, 6768768778, 'ddfefs', '2025-03-01', 3000, 'Bike', 'UNDER PROCESSING'),
(98, NULL, 21, 'sonam@gmail.com', 'sw', '2025-03-02', 3, 3434, 'sd', '2025-03-14', 9000, 'Bike', 'UNDER PROCESSING'),
(101, NULL, 21, 'sonam@gmail.com', 'mumbai', '2025-03-02', 4, 6768768778, 'FDFD', '2025-03-06', 12000, 'Bike', 'UNDER PROCESSING'),
(102, 5, NULL, 'sonam@gmail.com', 'mumbai', '2025-03-02', 3, 3232, '32', '2025-03-05', 12000, 'Car', 'UNDER PROCESSING'),
(103, 2, NULL, 'sonam@gmail.com', 'mumbai', '2025-03-11', 4, 987654321, 'dssd', '2025-03-13', 28000, 'Car', 'UNDER PROCESSING'),
(104, 2, NULL, 'sonam@gmail.com', 'mumbai', '2025-03-12', 4, 9898989898, 'kolambi', '2025-03-13', 28000, 'Car', 'UNDER PROCESSING'),
(105, 2, NULL, 'sonam@gmail.com', 'mumbai', '2025-03-05', 6, 9898989898, 'delhi', '2025-03-11', 42000, 'Car', 'UNDER PROCESSING'),
(106, NULL, 31, 'sonam@gmail.com', 'mumbai', '2025-03-05', 3, 9898989898, 'delhi', '2025-03-08', 3, 'Bike', 'UNDER PROCESSING');

-- --------------------------------------------------------

--
-- Table structure for table `booking_bike`
--

CREATE TABLE `booking_bike` (
  `BOOK_ID` int(11) NOT NULL,
  `BIKE_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `BOOK_PLACE` varchar(255) NOT NULL,
  `BOOK_DATE` date NOT NULL,
  `DURATION` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(15) NOT NULL,
  `DESTINATION` varchar(255) NOT NULL,
  `RETURN_DATE` date NOT NULL,
  `PRICE` int(11) NOT NULL,
  `BOOK_STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_bike`
--

INSERT INTO `booking_bike` (`BOOK_ID`, `BIKE_ID`, `EMAIL`, `BOOK_PLACE`, `BOOK_DATE`, `DURATION`, `PHONE_NUMBER`, `DESTINATION`, `RETURN_DATE`, `PRICE`, `BOOK_STATUS`) VALUES
(1, 1, 'sonam@gmail.com', 'mumbai', '2025-02-26', 4, '6768768778', 'delhi', '2025-03-01', 12000, ''),
(2, 22, 'sonam@gmail.com', 'pune', '2025-02-26', 3, '9898989898', 'FDFD', '2025-02-28', 9000, ''),
(3, 23, 'sonam@gmail.com', 'kaaaa', '2025-02-26', 2, '9898989898', 'dssd', '2025-02-28', 6000, ''),
(4, 21, 'sonam@gmail.com', 'kaaaaa', '2025-02-26', 2, '987879', 'zxcv', '2025-03-01', 6000, ''),
(5, 22, 'sonam@gmail.com', 'mumbai', '2025-02-26', 5, '987879', 'ddfefs', '2025-03-04', 15000, ''),
(6, 4, 'sonam@gmail.com', 'mumbai', '2025-02-26', 3, '987879', 'FDFD', '2025-02-28', 12000, ''),
(7, 22, 'sonam@gmail.com', 'asdfg', '2025-02-26', 4, '432424242', 'dfdfdf', '2025-03-01', 12000, ''),
(8, 21, 'sonam@gmail.com', 'mumbai', '2025-02-26', 3, '6768768778', 'dsdsdw', '2025-03-02', 9000, ''),
(9, 22, 'sonam@gmail.com', 'mumbai', '2025-02-26', 3, '6768768778', 'ddfefs', '2025-03-04', 9000, ''),
(10, 22, 'sonam@gmail.com', 'wert', '2025-02-26', 2, '11111', 'delhi', '2025-03-01', 6000, '');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CAR_ID` int(11) NOT NULL,
  `CAR_NAME` varchar(255) NOT NULL,
  `FUEL_TYPE` varchar(255) NOT NULL,
  `CAPACITY` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `CAR_IMG` varchar(255) NOT NULL,
  `AVAILABLE` varchar(255) NOT NULL,
  `vehicle_type` enum('NA','Car') DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CAR_ID`, `CAR_NAME`, `FUEL_TYPE`, `CAPACITY`, `PRICE`, `CAR_IMG`, `AVAILABLE`, `vehicle_type`) VALUES
(2, 'LAMBORGINI', 'DEISEL', 6, 7000, 'lamborghini.webp', 'Y', 'Car'),
(5, 'FERRARI', 'Petrol', 2, 4000, 'ferrari.jpg', 'Y', 'Car'),
(20, 'SWIFT', 'DEISEL', 4, 1000, 'IMG-6239c94ea8a4a0.51789849.jpg', 'Y', 'Car'),
(23, 'ALTO', 'DEISEL', 2, 2000, 'alto.jpg', 'Y', 'Car');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FED_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `COMMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FED_ID`, `EMAIL`, `COMMENT`) VALUES
(11, 'sonam@gmail.com', 'hhgugdjegduehdu'),
(12, 'sonam@gmail.com', 'nice car');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAY_ID` int(11) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `CARD_NO` varchar(255) NOT NULL,
  `EXP_DATE` varchar(255) NOT NULL,
  `CVV` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAY_ID`, `BOOK_ID`, `CARD_NO`, `EXP_DATE`, `CVV`, `PRICE`) VALUES
(29, 78, '332', '322', 324, 8000),
(30, 79, '23232', '222', 22, 14000),
(31, 80, '23232', '3232', 424, 7000),
(32, 81, '23232', '23', 32, 2000),
(33, 82, '7686', '668', 767, 35000),
(51, 87, '123', '12345', 123, 16000),
(52, 92, '3424', '324', 343, 9000),
(54, 94, '3443', '34', 434, 3000),
(56, 101, '323', '32', 23, 12000),
(57, 102, '6767', '56', 565, 12000),
(58, 103, '1234567', '12', 123, 28000),
(59, 106, '5256445', '54535', 222, 3);

-- --------------------------------------------------------

--
-- Table structure for table `regist`
--

CREATE TABLE `regist` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regist`
--

INSERT INTO `regist` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'abc', 'abc@gmail.com', '$2y$10$nxl5wvKkJwrCxP6lndS9/OEdKDm9Xj/lofyvc1WCu4x6iQrE8dtS6', '2025-02-25 14:00:20'),
(2, 'Test', 'test@gmail.com', '$2y$10$ogt44tjxFjGprXV2gO6Ts.SC3jIlrKKCdoEZPbNYmLHb7an.eBgjy', '2025-03-01 04:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `register_details`
--
-- Error reading structure for table rental.register_details: #1932 - Table &#039;rental.register_details&#039; doesn&#039;t exist in engine
-- Error reading data for table rental.register_details: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `rental`.`register_details`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `FNAME` varchar(255) NOT NULL,
  `LNAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `LIC_NUM` varchar(255) NOT NULL,
  `PHONE_NUMBER` bigint(11) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `GENDER` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FNAME`, `LNAME`, `EMAIL`, `LIC_NUM`, `PHONE_NUMBER`, `PASSWORD`, `GENDER`) VALUES
('Sonali', 'Viskrma', 'sonali@gmail.com', '45454545', 3443434, 'cdd0e7705f82f706ab72496c695685c8', 'female'),
('Sonam', 'Vishwkrma', 'sonam@gmail.com', '897775', 9898989898, '4104f939fdc98f9823a53edee1355caa', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`BIKE_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOK_ID`),
  ADD KEY `CAR_ID` (`CAR_ID`),
  ADD KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `booking_bike`
--
ALTER TABLE `booking_bike`
  ADD PRIMARY KEY (`BOOK_ID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CAR_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FED_ID`),
  ADD KEY `TEST` (`EMAIL`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAY_ID`),
  ADD UNIQUE KEY `BOOK_ID` (`BOOK_ID`);

--
-- Indexes for table `regist`
--
ALTER TABLE `regist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bikes`
--
ALTER TABLE `bikes`
  MODIFY `BIKE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `booking_bike`
--
ALTER TABLE `booking_bike`
  MODIFY `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `CAR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FED_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PAY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `regist`
--
ALTER TABLE `regist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CAR_ID`) REFERENCES `cars` (`CAR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`EMAIL`) REFERENCES `users` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `TEST` FOREIGN KEY (`EMAIL`) REFERENCES `users` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `booking` (`BOOK_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
