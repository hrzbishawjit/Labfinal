-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 01:31 PM
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
-- Database: `librarymanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `AuthorID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`AuthorID`, `FirstName`, `LastName`) VALUES
(1, 'George', 'Orwell'),
(2, 'J.K.', 'Rowling'),
(3, 'J.R.R.', 'Tolkien'),
(4, 'George', 'Orwell'),
(5, 'J.K.', 'Rowling'),
(6, 'J.R.R.', 'Tolkien'),
(7, 'Harper', 'Lee'),
(8, 'F. Scott', 'Fitzgerald'),
(9, 'Mark', 'Twain'),
(10, 'Jane', 'Austen'),
(11, 'Charles', 'Dickens'),
(12, 'Ernest', 'Hemingway'),
(13, 'Leo', 'Tolstoy'),
(14, 'Gabriel', 'Garcia Marquez'),
(15, 'Herman', 'Melville'),
(16, 'Virginia', 'Woolf'),
(17, 'Fyodor', 'Dostoevsky'),
(18, 'William', 'Faulkner'),
(19, 'Franz', 'Kafka'),
(20, 'John', 'Steinbeck'),
(21, 'Kurt', 'Vonnegut'),
(22, 'J.D.', 'Salinger'),
(23, 'Aldous', 'Huxley'),
(24, 'George', 'R.R. Martin'),
(25, 'Toni', 'Morrison'),
(26, 'Margaret', 'Atwood'),
(27, 'Isaac', 'Asimov'),
(28, 'Ray', 'Bradbury'),
(29, 'Arthur', 'C. Clarke'),
(30, 'Philip', 'K. Dick'),
(31, 'H.G.', 'Wells'),
(32, 'Jules', 'Verne'),
(33, 'Orson', 'Scott Card'),
(34, 'Douglas', 'Adams'),
(35, 'Robert', 'Heinlein'),
(36, 'Frank', 'Herbert'),
(37, 'Terry', 'Pratchett'),
(38, 'Neil', 'Gaiman'),
(39, 'Stephen', 'King'),
(40, 'Michael', 'Crichton'),
(41, 'Agatha', 'Christie'),
(42, 'Arthur', 'Conan Doyle'),
(43, 'Dan', 'Brown'),
(44, 'Paulo', 'Coelho'),
(45, 'Haruki', 'Murakami'),
(46, 'Chinua', 'Achebe'),
(47, 'Gabriel', 'Marquez'),
(48, 'Salman', 'Rushdie'),
(49, 'Kazuo', 'Ishiguro'),
(50, 'Umberto', 'Eco'),
(51, 'James', 'Joyce'),
(52, 'Homer', 'Ancient'),
(53, 'Dante', 'Alighieri'),
(54, 'Edgar', 'Allan Poe'),
(55, 'H.P.', 'Lovecraft'),
(56, 'Robert Louis', 'Stevenson'),
(57, 'Oscar', 'Wilde'),
(58, 'Charlotte', 'Brontë'),
(59, 'Emily', 'Brontë'),
(60, 'Anne', 'Brontë'),
(61, 'Louisa May', 'Alcott'),
(62, 'Henry', 'James'),
(63, 'James', 'Baldwin'),
(64, 'Herman', 'Hesse'),
(65, 'Thomas', 'Mann'),
(66, 'H.G.', 'Wells'),
(67, 'George', 'Eliot'),
(68, 'Anthony', 'Trollope'),
(69, 'Gustave', 'Flaubert'),
(70, 'Victor', 'Hugo'),
(71, 'Marcel', 'Proust'),
(72, 'Stendhal', 'None'),
(73, 'Alexandre', 'Dumas'),
(74, 'Honoré de', 'Balzac'),
(75, 'Jorge Luis', 'Borges'),
(76, 'Mario', 'Vargas Llosa'),
(77, 'Isabel', 'Allende'),
(78, 'Carlos', 'Fuentes'),
(79, 'Jean-Paul', 'Sartre'),
(80, 'Simone de', 'Beauvoir'),
(81, 'Albert', 'Camus'),
(82, 'Graham', 'Greene'),
(83, 'Evelyn', 'Waugh'),
(84, 'William', 'Golding'),
(85, 'D.H.', 'Lawrence'),
(86, 'E.M.', 'Forster'),
(87, 'Virginia', 'Woolf'),
(88, 'W. Somerset', 'Maugham'),
(89, 'Ayn', 'Rand'),
(90, 'Gabriel', 'Garcia Marquez'),
(91, 'Chinua', 'Achebe'),
(92, 'Ngugi wa', 'Thiong\'o'),
(93, 'Wole', 'Soyinka'),
(94, 'R.K.', 'Narayan'),
(95, 'Salman', 'Rushdie'),
(96, 'Jhumpa', 'Lahiri'),
(97, 'V.S.', 'Naipaul'),
(98, 'Arundhati', 'Roy'),
(99, 'Orhan', 'Pamuk'),
(100, 'Naguib', 'Mahfouz');

-- --------------------------------------------------------

--
-- Table structure for table `bookcopies`
--

