-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 09:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `Goal_Number` int(11) NOT NULL,
  `Goal_Id` varchar(255) NOT NULL,
  `User_Number` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Start_Date` date NOT NULL DEFAULT current_timestamp(),
  `End_Date` date NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(255) NOT NULL,
  `Created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `Updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`Goal_Number`, `Goal_Id`, `User_Number`, `Title`, `Description`, `Start_Date`, `End_Date`, `Status`, `Created_at`, `Updated_at`) VALUES
(1, 'G01', '1', 'Work Out', 'To be healthier', '2024-06-08', '2024-07-08', 'Ongoing', '2024-06-08 05:20:51.000000', '2024-06-08 06:58:27.904765'),
(2, 'G02', '2', 'Assignments', 'To finish school/home works', '2024-06-08', '2024-06-15', 'Pending', '2024-06-08 05:22:16.000000', '2024-06-08 06:58:27.904765'),
(3, 'G03', '3', 'Vacation', 'To go on my favorite places', '2024-06-08', '2024-06-22', 'Archived', '2024-06-08 05:22:16.000000', '2024-06-08 06:58:27.904765'),
(4, 'G04', '4', 'Programming', 'To study different programming languages', '2023-06-08', '2024-06-08', 'Finished', '2023-06-08 05:22:16.000000', '2024-06-08 06:58:27.904765');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `Tasks_Number` int(11) NOT NULL,
  `Tasks_Id` varchar(255) NOT NULL,
  `Goals_Id` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Due_Date` date NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(255) NOT NULL,
  `Created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `Updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`Tasks_Number`, `Tasks_Id`, `Goals_Id`, `Title`, `Description`, `Due_Date`, `Status`, `Created_at`, `Updated_at`) VALUES
(1, 'T01', '0001', 'Work Out', 'Different exercises every M,W,F. Balanced diet everyday. ', '2024-06-22', 'Ongoing', '2024-06-08 05:15:39.000000', '2024-06-08 06:57:28.644297'),
(2, 'T02', '0002', 'Assignments', 'Manage assignments every subjects like B.I, I.M, and Web Dev.', '2024-06-15', 'Pending', '2024-06-08 05:16:01.000000', '2024-06-08 06:57:28.644297'),
(3, 'T03', '0003', 'Vacation', 'Banana Boating, Surfing, Enjoying Bonfire, Island hopping', '2024-06-29', 'Archived', '2024-06-08 05:17:02.000000', '2024-06-08 06:57:28.644297'),
(4, 'T04', '0004', 'Programming', 'To study Java, PHP, C++', '2024-06-08', 'Finished', '2024-06-01 05:17:22.000000', '2024-06-08 06:57:28.644297');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `User_Number` int(255) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Created_at` timestamp(6) NULL DEFAULT current_timestamp(6),
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`User_Number`, `User_Id`, `Username`, `Password`, `Email`, `Created_at`, `Name`) VALUES
(1, 'U01', 'akishasantos', 'Gelzaesantos_0', 'akishagelsey@gmail.com', '2024-06-08 06:36:53.000000', 'Akisha Santos'),
(2, 'U02', 'jamesmalapad', 'Dimple1324', 'jamesmalapad@gmail.com', '0000-00-00 00:00:00.000000', 'James Malapad'),
(3, 'U03', 'jasminferolino', 'Mapagmahal485', 'jasminferolino@gmail.com', '0000-00-00 00:00:00.000000', 'Jasmin Ferolino'),
(4, 'U04', 'walterjapitana', 'walterxd12345', 'walterjapitana@gmail.com', '0000-00-00 00:00:00.000000', 'Walter Japitana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`Goal_Number`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`Tasks_Number`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`User_Number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `Goal_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `Tasks_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `User_Number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
