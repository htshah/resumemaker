-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 04:33 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resumemaker`
--

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `from_uid`, `to_uid`) VALUES
(1, 14, 10),
(2, 1, 11),
(3, 6, 7),
(4, 10, 7),
(5, 18, 19),
(6, 4, 13),
(7, 18, 11),
(8, 16, 20),
(9, 20, 20),
(10, 8, 5),
(11, 7, 9),
(12, 1, 16),
(13, 1, 16),
(14, 11, 16),
(15, 6, 7),
(16, 5, 20),
(17, 1, 20),
(18, 19, 7),
(19, 17, 10),
(20, 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `uid`, `name`) VALUES
(1, 20, 'PXI'),
(2, 12, 'Horticulture'),
(3, 13, 'Protein Expression'),
(4, 2, 'LDPE'),
(5, 8, 'Mechanical Engineering'),
(6, 1, 'Posters'),
(7, 20, 'CPFR'),
(8, 14, 'SQL Server Management Studio'),
(9, 20, 'LCD'),
(10, 8, 'Play Therapy'),
(11, 4, 'Posters'),
(12, 12, 'SEM'),
(13, 9, 'Intergovernmental Affairs'),
(14, 17, 'Furniture'),
(15, 9, 'Pharmacy'),
(16, 17, 'Water Resources'),
(17, 13, 'Teaching Writing'),
(18, 20, 'Real Estate License'),
(19, 14, 'Objection Handling'),
(20, 9, 'GTK+');

-- --------------------------------------------------------

--
-- Table structure for table `job_exp`
--

CREATE TABLE `job_exp` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `title` text NOT NULL,
  `company` text NOT NULL,
  `company_site` text,
  `years` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_exp`
--

