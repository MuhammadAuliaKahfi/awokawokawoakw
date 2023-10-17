-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 12:23 PM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `publisher` varchar(300) NOT NULL,
  `edition` int(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pages` int(100) NOT NULL,
  `date_issued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `user_id`, `genre`, `title`, `author`, `publisher`, `edition`, `isbn`, `pages`, `date_issued`) VALUES
(11, 3, 'Horor', 'The Silver Eyes', 'Scott Cawthon', 'Gramedia', 1, '978-1338298482', 250, '2023-01-31'),
(12, 0, 'Matematika & Sains', 'Probability and Statistics for Computer Scientists', 'Michael Baron', 'Chapman', 3, '978-1138044487', 487, '2023-01-31'),
(13, 0, 'Rohani', 'Jesus: The God Who Knows Your Name', 'Max Lucado', 'Thomas Nelson', 1, '978-1400214693', 240, '2023-01-31'),
(14, 0, 'Matematika Aplikasi', 'Discrete Mathematics and Its Applications', 'Kenneth H. Rosen', 'McGraw Hill', 7, '978-0073383095', 1072, '2023-01-31'),
(16, 0, 'Comic, Fantasy', 'Doraemon: Gadget Cat from the Future', 'Fujiko F. Fujio', 'Shougakukan', 1, '978-4092270114', 160, '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `books_request`
--

CREATE TABLE `books_request` (
  `request_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `edition` int(10) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_request`
--

INSERT INTO `books_request` (`request_id`, `user_id`, `genre`, `title`, `author`, `edition`, `isbn`, `date`) VALUES
(5, 3, 'Horor', 'The Silver Eyes', 'Scott Cawthon', 1, '978-1338298482', '2023-01-31'),
(6, 11, 'Comic, Fantasy', 'Doraemon: Gadget Cat from the Future', 'Fujiko F. Fujio', 1, '978-4092270114', '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `issue_date`
--

CREATE TABLE `issue_date` (
  `issue_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_date`
--

INSERT INTO `issue_date` (`issue_id`, `book_id`, `user_id`, `date`) VALUES
(23, 7, 2, '2023-01-31'),
(24, 10, 7, '2023-01-31'),
(25, 11, 3, '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `password` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `gender` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `phone`, `email`, `is_admin`, `password`, `address`, `gender`) VALUES
(1, 'Bobby', '08212341234', 'bobby69@gmail.com', 1, '9999', 'jl. mixue no 12', 'Laki-laki'),
(2, 'Aulia', '08912341234', 'aulia00@gmail.com', 1, 'yellow', 'perumahan gacoan no 05', 'Laki-laki'),
(3, 'Vadil Sintiya', '08124771284', 'vadilchan123@yahoo.com', 0, 'vadilll', 'jl. evos 123', 'Laki-laki'),
(9, 'rangga', '08812345876', 'ranggaa@gmail.com', 0, 'ranggaa', 'jl. rrq rawr', 'Laki-laki'),
(10, 'dustin gunawan', '08982134123', 'dustinus@gmail.com', 0, 'dustin', 'Jl. ringroad', 'Laki-laki'),
(11, 'megawati widodo', '08214312654', 'mega6969@gmail.com', 0, 'megawati', 'jl. pembangunan 12', 'Perempuan'),
(12, 'Cindy Pakpahan', '08781234777', 'Cindoz123@yahoo.com', 0, 'cindy', 'jl. pasar cina blok 2', 'Perempuan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `books_request`
--
ALTER TABLE `books_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `issue_date`
--
ALTER TABLE `issue_date`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `books_request`
--
ALTER TABLE `books_request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issue_date`
--
ALTER TABLE `issue_date`
  MODIFY `issue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
