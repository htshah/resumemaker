-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2017 at 02:02 PM
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
  `company` int(11) NOT NULL,
  `company_site` int(11) DEFAULT NULL,
  `years` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_exp`
--

INSERT INTO `job_exp` (`id`, `uid`, `title`, `company`, `company_site`, `years`) VALUES
(1, 20, 'Health Coach I', 0, 0, 19),
(2, 3, 'Budget/Accounting Analyst I', 0, 0, 7),
(3, 4, 'Health Coach II', 0, 0, 18),
(4, 11, 'Help Desk Technician', 0, NULL, 10),
(5, 19, 'Product Engineer', 0, 0, 12),
(6, 4, 'Data Coordiator', 0, NULL, 17),
(7, 15, 'Junior Executive', 0, 0, 3),
(8, 5, 'Marketing Assistant', 0, 0, 5),
(9, 16, 'Accountant III', 0, 0, 6),
(10, 10, 'Chief Design Engineer', 0, 0, 19),
(11, 13, 'Clinical Specialist', 0, NULL, 3),
(12, 13, 'Software Test Engineer II', 0, 0, 1),
(13, 16, 'Analog Circuit Design manager', 0, 0, 11),
(14, 14, 'Staff Accountant II', 0, NULL, 2),
(15, 15, 'Marketing Manager', 0, NULL, 12),
(16, 20, 'Engineer II', 0, 0, 13),
(17, 1, 'Research Associate', 0, 0, 1),
(18, 4, 'Actuary', 0, 0, 17),
(19, 3, 'Assistant Media Planner', 0, NULL, 8),
(20, 10, 'Web Designer II', 0, 0, 5);

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
(1, 13, 'Bigtax', 'Maecenas pulvinar lobortis est.', 'https://usnews.com/etiam/justo/etiam/pretium/iaculis/justo.js?quisque=dui&id=maecenas&justo=tristique&sit=est&amet=et&sapien=tempus&dignissim=semper&vestibulum=est&vestibulum=quam&ante=pharetra&ipsum=magna&primis=ac&in=consequat&faucibus=metus&orci=sapien&luctus=ut&et=nunc&ultrices=vestibulum&posuere=ante&cubilia=ipsum&curae=primis&nulla=in&dapibus=faucibus&dolor=orci&vel=luctus'),
(2, 6, 'Flowdesk', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 'http://weebly.com/dapibus/augue/vel.jsp?mauris=odio&vulputate=odio&elementum=elementum&nullam=eu&varius=interdum&nulla=eu&facilisi=tincidunt&cras=in&non=leo&velit=maecenas&nec=pulvinar&nisi=lobortis&vulputate=est&nonummy=phasellus&maecenas=sit&tincidunt=amet&lacus=erat&at=nulla&velit=tempus&vivamus=vivamus&vel=in&nulla=felis&eget=eu&eros=sapien&elementum=cursus&pellentesque=vestibulum&quisque=proin&porta=eu&volutpat=mi&erat=nulla&quisque=ac&erat=enim&eros=in&viverra=tempor&eget=turpis&congue=nec&eget=euismod&semper=scelerisque&rutrum=quam&nulla=turpis&nunc=adipiscing&purus=lorem&phasellus=vitae&in=mattis&felis=nibh&donec=ligula&semper=nec&sapien=sem&a=duis&libero=aliquam&nam=convallis&dui=nunc&proin=proin&leo=at&odio=turpis&porttitor=a&id=pede&consequat=posuere&in=nonummy&consequat=integer&ut=non&nulla=velit&sed=donec&accumsan=diam&felis=neque&ut=vestibulum&at=eget&dolor=vulputate&quis=ut&odio=ultrices&consequat=vel&varius=augue&integer=vestibulum&ac=ante&leo=ipsum&pellentesque=primis&ultrices=in&mattis=faucibus&odio=orci&donec=luctus&vitae=et&nisi=ultrices'),
(3, 8, 'Otcom', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'http://digg.com/magna/bibendum/imperdiet/nullam/orci.js?nulla=lacinia&mollis=eget&molestie=tincidunt&lorem=eget&quisque=tempus&ut=vel&erat=pede&curabitur=morbi&gravida=porttitor&nisi=lorem&at=id&nibh=ligula&in=suspendisse&hac=ornare&habitasse=consequat&platea=lectus&dictumst=in&aliquam=est&augue=risus&quam=auctor&sollicitudin=sed&vitae=tristique&consectetuer=in&eget=tempus&rutrum=sit&at=amet&lorem=sem&integer=fusce&tincidunt=consequat&ante=nulla&vel=nisl&ipsum=nunc&praesent=nisl&blandit=duis&lacinia=bibendum&erat=felis&vestibulum=sed&sed=interdum&magna=venenatis&at=turpis&nunc=enim&commodo=blandit&placerat=mi&praesent=in&blandit=porttitor&nam=pede&nulla=justo&integer=eu&pede=massa&justo=donec&lacinia=dapibus&eget=duis&tincidunt=at&eget=velit&tempus=eu&vel=est&pede=congue'),
(4, 20, 'Y-Solowarm', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 'http://oakley.com/fusce/posuere/felis/sed.json?mattis=ut&odio=blandit&donec=non&vitae=interdum&nisi=in&nam=ante&ultrices=vestibulum&libero=ante'),
(5, 12, 'Tampflex', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 'http://spotify.com/sit/amet/cursus/id/turpis/integer/aliquet.jpg?consequat=aliquet&metus=massa&sapien=id&ut=lobortis&nunc=convallis&vestibulum=tortor&ante=risus&ipsum=dapibus&primis=augue&in=vel&faucibus=accumsan&orci=tellus&luctus=nisi&et=eu&ultrices=orci&posuere=mauris&cubilia=lacinia&curae=sapien&mauris=quis&viverra=libero&diam=nullam&vitae=sit&quam=amet&suspendisse=turpis&potenti=elementum&nullam=ligula&porttitor=vehicula&lacus=consequat&at=morbi&turpis=a&donec=ipsum&posuere=integer&metus=a&vitae=nibh&ipsum=in&aliquam=quis&non=justo&mauris=maecenas&morbi=rhoncus&non=aliquam&lectus=lacus&aliquam=morbi&sit=quis&amet=tortor&diam=id&in=nulla&magna=ultrices&bibendum=aliquet&imperdiet=maecenas&nullam=leo&orci=odio&pede=condimentum&venenatis=id&non=luctus&sodales=nec&sed=molestie&tincidunt=sed&eu=justo&felis=pellentesque&fusce=viverra&posuere=pede&felis=ac&sed=diam&lacus=cras&morbi=pellentesque&sem=volutpat&mauris=dui&laoreet=maecenas&ut=tristique&rhoncus=est&aliquet=et&pulvinar=tempus&sed=semper&nisl=est&nunc=quam&rhoncus=pharetra&dui=magna&vel=ac&sem=consequat&sed=metus'),
(6, 19, 'Span', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'https://gmpg.org/id/turpis.xml?consequat=donec&lectus=odio&in=justo&est=sollicitudin&risus=ut&auctor=suscipit&sed=a&tristique=feugiat&in=et&tempus=eros&sit=vestibulum&amet=ac&sem=est&fusce=lacinia&consequat=nisi&nulla=venenatis&nisl=tristique&nunc=fusce&nisl=congue&duis=diam&bibendum=id&felis=ornare&sed=imperdiet&interdum=sapien&venenatis=urna&turpis=pretium&enim=nisl&blandit=ut&mi=volutpat&in=sapien'),
(7, 7, 'Cardguard', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'https://sciencedaily.com/at/ipsum/ac/tellus.jsp?porttitor=dapibus&lorem=duis&id=at&ligula=velit&suspendisse=eu&ornare=est&consequat=congue&lectus=elementum&in=in'),
(8, 8, 'Veribet', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'https://flickr.com/a/odio/in/hac.jpg?odio=donec&justo=diam&sollicitudin=neque&ut=vestibulum&suscipit=eget&a=vulputate&feugiat=ut&et=ultrices&eros=vel&vestibulum=augue&ac=vestibulum&est=ante&lacinia=ipsum&nisi=primis&venenatis=in&tristique=faucibus&fusce=orci&congue=luctus&diam=et&id=ultrices&ornare=posuere&imperdiet=cubilia&sapien=curae&urna=donec&pretium=pharetra&nisl=magna&ut=vestibulum&volutpat=aliquet&sapien=ultrices&arcu=erat&sed=tortor&augue=sollicitudin&aliquam=mi&erat=sit&volutpat=amet&in=lobortis&congue=sapien&etiam=sapien&justo=non&etiam=mi&pretium=integer&iaculis=ac&justo=neque&in=duis&hac=bibendum&habitasse=morbi&platea=non&dictumst=quam&etiam=nec&faucibus=dui&cursus=luctus&urna=rutrum&ut=nulla&tellus=tellus&nulla=in&ut=sagittis&erat=dui&id=vel&mauris=nisl&vulputate=duis&elementum=ac&nullam=nibh&varius=fusce&nulla=lacus&facilisi=purus&cras=aliquet&non=at&velit=feugiat&nec=non&nisi=pretium&vulputate=quis&nonummy=lectus&maecenas=suspendisse&tincidunt=potenti&lacus=in&at=eleifend&velit=quam&vivamus=a&vel=odio&nulla=in&eget=hac&eros=habitasse&elementum=platea&pellentesque=dictumst&quisque=maecenas&porta=ut&volutpat=massa&erat=quis&quisque=augue&erat=luctus&eros=tincidunt&viverra=nulla&eget=mollis&congue=molestie&eget=lorem'),
(9, 14, 'Veribet', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'http://gravatar.com/pede/ullamcorper/augue.jsp?scelerisque=id&quam=nulla&turpis=ultrices&adipiscing=aliquet&lorem=maecenas&vitae=leo&mattis=odio&nibh=condimentum&ligula=id&nec=luctus&sem=nec&duis=molestie&aliquam=sed&convallis=justo&nunc=pellentesque&proin=viverra&at=pede&turpis=ac&a=diam&pede=cras&posuere=pellentesque&nonummy=volutpat&integer=dui&non=maecenas&velit=tristique&donec=est&diam=et&neque=tempus&vestibulum=semper&eget=est&vulputate=quam&ut=pharetra&ultrices=magna&vel=ac&augue=consequat&vestibulum=metus&ante=sapien&ipsum=ut&primis=nunc&in=vestibulum&faucibus=ante&orci=ipsum'),
(10, 10, 'Cookley', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'https://blogspot.com/libero/convallis/eget/eleifend/luctus/ultricies/eu.jpg?lobortis=eget&est=vulputate&phasellus=ut&sit=ultrices&amet=vel&erat=augue&nulla=vestibulum&tempus=ante&vivamus=ipsum&in=primis&felis=in&eu=faucibus&sapien=orci&cursus=luctus&vestibulum=et&proin=ultrices&eu=posuere&mi=cubilia&nulla=curae&ac=donec&enim=pharetra&in=magna&tempor=vestibulum&turpis=aliquet&nec=ultrices&euismod=erat&scelerisque=tortor&quam=sollicitudin&turpis=mi&adipiscing=sit&lorem=amet&vitae=lobortis&mattis=sapien&nibh=sapien&ligula=non&nec=mi&sem=integer&duis=ac&aliquam=neque&convallis=duis&nunc=bibendum&proin=morbi&at=non&turpis=quam&a=nec&pede=dui&posuere=luctus&nonummy=rutrum&integer=nulla&non=tellus&velit=in&donec=sagittis&diam=dui&neque=vel&vestibulum=nisl&eget=duis&vulputate=ac&ut=nibh&ultrices=fusce&vel=lacus&augue=purus&vestibulum=aliquet&ante=at&ipsum=feugiat&primis=non&in=pretium&faucibus=quis&orci=lectus&luctus=suspendisse&et=potenti&ultrices=in&posuere=eleifend&cubilia=quam&curae=a&donec=odio&pharetra=in&magna=hac&vestibulum=habitasse&aliquet=platea&ultrices=dictumst&erat=maecenas&tortor=ut&sollicitudin=massa&mi=quis&sit=augue&amet=luctus'),
(11, 11, 'Voltsillam', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'https://illinois.edu/velit/nec/nisi/vulputate.jsp?nisi=vestibulum&eu=vestibulum&orci=ante&mauris=ipsum&lacinia=primis&sapien=in&quis=faucibus&libero=orci&nullam=luctus&sit=et&amet=ultrices&turpis=posuere&elementum=cubilia&ligula=curae&vehicula=nulla&consequat=dapibus&morbi=dolor&a=vel&ipsum=est&integer=donec&a=odio&nibh=justo&in=sollicitudin&quis=ut&justo=suscipit&maecenas=a&rhoncus=feugiat&aliquam=et&lacus=eros&morbi=vestibulum&quis=ac&tortor=est&id=lacinia&nulla=nisi&ultrices=venenatis&aliquet=tristique&maecenas=fusce&leo=congue&odio=diam&condimentum=id&id=ornare&luctus=imperdiet&nec=sapien&molestie=urna&sed=pretium&justo=nisl&pellentesque=ut&viverra=volutpat&pede=sapien&ac=arcu&diam=sed&cras=augue&pellentesque=aliquam&volutpat=erat&dui=volutpat&maecenas=in&tristique=congue&est=etiam&et=justo&tempus=etiam&semper=pretium&est=iaculis&quam=justo&pharetra=in&magna=hac&ac=habitasse&consequat=platea'),
(12, 14, 'Bamity', 'Vivamus tortor.', 'http://sohu.com/morbi/vel/lectus/in.png?aenean=nisi&lectus=vulputate&pellentesque=nonummy&eget=maecenas&nunc=tincidunt&donec=lacus&quis=at&orci=velit&eget=vivamus&orci=vel&vehicula=nulla&condimentum=eget&curabitur=eros&in=elementum&libero=pellentesque&ut=quisque&massa=porta&volutpat=volutpat&convallis=erat&morbi=quisque&odio=erat&odio=eros&elementum=viverra&eu=eget&interdum=congue&eu=eget&tincidunt=semper&in=rutrum&leo=nulla&maecenas=nunc&pulvinar=purus&lobortis=phasellus&est=in&phasellus=felis&sit=donec&amet=semper&erat=sapien&nulla=a&tempus=libero&vivamus=nam&in=dui&felis=proin&eu=leo&sapien=odio&cursus=porttitor&vestibulum=id&proin=consequat&eu=in&mi=consequat&nulla=ut&ac=nulla&enim=sed&in=accumsan&tempor=felis&turpis=ut'),
(13, 18, 'Andalax', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 'http://github.com/mauris/morbi/non.js?vel=pharetra&pede=magna&morbi=ac&porttitor=consequat&lorem=metus&id=sapien&ligula=ut&suspendisse=nunc&ornare=vestibulum&consequat=ante&lectus=ipsum&in=primis&est=in&risus=faucibus&auctor=orci&sed=luctus&tristique=et&in=ultrices&tempus=posuere&sit=cubilia&amet=curae&sem=mauris&fusce=viverra&consequat=diam&nulla=vitae&nisl=quam&nunc=suspendisse&nisl=potenti&duis=nullam&bibendum=porttitor&felis=lacus&sed=at&interdum=turpis&venenatis=donec&turpis=posuere&enim=metus&blandit=vitae&mi=ipsum&in=aliquam&porttitor=non&pede=mauris&justo=morbi&eu=non&massa=lectus&donec=aliquam&dapibus=sit&duis=amet&at=diam&velit=in&eu=magna&est=bibendum&congue=imperdiet&elementum=nullam&in=orci&hac=pede&habitasse=venenatis&platea=non&dictumst=sodales&morbi=sed&vestibulum=tincidunt&velit=eu&id=felis&pretium=fusce&iaculis=posuere&diam=felis&erat=sed&fermentum=lacus'),
(14, 9, 'Namfix', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'http://wikimedia.org/velit.html?luctus=sed&nec=tristique&molestie=in&sed=tempus&justo=sit&pellentesque=amet&viverra=sem&pede=fusce&ac=consequat&diam=nulla&cras=nisl&pellentesque=nunc&volutpat=nisl&dui=duis&maecenas=bibendum&tristique=felis&est=sed&et=interdum&tempus=venenatis&semper=turpis&est=enim&quam=blandit&pharetra=mi&magna=in&ac=porttitor&consequat=pede&metus=justo&sapien=eu&ut=massa&nunc=donec&vestibulum=dapibus&ante=duis&ipsum=at&primis=velit&in=eu&faucibus=est&orci=congue&luctus=elementum&et=in&ultrices=hac&posuere=habitasse&cubilia=platea&curae=dictumst&mauris=morbi&viverra=vestibulum&diam=velit&vitae=id&quam=pretium&suspendisse=iaculis&potenti=diam&nullam=erat&porttitor=fermentum&lacus=justo&at=nec&turpis=condimentum&donec=neque&posuere=sapien&metus=placerat&vitae=ante&ipsum=nulla&aliquam=justo&non=aliquam&mauris=quis&morbi=turpis'),
(15, 19, 'Latlux', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 'https://ft.com/quisque/arcu/libero.js?ac=ultrices&diam=enim&cras=lorem&pellentesque=ipsum&volutpat=dolor&dui=sit&maecenas=amet&tristique=consectetuer&est=adipiscing&et=elit&tempus=proin&semper=interdum&est=mauris&quam=non&pharetra=ligula&magna=pellentesque&ac=ultrices&consequat=phasellus&metus=id&sapien=sapien&ut=in&nunc=sapien&vestibulum=iaculis&ante=congue&ipsum=vivamus&primis=metus&in=arcu&faucibus=adipiscing&orci=molestie&luctus=hendrerit'),
(16, 20, 'Prodder', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 'http://intel.com/adipiscing/elit.html?justo=ac&in=leo&blandit=pellentesque&ultrices=ultrices&enim=mattis&lorem=odio&ipsum=donec&dolor=vitae&sit=nisi&amet=nam&consectetuer=ultrices&adipiscing=libero&elit=non&proin=mattis&interdum=pulvinar&mauris=nulla&non=pede&ligula=ullamcorper&pellentesque=augue&ultrices=a&phasellus=suscipit&id=nulla&sapien=elit&in=ac&sapien=nulla&iaculis=sed&congue=vel&vivamus=enim&metus=sit&arcu=amet&adipiscing=nunc&molestie=viverra'),
(17, 6, 'Otcom', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 'https://sciencedirect.com/vel/sem/sed/sagittis/nam.aspx?mi=sed&sit=tincidunt&amet=eu&lobortis=felis&sapien=fusce&sapien=posuere&non=felis&mi=sed&integer=lacus&ac=morbi&neque=sem&duis=mauris&bibendum=laoreet&morbi=ut&non=rhoncus&quam=aliquet&nec=pulvinar&dui=sed&luctus=nisl&rutrum=nunc&nulla=rhoncus&tellus=dui&in=vel&sagittis=sem&dui=sed&vel=sagittis&nisl=nam&duis=congue&ac=risus&nibh=semper&fusce=porta&lacus=volutpat&purus=quam&aliquet=pede&at=lobortis&feugiat=ligula&non=sit&pretium=amet&quis=eleifend&lectus=pede&suspendisse=libero&potenti=quis&in=orci&eleifend=nullam&quam=molestie&a=nibh&odio=in&in=lectus&hac=pellentesque&habitasse=at&platea=nulla&dictumst=suspendisse&maecenas=potenti&ut=cras&massa=in&quis=purus&augue=eu&luctus=magna&tincidunt=vulputate&nulla=luctus&mollis=cum&molestie=sociis&lorem=natoque&quisque=penatibus&ut=et&erat=magnis&curabitur=dis&gravida=parturient&nisi=montes&at=nascetur&nibh=ridiculus&in=mus&hac=vivamus&habitasse=vestibulum&platea=sagittis&dictumst=sapien&aliquam=cum&augue=sociis&quam=natoque&sollicitudin=penatibus&vitae=et&consectetuer=magnis&eget=dis&rutrum=parturient'),
(18, 15, 'Hatity', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'http://reverbnation.com/nisl/ut/volutpat/sapien/arcu/sed.json?turpis=convallis&integer=duis&aliquet=consequat&massa=dui&id=nec&lobortis=nisi&convallis=volutpat&tortor=eleifend&risus=donec&dapibus=ut'),
(19, 18, 'Sonair', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 'https://si.edu/hendrerit/at/vulputate/vitae/nisl/aenean/lectus.jsp?velit=maecenas&eu=pulvinar&est=lobortis&congue=est&elementum=phasellus&in=sit&hac=amet&habitasse=erat&platea=nulla&dictumst=tempus&morbi=vivamus&vestibulum=in'),
(20, 14, 'Voltsillam', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'https://ed.gov/magna.jsp?donec=nonummy&odio=maecenas');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`id`, `uid`, `name`, `year`) VALUES
(1, 4, 'Chunchon National University of Education', 1994),
(2, 16, 'Yasar University', 2009),
(3, 20, 'Pedagogical University of Slupsk', 1997),
(4, 2, 'Sylhet Agricultural University', 1992),
(5, 15, 'Ecole Nationale Supérieur des Ingénieur des Etudes et Techniques d\'Armement', 2013),
(6, 11, 'Huanghe Science & Technology University', 2004),
(7, 6, 'Asia Pacific Institute of Information Technology (APIIT)', 1991),
(8, 5, 'Albion College', 2003),
(9, 7, 'Hamamatsu University School of Medicine', 2008),
(10, 11, 'Alice-Salomon-Fachhochschule für Sozialarbeit und Sozialpädagogik Berlin', 2013),
(11, 15, 'National University of Internal Affairs', 1992),
(12, 19, 'Universidad Autónoma del Estado de Hidalgo', 2006),
(13, 18, 'Universiti Kebangsaan Malaysia', 1992),
(14, 6, 'Instituto Superior de Saúde do Alto Ave', 2012),
(15, 1, 'Universidad Católica Madre y Maestra', 1999),
(16, 6, 'Katholische Hochschule für Soziale Arbeit Saarbrücken', 2008),
(17, 15, 'The Naropa Institute', 1998),
(18, 1, 'University of Sheffield', 1990),
(19, 14, 'Universidad Bolivariana de Venezuela', 2005),
(20, 16, 'National Taitung Teachers College', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `uid`, `name`) VALUES
(1, 8, 'Navy'),
(2, 1, 'Tax Research'),
(3, 4, 'DWBI'),
(4, 13, 'SolidWorks'),
(5, 18, 'Agarose Gel Electrophoresis'),
(6, 6, 'FCL'),
(7, 16, 'Ambulance'),
(8, 16, 'Logistics'),
(9, 18, 'SBS'),
(10, 2, 'MFS'),
(11, 2, 'Obedience'),
(12, 3, 'ePolicy Orchestrator'),
(13, 16, 'Orchestral Music'),
(14, 9, 'IATA'),
(15, 6, 'IEC 61131-3'),
(16, 20, 'Ecological Restoration'),
(17, 20, 'RED MX'),
(18, 8, 'Yahoo Search Marketing'),
(19, 11, 'Zend Certified Engineer'),
(20, 4, 'KPI Dashboards');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `dob` tinytext NOT NULL,
  `phone` varchar(20) NOT NULL,
  `profile_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `dob`, `phone`, `profile_pic`) VALUES
