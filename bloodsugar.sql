-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2024 at 07:10 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodsugar`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

DROP TABLE IF EXISTS `aktivitas`;
CREATE TABLE IF NOT EXISTS `aktivitas` (
  `AktivitasID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Aktivitas` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Status_Aktivitas` int NOT NULL,
  PRIMARY KEY (`AktivitasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktivitas`
--

INSERT INTO `aktivitas` (`AktivitasID`, `Nama_Aktivitas`, `Status_Aktivitas`) VALUES
('A001', 'Walking', 1),
('A002', 'Swimming', 1),
('A003', 'Yoga', 1),
('A004', 'Cycling', 1),
('A005', 'Pilates', 1),
('A006', 'Tai Chi', 1),
('A007', 'Light Weights', 1),
('A008', 'Dancing', 1),
('A009', 'Golf', 1),
('A010', 'Water Aerobics', 1),
('B001', 'Running', 2),
('B002', 'Swimming', 2),
('B003', 'Cycling', 2),
('B004', 'Yoga', 2),
('B005', 'Hiking', 2),
('B006', 'Weight Training', 2),
('B007', 'Basketball', 2),
('B008', 'Dancing', 2),
('B009', 'Pilates', 2),
('B010', 'Tennis', 2),
('C001', 'Walking', 3),
('C002', 'Swimming', 3),
('C003', 'Cycling', 3),
('C004', 'Yoga', 3),
('C005', 'Pilates', 3),
('C006', 'Jogging', 3),
('C007', 'Dancing', 3),
('C008', 'Weight Training', 3),
('C009', 'Rowing', 3),
('C010', 'Tennis', 3);

-- --------------------------------------------------------

--
-- Table structure for table `gula_darah`
--

DROP TABLE IF EXISTS `gula_darah`;
CREATE TABLE IF NOT EXISTS `gula_darah` (
  `GulaDarahID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `UserID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Tanggal_Pengecekan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LevelGulaDarah` float NOT NULL,
  `StatusGulaDarah` int NOT NULL,
  PRIMARY KEY (`GulaDarahID`,`UserID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gula_darah`
--

INSERT INTO `gula_darah` (`GulaDarahID`, `UserID`, `Tanggal_Pengecekan`, `LevelGulaDarah`, `StatusGulaDarah`) VALUES
('GD00001782', 'User036529', '2024-06-12 06:34:21', 62.4, 1),
('GD00002782', 'User036529', '2024-06-05 06:34:21', 88.7, 2),
('GD00003782', 'User036529', '2024-05-29 06:34:21', 77.3, 2),
('GD00004782', 'User036529', '2024-05-22 06:34:21', 69.1, 1),
('GD00005782', 'User036529', '2024-05-15 06:34:21', 95.2, 2),
('GD00006782', 'User036529', '2024-05-08 06:34:21', 54.9, 1),
('GD00007782', 'User036529', '2024-05-01 06:34:21', 82.5, 2),
('GD00008782', 'User036529', '2024-04-24 06:34:21', 91, 2),
('GD00009782', 'User036529', '2024-04-17 06:34:21', 100.1, 2),
('GD00010782', 'User036529', '2024-04-10 06:34:21', 105.3, 3),
('GD00011782', 'User036529', '2024-04-03 06:34:21', 60.2, 1),
('GD00012782', 'User036529', '2024-03-27 06:34:21', 77.8, 2),
('GD00013782', 'User036529', '2024-03-20 06:34:21', 85.4, 2),
('GD00014025', 'User036529', '2024-06-12 17:33:13', 69, 1),
('GD00014782', 'User036529', '2024-03-13 06:34:21', 92.1, 2),
('GD00015782', 'User036529', '2024-03-06 06:34:21', 103.5, 3),
('GD00040323', 'User095455', '2024-06-12 06:34:21', 77, 2),
('GD00042823', 'User036529', '2024-06-12 17:33:47', 133, 3),
('GD00052607', 'User095455', '2024-05-23 11:34:53', 82.32, 2),
('GD00055369', 'User095455', '2024-06-12 06:33:56', 66, 1),
('GD00076069', 'User095455', '2024-06-12 06:32:52', 75, 2),
('GD00088607', 'User036529', '2024-06-12 17:33:57', 10, 1),
('GD00089107', 'User095455', '2024-05-27 15:03:11', 70.2, 2),
('GD00094231', 'User056523', '2024-05-23 11:39:49', 104.4, 3),
('GD00095524', 'User056523', '2024-05-23 11:39:08', 102.4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_makanan`
--

DROP TABLE IF EXISTS `kategori_makanan`;
CREATE TABLE IF NOT EXISTS `kategori_makanan` (
  `KategoriID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Kategori_Makanan` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`KategoriID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_makanan`
--

INSERT INTO `kategori_makanan` (`KategoriID`, `Kategori_Makanan`) VALUES
('K001', 'Main Course'),
('K002', 'Appetizer'),
('K003', 'Dessert'),
('K004', 'Beverage'),
('K005', 'Snack');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

DROP TABLE IF EXISTS `makanan`;
CREATE TABLE IF NOT EXISTS `makanan` (
  `MakananID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `KategoriID` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_Makanan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kandungan_Makanan` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PenjualID` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Photo_Dir` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`MakananID`),
  KEY `KategoriID` (`KategoriID`),
  KEY `PenjualID` (`PenjualID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`MakananID`, `KategoriID`, `Nama_Makanan`, `Kandungan_Makanan`, `PenjualID`, `Photo_Dir`) VALUES
('MK00041313', 'K001', 'Steak', '200gr Beef, 5gr garlic, 2gr pepper, 2gr Sugar, 2gr Salt, 10ml olive oil', 'Seller070567', 'C:/Users/MVWRE/Downloads/download (1).jpeg'),
('MK00064594', 'K001', 'Steak', '200gr Beef, 5gr garlic, 2gr pepper, 2gr Sugar, 2gr Salt, 10ml olive oil', 'Seller070567', 'C:/Users/MVWRE/Downloads/download (1).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `penjual`
--

DROP TABLE IF EXISTS `penjual`;
CREATE TABLE IF NOT EXISTS `penjual` (
  `PenjualID` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `Username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Penjual` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Bisnis` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `No_Telp` bigint NOT NULL,
  `Alamat` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`PenjualID`),
  UNIQUE KEY `PenjualID` (`PenjualID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjual`
--

INSERT INTO `penjual` (`PenjualID`, `Username`, `Password`, `Nama_Penjual`, `Nama_Bisnis`, `Email`, `No_Telp`, `Alamat`) VALUES
('Seller070567', 'Apeng', '$argon2id$v=19$m=65536,t=1,p=8$np+mLMnVkxvZfnnAv0CT5Q$9jChK2ixDQE8IlRdPK/GU8ygG2RwmhPwclnSnP3DJz4', 'Marvel Stefano', 'Kwetiau Apeng', 'marvel@gmail.com', 12345678990, 'Surabaya'),
('Seller092324', 'MV', '$argon2id$v=19$m=65536,t=1,p=8$3hIGvqP9XiK5bc6kVf8z6w$e0osNk3tzvrmzZR9+jxLuJF/9wmPugZtguJxIomd18g', 'Marvel Stefano', 'Veltindo', 'marvelstefano@gmailcom', 81231916455, 'Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `UserID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Lengkap` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `DOB` date NOT NULL,
  `Alamat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Jenis_Kelamin` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Berat_Badan` float DEFAULT NULL,
  PRIMARY KEY (`UserID`,`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Nama_Lengkap`, `Email`, `DOB`, `Alamat`, `Jenis_Kelamin`, `Berat_Badan`) VALUES
('User032531', 'test', '$argon2id$v=19$m=65536,t=1,p=8$R2xN2nQcqk1aLmyqseTlUw$nPy2nb7qozl3hNQMSrR3Rnw6PG5scqEajj+61P6L914', 'test123', 'test@gmail.com', '2002-01-20', 'test alamat', 'Male', 50),
('User036529', 'Ilham', '$argon2id$v=19$m=65536,t=1,p=8$IaHT3M5PnDj9IQgOy3lPdA$TXFmVMcuiwOLzlbtj33uUXvLNObu+DpixpmlmGvwIkE', 'Ilham Jaya', 'ilhamjaya@gmail.com', '2004-06-07', 'Dieng Atas No.8, Malang', 'Male', 74),
('User051759', 'Apeng', '$argon2id$v=19$m=65536,t=1,p=8$IeaA7wrERw585t9RJPz7xw$ZUHk1DcXexvhMtNPZEm3NOQ1gR70ZhSz7gvcRBcuV/g', 'Marvel ', 'mv@gmail.com', '2004-06-07', 'Surabaya', 'Male', 85),
('User056523', 'Effendi', '$argon2id$v=19$m=65536,t=1,p=8$ake96V6J6xEbTUqM6faH0w$WRYNxJO86Z1SwBF2jJfX5f770o0I4Dj/33vFShwPyS0', 'Jerry123', 'Jerry@gmail.com', '2003-10-27', 'Malang', 'Male', 60.5),
('User095455', 'MV', '$argon2id$v=19$m=65536,t=1,p=8$Wq7lxW3+NXbHrft275f2NA$00fGCR1uVdBwLbhYQUngqTG7n0FT4hvEuQqfWPmpWOg', 'Marvel Stefano', 'marvelstefano@gmail.', '2004-06-07', 'Surabaya', 'Male', 70);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gula_darah`
--
ALTER TABLE `gula_darah`
  ADD CONSTRAINT `gula_darah_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `makanan`
--
ALTER TABLE `makanan`
  ADD CONSTRAINT `makanan_ibfk_1` FOREIGN KEY (`KategoriID`) REFERENCES `kategori_makanan` (`KategoriID`),
  ADD CONSTRAINT `makanan_ibfk_2` FOREIGN KEY (`PenjualID`) REFERENCES `penjual` (`PenjualID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
