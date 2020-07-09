-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 11:00 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `day2books`
--
CREATE DATABASE IF NOT EXISTS `day2books` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `day2books`;

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE `adress` (
  `adress_id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `zipcode` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`adress_id`, `country`, `city`, `street`, `zipcode`) VALUES
(1, 'Austria', 'Vienna', 'AStreet', '1130'),
(2, 'Austria', 'Vienna', 'Bstreet', '1120'),
(3, 'Austria', 'Vienna', 'Cstreet', '1110'),
(4, 'Austria', 'Vienna', 'Dstreet', '1140'),
(5, 'Austria', 'Eisenstadt', 'Fstreet', '7000'),
(6, 'Austria', 'Eisenstadt', 'Gstreet', '7000'),
(7, 'Austria', 'Eisenstadt', 'Hstreet', '7000'),
(8, 'Austria', 'Eisenstadt', 'Istreet', '7001'),
(9, 'Austria', 'Eisenstadt', 'Jstreet', '7001'),
(10, 'Austria', 'Eisenstadt', 'Kstreet', '7001');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `awards` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `nationality`, `awards`) VALUES
(1, 'Aname', 'Jlastname', 'Austria', 'Good Author Award'),
(2, 'Bname', 'Ilastname', 'Germany', 'Best Author Award'),
(3, 'Cname', 'Hlastname', 'Italy', 'Smartest Author Award'),
(4, 'Dname', 'Glastname', 'France', 'Best Author Award'),
(5, 'Ename', 'Flastname', 'Austria', 'Smartest Author Award'),
(6, 'Fname', 'Elastname', 'France', 'Good Author Award'),
(7, 'Gname', 'Dlastname', 'Italy', 'Good Author Award'),
(8, 'Hname', 'Clastname', 'Russia', 'Fine Author Award'),
(9, 'Iname', 'Blastname', 'Spain', 'Good Author Award'),
(10, 'Jname', 'Alastname', 'Germany', 'Fine Author Award');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `fsk` int(11) DEFAULT NULL,
  `paper_back` enum('Yes','No') DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `genre`, `title`, `fk_author_id`, `length`, `fsk`, `paper_back`, `published`, `version`) VALUES
(1, 'Horror', 'AKiller', 1, 250, 18, 'Yes', 1990, 3),
(2, 'Mystery', 'Amystery', 1, 350, 16, 'No', 1999, 2),
(3, 'Thriller', 'Athriller', 2, 450, 16, 'No', 1998, 1),
(4, 'Mystery', 'Bmystery', 5, 350, 16, 'Yes', 1997, 4),
(5, 'Horror', 'BKiller', 6, 250, 18, 'Yes', 1996, 5),
(6, 'Mystery', 'Cmystery', 7, 350, 16, 'No', 1990, 4),
(7, 'Horror', 'CKiller', 3, 250, 18, 'Yes', 1995, 3),
(8, 'Thriller', 'Bthriller', 8, 450, 16, 'No', 1992, 3),
(9, 'Horror', 'DKiller', 4, 350, 18, 'Yes', 1996, 3),
(10, 'Thriller', 'Cthriller', 10, 150, 18, 'No', 1993, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `fk_adress_id` int(11) DEFAULT NULL,
  `fk_book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `birth_date`, `fk_adress_id`, `fk_book_id`) VALUES
(1, 'Ajack', 'Jjohnson', 'jjohnson@customer.com', '1990-12-01', 10, 1),
(2, 'Bjack', 'Ijohnson', 'ijohnson@customer.com', '1991-01-02', 9, 2),
(3, 'Cjack', 'Hjohnson', 'hjohnson@customer.com', '1992-02-02', 8, 3),
(4, 'Djack', 'Gjohnson', 'gjohnson@customer.com', '1993-03-03', 7, 4),
(5, 'Ejack', 'Fjohnson', 'fjohnson@customer.com', '0194-04-04', 6, 5),
(6, 'Fjack', 'Ejohnson', 'ejohnson@customer.com', '1995-05-05', 5, 6),
(7, 'Gjack', 'Djohnson', 'djohnson@customer.com', '1996-06-06', 4, 7),
(8, 'Hjack', 'Cjohnson', 'cjohnson@customer.com', '1997-07-07', 3, 8),
(9, 'Ijack', 'Bjohnson', 'bjohnson@customer.com', '1998-08-08', 2, 9),
(10, 'Jjack', 'Ajohnson', 'ajohnson@customer.com', '1999-09-09', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `library_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fk_adress_id` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fk_book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`library_id`, `name`, `fk_adress_id`, `email`, `fk_book_id`) VALUES
(1, 'City Library', 10, 'city10Library.com', 10),
(2, 'City Library', 9, 'cit9yLibrary.com', 9),
(3, 'City Library', 8, 'city8Library.com', 8),
(4, 'City Library', 7, 'city7Library.com', 7),
(5, 'City Library', 6, 'city6Library.com', 6),
(6, 'City Library', 5, 'city5Library.com', 5),
(7, 'City Library', 4, 'city4Library.com', 4),
(8, 'City Library', 3, 'city3Library.com', 3),
(9, 'City Library', 2, 'city2Library.com', 2),
(10, 'City Library', 2, 'city2Library.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`adress_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_author_id` (`fk_author_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_adress_id` (`fk_adress_id`),
  ADD KEY `fk_book_id` (`fk_book_id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`library_id`),
  ADD KEY `fk_book_id` (`fk_book_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_adress_id`) REFERENCES `adress` (`adress_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`fk_book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `library`
--
ALTER TABLE `library`
  ADD CONSTRAINT `library_ibfk_1` FOREIGN KEY (`fk_book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