INSERT INTO `job_exp` (`id`, `uid`, `title`, `company`, `company_site`, `years`) VALUES
(1, 14, 'Assistant Media Planner', 'Vipe', 'http://tinyurl.com', 3),
(2, 17, 'Executive Secretary', 'Livefish', 'http://jalbum.net', 14),
(3, 15, 'Editor', 'Mynte', 'https://yale.edu', 7),
(4, 14, 'Dental Hygienist', 'Eare', 'http://prnewswire.com', 14),
(5, 4, 'Marketing Assistant', 'Dabshots', 'https://usnews.com', 15),
(6, 11, 'Associate Professor', 'Realpoint', 'https://msu.edu', 18),
(7, 7, 'Financial Analyst', 'Demimbu', 'https://odnoklassniki.ru', 7),
(8, 12, 'Financial Advisor', 'Tavu', 'https://lulu.com', 11),
(9, 15, 'Information Systems Manager', 'Realmix', 'https://msn.com', 18),
(10, 16, 'Sales Representative', 'Youopia', 'http://smh.com.au', 2),
(11, 21, 'Media Manager II', 'Meetz', 'https://economist.com', 17),
(12, 13, 'Senior Quality Engineer', 'Jabbercube', 'http://artisteer.com', 3),
(13, 18, 'VP Product Management', 'Flashdog', 'https://oracle.com', 19),
(14, 4, 'Staff Accountant IV', 'Realcube', 'http://ed.gov', 2),
(15, 6, 'Developer III', 'Oloo', 'http://dailymotion.com', 10),
(16, 21, 'Senior Financial Analyst', 'Reallinks', 'https://nyu.edu', 19),
(17, 1, 'Physical Therapy Assistant', 'Plajo', 'http://noaa.gov', 19),
(18, 10, 'Automation Specialist I', 'Abata', 'https://blogtalkradio.com', 14),
(19, 1, 'Legal Assistant', 'Fiveclub', 'https://economist.com', 9),
(20, 17, 'Senior Editor', 'Latz', 'https://imageshack.us', 8),
(21, 20, 'Environmental Tech', 'Skajo', 'https://dyndns.org', 2),
(22, 19, 'Account Representative IV', 'Topiczoom', 'https://scientificamerican.com', 10),
(23, 12, 'Help Desk Operator', 'Topicblab', 'https://xrea.com', 17),
(24, 21, 'Editor', 'Jatri', 'https://multiply.com', 7),
(25, 9, 'Legal Assistant', 'Tambee', 'https://hp.com', 17),
(26, 13, 'Engineer II', 'Avavee', 'https://state.tx.us', 6),
(27, 21, 'Desktop Support Technician', 'Cogilith', 'http://issuu.com', 12),
(28, 1, 'Geologist IV', 'Trudoo', 'https://facebook.com', 6),
(29, 15, 'Librarian', 'Oodoo', 'http://reddit.com', 4),
(30, 12, 'Operator', 'Agivu', 'https://economist.com', 14);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `uid`, `name`, `description`, `url`) VALUES
(1, 5, 'Fixflex', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 'https://mac.com'),
(2, 21, 'Alphazap', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 'https://hhs.gov'),
(3, 4, 'Sonsing', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 'https://twitter.com'),
(4, 13, 'Bytecard', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 'http://tamu.edu'),
(5, 8, 'Asoka', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'http://foxnews.com'),
(6, 13, 'Y-Solowarm', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 'http://seesaa.net'),
(7, 19, 'Bitwolf', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 'https://bbb.org'),
(8, 11, 'Tres-Zap', 'Suspendisse accumsan tortor quis turpis. Sed ante.', 'https://so-net.ne.jp'),
(9, 11, 'Solarbreeze', 'Maecenas rhoncus aliquam lacus.', 'http://meetup.com'),
(10, 11, 'Viva', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 'http://desdev.cn'),
(11, 2, 'Regrant', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 'http://ihg.com'),
(12, 13, 'Toughjoyfax', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 'https://theatlantic.com'),
(13, 6, 'Zaam-Dox', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'https://furl.net'),
(14, 9, 'Y-Solowarm', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'https://qq.com'),
(15, 9, 'Kanlam', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'https://disqus.com'),
(16, 20, 'Lotlux', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'https://accuweather.com'),
(17, 1, 'Rank', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'https://reference.com'),
(18, 1, 'Sub-Ex', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 'https://cnet.com'),
(19, 14, 'Biodex', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 'http://intel.com'),
(20, 11, 'Zoolab', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.', 'http://whitehouse.gov'),
(21, 2, 'Daltfresh', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 'http://harvard.edu'),
(22, 15, 'Bitchip', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 'http://wired.com'),
(23, 14, 'Quo Lux', 'In hac habitasse platea dictumst.', 'http://cisco.com'),
(24, 18, 'Konklab', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'http://scribd.com'),
(25, 1, 'Overhold', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'http://taobao.com'),
(26, 15, 'Wrapsafe', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 'http://wordpress.org'),
(27, 7, 'Bitchip', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'https://ocn.ne.jp'),
(28, 19, 'Keylex', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 'http://cocolog-nifty.com'),
(29, 10, 'Fix San', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'https://upenn.edu'),
(30, 3, 'Ronstring', 'Quisque porta volutpat erat.', 'http://squidoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `institute` text NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`id`, `uid`, `name`, `institute`, `year`) VALUES
(1, 10, 'Masters', 'Universidade Camilo Castelo Branco', 1995),
(2, 19, 'Phd.', 'Southwestern Christian College', 2006),
(3, 21, 'Diploma', 'Universite de Toamasina', 2013),
(4, 3, 'Bsc. IT', 'National Institute of Technology, Durgapur', 1998),
(5, 20, 'Bsc. IT', 'Community College of Denver', 1995),
(6, 5, 'Phd.', 'Palestine Technical College-Dier Elbalah', 2013),
(7, 5, 'Diploma', 'Shimer College', 1998),
(8, 5, 'Phd.', 'Universidad Lasallista Benavente', 2002),
(9, 12, 'HSC', 'Kiev Slavonic University', 1990),
(10, 14, 'Masters', 'University of Kragujevac', 2017),
(11, 14, 'Engineering', 'Indian Institute of Technology, Kanpur', 1992),
(12, 2, 'Engineering', 'Nanjing University of Economics', 2015),
(13, 4, 'Phd.', 'Floret Global University', 2013),
(14, 14, 'Bsc. IT', 'University of South Carolina - Lancaster', 1993),
(15, 1, 'Phd.', 'Technical University of Radom', 1991),
(16, 4, 'Engineering', 'Universidad Miguel Hernández de Elche', 1994),
(17, 6, 'Bsc. IT', 'Tusculum College', 2012),
(18, 4, 'HSC', 'Universidade Federal do Piauí', 2007),
(19, 6, 'Diploma', 'Kuala Terengganu City Polytechnic', 1992),
(20, 6, 'Bsc. IT', 'Johnson State College', 2000),
(21, 12, 'Engineering', 'Columbia College Chicago', 1997),
(22, 15, 'Diploma', 'University of Rhode Island', 2000),
(23, 2, 'Masters', 'Central Institute of English and Foreign Languages', 1997),
(24, 12, 'Diploma', 'Instituto Nacional de Educación Física \"General Manuel Belgrano\"', 2006),
(25, 10, 'Masters', 'Cambridge College', 2000),
(26, 10, 'SSC', 'Institut des Hautes Etudes de Management', 1991),
(27, 1, 'SSC', 'Universitas Krisnadwipayana', 2006),
(28, 9, 'Bsc. IT', 'Saigon University', 1997),
(29, 1, 'Engineering', 'Kyushu Institute of Technology', 2017),
(30, 15, 'HSC', 'St. Edwards University', 2005),
(31, 4, 'Phd.', 'Instituto Universitario de Ciencias de la Salud Fundación H.A. Barceló', 1999),
(32, 3, 'Diploma', 'Kun Shan University', 2002),
(33, 3, 'Engineering', 'Albany College of Pharmacy', 2013),
(34, 3, 'Phd.', 'Otto-Friedrich Universität Bamberg', 2011),
(35, 17, 'Engineering', 'Washington College', 2000),
(36, 20, 'Masters', 'Shujitsu Women\'s University', 1997),
(37, 20, 'Bsc. IT', 'Hochschule für Internationales Management', 2007),
(38, 17, 'Masters', 'Corporación Educativa Mayor del Desarrollo \"Simón Bolivar\"', 2002),
(39, 8, 'Masters', 'University of Utah', 2005),
(40, 18, 'Masters', 'Lamar University', 1994),
(41, 2, 'Phd.', 'Northern Institute of Technology Management (NIT)', 2009),
(42, 19, 'SSC', 'Ecole Nationale Supérieur des Ingénieur des Etudes et Techniques d\'Armement', 2016),
(43, 14, 'SSC', 'Albert-Ludwigs-Universität Freiburg', 2005),
(44, 10, 'Masters', 'Universidade Aberta Lisboa', 2012),
(45, 2, 'Engineering', 'Arkansas State University, Beebe', 1999),
(46, 13, 'Bsc. IT', 'Clark University', 2016),
(47, 20, 'SSC', 'South China University of Technology', 2000),
(48, 16, 'HSC', 'University of Fine Arts Belgrade', 1996),
(49, 18, 'Bsc. IT', 'Hochschule Zittau/Görlitz (FH)', 2017),
(50, 9, 'Bsc. IT', 'ITT Technical Institute Maitland', 2010),
(51, 7, 'Bsc. IT', 'Syrian International Private University for Science & Technology', 2006),
(52, 10, 'HSC', 'Ecole Nationale des Ponts et Chausees', 2012),
(53, 15, 'Masters', 'Taisho University', 2008),
(54, 5, 'Masters', 'Universidad Autónoma de Chihuahua', 2002),
(55, 18, 'HSC', 'Akdeniz University', 1998),
(56, 2, 'Masters', 'Universidade Metropolitana de Santos', 1990),
(57, 6, 'Bsc. IT', 'The Naropa Institute', 2004),
(58, 5, 'HSC', 'STMIK Sinar Nusantara', 1998),
(59, 4, 'Engineering', 'Chodang University', 2010),
(60, 17, 'Bsc. IT', 'Pennsylvania State University at Erie - Behrend College', 2001),
(61, 12, 'Phd.', 'Malone College', 1990),
(62, 1, 'Diploma', 'University of Southern Mindanao', 2015),
(63, 18, 'SSC', 'Universität Potsdam', 2009),
(64, 3, 'Masters', 'COMSATS Institute of Information Technology, Wah', 1999),
(65, 20, 'Engineering', 'Fachhochschule Nürtingen, Hochschule für Wirtschaft, Landwirtschaft und Landespflege', 2015),
(66, 12, 'Bsc. IT', 'Karachi School of Art', 2000),
(67, 15, 'Diploma', 'University of Johannesburg', 2007),
(68, 11, 'SSC', 'Mazandaran University of Science & Technology', 2009),
(69, 2, 'Engineering', 'West Coast University', 1995),
(70, 18, 'Masters', 'Yalova University', 2000),
(71, 4, 'Bsc. IT', 'Universidad del Norte \"Santo Tomás de Aquino\"', 1990),
(72, 17, 'HSC', 'Institute of Business & Technology', 2003),
(73, 18, 'Phd.', 'Western Michigan University', 1990),
(74, 1, 'Engineering', 'Nagano University', 2011),
(75, 11, 'Masters', 'Magadh University', 2003),
(76, 19, 'Masters', 'Information and Communications Technology Academy', 2004),
(77, 15, 'Engineering', 'Thunderbird School of Global Management', 1993),
(78, 11, 'HSC', 'University of North America', 2012),
(79, 7, 'Bsc. IT', 'ITT Technical Institute Portland', 2017),
(80, 2, 'SSC', 'Fondazione Sacro Cuore', 1992),
(81, 13, 'Diploma', 'Universidad de Santiago de Chile', 1995),
(82, 3, 'Bsc. IT', 'Belarussian State Polytechnical Academy', 2006),
(83, 14, 'Bsc. IT', 'Voronezh State Pedagogical University', 2001),
(84, 8, 'Diploma', 'Universidade Federal de Santa Catarina', 2008),
(85, 9, 'HSC', 'Institut National des Sciences Appliquées de Lyon', 2010),
(86, 1, 'Engineering', 'Khmelnitsky National University', 1995),
(87, 19, 'Diploma', 'Hokkaido Tokai University', 2014),
(88, 21, 'SSC', 'Armstrong University', 2010),
(89, 2, 'SSC', 'Universitas Merdeka Malang', 1991),
(90, 14, 'Engineering', 'College of Technology at Dammam', 2011),
(91, 2, 'SSC', 'Ecole Supérieure des Sciences Commerciales d\'Angers', 1990),
(92, 4, 'SSC', 'Baku Slavic University', 2003),
(93, 16, 'Phd.', 'Novosibirsk State Music Academy M. Glinka', 2016),
(94, 13, 'Diploma', 'Pontifcia Universitas a S.Thomas Aquinate in Urbe', 2008),
(95, 9, 'Phd.', 'University of Dubrovnik', 2013),
(96, 4, 'Masters', 'University of Mysore', 2013),
(97, 8, 'Diploma', 'Yunnan Agriculture University', 2015),
(98, 8, 'HSC', 'Universidade Católica de Pernambuco', 2008),
(99, 17, 'SSC', 'Providence College', 1999),
(100, 16, 'HSC', 'Wollega University', 1990);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `uid`, `name`, `percentage`) VALUES
(1, 14, 'QMF', 36),
(2, 4, 'Back Office', 32),
(3, 11, 'TMF', 60),
(4, 3, 'Urinalysis', 72),
(5, 20, 'RTO', 52),
(6, 7, 'AQTF compliance', 63),
(7, 10, 'IFE', 77),
(8, 1, 'Wound Care', 57),
(9, 9, 'Area Rugs', 64),
(10, 6, 'Trade Marketing', 33),
(11, 2, 'HP Networking', 56),
(12, 7, 'Revenue Cycle', 71),
(13, 19, 'Long-term Customer Relationships', 93),
(14, 19, 'Hospitality', 52),
(15, 13, 'Internal Audit', 34),
(16, 11, 'UVLayout', 35),
(17, 16, 'Flight Test', 65),
(18, 16, 'GCC', 70),
(19, 11, 'ICAO', 43),
(20, 15, 'IPv6', 76),
(21, 10, 'Operational Efficiency', 79),
(22, 14, 'Engineering', 44),
(23, 7, 'SBA 504', 76),
(24, 11, 'VRF', 83),
(25, 19, 'Smartboard', 46),
(26, 9, 'DVD Authoring', 80),
(27, 20, 'NVU', 80),
(28, 7, 'PMAs', 48),
(29, 5, 'Strategic Partnerships', 54),
(30, 19, 'MLOAD', 46),
(31, 12, 'QS1', 57),
(32, 21, 'NC-Verilog', 36),
(33, 13, 'Biodiversity', 81),
(34, 4, 'GMLAN', 58),
(35, 3, 'European Law', 57),
(36, 13, 'Ion Exchange', 45),
(37, 15, 'CTL', 82),
(38, 8, 'TMG', 54),
(39, 13, 'Drama', 35),
(40, 16, 'Omgeo Oasys', 73),
(41, 16, 'VCAT', 68),
(42, 7, 'XFOIL', 94),
(43, 3, 'Embedded SQL', 59),
(44, 17, 'VC-1', 52),
(45, 9, 'VTK', 70),
(46, 17, 'Kitchen Remodeling', 62),
(47, 3, 'Leases', 91),
(48, 1, 'Sarbanes-Oxley Act', 34),
(49, 3, 'Interviews', 72),
(50, 6, 'Hoshin Kanri', 79),
(51, 19, 'Custom Homes', 76),
(52, 17, 'Direct Sales', 50),
(53, 14, 'MBD', 94),
(54, 2, 'Document Imaging', 49),
(55, 12, 'IGRP', 52),
(56, 3, 'Job Search Strategies', 76),
(57, 21, 'Ultipro', 73),
(58, 9, 'DFMEA', 71),
(59, 18, 'Utility Mapping', 52),
(60, 14, 'Live Events', 87),
(61, 20, 'BC/DR', 52),
(62, 10, 'FP', 61),
(63, 17, 'Jet Engines', 30),
(64, 13, 'Supply Chain Management', 84),
(65, 14, 'GS1', 48),
(66, 8, 'SDL', 87),
(67, 19, 'Packaging', 53),
(68, 21, 'Ektron Content Management System', 77),
(69, 3, 'Water Resources', 32),
(70, 18, 'TPMS', 33),
(71, 12, 'Twitter API', 84),
(72, 7, 'First Year Experience', 65),
(73, 4, 'Dutch', 91),
(74, 7, 'Book Reviews', 46),
(75, 9, 'Theory', 57),
(76, 9, 'Multithreading', 30),
(77, 19, 'HTML Scripting', 58),
(78, 15, 'DWR', 40),
(79, 15, 'Report Writing', 30),
(80, 7, 'DX200', 80),
(81, 5, 'PWB', 73),
(82, 5, 'HP Service Manager', 78),
(83, 18, 'iGrafx', 65),
(84, 14, 'Obedience', 33),
(85, 8, 'IHT', 89),
(86, 16, 'PET-CT', 33),
(87, 4, 'Google Analytics', 90),
(88, 4, 'Zebrafish', 70),
(89, 10, 'Workplace Violence', 65),
(90, 21, 'Testing Types', 69),
(91, 6, 'JScript', 71),
(92, 20, 'TCL', 51),
(93, 16, 'Emergency Services', 75),
(94, 5, 'IGMP Snooping', 55),
(95, 19, 'Typing', 82),
(96, 13, 'Retail', 91),
(97, 12, 'PLC', 83),
(98, 6, 'Air Conditioning', 91),
(99, 19, 'Ultrasonic Welding', 38),
(100, 2, 'Area Rugs', 88);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `dob` tinytext NOT NULL,
  `phone` varchar(20) NOT NULL,
  `profile_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `description`, `email`, `password`, `dob`, `phone`, `profile_pic`) VALUES
(1, 'Shanie Pottle', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'spottle0@liveinternet.ru', 'L8DBPDQxn', '9/30/1993', '7235370315', 'https://robohash.org/autdelenitiest.bmp?size=400x400&set=set1'),
(2, 'Amaleta Tidball', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'atidball1@smh.com.au', 'LR8r6iGM', '3/11/1997', '5781009390', 'https://robohash.org/insapientenihil.jpg?size=400x400&set=set1'),
(3, 'Hewitt Castrillo', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 'hcastrillo2@blogger.com', '7FNMLkd', '4/5/1991', '3622026472', 'https://robohash.org/beataeetest.jpg?size=400x400&set=set1'),
(4, 'Ichabod Brech', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'ibrech3@wordpress.com', '5J65RvE', '3/3/1991', '3098186628', 'https://robohash.org/cumitaquevoluptate.jpg?size=400x400&set=set1'),
(5, 'Giraldo O\'Corrigane', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 'gocorrigane4@disqus.com', 'u6G3Bux', '12/8/1995', '3959861651', 'https://robohash.org/nonexercitationemest.bmp?size=400x400&set=set1'),
(6, 'Hamish Hyslop', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'hhyslop5@sohu.com', 'aZK6QadEWjcA', '5/31/1995', '3589811867', 'https://robohash.org/iddelectusducimus.jpg?size=100x100&set=set1'),
(7, 'Jacynth Baukham', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'jbaukham6@nsw.gov.au', 'Zpi19cjgSh', '12/17/1996', '5849973260', 'https://robohash.org/estquosit.png?size=100x100&set=set1'),
(8, 'Cornie Grishaev', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'cgrishaev7@hud.gov', 'mzElabzzF', '3/14/1996', '5434276115', 'https://robohash.org/earumodiosit.bmp?size=100x100&set=set1'),
(9, 'Averil Stables', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', 'astables8@un.org', 'tWxSeSSi', '3/14/1995', '3897943162', 'https://robohash.org/estquaeratquia.jpg?size=100x100&set=set1'),
(10, 'Cassius Gilli', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 'cgilli9@wunderground.com', '46LNksqzeCC', '7/5/1996', '8028584027', 'https://robohash.org/idmagnammaiores.jpg?size=100x100&set=set1'),
(11, 'Valentino Kelshaw', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'vkelshawa@bing.com', 'jFOqc6', '1/17/1994', '9808779696', 'https://robohash.org/velitplaceatfuga.png?size=100x100&set=set1'),
(12, 'Sanderson Lainton', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'slaintonb@vimeo.com', 'ZwiWIT', '2/21/1992', '8261710393', 'https://robohash.org/quiestquia.bmp?size=100x100&set=set1'),
(13, 'Phillipe Fielden', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'pfieldenc@ning.com', 'ICqzvoE', '4/1/1993', '3687130174', 'https://robohash.org/facereiustoexplicabo.jpg?size=100x100&set=set1'),
(14, 'Darn Espinho', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'despinhod@tmall.com', 'zZCeIO', '6/20/1997', '1232031812', 'https://robohash.org/ullamplaceatvel.png?size=100x100&set=set1'),
(15, 'Avrit Simonin', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'asimonine@howstuffworks.com', 'ZYKKct0it', '11/24/1992', '6193707364', 'https://robohash.org/quiexcepturiomnis.jpg?size=100x100&set=set1'),
(16, 'Dory Dwelling', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'ddwellingf@photobucket.com', '5XLq1s', '9/21/1993', '1449440933', 'https://robohash.org/commodiipsumut.bmp?size=100x100&set=set1'),
(17, 'Raffarty Creigan', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'rcreigang@dagondesign.com', 'G25LafO', '8/1/1992', '4435050917', 'https://robohash.org/veniamsitaccusamus.png?size=100x100&set=set1'),
(18, 'Roddy Showalter', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 'rshowalterh@themeforest.net', 'BxjPxJVQIE', '4/28/1995', '3669699376', 'https://robohash.org/idrerumlaudantium.bmp?size=100x100&set=set1'),
(19, 'Lyndel Rakes', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 'lrakesi@indiegogo.com', 'Hf15QZcaI', '4/29/1990', '9533525926', 'https://robohash.org/reiciendisoptiorerum.bmp?size=100x100&set=set1'),
(20, 'Tracy Melbury', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'tmelburyj@ehow.com', 'Hf15QZcaI', '4/17/1995', '4832850097', 'https://robohash.org/quiperspiciatisodit.jpg?size=100x100&set=set1'),
(21, 'Het Shah', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 'htshah60@gmail.com', 'helloworld', '20/11/1997', '1234567890', 'https://robohash.org/magnidoloredolores.bmp?size=400x400&set=set1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_uid` (`from_uid`),
  ADD KEY `connections_ibfk_2` (`to_uid`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interests_ibfk_1` (`uid`);

--
-- Indexes for table `job_exp`
--
ALTER TABLE `job_exp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_exp_ibfk_1` (`uid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `job_exp`
--
ALTER TABLE `job_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `connections_ibfk_1` FOREIGN KEY (`from_uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `connections_ibfk_2` FOREIGN KEY (`to_uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interests`
--
ALTER TABLE `interests`
  ADD CONSTRAINT `interests_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_exp`
--
ALTER TABLE `job_exp`
  ADD CONSTRAINT `job_exp_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `qualification_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
