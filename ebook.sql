-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 03, 2024 at 03:42 PM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
CREATE TABLE IF NOT EXISTS `action` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`book_id`, `book_name`, `price`, `author`, `image_url`) VALUES
(1, 'Scorned Vows: An Arranged Marriage Romance (Scorned Fate)', '415.00', 'Victoria Paige', 'Action/A1.png'),
(2, 'House of Flame and Shadow', '612.00', 'Sarah J. Mass', 'Action/A2.png'),
(3, 'The Mayor of Casterbridge', '180.00', 'Thomas Hardy', 'Action/A3.png'),
(4, 'Once a Thief (Simon Riske, 4)', '2365.00', 'Christopher Reich', 'Action/A4.png'),
(5, 'Hope and Red (The Empire of Storms, 1)', '813.00', 'Jon Skovron', 'Action/A5.png'),
(6, 'The Complete Novels of Sherlock Holmes', '189.00', 'Arthur Conan Doyle', 'Action/A6.png'),
(7, 'The Cruel Prince (The Folk of the Air)', '535.00', 'Holly Black', 'Action/A7.png'),
(8, 'Sinister Tide Hardcover', '1058.00', 'Colin Forbes', 'Action/A8.png'),
(9, 'Six of Crows: Crooked Kingdom Paperback', '298.00', 'Leigh Bardugo', 'Action/A9.png'),
(10, 'Dodger', '323.00', 'James Benmore', 'Action/A10.png'),
(11, 'Shockwave Hardcover', '12238.00', 'Colin Forbes', 'Action/A11.png'),
(12, 'The Book Thief', '270.00', 'Markus Zusak', 'Action/A12.png');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `bookName` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `expectedPrice` varchar(255) DEFAULT NULL,
  `bookCondition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `username`, `bookName`, `author`, `expectedPrice`, `bookCondition`) VALUES
(1, 'Kalp Pandya', 'hello', 'kalp', '1200', 'new'),
(2, 'Kalp Pandya', 'hello', 'kalp', '1300', 'old'),
(3, 'Kalp Pandya', 'hello', 'kalp', '1200', 'new'),
(4, 'Kalp Pandya', 'hello', 'kalp', '1200', 'new'),
(5, 'Kalp Pandya', 'hello', 'kalp', '1200', 'new'),
(6, 'kalp', 'hello', 'kalp', '1200', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `card_payments`
--

DROP TABLE IF EXISTS `card_payments`;
CREATE TABLE IF NOT EXISTS `card_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiry_date` varchar(5) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
CREATE TABLE IF NOT EXISTS `cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `user_id`) VALUES
(5, 5),
(4, 2),
(6, 6),
(7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `drama`
--

DROP TABLE IF EXISTS `drama`;
CREATE TABLE IF NOT EXISTS `drama` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drama`
--

INSERT INTO `drama` (`book_id`, `book_name`, `price`, `author`, `image_url`) VALUES
(25, 'To Kill a Mockingbird', '290.00', 'Harper Lee', 'Drama/D1.png'),
(26, 'The Great Gatsby', '329.00', 'F. Scott Fitzgerald', 'Drama/D2.png'),
(27, '1984', '139.00', 'George Orwell', 'Drama/D3.png'),
(28, 'The Catcher in the Rye', '139.00', 'J.D. Salinger', 'Drama/D4.png'),
(29, 'The Kite Runner', '499.00', 'Khaled Hosseini', 'Drama/D5.png'),
(30, 'The Grapes of Wrath', '417.00', 'John Steinbeck', 'Drama/D6.png'),
(31, 'Evil Eye', '331.00', 'Etaf Rum', 'Drama/D7.png'),
(32, 'The Bell Jar', '235.00', 'Sylvia Plath', 'Drama/D8.png'),
(33, 'The Color Purple', '256.00', 'Alice Walker', 'Drama/D9.png'),
(34, 'The Glass Menagerie', '274.00', 'Tennessee Williams', 'Drama/D10.png'),
(35, 'A Woman is No Man', '351.00', 'Etaf Rum', 'Drama/D11.png'),
(36, 'Drama', '595.00', 'Raina Telgemeier', 'Drama/D12.png');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`book_id`, `book_name`, `price`, `author`, `image_url`) VALUES
(61, 'Ancient History: A Concise Overview of Ancient Egypt', '1493.00', 'Eric Brown', 'History/History1.png'),
(62, 'RUBICON: The Triumph and Tragedy of the Roman Republic', '639.00', 'Tom Holland', 'History/History2.png'),
(63, 'How the World Made the West: A 4,000-Year History', '560.00', 'Josephine Quinn', 'History/History3.png'),
(64, 'The Republic', '219.00', 'Plato', 'History/History4.png'),
(65, 'Why Bharat Matters', '560.00', 'S. Jaishankar', 'History/History5.png'),
(66, 'Meditations', '139.00', 'Marcus Aurelius', 'History/History6.png'),
(67, 'Pegasus Bridge: 6 June 1944', '1184.00', 'Stephen E. Ambrose', 'History/History7.png'),
(68, 'Capitalism in America: A History', '999.00', 'Alan Greenspan & Adrian Wooldridge', 'History/History8.png'),
(69, 'A Short History Of The World', '249.00', 'H. G. Wells', 'History/History9.png'),
(70, 'Man\'s Search For Meaning: The classic tribute to hope from the Holocaust', '449.00', 'Victor E. Frankl', 'History/History10.png'),
(71, 'Balidan : Stories of India\'s Greatest Para Special Forces Operatives', '205.00', 'Swapnil Pandey', 'History/History11.png'),
(72, 'The Anarchy Hardcover', '711.00', 'William Dalrymple', 'History/History12.png');

-- --------------------------------------------------------

--
-- Table structure for table `horror`
--

DROP TABLE IF EXISTS `horror`;
CREATE TABLE IF NOT EXISTS `horror` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `horror`
--

INSERT INTO `horror` (`book_id`, `book_name`, `price`, `author`, `image_url`) VALUES
(37, 'Dracula', '414.00', 'Bram Stoker', 'Horror/H1.png'),
(38, 'Frankenstein', '376.00', 'Mary Shelley', 'Horror/H2.png'),
(39, 'The Shining', '391.00', 'Stephen King', 'Horror/H3.png'),
(40, 'It', '411.00', 'Stephen King', 'Horror/H4.png'),
(41, 'The Haunting of Hill House', '374.00', 'Shirley Jackson', 'Horror/H5.png'),
(42, 'Pet Sematary', '634.00', 'Stephen King', 'Horror/H6.png'),
(43, 'Bird Box', '210.00', 'Josh Malerman', 'Horror/H7.png'),
(44, 'The Exorcist', '381.00', 'William Peter Blatty', 'Horror/H8.png'),
(45, 'House of Leaves', '849.00', 'Mark Z. Danielewski', 'Horror/H9.png'),
(46, 'Ghosts of The Silent Hills', '189.00', 'Ankita Krishan', 'Horror/H10.png'),
(47, 'The Canterville Ghost', '119.00', 'Oscar Wilde', 'Horror/H11.png'),
(48, 'Black Forest: A Horror Novel', '885.00', 'Shane Lee', 'Horror/H12.png');

-- --------------------------------------------------------

--
-- Table structure for table `net_banking_payments`
--

DROP TABLE IF EXISTS `net_banking_payments`;
CREATE TABLE IF NOT EXISTS `net_banking_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `net_banking_payments`
--

INSERT INTO `net_banking_payments` (`id`, `user_id`, `bank_name`, `account_number`) VALUES
(18, 6, 'canara', '1234567890123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `fk_history` (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `book_id`, `payment_type`) VALUES
(76, 6, 2, 'UPI'),
(74, 6, 14, 'UPI'),
(75, 6, 19, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `romance`
--

DROP TABLE IF EXISTS `romance`;
CREATE TABLE IF NOT EXISTS `romance` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `romance`
--

INSERT INTO `romance` (`book_id`, `book_name`, `price`, `author`, `image_url`) VALUES
(13, 'Pride and Prejudice', '139.00', 'Jane Austen', 'Romance/R1.png'),
(14, 'The Notebook', '108.00', 'Nicholas Sparks', 'Romance/R2.png'),
(15, 'Outlander', '446.00', 'Diana Gabaldon', 'Romance/R3.png'),
(16, 'Me Before You', '373.00', 'Jojo Moyes', 'Romance/R4.png'),
(17, 'The Fault in Our Stars', '294.00', 'John Green', 'Romance/R5.png'),
(18, 'Gone with the Wind', '247.00', 'Margaret Mitchell', 'Romance/R6.png'),
(19, 'The Time Traveler\'s Wife', '270.00', 'Audrey Niffenegger', 'Romance/R7.png'),
(20, 'Anna Karenina', '649.00', 'Leo Tolstoy', 'Romance/R8.png'),
(21, 'The Rosie Project', '399.00', 'Graeme Simsion', 'Romance/R9.png'),
(22, 'Eleanor & Park', '299.00', 'Rainbow Rowell', 'Romance/R10.png'),
(23, 'It Ends With Us', '296.00', 'Colleen Hoover', 'Romance/R11.png'),
(24, 'Happy Place', '311.00', 'Emily Henry', 'Romance/R12.png');

-- --------------------------------------------------------

--
-- Table structure for table `science_fiction`
--

DROP TABLE IF EXISTS `science_fiction`;
CREATE TABLE IF NOT EXISTS `science_fiction` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `science_fiction`
--

INSERT INTO `science_fiction` (`book_id`, `book_name`, `price`, `author`, `image_url`) VALUES
(49, 'The Kid Who Came From Space', '279.00', 'Ross Welford', 'SF/SF1.png'),
(50, 'Ex Machina Book One', '1333.00', 'Brian K. Vaughan', 'SF/SF2.png'),
(51, 'Alien - Sea of Sorrows (Book 2)', '498.00', 'James A. Moore', 'SF/SF3.png'),
(52, 'Best American Science Fiction And Fantasy 2021', '1114.00', 'John Joseph Adams', 'SF/SF4.png'),
(53, 'Dark Matter', '417.00', 'Blake Crouch', 'SF/SF5.png'),
(54, 'Children of Time', '280.00', 'Adrian Tchaikovsky', 'SF/SF6.png'),
(55, 'Beyond Infinity', '290.00', 'Akashiddarth', 'SF/SF7.png'),
(56, 'Lords of the Ice Moons', '1438.00', 'Michale Carroll', 'SF/SF8.png'),
(57, 'On the Shores of Titan\'s Farthest Sea', '1979.00', 'Michael Carroll', 'SF/SF9.png'),
(58, 'The Gatekeeper\'s Descendants', '1175.00', 'Johanna Frank', 'SF/SF10.png'),
(59, 'Samsara: Enter The Valley Of The Gods', '164.00', 'Saksham Garg', 'SF/SF11.png'),
(60, 'Odyssey Beyond Time: The Quest for Element Crystals', '377.00', 'Mahender Singh Bhaneka', 'SF/SF12.png');

-- --------------------------------------------------------

--
-- Table structure for table `upi_payments`
--

DROP TABLE IF EXISTS `upi_payments`;
CREATE TABLE IF NOT EXISTS `upi_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `upi_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upi_payments`
--

INSERT INTO `upi_payments` (`id`, `user_id`, `upi_id`) VALUES
(5, 6, 'k@1213242434'),
(4, 6, 'k@1213242434'),
(6, 6, 'k@1213242434'),
(7, 6, 'k@1213242434');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(6, 'kalp pandya', 'k@gmail.com', '1234'),
(4, 'PANDYA KALP', 'kalppandya151@gmail.com', '2604'),
(5, 'admin', 'admin@gmail.com', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
