-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 01:08 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(111) NOT NULL,
  `acc_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emp_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `acc_name`, `email`, `emp_id`) VALUES
(2, 'khaled', 'ahmedamro3000@gmail.com', '78856263');

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emp_id` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `admin_name`, `email`, `emp_id`) VALUES
(5062, 'salma', 'salmasalama@com.com', '7429852');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_schedule`
--

CREATE TABLE `clinic_schedule` (
  `Sch_ID` int(100) NOT NULL,
  `nurseID` varchar(111) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clinic_schedule`
--

INSERT INTO `clinic_schedule` (`Sch_ID`, `nurseID`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES
(35, '19206854321', '2023-06-11', '2023-06-30', '05:48:00', '17:48:00'),
(42, '19206854321', '2023-06-17', '2023-06-30', '17:23:00', '05:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emp_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doc_name`, `email`, `emp_id`) VALUES
(0, 'ruby', 'ruby@yahoo.com', '452152');

-- --------------------------------------------------------

--
-- Table structure for table `doctroschedule`
--

CREATE TABLE `doctroschedule` (
  `schedule_ID` int(11) NOT NULL,
  `DoctorID` varchar(100) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctroschedule`
--

INSERT INTO `doctroschedule` (`schedule_ID`, `DoctorID`, `StartDate`, `EndDate`, `StartTime`, `EndTime`) VALUES
(4, '452152', '2023-06-13', '2023-07-08', '22:53:00', '10:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `PID` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `emaill` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `passwords` varchar(100) NOT NULL,
  `conpassword` varchar(100) NOT NULL,
  `qualifications` varchar(100) NOT NULL,
  `salary` int(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`PID`, `firstname`, `lastname`, `phone`, `gender`, `birthdate`, `emaill`, `department`, `passwords`, `conpassword`, `qualifications`, `salary`, `address`) VALUES
('19206854321', 'menna', 'John', 1054693874, 'female', '1998-10-15', 'Mennamosaad@gmail.com', 'nurse', '1234561', '1234561', 'has a degree of nursing ', 3000, '2 El Zahaby Sq., HELIOPOLIS'),
('452152', 'ruby', 'mohammed', 2147483647, 'female', '1999-02-12', 'ruby@yahoo.com', 'doctor', '1414', '1414', 'BECHALOR OF Medical degree', 10000, '6th Of October Zone2No136, Cairo'),
('7429852', 'salma', 'salama', 85585420, 'female', '1000-10-10', 'salmasalama@com.com', 'Admin', '2245', '2245', 'beachalor of Commerce', 4000, '36 Mohamed Talaat St., AGOUZA'),
('78856263', 'khaled', 'khaaaleed', 2147483647, 'male', '1699-10-10', 'ahmedamro3000@gmail.com', 'accountant', '1231231', '1231231', 'beachalor of Commerce', 6000, '7 El Shorta Bldgs., Gesr El Suez Heliopolis');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `lab_id` int(11) NOT NULL,
  `P_id` varchar(100) NOT NULL,
  `test_time` date NOT NULL,
  `test_type` varchar(100) NOT NULL,
  `Note` varchar(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`lab_id`, `P_id`, `test_time`, `test_type`, `Note`, `price`) VALUES
(123457, '30112251600666', '2023-06-19', 'Blood test', 'hemoglobin levels low', 200);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `med_id` int(11) NOT NULL,
  `MedicationName` varchar(100) NOT NULL,
  `Frequency` varchar(100) NOT NULL,
  `Duration` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `dosage` varchar(100) NOT NULL,
  `patient_ids` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`med_id`, `MedicationName`, `Frequency`, `Duration`, `price`, `dosage`, `patient_ids`) VALUES
(8, 'panadol', 'everyday', 'for month', '20$', 'twice a day and night', '1951245852');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nurse_id` int(11) NOT NULL,
  `nurse_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emp_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nurse_id`, `nurse_name`, `email`, `emp_id`) VALUES
(2, 'Menna', 'mennamosaad@gmail.com', '19206854321');

-- --------------------------------------------------------

--
-- Table structure for table `nursenotes`
--

CREATE TABLE `nursenotes` (
  `noteID` int(11) NOT NULL,
  `P_ID` varchar(111) NOT NULL,
  `Notes` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nursenotes`
--

INSERT INTO `nursenotes` (`noteID`, `P_ID`, `Notes`) VALUES
(2, '30112251600666', 'Patient has Stomach ache'),
(3, '1951245852', 'Patent got a brocken leg');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PID` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `age` int(111) NOT NULL,
  `gender` varchar(111) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `case` varchar(111) NOT NULL,
  `meds_on` varchar(111) NOT NULL,
  `room` int(111) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PID`, `firstname`, `lastname`, `phone`, `age`, `gender`, `birthdate`, `email`, `case`, `meds_on`, `room`, `address`) VALUES
('12435367743', 'menna', 'sayed', 2147483647, 23, 'female', '2023-06-19', 'mennasayed@com.com', 'hfjgkl', 'sdgfhgjhk', 131, 'awesrdtfyugh'),
('1951245852', 'samah', 'saeyed', 1021252648, 25, 'female', '1999-10-10', 'samah@gmail.com', 'sadfsd', 'estghjdasdfsd', 111, 'asdfadsf'),
('30112251600666', 'hassan', 'elassy', 1024578965, 22, 'male', '1999-05-11', 'hassanelassy450@gmail.com', 'ghjkl;\'dd', 'cfvghjkl;\'\r\n', 122, 'ghjkl;');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `pay_id` int(100) NOT NULL,
  `BillAmount` double NOT NULL,
  `p_id` varchar(100) NOT NULL,
  `acc_id` int(100) NOT NULL,
  `BillDescription` varchar(100) NOT NULL,
  `BillDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`pay_id`, `BillAmount`, `p_id`, `acc_id`, `BillDescription`, `BillDate`) VALUES
(1, 2500, '1951245852', 2, 'X-Ray scann ', '2023-05-29'),
(2, 3000, '30112251600666', 2, 'stomack surgery ', '2020-11-29'),
(10, 1000, '12435367743', 2, 'lab test and CT Scan', '2023-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `tokenExpire` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `email`, `password`, `code`, `tokenExpire`) VALUES
(1, 'hussienelassy1333@gmail.com', '123123', 'xmci3vaeuf', '2023-06-13'),
(2, 'hassanelassy450@gmail.com', '123123', '5rumg9bj8i', '2023-06-13'),
(3, 'ahmedamro3000@gmail.com', '147', '2paxk7d5n0', '2023-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `x_ray`
--

CREATE TABLE `x_ray` (
  `ray_id` int(11) NOT NULL,
  `p_id` varchar(100) DEFAULT NULL,
  `test_type` varchar(100) NOT NULL,
  `sch_time` datetime NOT NULL,
  `note` varchar(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `x_ray`
--

INSERT INTO `x_ray` (`ray_id`, `p_id`, `test_type`, `sch_time`, `note`, `price`) VALUES
(1, '30112251600666', 'CT scanning', '2023-06-19 00:00:00', 'on the chest', 2500),
(2, '1951245852', 'CT ', '2023-06-24 00:00:00', 'BROCKEN HAND ', 2500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new` (`emp_id`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`emp_id`);

--
-- Indexes for table `clinic_schedule`
--
ALTER TABLE `clinic_schedule`
  ADD PRIMARY KEY (`Sch_ID`),
  ADD KEY `testing` (`nurseID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `neww` (`emp_id`);

--
-- Indexes for table `doctroschedule`
--
ALTER TABLE `doctroschedule`
  ADD PRIMARY KEY (`schedule_ID`),
  ADD KEY `Doctorid` (`DoctorID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `labid` (`P_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `patientss` (`patient_ids`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nurse_id`),
  ADD KEY `news` (`emp_id`);

--
-- Indexes for table `nursenotes`
--
ALTER TABLE `nursenotes`
  ADD PRIMARY KEY (`noteID`),
  ADD KEY `pID` (`P_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `newwss` (`acc_id`),
  ADD KEY `nawws` (`p_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `x_ray`
--
ALTER TABLE `x_ray`
  ADD PRIMARY KEY (`ray_id`),
  ADD KEY `testid` (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5063;

--
-- AUTO_INCREMENT for table `clinic_schedule`
--
ALTER TABLE `clinic_schedule`
  MODIFY `Sch_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `doctroschedule`
--
ALTER TABLE `doctroschedule`
  MODIFY `schedule_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `lab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123459;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nurse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nursenotes`
--
ALTER TABLE `nursenotes`
  MODIFY `noteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `pay_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `x_ray`
--
ALTER TABLE `x_ray`
  MODIFY `ray_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accountant`
--
ALTER TABLE `accountant`
  ADD CONSTRAINT `new` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`PID`);

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `test` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`PID`);

--
-- Constraints for table `clinic_schedule`
--
ALTER TABLE `clinic_schedule`
  ADD CONSTRAINT `nurse` FOREIGN KEY (`nurseID`) REFERENCES `employee` (`PID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `neww` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`PID`);

--
-- Constraints for table `doctroschedule`
--
ALTER TABLE `doctroschedule`
  ADD CONSTRAINT `Doctorid` FOREIGN KEY (`DoctorID`) REFERENCES `employee` (`PID`);

--
-- Constraints for table `lab`
--
ALTER TABLE `lab`
  ADD CONSTRAINT `labid` FOREIGN KEY (`P_id`) REFERENCES `patient` (`PID`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `patientss` FOREIGN KEY (`patient_ids`) REFERENCES `patient` (`PID`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `news` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`PID`);

--
-- Constraints for table `nursenotes`
--
ALTER TABLE `nursenotes`
  ADD CONSTRAINT `pID` FOREIGN KEY (`P_ID`) REFERENCES `patient` (`PID`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `nawws` FOREIGN KEY (`p_id`) REFERENCES `patient` (`PID`),
  ADD CONSTRAINT `newwss` FOREIGN KEY (`acc_id`) REFERENCES `accountant` (`id`);

--
-- Constraints for table `x_ray`
--
ALTER TABLE `x_ray`
  ADD CONSTRAINT `testid` FOREIGN KEY (`p_id`) REFERENCES `patient` (`PID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