CREATE TABLE `bookcopies` (
  `CopyID` int(11) NOT NULL,
  `BookID` int(11) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookcopies`
--

INSERT INTO `bookcopies` (`CopyID`, `BookID`, `Location`, `Status`) VALUES
(101, 1, 'Shelf A1', 'Available'),
(102, 1, 'Shelf A2', 'Available'),
(103, 1, 'Shelf B1', 'Available'),
(104, 1, 'Shelf B2', 'Checked Out'),
(105, 1, 'Shelf C1', 'Available'),
(106, 1, 'Shelf C2', 'Available'),
(107, 1, 'Shelf D1', 'Available'),
(108, 1, 'Shelf D2', 'Available'),
(109, 1, 'Shelf E1', 'Available'),
(110, 1, 'Shelf E2', 'Available'),
(111, 2, 'Shelf A1', 'Available'),
(112, 2, 'Shelf A2', 'Checked Out'),
(113, 2, 'Shelf B1', 'Available'),
(114, 2, 'Shelf B2', 'Available'),
(115, 2, 'Shelf C1', 'Available'),
(116, 2, 'Shelf C2', 'Available'),
(117, 2, 'Shelf D1', 'Available'),
(118, 2, 'Shelf D2', 'Checked Out'),
(119, 2, 'Shelf E1', 'Available'),
(120, 2, 'Shelf E2', 'Available'),
(121, 3, 'Shelf A1', 'Available'),
(122, 3, 'Shelf A2', 'Available'),
(123, 3, 'Shelf B1', 'Available'),
(124, 3, 'Shelf B2', 'Available'),
(125, 3, 'Shelf C1', 'Available'),
(126, 3, 'Shelf C2', 'Checked Out'),
(127, 3, 'Shelf D1', 'Available'),
(128, 3, 'Shelf D2', 'Available'),
(129, 3, 'Shelf E1', 'Available'),
(130, 3, 'Shelf E2', 'Checked Out'),
(131, 4, 'Shelf A1', 'Available'),
(132, 4, 'Shelf A2', 'Available'),
(133, 4, 'Shelf B1', 'Available'),
(134, 4, 'Shelf B2', 'Available'),
(135, 4, 'Shelf C1', 'Available'),
(136, 4, 'Shelf C2', 'Available'),
(137, 4, 'Shelf D1', 'Available'),
(138, 4, 'Shelf D2', 'Checked Out'),
(139, 4, 'Shelf E1', 'Available'),
(140, 4, 'Shelf E2', 'Available'),
(141, 5, 'Shelf A1', 'Available'),
(142, 5, 'Shelf A2', 'Available'),
(143, 5, 'Shelf B1', 'Checked Out'),
(144, 5, 'Shelf B2', 'Available'),
(145, 5, 'Shelf C1', 'Available'),
(146, 5, 'Shelf C2', 'Available'),
(147, 5, 'Shelf D1', 'Available'),
(148, 5, 'Shelf D2', 'Available'),
(149, 5, 'Shelf E1', 'Checked Out'),
(150, 5, 'Shelf E2', 'Available'),
(151, 6, 'Shelf A1', 'Available'),
(152, 6, 'Shelf A2', 'Checked Out'),
(153, 6, 'Shelf B1', 'Available'),
(154, 6, 'Shelf B2', 'Available'),
(155, 6, 'Shelf C1', 'Available'),
(156, 6, 'Shelf C2', 'Checked Out'),
(157, 6, 'Shelf D1', 'Available'),
(158, 6, 'Shelf D2', 'Available'),
(159, 6, 'Shelf E1', 'Available'),
(160, 6, 'Shelf E2', 'Available'),
(161, 7, 'Shelf A1', 'Available'),
(162, 7, 'Shelf A2', 'Available'),
(163, 7, 'Shelf B1', 'Available'),
(164, 7, 'Shelf B2', 'Checked Out'),
(165, 7, 'Shelf C1', 'Available'),
(166, 7, 'Shelf C2', 'Available'),
(167, 7, 'Shelf D1', 'Available'),
(168, 7, 'Shelf D2', 'Checked Out'),
(169, 7, 'Shelf E1', 'Available'),
(170, 7, 'Shelf E2', 'Available'),
(171, 8, 'Shelf A1', 'Checked Out'),
(172, 8, 'Shelf A2', 'Available'),
(173, 8, 'Shelf B1', 'Available'),
(174, 8, 'Shelf B2', 'Available'),
(175, 8, 'Shelf C1', 'Available'),
(176, 8, 'Shelf C2', 'Available'),
(177, 8, 'Shelf D1', 'Checked Out'),
(178, 8, 'Shelf D2', 'Available'),
(179, 8, 'Shelf E1', 'Available'),
(180, 8, 'Shelf E2', 'Checked Out'),
(181, 9, 'Shelf A1', 'Available'),
(182, 9, 'Shelf A2', 'Available'),
(183, 9, 'Shelf B1', 'Checked Out'),
(184, 9, 'Shelf B2', 'Available'),
(185, 9, 'Shelf C1', 'Available'),
(186, 9, 'Shelf C2', 'Checked Out'),
(187, 9, 'Shelf D1', 'Available'),
(188, 9, 'Shelf D2', 'Available'),
(189, 9, 'Shelf E1', 'Available'),
(190, 9, 'Shelf E2', 'Available'),
(191, 10, 'Shelf A1', 'Available'),
(192, 10, 'Shelf A2', 'Available'),
(193, 10, 'Shelf B1', 'Available'),
(194, 10, 'Shelf B2', 'Checked Out'),
(195, 10, 'Shelf C1', 'Available'),
(196, 10, 'Shelf C2', 'Available'),
(197, 10, 'Shelf D1', 'Checked Out'),
(198, 10, 'Shelf D2', 'Available'),
(199, 10, 'Shelf E1', 'Available'),
(200, 10, 'Shelf E2', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `AuthorID` int(11) DEFAULT NULL,
  `PublisherID` int(11) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `YearPublished` year(4) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `AuthorID`, `PublisherID`, `ISBN`, `YearPublished`, `Genre`) VALUES
(469, '1984', 1, 1, '9780451524935', '1949', 'Dystopian'),
(470, 'Harry Potter and the Philosopher\'s Stone', 2, 2, '9780747532699', '1997', 'Fantasy'),
(471, 'To Kill a Mockingbird', 4, 1, '9780446310789', '1960', 'Classics'),
(472, 'The Great Gatsby', 5, 3, '9780743273565', '1925', 'Classics'),
(473, 'The Adventures of Huckleberry Finn', 6, 4, '9780486280615', '0000', 'Classics'),
(474, 'Pride and Prejudice', 7, 5, '9780141439518', '0000', 'Classics'),
(475, 'A Tale of Two Cities', 8, 6, '9780141439600', '0000', 'Classics'),
(476, 'The Old Man and the Sea', 9, 7, '9780684801223', '1952', 'Classics'),
(477, 'War and Peace', 10, 8, '9781427030200', '0000', 'Classics'),
(478, 'One Hundred Years of Solitude', 11, 9, '9780060883287', '1967', 'Magical Realism'),
(479, 'Moby-Dick', 12, 10, '9780486400085', '0000', 'Classics'),
(480, 'To the Lighthouse', 13, 11, '9780156031516', '1927', 'Classics'),
(481, 'Crime and Punishment', 14, 12, '9780143058146', '0000', 'Classics'),
(482, 'The Sound and the Fury', 15, 13, '9780393964813', '1929', 'Classics'),
(483, 'The Catcher in the Rye', 19, 18, '9780316769488', '1951', 'Classics'),
(484, 'Brave New World', 20, 17, '9780060850524', '1932', 'Dystopian'),
(485, 'A Game of Thrones', 21, 19, '9780553103540', '1996', 'Fantasy'),
(486, 'Beloved', 22, 20, '9781400033416', '1987', 'Classics'),
(487, 'The Handmaid\'s Tale', 23, 21, '9780385490818', '1985', 'Dystopian'),
(488, 'Foundation', 24, 22, '9780553293357', '1951', 'Science Fiction'),
(489, 'Fahrenheit 451', 25, 23, '9780345342966', '1953', 'Dystopian'),
(490, 'The Martian', 26, 24, '9780553418026', '2011', 'Science Fiction'),
(491, 'The Lord of the Rings', 3, 25, '9780544003415', '1954', 'Fantasy'),
(492, 'The Name of the Wind', 27, 26, '9780756404741', '2007', 'Fantasy'),
(493, 'Catch-22', 28, 27, '9780684833392', '1961', 'Classics'),
(494, 'Slaughterhouse-Five', 29, 28, '9780385333849', '1969', 'Classics'),
(495, 'The Hobbit', 30, 25, '9780261102217', '1937', 'Fantasy'),
(496, 'Jurassic Park', 31, 29, '9780345538987', '1990', 'Science Fiction'),
(497, 'The Hitchhiker\'s Guide to the Galaxy', 32, 30, '9780345391803', '1979', 'Science Fiction'),
(498, 'Do Androids Dream of Electric Sheep?', 33, 31, '9780345404473', '1968', 'Science Fiction'),
(499, '2001: A Space Odyssey', 34, 32, '9780451457998', '1968', 'Science Fiction'),
(500, 'The Odyssey', 60, 60, '9780140268867', '0000', 'Classics'),
(501, 'Divine Comedy', 61, 61, '9780199535644', '0000', 'Classics'),
(502, 'The Iliad', 62, 62, '9780140445923', '0000', 'Classics'),
(503, 'Paradise Lost', 63, 63, '9780140424393', '0000', 'Classics'),
(504, 'Hamlet', 64, 64, '9780743477123', '0000', 'Classics'),
(505, 'King Lear', 65, 65, '9780141012292', '0000', 'Classics'),
(506, 'Macbeth', 66, 66, '9780140622334', '0000', 'Classics'),
(507, 'Othello', 67, 67, '9780141012315', '0000', 'Classics'),
(508, 'Romeo and Juliet', 68, 68, '9780743477116', '0000', 'Classics'),
(509, 'The Canterbury Tales', 69, 69, '9780140422344', '0000', 'Classics'),
(510, 'The Divine Comedy', 70, 70, '9780451208637', '0000', 'Classics'),
(511, 'The Odyssey', 71, 71, '9780143039954', '0000', 'Classics'),
(512, 'The Aeneid', 72, 72, '9780143106296', '2019', 'Classics'),
(513, 'The Metamorphoses', 73, 73, '9780199537372', '2008', 'Classics'),
(514, 'The Picture of Dorian Gray', 74, 74, '9780141439570', '0000', 'Classics'),
(515, 'Jane Eyre', 75, 75, '9780141441146', '0000', 'Classics'),
(516, 'Wuthering Heights', 76, 76, '9780141439556', '0000', 'Classics'),
(517, 'Little Women', 77, 77, '9780147514011', '0000', 'Classics'),
(518, 'The Turn of the Screw', 78, 78, '9780486266848', '0000', 'Classics'),
(519, 'The Portrait of a Lady', 79, 79, '9780141439631', '0000', 'Classics'),
(520, 'Dubliners', 80, 80, '9780140186475', '1914', 'Classics'),
(521, 'Middlemarch', 81, 81, '9780141439549', '0000', 'Classics'),
(522, 'Ulysses', 82, 82, '9781840226355', '1922', 'Classics'),
(991, 'Life of Pi', 48, 45, '9780151008117', '2001', 'Adventure'),
(992, 'The Handmaid\'s Tale', 49, 46, '9780771008590', '1985', 'Dystopian'),
(993, 'The Cat\'s Table', 50, 47, '9780307744418', '2011', 'Literary Fiction'),
(994, 'The Orenda', 51, 48, '9780385668740', '2013', 'Historical Fiction'),
(995, 'The Blind Assassin', 49, 46, '9780385720953', '2000', 'Literary Fiction'),
(996, 'The Book of Negroes', 52, 49, '9781554681561', '2007', 'Historical Fiction'),
(997, 'Through Black Spruce', 53, 50, '9780670063624', '2008', 'Literary Fiction'),
(998, 'Alias Grace', 49, 46, '9780771008460', '1996', 'Historical Fiction'),
(999, 'Half-Blood Blues', 54, 51, '9781554688457', '2011', 'Historical Fiction'),
(1000, 'The Birth House', 55, 52, '9780385662168', '2006', 'Historical Fiction'),
(1001, 'Annabel', 56, 53, '9781554682806', '2010', 'Literary Fiction'),
(1002, 'Indian Horse', 57, 54, '9781553654026', '2012', 'Literary Fiction'),
(1003, 'The Inconvenient Indian', 58, 55, '9780385664223', '2012', 'Non-Fiction'),
(1004, 'Beautiful Scars', 59, 56, '9781443429265', '2015', 'Memoir'),
(1005, 'The Break', 60, 57, '9780385685372', '2016', 'Literary Fiction'),
(1006, 'Fifteen Dogs', 61, 58, '9781552453056', '2015', 'Fiction'),
(1007, 'The Illegal', 62, 59, '9780345813651', '2015', 'Literary Fiction'),
(1008, 'Station Eleven', 63, 60, '9780385353304', '2014', 'Science Fiction'),
(1009, 'Ru', 64, 61, '9780345808008', '2012', 'Memoir'),
(1010, 'The Best Laid Plans', 65, 62, '9780771047582', '2007', 'Fiction'),
(1011, 'The Cellist of Sarajevo', 66, 63, '9780307397051', '2008', 'Fiction'),
(1012, 'Two Solitudes', 67, 64, '9780771099863', '1945', 'Fiction'),
(1013, 'The Apprenticeship of Duddy Kravitz', 68, 65, '9780143056562', '1959', 'Fiction'),
(1014, 'Lullabies for Little Criminals', 69, 66, '9780676979833', '2006', 'Fiction'),
(1015, 'The Stone Diaries', 70, 67, '9780143067963', '1993', 'Fiction'),
(1058, 'Eleanor Oliphant Is Completely Fine', 92, 89, '9780735220683', '2017', 'Fiction'),
(1059, 'Circe', 93, 90, '9780316556347', '2018', 'Fantasy'),
(1060, 'The Night Circus', 94, 91, '9780307744434', '2011', 'Fantasy'),
(1061, 'The Giver of Stars', 95, 92, '9780399562488', '2019', 'Historical Fiction'),
(1062, 'The Dutch House', 96, 93, '9780062963673', '2019', 'Fiction'),
(1063, 'Becoming', 97, 94, '9781524763138', '2018', 'Memoir'),
(1064, 'Educated', 98, 95, '9780399590504', '2018', 'Memoir'),
(1065, 'Where the Crawdads Sing', 99, 96, '9780735219090', '2018', 'Fiction'),
(1066, 'Little Fires Everywhere', 100, 97, '9780735224292', '2017', 'Fiction'),
(1067, 'The Goldfinch', 101, 98, '9780316055444', '2013', 'Fiction'),
(1068, 'Normal People', 102, 99, '9781984822178', '2018', 'Fiction'),
(1069, 'Big Little Lies', 103, 100, '9780399167065', '2014', 'Fiction'),
(1070, 'The Immortalists', 104, 101, '9780735213180', '2018', 'Fiction'),
(1071, 'American Dirt', 105, 102, '9781250209764', '2020', 'Fiction'),
(1072, 'The Water Dancer', 106, 103, '9780399590597', '2019', 'Fiction'),
(1073, 'A Man Called Ove', 107, 104, '9781476738024', '2012', 'Fiction'),
(1074, 'An American Marriage', 108, 105, '9781616208776', '2018', 'Fiction'),
(1075, 'The Silent Patient', 109, 106, '9781250301697', '2019', 'Thriller'),
(1076, 'The Testaments', 110, 107, '9780385543781', '2019', 'Dystopian'),
(1077, 'The Book Thief', 111, 108, '9780375842203', '2005', 'Historical Fiction'),
(1078, 'All the Light We Cannot See', 112, 109, '9781501173219', '2014', 'Historical Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `Name`) VALUES
(1, 'Dystopian'),
(2, 'Fantasy'),
(3, 'Science Fiction'),
(4, 'Adventure'),
(5, 'Autobiography'),
(6, 'Biography'),
(7, 'Classic'),
(8, 'Comic'),
(9, 'Crime'),
(10, 'Drama'),
(11, 'Dystopian'),
(12, 'Fantasy'),
(13, 'Graphic Novel'),
(14, 'Historical Fiction'),
(15, 'Horror'),
(16, 'Humor'),
(17, 'Literary Fiction'),
(18, 'Memoir'),
(19, 'Mystery'),
(20, 'Non-Fiction'),
(21, 'Paranormal'),
(22, 'Philosophy'),
(23, 'Poetry'),
(24, 'Psychology'),
(25, 'Romance'),
(26, 'Satire'),
(27, 'Science'),
(28, 'Science Fiction'),
(29, 'Self-Help'),
(30, 'Short Story'),
(31, 'Suspense'),
(32, 'Thriller'),
(33, 'Travel'),
(34, 'Young Adult'),
(35, 'Children'),
(36, 'Anthology'),
(37, 'Cookbook'),
(38, 'Diary'),
(39, 'Dictionary'),
(40, 'Encyclopedia'),
(41, 'Guide'),
(42, 'Health'),
(43, 'History'),
(44, 'Journal'),
(45, 'Math'),
(46, 'Picture Book'),
(47, 'Prayer'),
(48, 'Religion'),
(49, 'Spirituality'),
(50, 'Textbook'),
(51, 'True Crime'),
(52, 'Western'),
(53, 'Art'),
(54, 'Music'),
(55, 'Photography'),
(56, 'Crafts'),
(57, 'Hobbies'),
(58, 'Sports'),
(59, 'Outdoors'),
(60, 'Nature'),
(61, 'Pets'),
(62, 'Gardening'),
(63, 'Home Improvement'),
(64, 'Architecture'),
(65, 'Interior Design'),
(66, 'Business'),
(67, 'Economics'),
(68, 'Finance'),
(69, 'Management'),
(70, 'Leadership'),
(71, 'Investing'),
(72, 'Personal Finance'),
(73, 'Entrepreneurship'),
(74, 'Marketing'),
(75, 'Advertising'),
(76, 'Sales'),
(77, 'Computer Science'),
(78, 'Programming'),
(79, 'Technology'),
(80, 'Engineering'),
(81, 'Artificial Intelligence'),
(82, 'Data Science'),
(83, 'Cybersecurity'),
(84, 'Networking'),
(85, 'Web Development'),
(86, 'Mobile Development'),
(87, 'Software Development'),
(88, 'Game Development'),
(89, 'Operating Systems'),
(90, 'Databases'),
(91, 'Algorithms'),
(92, 'Machine Learning'),
(93, 'Deep Learning'),
(94, 'Natural Language Processing'),
(95, 'Robotics'),
(96, 'Ethics'),
(97, 'Education'),
(98, 'Teaching'),
(99, 'Learning'),
(100, 'Foreign Language');

-- --------------------------------------------------------

--
-- Table structure for table `librarystaff`
--

CREATE TABLE `librarystaff` (
  `StaffID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `librarystaff`
--

INSERT INTO `librarystaff` (`StaffID`, `FirstName`, `LastName`, `Position`, `Email`) VALUES
(1, 'Alice', 'Johnson', 'Librarian', 'alice.johnson@library.com'),
(2, 'Bob', 'Williams', 'Assistant Librarian', 'bob.williams@library.com'),
(3, 'Carol', 'Smith', 'Library Technician', 'carol.smith@library.com'),
(4, 'David', 'Brown', 'Library Assistant', 'david.brown@library.com'),
(5, 'Eva', 'Jones', 'Archivist', 'eva.jones@library.com'),
(6, 'Frank', 'Miller', 'Library Director', 'frank.miller@library.com'),
(7, 'Grace', 'Davis', 'Reference Librarian', 'grace.davis@library.com'),
(8, 'Henry', 'Garcia', 'Library Page', 'henry.garcia@library.com'),
(9, 'Isabella', 'Martinez', 'Cataloger', 'isabella.martinez@library.com'),
(10, 'Jack', 'Hernandez', 'Library Assistant', 'jack.hernandez@library.com'),
(11, 'Karen', 'Lopez', 'Librarian', 'karen.lopez@library.com'),
(12, 'Liam', 'Gonzalez', 'Library Technician', 'liam.gonzalez@library.com'),
(13, 'Mia', 'Wilson', 'Library Page', 'mia.wilson@library.com'),
(14, 'Noah', 'Anderson', 'Library Assistant', 'noah.anderson@library.com'),
(15, 'Olivia', 'Thomas', 'Librarian', 'olivia.thomas@library.com'),
(16, 'Paul', 'Taylor', 'Library Technician', 'paul.taylor@library.com'),
(17, 'Quinn', 'Moore', 'Reference Librarian', 'quinn.moore@library.com'),
(18, 'Rachel', 'Jackson', 'Archivist', 'rachel.jackson@library.com'),
(19, 'Sam', 'White', 'Library Assistant', 'sam.white@library.com'),
(20, 'Tina', 'Harris', 'Library Director', 'tina.harris@library.com'),
(21, 'Umar', 'Clark', 'Librarian', 'umar.clark@library.com'),
(22, 'Vera', 'Lewis', 'Library Technician', 'vera.lewis@library.com'),
(23, 'Will', 'Robinson', 'Library Page', 'will.robinson@library.com'),
(24, 'Xena', 'Walker', 'Library Assistant', 'xena.walker@library.com'),
(25, 'Yara', 'Young', 'Librarian', 'yara.young@library.com'),
(26, 'Zane', 'Allen', 'Cataloger', 'zane.allen@library.com'),
(27, 'Aiden', 'King', 'Library Technician', 'aiden.king@library.com'),
(28, 'Bella', 'Scott', 'Library Assistant', 'bella.scott@library.com'),
(29, 'Caleb', 'Green', 'Librarian', 'caleb.green@library.com'),
(30, 'Diana', 'Adams', 'Library Director', 'diana.adams@library.com'),
(31, 'Ethan', 'Baker', 'Library Page', 'ethan.baker@library.com'),
(32, 'Fiona', 'Nelson', 'Library Assistant', 'fiona.nelson@library.com'),
(33, 'George', 'Hill', 'Librarian', 'george.hill@library.com'),
(34, 'Hannah', 'Ramirez', 'Library Technician', 'hannah.ramirez@library.com'),
(35, 'Ian', 'Campbell', 'Archivist', 'ian.campbell@library.com'),
(36, 'Julia', 'Mitchell', 'Reference Librarian', 'julia.mitchell@library.com'),
(37, 'Kevin', 'Perez', 'Library Assistant', 'kevin.perez@library.com'),
(38, 'Lily', 'Roberts', 'Library Page', 'lily.roberts@library.com'),
(39, 'Mason', 'Turner', 'Librarian', 'mason.turner@library.com'),
(40, 'Nina', 'Phillips', 'Library Technician', 'nina.phillips@library.com'),
(41, 'Owen', 'Parker', 'Library Assistant', 'owen.parker@library.com'),
(42, 'Paula', 'Evans', 'Library Director', 'paula.evans@library.com'),
(43, 'Quincy', 'Edwards', 'Library Page', 'quincy.edwards@library.com'),
(44, 'Rita', 'Collins', 'Library Technician', 'rita.collins@library.com'),
(45, 'Steve', 'Stewart', 'Librarian', 'steve.stewart@library.com'),
(46, 'Tara', 'Sanchez', 'Library Assistant', 'tara.sanchez@library.com'),
(47, 'Uma', 'Morris', 'Archivist', 'uma.morris@library.com'),
(48, 'Victor', 'Rogers', 'Reference Librarian', 'victor.rogers@library.com'),
(49, 'Wendy', 'Reed', 'Library Assistant', 'wendy.reed@library.com'),
(50, 'Charles', 'Brown', 'Librarian', 'charles.brown@library.com'),
(51, 'Diane', 'Green', 'Assistant Librarian', 'diane.green@library.com'),
(52, 'Edward', 'Johnson', 'Senior Librarian', 'edward.johnson@library.com'),
(53, 'Fiona', 'Smith', 'Junior Librarian', 'fiona.smith@library.com'),
(54, 'George', 'White', 'Librarian', 'george.white@library.com'),
(55, 'Hannah', 'Clark', 'Assistant Librarian', 'hannah.clark@library.com'),
(56, 'Ian', 'Wright', 'Librarian', 'ian.wright@library.com'),
(57, 'Jessica', 'King', 'Senior Librarian', 'jessica.king@library.com'),
(58, 'Kevin', 'Lee', 'Junior Librarian', 'kevin.lee@library.com'),
(59, 'Laura', 'Walker', 'Librarian', 'laura.walker@library.com'),
(60, 'Michael', 'Hall', 'Assistant Librarian', 'michael.hall@library.com'),
(61, 'Nina', 'Allen', 'Librarian', 'nina.allen@library.com'),
(62, 'Oliver', 'Young', 'Senior Librarian', 'oliver.young@library.com'),
(63, 'Patricia', 'Hernandez', 'Junior Librarian', 'patricia.hernandez@library.com'),
(64, 'Quincy', 'Hill', 'Librarian', 'quincy.hill@library.com'),
(65, 'Rachel', 'Scott', 'Assistant Librarian', 'rachel.scott@library.com'),
(66, 'Steven', 'Adams', 'Librarian', 'steven.adams@library.com'),
(67, 'Tina', 'Baker', 'Senior Librarian', 'tina.baker@library.com'),
(68, 'Ursula', 'Nelson', 'Junior Librarian', 'ursula.nelson@library.com'),
(69, 'Victor', 'Carter', 'Librarian', 'victor.carter@library.com'),
(70, 'Wendy', 'Mitchell', 'Assistant Librarian', 'wendy.mitchell@library.com'),
(71, 'Xavier', 'Perez', 'Librarian', 'xavier.perez@library.com'),
(72, 'Yvonne', 'Roberts', 'Senior Librarian', 'yvonne.roberts@library.com'),
(73, 'Zachary', 'Edwards', 'Junior Librarian', 'zachary.edwards@library.com'),
(74, 'Abigail', 'Collins', 'Librarian', 'abigail.collins@library.com'),
(75, 'Brandon', 'Stewart', 'Assistant Librarian', 'brandon.stewart@library.com'),
(76, 'Catherine', 'Sanchez', 'Librarian', 'catherine.sanchez@library.com'),
(77, 'David', 'Morris', 'Senior Librarian', 'david.morris@library.com'),
(78, 'Evelyn', 'Rogers', 'Junior Librarian', 'evelyn.rogers@library.com'),
(79, 'Frank', 'Reed', 'Librarian', 'frank.reed@library.com'),
(80, 'Grace', 'Cook', 'Assistant Librarian', 'grace.cook@library.com'),
(81, 'Henry', 'Morgan', 'Librarian', 'henry.morgan@library.com'),
(82, 'Isabella', 'Bell', 'Senior Librarian', 'isabella.bell@library.com'),
(83, 'Jack', 'Murphy', 'Junior Librarian', 'jack.murphy@library.com'),
(84, 'Karen', 'Bailey', 'Librarian', 'karen.bailey@library.com'),
(85, 'Louis', 'Rivera', 'Assistant Librarian', 'louis.rivera@library.com'),
(86, 'Monica', 'Cooper', 'Librarian', 'monica.cooper@library.com'),
(87, 'Nathan', 'Richardson', 'Senior Librarian', 'nathan.richardson@library.com'),
(88, 'Olivia', 'Cox', 'Junior Librarian', 'olivia.cox@library.com'),
(89, 'Paul', 'Howard', 'Librarian', 'paul.howard@library.com'),
(90, 'Quinn', 'Ward', 'Assistant Librarian', 'quinn.ward@library.com'),
(91, 'Rebecca', 'Torres', 'Librarian', 'rebecca.torres@library.com'),
(92, 'Sam', 'Peterson', 'Senior Librarian', 'sam.peterson@library.com'),
(93, 'Teresa', 'Gray', 'Junior Librarian', 'teresa.gray@library.com'),
(94, 'Ulysses', 'Ramirez', 'Librarian', 'ulysses.ramirez@library.com'),
(95, 'Vanessa', 'James', 'Assistant Librarian', 'vanessa.james@library.com'),
(96, 'William', 'Watson', 'Librarian', 'william.watson@library.com'),
(97, 'Xena', 'Brooks', 'Senior Librarian', 'xena.brooks@library.com'),
(98, 'Yara', 'Kelly', 'Junior Librarian', 'yara.kelly@library.com'),
(99, 'Zane', 'Sanders', 'Librarian', 'zane.sanders@library.com');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `MemberID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `MembershipDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`MemberID`, `FirstName`, `LastName`, `Address`, `Phone`, `Email`, `MembershipDate`) VALUES
(1, 'John', 'Doe', '123 Main St', '123-456-7890', 'john.doe@example.com', '2023-01-01'),
(2, 'Jane', 'Smith', '456 Elm St', '987-654-3210', 'jane.smith@example.com', '2023-02-01'),
(3, 'Michael', 'Johnson', '789 Oak St', '555-123-4567', 'michael.johnson@example.com', '2023-03-01'),
(4, 'Emily', 'Brown', '234 Maple Ave', '555-987-6543', 'emily.brown@example.com', '2023-04-01'),
(5, 'Christopher', 'Wilson', '567 Pine St', '555-321-7890', 'christopher.wilson@example.com', '2023-05-01'),
(6, 'Jessica', 'Martinez', '890 Cedar St', '555-654-3210', 'jessica.martinez@example.com', '2023-06-01'),
(7, 'Matthew', 'Anderson', '901 Elm St', '555-789-1234', 'matthew.anderson@example.com', '2023-07-01'),
(8, 'Sarah', 'Taylor', '123 Oak St', '555-987-6543', 'sarah.taylor@example.com', '2023-08-01'),
(9, 'Andrew', 'Thomas', '345 Maple Ave', '555-123-4567', 'andrew.thomas@example.com', '2023-09-01'),
(10, 'Lauren', 'Hernandez', '567 Pine St', '555-321-7890', 'lauren.hernandez@example.com', '2023-10-01'),
(11, 'James', 'Walker', '789 Cedar St', '555-654-3210', 'james.walker@example.com', '2023-11-01'),
(12, 'Ashley', 'Young', '901 Elm St', '555-789-1234', 'ashley.young@example.com', '2023-12-01'),
(13, 'David', 'Scott', '123 Main St', '555-987-6543', 'david.scott@example.com', '2024-01-01'),
(14, 'Amanda', 'King', '456 Maple Ave', '555-123-4567', 'amanda.king@example.com', '2024-02-01'),
(15, 'Kevin', 'Wright', '678 Pine St', '555-321-7890', 'kevin.wright@example.com', '2024-03-01'),
(16, 'Michelle', 'Lopez', '890 Cedar St', '555-654-3210', 'michelle.lopez@example.com', '2024-04-01'),
(17, 'Ryan', 'Hill', '901 Elm St', '555-789-1234', 'ryan.hill@example.com', '2024-05-01'),
(18, 'Jennifer', 'Green', '123 Oak St', '555-987-6543', 'jennifer.green@example.com', '2024-06-01'),
(19, 'Daniel', 'Adams', '345 Maple Ave', '555-123-4567', 'daniel.adams@example.com', '2024-07-01'),
(20, 'Emily', 'Baker', '567 Pine St', '555-321-7890', 'emily.baker@example.com', '2024-08-01'),
(21, 'Joseph', 'Gonzalez', '789 Cedar St', '555-654-3210', 'joseph.gonzalez@example.com', '2024-09-01'),
(22, 'Sophia', 'Nelson', '901 Elm St', '555-789-1234', 'sophia.nelson@example.com', '2024-10-01'),
(23, 'Andrew', 'Carter', '123 Main St', '555-987-6543', 'andrew.carter@example.com', '2024-11-01'),
(24, 'Emma', 'Mitchell', '456 Maple Ave', '555-123-4567', 'emma.mitchell@example.com', '2024-12-01'),
(25, 'Madison', 'Perez', '678 Pine St', '555-321-7890', 'madison.perez@example.com', '2025-01-01'),
(26, 'Alexander', 'Roberts', '890 Cedar St', '555-654-3210', 'alexander.roberts@example.com', '2025-02-01'),
(27, 'Olivia', 'Turner', '901 Elm St', '555-789-1234', 'olivia.turner@example.com', '2025-03-01'),
(28, 'Samuel', 'Phillips', '123 Oak St', '555-987-6543', 'samuel.phillips@example.com', '2025-04-01'),
(29, 'Grace', 'Campbell', '345 Maple Ave', '555-123-4567', 'grace.campbell@example.com', '2025-05-01'),
(30, 'Benjamin', 'Parker', '567 Pine St', '555-321-7890', 'benjamin.parker@example.com', '2025-06-01'),
(31, 'Lily', 'Evans', '789 Cedar St', '555-654-3210', 'lily.evans@example.com', '2025-07-01'),
(32, 'Nicholas', 'Stewart', '901 Elm St', '555-789-1234', 'nicholas.stewart@example.com', '2025-08-01'),
(33, 'Ella', 'Sanchez', '123 Main St', '555-987-6543', 'ella.sanchez@example.com', '2025-09-01'),
(34, 'Alice', 'Johnson', '789 Oak St', '456-789-0123', 'alice.johnson@example.com', '2023-03-01'),
(35, 'Bob', 'Williams', '101 Pine St', '789-012-3456', 'bob.williams@example.com', '2023-03-02'),
(36, 'Charlie', 'Brown', '222 Maple St', '012-345-6789', 'charlie.brown@example.com', '2023-03-03'),
(37, 'David', 'Davis', '333 Elm St', '345-678-9012', 'david.davis@example.com', '2023-03-04'),
(38, 'Emma', 'Evans', '444 Birch St', '678-901-2345', 'emma.evans@example.com', '2023-03-05'),
(39, 'Frank', 'Ford', '555 Cedar St', '901-234-5678', 'frank.ford@example.com', '2023-03-06'),
(40, 'Grace', 'Green', '666 Walnut St', '123-456-7890', 'grace.green@example.com', '2023-03-07'),
(41, 'Henry', 'Harris', '777 Ash St', '234-567-8901', 'henry.harris@example.com', '2023-03-08'),
(42, 'Isabel', 'Ingram', '888 Pine St', '345-678-9012', 'isabel.ingram@example.com', '2023-03-09'),
(43, 'Jack', 'Jackson', '999 Oak St', '456-789-0123', 'jack.jackson@example.com', '2023-03-10'),
(44, 'Kate', 'King', '111 Maple St', '567-890-1234', 'kate.king@example.com', '2023-03-11'),
(45, 'Liam', 'Lee', '222 Elm St', '678-901-2345', 'liam.lee@example.com', '2023-03-12'),
(46, 'Mia', 'Miller', '333 Birch St', '789-012-3456', 'mia.miller@example.com', '2023-03-13'),
(47, 'Noah', 'Nelson', '444 Cedar St', '890-123-4567', 'noah.nelson@example.com', '2023-03-14'),
(48, 'Olivia', 'Owen', '555 Walnut St', '901-234-5678', 'olivia.owen@example.com', '2023-03-15'),
(49, 'Peter', 'Price', '666 Ash St', '012-345-6789', 'peter.price@example.com', '2023-03-16'),
(50, 'Quinn', 'Quinn', '777 Pine St', '123-456-7890', 'quinn.quinn@example.com', '2023-03-17'),
(51, 'Ryan', 'Richards', '888 Maple St', '234-567-8901', 'ryan.richards@example.com', '2023-03-18'),
(52, 'Sophia', 'Scott', '999 Elm St', '345-678-9012', 'sophia.scott@example.com', '2023-03-19'),
(53, 'Thomas', 'Taylor', '111 Birch St', '456-789-0123', 'thomas.taylor@example.com', '2023-03-20'),
(54, 'Uma', 'Underwood', '222 Cedar St', '567-890-1234', 'uma.underwood@example.com', '2023-03-21'),
(55, 'Victor', 'Vaughn', '333 Walnut St', '678-901-2345', 'victor.vaughn@example.com', '2023-03-22'),
(56, 'Wendy', 'Wilson', '444 Ash St', '789-012-3456', 'wendy.wilson@example.com', '2023-03-23'),
(57, 'Xander', 'Xu', '555 Pine St', '890-123-4567', 'xander.xu@example.com', '2023-03-24'),
(58, 'Yara', 'Yates', '666 Maple St', '901-234-5678', 'yara.yates@example.com', '2023-03-25'),
(59, 'Zoe', 'Zimmerman', '777 Elm St', '012-345-6789', 'zoe.zimmerman@example.com', '2023-03-26'),
(60, 'Adam', 'Adams', '888 Birch St', '123-456-7890', 'adam.adams@example.com', '2023-03-27'),
(61, 'Bella', 'Bell', '999 Cedar St', '234-567-8901', 'bella.bell@example.com', '2023-03-28'),
(62, 'Caleb', 'Clark', '111 Walnut St', '345-678-9012', 'caleb.clark@example.com', '2023-03-29'),
(63, 'Daisy', 'Dixon', '222 Ash St', '456-789-0123', 'daisy.dixon@example.com', '2023-03-30'),
(64, 'Ethan', 'Edwards', '333 Pine St', '567-890-1234', 'ethan.edwards@example.com', '2023-03-31'),
(65, 'Fiona', 'Fisher', '444 Maple St', '678-901-2345', 'fiona.fisher@example.com', '2023-04-01'),
(66, 'Gavin', 'Gibson', '555 Elm St', '789-012-3456', 'gavin.gibson@example.com', '2023-04-02'),
(99, 'Emily', 'Johnson', '789 Oak St', '345-678-9012', 'emily.johnson@example.com', '2023-03-01'),
(100, 'Daniel', 'Brown', '234 Pine St', '567-890-1234', 'daniel.brown@example.com', '2023-03-02'),
(101, 'Olivia', 'Miller', '567 Maple St', '789-012-3456', 'olivia.miller@example.com', '2023-03-03'),
(102, 'Alexander', 'Davis', '890 Cedar St', '901-234-5678', 'alexander.davis@example.com', '2023-03-04'),
(103, 'Sophia', 'Garcia', '123 Elm St', '123-456-7890', 'sophia.garcia@example.com', '2023-03-05'),
(104, 'Michael', 'Rodriguez', '456 Birch St', '234-567-8901', 'michael.rodriguez@example.com', '2023-03-06'),
(105, 'Emma', 'Martinez', '678 Walnut St', '345-678-9012', 'emma.martinez@example.com', '2023-03-07'),
(106, 'William', 'Lopez', '890 Sycamore St', '567-890-1234', 'william.lopez@example.com', '2023-03-08'),
(107, 'Isabella', 'Gonzalez', '234 Cedar St', '789-012-3456', 'isabella.gonzalez@example.com', '2023-03-09'),
(108, 'James', 'Wilson', '567 Ash St', '901-234-5678', 'james.wilson@example.com', '2023-03-10'),
(109, 'Sophia', 'Lee', '890 Oak St', '123-456-7890', 'sophia.lee@example.com', '2023-03-11'),
(110, 'Ethan', 'Walker', '123 Elm St', '234-567-8901', 'ethan.walker@example.com', '2023-03-12'),
(111, 'Olivia', 'Hall', '456 Pine St', '345-678-9012', 'olivia.hall@example.com', '2023-03-13'),
(112, 'Mia', 'Young', '678 Maple St', '567-890-1234', 'mia.young@example.com', '2023-03-14'),
(113, 'Benjamin', 'Wright', '890 Cedar St', '789-012-3456', 'benjamin.wright@example.com', '2023-03-15'),
(114, 'Evelyn', 'Adams', '234 Walnut St', '901-234-5678', 'evelyn.adams@example.com', '2023-03-16'),
(115, 'Charlotte', 'Nelson', '567 Sycamore St', '123-456-7890', 'charlotte.nelson@example.com', '2023-03-17'),
(116, 'Liam', 'Baker', '890 Birch St', '234-567-8901', 'liam.baker@example.com', '2023-03-18'),
(117, 'Amelia', 'Perez', '123 Oak St', '345-678-9012', 'amelia.perez@example.com', '2023-03-19'),
(118, 'Elijah', 'Roberts', '456 Elm St', '567-890-1234', 'elijah.roberts@example.com', '2023-03-20'),
(119, 'Harper', 'Turner', '678 Pine St', '789-012-3456', 'harper.turner@example.com', '2023-03-21'),
(120, 'Ava', 'Phillips', '890 Maple St', '901-234-5678', 'ava.phillips@example.com', '2023-03-22'),
(121, 'Mason', 'Campbell', '234 Cedar St', '123-456-7890', 'mason.campbell@example.com', '2023-03-23'),
(122, 'Avery', 'Evans', '567 Walnut St', '234-567-8901', 'avery.evans@example.com', '2023-03-24'),
(123, 'Lucas', 'Edwards', '890 Ash St', '345-678-9012', 'lucas.edwards@example.com', '2023-03-25'),
(124, 'Scarlett', 'Collins', '123 Sycamore St', '567-890-1234', 'scarlett.collins@example.com', '2023-03-26'),
(125, 'Camila', 'Stewart', '456 Birch St', '789-012-3456', 'camila.stewart@example.com', '2023-03-27'),
(126, 'Wyatt', 'Sanchez', '678 Oak St', '901-234-5678', 'wyatt.sanchez@example.com', '2023-03-28'),
(127, 'Luna', 'Morris', '890 Elm St', '123-456-7890', 'luna.morris@example.com', '2023-03-29'),
(128, 'Luke', 'Nguyen', '123 Pine St', '234-567-8901', 'luke.nguyen@example.com', '2023-03-30'),
(129, 'Zoey', 'Rodriguez', '456 Maple St', '345-678-9012', 'zoey.rodriguez@example.com', '2023-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `PublisherID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`PublisherID`, `Name`, `Address`) VALUES
(1, 'Harcourt', '123 Publisher St'),
(2, 'Bloomsbury', '456 Publisher Ave'),
(3, 'George Allen & Unwin', '789 Publisher Rd'),
(4, 'Penguin Random House', '1745 Broadway, New York, NY 10019'),
(5, 'HarperCollins', '195 Broadway, New York, NY 10007'),
(6, 'Simon & Schuster', '1230 Avenue of the Americas, New York, NY 10020'),
(7, 'Hachette Book Group', '1290 Avenue of the Americas, New York, NY 10104'),
(8, 'Macmillan Publishers', '120 Broadway, New York, NY 10271'),
(9, 'Scholastic', '557 Broadway, New York, NY 10012'),
(10, 'Pearson', '80 Strand, London, WC2R 0RL, United Kingdom'),
(11, 'Cengage Learning', '200 Pier 4 Blvd, Boston, MA 02210'),
(12, 'McGraw-Hill Education', '1325 Avenue of the Americas, New York, NY 10019'),
(13, 'Houghton Mifflin Harcourt', '125 High Street, Boston, MA 02110'),
(14, 'Wiley', '111 River Street, Hoboken, NJ 07030'),
(15, 'Springer', '233 Spring Street, New York, NY 10013'),
(16, 'Oxford University Press', 'Great Clarendon Street, Oxford, OX2 6DP, United Kingdom'),
(17, 'Cambridge University Press', 'University Printing House, Shaftesbury Road, Cambridge, CB2 8BS, United Kingdom'),
(18, 'SAGE Publications', '2455 Teller Road, Thousand Oaks, CA 91320'),
(19, 'Elsevier', '1600 John F Kennedy Blvd, Philadelphia, PA 19103'),
(20, 'Taylor & Francis', '2&4 Park Square, Milton Park, Abingdon, OX14 4RN, United Kingdom'),
(21, 'Bloomsbury Publishing', '50 Bedford Square, London, WC1B 3DP, United Kingdom'),
(22, 'Palgrave Macmillan', '175 Fifth Avenue, New York, NY 10010'),
(23, 'Routledge', '711 Third Avenue, New York, NY 10017'),
(24, 'W.W. Norton & Company', '500 Fifth Avenue, New York, NY 10110'),
(25, 'Harvard University Press', '79 Garden Street, Cambridge, MA 02138'),
(26, 'MIT Press', 'One Broadway, Cambridge, MA 02142'),
(27, 'Yale University Press', '302 Temple Street, New Haven, CT 06511'),
(28, 'Princeton University Press', '41 William Street, Princeton, NJ 08540'),
(29, 'University of Chicago Press', '1427 E. 60th Street, Chicago, IL 60637'),
(30, 'Johns Hopkins University Press', '2715 N. Charles Street, Baltimore, MD 21218'),
(31, 'Duke University Press', '905 W. Main Street, Suite 18B, Durham, NC 27701'),
(32, 'Stanford University Press', '485 Broadway, Redwood City, CA 94063'),
(33, 'University of California Press', '2120 Berkeley Way, Berkeley, CA 94704'),
(34, 'Indiana University Press', '601 N. Morton Street, Bloomington, IN 47404'),
(35, 'University of Texas Press', '3001 Lake Austin Blvd, Stop E4800, Austin, TX 78703'),
(36, 'Columbia University Press', '61 West 62nd Street, New York, NY 10023'),
(37, 'Cornell University Press', 'Sage House, 512 East State Street, Ithaca, NY 14850'),
(38, 'University of Pennsylvania Press', '3905 Spruce Street, Philadelphia, PA 19104'),
(39, 'Routledge', '2 Park Square, Milton Park, Abingdon, OX14 4RN, United Kingdom'),
(40, 'Scribner', '1230 Avenue of the Americas, New York, NY 10020'),
(41, 'Farrar, Straus and Giroux', '18 West 18th Street, New York, NY 10011'),
(42, 'Knopf Doubleday Publishing Group', '1745 Broadway, New York, NY 10019'),
(43, 'Vintage Books', '1745 Broadway, New York, NY 10019'),
(44, 'Ballantine Books', '1745 Broadway, New York, NY 10019'),
(45, 'Crown Publishing Group', '1745 Broadway, New York, NY 10019'),
(46, 'Random House', '1745 Broadway, New York, NY 10019'),
(47, 'Little, Brown and Company', '1290 Avenue of the Americas, New York, NY 10104'),
(48, 'Grand Central Publishing', '1290 Avenue of the Americas, New York, NY 10104'),
(49, 'Orbit Books', '1290 Avenue of the Americas, New York, NY 10104'),
(50, 'St. Martin\'s Press', '175 Fifth Avenue, New York, NY 10010'),
(51, 'Tor Books', '175 Fifth Avenue, New York, NY 10010'),
(52, 'Minotaur Books', '175 Fifth Avenue, New York, NY 10010'),
(53, 'Forge Books', '175 Fifth Avenue, New York, NY 10010'),
(54, 'Picador', '175 Fifth Avenue, New York, NY 10010'),
(55, 'Henry Holt and Company', '175 Fifth Avenue, New York, NY 10010'),
(56, 'Flatiron Books', '175 Fifth Avenue, New York, NY 10010'),
(57, 'Celadon Books', '175 Fifth Avenue, New York, NY 10010'),
(58, 'Atria Books', '1230 Avenue of the Americas, New York, NY 10020'),
(59, 'Free Press', '1230 Avenue of the Americas, New York, NY 10020'),
(60, 'Gallery Books', '1230 Avenue of the Americas, New York, NY 10020'),
(61, 'Pocket Books', '1230 Avenue of the Americas, New York, NY 10020'),
(62, 'Scribner', '1230 Avenue of the Americas, New York, NY 10020'),
(63, 'Touchstone', '1230 Avenue of the Americas, New York, NY 10020'),
(64, 'Viking Press', '375 Hudson Street, New York, NY 10014'),
(65, 'Penguin Books', '375 Hudson Street, New York, NY 10014'),
(66, 'Berkley Books', '375 Hudson Street, New York, NY 10014'),
(67, 'Ace Books', '375 Hudson Street, New York, NY 10014'),
(68, 'DAW Books', '375 Hudson Street, New York, NY 10014'),
(69, 'New American Library', '375 Hudson Street, New York, NY 10014'),
(70, 'Putnam Publishing Group', '375 Hudson Street, New York, NY 10014'),
(71, 'Riverhead Books', '375 Hudson Street, New York, NY 10014'),
(72, 'Penguin Classics', '375 Hudson Street, New York, NY 10014'),
(73, 'Blue Rider Press', '375 Hudson Street, New York, NY 10014'),
(74, 'New Directions Publishing', '80 8th Avenue, New York, NY 10011'),
(75, 'Arcade Publishing', '307 W 36th Street, New York, NY 10018'),
(76, 'Grove Atlantic', '154 W 14th Street, New York, NY 10011'),
(77, 'Seven Stories Press', '140 Watts Street, New York, NY 10013'),
(78, 'Feminist Press', '365 5th Avenue, New York, NY 10016'),
(79, 'Graywolf Press', '250 3rd Avenue N, Suite 600, Minneapolis, MN 55401'),
(80, 'Milkweed Editions', '1011 Washington Avenue S, Open Book, Suite 300, Minneapolis, MN 55415'),
(81, 'Coffee House Press', '79 13th Avenue NE, Suite 110, Minneapolis, MN 55413'),
(82, 'Haymarket Books', '800 W Buena Avenue, Chicago, IL 60613'),
(83, 'Melville House Publishing', '46 John Street, Brooklyn, NY 11201'),
(84, 'Akashic Books', '232 Third Street, Suite A115, Brooklyn, NY 11215'),
(85, 'Europa Editions', '214 W 29th Street, Suite 1002, New York, NY 10001'),
(86, 'Kensington Publishing Corp.', '119 W 40th Street, Floor 21, New York, NY 10018'),
(87, 'Arcadia Publishing', '420 Wando Park Blvd, Mount Pleasant, SC 29464'),
(88, 'Workman Publishing', '225 Varick Street, New York, NY 10014'),
(89, 'Chronicle Books', '680 Second Street, San Francisco, CA 94107'),
(90, 'Abrams Books', '195 Broadway, New York, NY 10007'),
(91, 'Sterling Publishing', '120 Wall Street, New York, NY 10005'),
(92, 'Sourcebooks', '1935 Brookdale Road, Suite 139, Naperville, IL 60563'),
(93, 'Quirk Books', '215 Church Street, Philadelphia, PA 19106'),
(94, 'W.W. Norton & Company', '500 Fifth Avenue, New York, NY 10110'),
(95, 'Rodale Books', '733 3rd Avenue, New York, NY 10017'),
(96, 'Harlequin', '233 Broadway, New York, NY 10279'),
(97, 'University of Georgia Press', 'Main Library, Third Floor, 320 S Jackson Street, Athens, GA 30602'),
(98, 'Beacon Press', '24 Farnsworth Street, Boston, MA 02210'),
(99, 'University of Minnesota Press', '111 Third Avenue S, Suite 290, Minneapolis, MN 55401'),
(100, 'New York University Press', '838 Broadway, 3rd Floor, New York, NY 10003');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `ReservationID` int(11) NOT NULL,
  `BookID` int(11) DEFAULT NULL,
  `MemberID` int(11) DEFAULT NULL,
  `ReservationDate` date NOT NULL,
  `Status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`ReservationID`, `BookID`, `MemberID`, `ReservationDate`, `Status`) VALUES
(49, 1, 1, '2023-02-25', 'Pending'),
(50, 2, 2, '2023-02-26', 'Pending'),
(51, 3, 1, '2023-02-27', 'Pending'),
(52, 2, 1, '2023-02-28', 'Pending'),
(53, 1, 2, '2023-03-01', 'Pending'),
(54, 3, 2, '2023-03-02', 'Pending'),
(55, 2, 1, '2023-03-03', 'Pending'),
(56, 1, 2, '2023-03-04', 'Pending'),
(57, 3, 1, '2023-03-05', 'Pending'),
(58, 1, 1, '2023-03-06', 'Pending'),
(59, 2, 2, '2023-03-07', 'Pending'),
(60, 3, 2, '2023-03-08', 'Pending'),
(61, 1, 1, '2023-03-09', 'Pending'),
(62, 2, 2, '2023-03-10', 'Pending'),
(63, 3, 1, '2023-03-11', 'Pending'),
(64, 1, 2, '2023-03-12', 'Pending'),
(65, 2, 1, '2023-03-13', 'Pending'),
(66, 3, 2, '2023-03-14', 'Pending'),
(67, 1, 1, '2023-03-15', 'Pending'),
(68, 2, 2, '2023-03-16', 'Pending'),
(69, 3, 1, '2023-03-17', 'Pending'),
(70, 1, 2, '2023-03-18', 'Pending'),
(71, 2, 1, '2023-03-19', 'Pending'),
(72, 3, 2, '2023-03-20', 'Pending'),
(73, 1, 1, '2023-03-21', 'Pending'),
(74, 2, 2, '2023-03-22', 'Pending'),
(75, 3, 1, '2023-03-23', 'Pending'),
(76, 1, 2, '2023-03-24', 'Pending'),
(77, 2, 1, '2023-03-25', 'Pending'),
(78, 3, 2, '2023-03-26', 'Pending'),
(79, 1, 1, '2023-03-27', 'Pending'),
(80, 2, 2, '2023-03-28', 'Pending'),
(81, 3, 1, '2023-03-29', 'Pending'),
(82, 1, 2, '2023-03-30', 'Pending'),
(83, 2, 1, '2023-03-31', 'Pending'),
(84, 3, 2, '2023-04-01', 'Pending'),
(85, 1, 1, '2023-04-02', 'Pending'),
(86, 2, 2, '2023-04-03', 'Pending'),
(87, 3, 1, '2023-04-04', 'Pending'),
(88, 1, 2, '2023-04-05', 'Pending'),
(89, 2, 1, '2023-04-06', 'Pending'),
(90, 3, 2, '2023-04-07', 'Pending'),
(91, 1, 1, '2023-04-08', 'Pending'),
(92, 2, 2, '2023-04-09', 'Pending'),
(93, 3, 1, '2023-04-10', 'Pending'),
(94, 1, 2, '2023-04-11', 'Pending'),
(95, 2, 1, '2023-04-12', 'Pending'),
(96, 3, 2, '2023-04-13', 'Pending'),
(147, 1, 1, '2023-02-25', 'Pending'),
(148, 2, 2, '2023-02-26', 'Pending'),
(149, 3, 1, '2023-02-27', 'Pending'),
(150, 1, 2, '2023-02-28', 'Pending'),
(151, 2, 1, '2023-03-01', 'Pending'),
(152, 3, 2, '2023-03-02', 'Pending'),
(153, 1, 1, '2023-03-03', 'Pending'),
(154, 2, 2, '2023-03-04', 'Pending'),
(155, 3, 1, '2023-03-05', 'Pending'),
(156, 1, 2, '2023-03-06', 'Pending'),
(157, 2, 1, '2023-03-07', 'Pending'),
(158, 3, 2, '2023-03-08', 'Pending'),
(159, 1, 1, '2023-03-09', 'Pending'),
(160, 2, 2, '2023-03-10', 'Pending'),
(161, 3, 1, '2023-03-11', 'Pending'),
(162, 1, 2, '2023-03-12', 'Pending'),
(163, 2, 1, '2023-03-13', 'Pending'),
(164, 3, 2, '2023-03-14', 'Pending'),
(165, 1, 1, '2023-03-15', 'Pending'),
(166, 2, 2, '2023-03-16', 'Pending'),
(167, 3, 1, '2023-03-17', 'Pending'),
(168, 1, 2, '2023-03-18', 'Pending'),
(169, 2, 1, '2023-03-19', 'Pending'),
(170, 3, 2, '2023-03-20', 'Pending'),
(171, 1, 1, '2023-03-21', 'Pending'),
(172, 2, 2, '2023-03-22', 'Pending'),
(173, 3, 1, '2023-03-23', 'Pending'),
(174, 1, 2, '2023-03-24', 'Pending'),
(175, 2, 1, '2023-03-25', 'Pending'),
(176, 3, 2, '2023-03-26', 'Pending'),
(177, 1, 1, '2023-03-27', 'Pending'),
(178, 2, 2, '2023-03-28', 'Pending'),
(179, 3, 1, '2023-03-29', 'Pending'),
(180, 1, 2, '2023-03-30', 'Pending'),
(181, 2, 1, '2023-03-31', 'Pending'),
(182, 3, 2, '2023-04-01', 'Pending'),
(183, 1, 1, '2023-04-02', 'Pending'),
(184, 2, 2, '2023-04-03', 'Pending'),
(185, 3, 1, '2023-04-04', 'Pending'),
(186, 1, 2, '2023-04-05', 'Pending'),
(187, 2, 1, '2023-04-06', 'Pending'),
(188, 3, 2, '2023-04-07', 'Pending'),
(189, 1, 1, '2023-04-08', 'Pending'),
(190, 2, 2, '2023-04-09', 'Pending'),
(191, 3, 1, '2023-04-10', 'Pending'),
(192, 1, 2, '2023-04-11', 'Pending'),
(193, 2, 1, '2023-04-12', 'Pending'),
(194, 3, 2, '2023-04-13', 'Pending'),
(195, 1, 1, '2023-04-14', 'Pending'),
(196, 2, 2, '2023-04-15', 'Pending'),
(199, 3, 1, '2023-02-27', 'Pending'),
(200, 1, 2, '2023-02-28', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Indexes for table `bookcopies`
--
ALTER TABLE `bookcopies`
  ADD PRIMARY KEY (`CopyID`),
  ADD KEY `BookID` (`BookID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `librarystaff`
--
ALTER TABLE `librarystaff`
  ADD PRIMARY KEY (`StaffID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`MemberID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`PublisherID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`ReservationID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `AuthorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `bookcopies`
--
ALTER TABLE `bookcopies`
  MODIFY `CopyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `librarystaff`
--
ALTER TABLE `librarystaff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `PublisherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `ReservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookcopies`
--
ALTER TABLE `bookcopies`
  ADD CONSTRAINT `bookcopies_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `authors` (`AuthorID`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`PublisherID`) REFERENCES `publishers` (`PublisherID`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `members` (`MemberID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