(1, 'Shanie Pottle', 'spottle0@liveinternet.ru', 'L8DBPDQxn', '9/30/1993', '7235370315', 'https://robohash.org/autdelenitiest.bmp?size=100x100&set=set1'),
(2, 'Amaleta Tidball', 'atidball1@smh.com.au', 'LR8r6iGM', '3/11/1997', '5781009390', 'https://robohash.org/insapientenihil.jpg?size=100x100&set=set1'),
(3, 'Hewitt Castrillo', 'hcastrillo2@blogger.com', '7FNMLkd', '4/5/1991', '3622026472', 'https://robohash.org/beataeetest.jpg?size=100x100&set=set1'),
(4, 'Ichabod Brech', 'ibrech3@wordpress.com', '5J65RvE', '3/3/1991', '3098186628', 'https://robohash.org/cumitaquevoluptate.jpg?size=100x100&set=set1'),
(5, 'Giraldo O\'Corrigane', 'gocorrigane4@disqus.com', 'u6G3Bux', '12/8/1995', '3959861651', 'https://robohash.org/nonexercitationemest.bmp?size=100x100&set=set1'),
(6, 'Hamish Hyslop', 'hhyslop5@sohu.com', 'aZK6QadEWjcA', '5/31/1995', '3589811867', 'https://robohash.org/iddelectusducimus.jpg?size=100x100&set=set1'),
(7, 'Jacynth Baukham', 'jbaukham6@nsw.gov.au', 'Zpi19cjgSh', '12/17/1996', '5849973260', 'https://robohash.org/estquosit.png?size=100x100&set=set1'),
(8, 'Cornie Grishaev', 'cgrishaev7@hud.gov', 'mzElabzzF', '3/14/1996', '5434276115', 'https://robohash.org/earumodiosit.bmp?size=100x100&set=set1'),
(9, 'Averil Stables', 'astables8@un.org', 'tWxSeSSi', '3/14/1995', '3897943162', 'https://robohash.org/estquaeratquia.jpg?size=100x100&set=set1'),
(10, 'Cassius Gilli', 'cgilli9@wunderground.com', '46LNksqzeCC', '7/5/1996', '8028584027', 'https://robohash.org/idmagnammaiores.jpg?size=100x100&set=set1'),
(11, 'Valentino Kelshaw', 'vkelshawa@bing.com', 'jFOqc6', '1/17/1994', '9808779696', 'https://robohash.org/velitplaceatfuga.png?size=100x100&set=set1'),
(12, 'Sanderson Lainton', 'slaintonb@vimeo.com', 'ZwiWIT', '2/21/1992', '8261710393', 'https://robohash.org/quiestquia.bmp?size=100x100&set=set1'),
(13, 'Phillipe Fielden', 'pfieldenc@ning.com', 'ICqzvoE', '4/1/1993', '3687130174', 'https://robohash.org/facereiustoexplicabo.jpg?size=100x100&set=set1'),
(14, 'Darn Espinho', 'despinhod@tmall.com', 'zZCeIO', '6/20/1997', '1232031812', 'https://robohash.org/ullamplaceatvel.png?size=100x100&set=set1'),
(15, 'Avrit Simonin', 'asimonine@howstuffworks.com', 'ZYKKct0it', '11/24/1992', '6193707364', 'https://robohash.org/quiexcepturiomnis.jpg?size=100x100&set=set1'),
(16, 'Dory Dwelling', 'ddwellingf@photobucket.com', '5XLq1s', '9/21/1993', '1449440933', 'https://robohash.org/commodiipsumut.bmp?size=100x100&set=set1'),
(17, 'Raffarty Creigan', 'rcreigang@dagondesign.com', 'G25LafO', '8/1/1992', '4435050917', 'https://robohash.org/veniamsitaccusamus.png?size=100x100&set=set1'),
(18, 'Roddy Showalter', 'rshowalterh@themeforest.net', 'BxjPxJVQIE', '4/28/1995', '3669699376', 'https://robohash.org/idrerumlaudantium.bmp?size=100x100&set=set1'),
(19, 'Lyndel Rakes', 'lrakesi@indiegogo.com', 'Hf15QZcaI', '4/29/1990', '9533525926', 'https://robohash.org/reiciendisoptiorerum.bmp?size=100x100&set=set1'),
(20, 'Tracy Melbury', 'tmelburyj@ehow.com', 'Hf15QZcaI', '4/17/1995', '4832850097', 'https://robohash.org/quiperspiciatisodit.jpg?size=100x100&set=set1'),
(21, 'Het Shah', 'htshah60@gmail.com', 'helloworld', '20/11/1997', '1234567890', 'https://robohash.org/magnidoloredolores.bmp?size=100x100&set=set1');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
