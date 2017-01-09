-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 08 Janvier 2017 à 20:59
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `beezymanager`
--

-- --------------------------------------------------------

--
-- Structure de la table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `branch`
--

INSERT INTO `branch` (`id`, `name`, `createdAt`) VALUES
(3, 'BATA', '2016-12-15 17:18:15'),
(4, 'VALLEY', '2016-12-15 17:18:15');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `displayed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `createdAt`, `displayed`) VALUES
(5, 'CONSOMABLE INFORMATIQUE', '2016-12-17 16:58:23', 0),
(6, 'SECRETARIAT', '2016-12-19 15:17:20', 0),
(7, 'UNCATEGORIZED', '2016-12-19 19:25:21', 0),
(8, 'FREQUENTLY SOLD', '2017-01-04 13:05:33', 0),
(9, 'CYBER', '2017-01-06 09:55:12', 0),
(10, 'FRIDGE', '2017-01-07 14:29:48', 1);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expenditure`
--

CREATE TABLE `expenditure` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitPrice` double NOT NULL,
  `WholeSalePrice` double NOT NULL,
  `locked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `updated`, `image`, `name`, `barcode`, `unitPrice`, `WholeSalePrice`, `locked`) VALUES
(73, 6, '2016-12-26 17:29:00', NULL, 'Agenda grand', '2005390332005', 700, 700, 1),
(74, 6, '2017-01-07 09:28:25', NULL, 'Agenda petit', '2004748510706', 0, 0, 1),
(75, 6, '2017-01-02 19:43:13', NULL, 'Agrafe grand', '2002318391700', 500, 0, 1),
(76, 5, '2017-01-02 19:43:13', NULL, 'Clé USB 4G', '2000334020703', 3500, 0, 1),
(77, 5, '2017-01-07 09:28:25', NULL, 'Clé USB 8Go', '2004006201704', 5000, 0, 1),
(78, 6, '2017-01-07 09:28:25', NULL, 'Agrafeuse', '2001886243305', 0, 0, 1),
(79, 6, '2017-01-07 09:28:25', NULL, 'Agrafe bebe', '2003248054208', 0, 0, 1),
(80, 5, '2017-01-07 09:28:25', NULL, 'Clé USB  16 Go', '2002347515207', 7000, 0, 1),
(81, 5, '2017-01-07 09:28:25', NULL, 'Clé Bluetooth', '2003197476700', 0, 0, 1),
(82, 6, '2017-01-07 09:28:25', NULL, 'Clé  internet', '2007928174200', 10000, 0, 1),
(83, 7, '2017-01-02 19:43:13', NULL, 'Antenne 700', '2003851821204', 1000, 0, 1),
(84, 5, '2017-01-07 08:16:33', NULL, 'Clavier  option', '2003450427104', 6000, 0, 1),
(85, 6, '2017-01-07 09:28:25', NULL, 'Clavier  Occasion', '2007950437502', 2500, 0, 1),
(86, 6, '2017-01-07 09:28:25', NULL, 'Clips  petit', '2003518250903', 0, 0, 1),
(87, 6, '2017-01-07 09:28:25', NULL, 'Clips  grand', '2003818535700', 0, 0, 1),
(88, 6, '2017-01-02 19:43:13', NULL, 'Corrector', '2004358710701', 700, 0, 1),
(89, 6, '2017-01-07 09:28:25', NULL, 'corrector  en  tube', '2008632106105', 1000, 0, 1),
(90, 5, '2017-01-07 09:28:25', NULL, 'Clé  memo  blanche', '2008297849706', 0, 0, 1),
(91, 6, '2017-01-07 09:28:25', NULL, 'Colle  en  tube  grand', '2008145212508', 0, 0, 1),
(92, 6, '2017-01-07 09:28:25', NULL, 'Colle  grande', '2007070250906', 0, 0, 1),
(93, 6, '2017-01-07 09:28:25', 'jpeg', 'Baffle   d''ordinateur 4000', '2009884118106', 4000, 0, 1),
(94, 6, '2017-01-07 09:28:25', NULL, 'Colle  moyenne', '2007945197206', 0, 0, 1),
(95, 6, '2017-01-02 19:43:13', NULL, 'Colle  plus  petit', '2000773719909', 350, 0, 1),
(96, 6, '2017-01-07 09:28:25', NULL, 'Courier  A&D', '2001735944001', 0, 0, 1),
(97, 6, '2017-01-07 09:28:25', NULL, 'bande scotch', '2003925622904', 0, 0, 1),
(98, 6, '2017-01-07 09:28:25', NULL, 'Connecteur RJ45', '2004269959305', 100, 0, 1),
(99, 6, '2017-01-07 09:28:25', NULL, 'Corde', '2007996053308', 200, 0, 1),
(100, 6, '2017-01-07 09:28:25', NULL, 'Crayon  spécial', '2004139878101', 0, 0, 1),
(101, 6, '2017-01-07 09:28:25', NULL, 'Crayon  simple', '2004475139904', 100, 0, 1),
(102, 6, '2017-01-07 09:28:25', NULL, 'Crayon  de  couleur', '2002997675504', 500, 0, 1),
(103, 5, '2017-01-07 07:15:40', NULL, 'Barrette de rame 128 Mo', '2002214217005', 1500, 0, 1),
(104, 6, '2017-01-02 19:43:13', NULL, 'Craie  blanche', '2003573595902', 50, 0, 1),
(105, 6, '2017-01-07 09:28:25', NULL, 'Craie  de  couleur', '2008774834201', 0, 0, 1),
(106, 6, '2017-01-07 09:28:25', NULL, 'Barrette de rame 256 Mo', '2005431227802', 2000, 0, 1),
(107, 6, '2017-01-07 09:28:25', NULL, 'Barette de ram 512', '2003765040104', 3000, 0, 1),
(108, 5, '2017-01-07 09:28:25', NULL, 'Disque  dur  80  mix', '2004162214907', 8000, 0, 1),
(109, 6, '2017-01-07 09:28:25', NULL, 'barrette 1Go', '2000249599301', 0, 0, 1),
(110, 6, '2017-01-07 09:28:25', NULL, 'Barrette de rame 2Go', '2003439581803', 6000, 0, 1),
(111, 6, '2017-01-07 09:28:25', NULL, 'Barrette de rame 4Go', '2004696161708', 8000, 0, 1),
(112, 5, '2017-01-07 09:28:25', NULL, 'Disque  dur  160 Go Mix', '2009808779000', 12000, 0, 1),
(113, 5, '2017-01-07 09:28:25', NULL, 'Disque  dur 250 Go', '2009088930900', 20000, 0, 1),
(114, 5, '2017-01-07 09:28:25', NULL, 'DVD  simple', '2001832041801', 200, 0, 1),
(115, 5, '2017-01-07 09:28:25', NULL, 'DVD  imprimable', '2003050227203', 0, 0, 1),
(116, 6, '2017-01-07 09:28:25', NULL, 'Barrette d e rame laptop251', '2002302979600', 0, 0, 1),
(117, 5, '2017-01-07 09:28:25', NULL, 'Disque dur 320 Go', '2006072329405', 0, 0, 1),
(118, 5, '2017-01-07 09:28:25', NULL, 'Disque  dur  interne mix 40 Go', '2004142377400', 0, 0, 1),
(119, 6, '2017-01-07 09:28:25', NULL, 'Barrette de rame 1G', '2006062328005', 5000, 0, 1),
(120, 6, '2017-01-07 09:28:25', NULL, 'Ecouteur origine 2000', '2000473491204', 2000, 0, 1),
(121, 6, '2017-01-07 09:28:25', NULL, 'Ecouteur MP3 Micro', '2008641290901', 4500, 0, 1),
(122, 6, '2017-01-07 15:25:30', NULL, 'Enveloppe A3', '2005613974302', 200, 0, 1),
(123, 6, '2017-01-07 09:28:25', NULL, 'Barrette de rame laptop 2G', '2005534449903', 0, 0, 1),
(124, 8, '2017-01-07 09:28:25', NULL, 'Enveloppe  A4', '2008979702503', 100, 0, 1),
(125, 6, '2017-01-07 09:28:25', NULL, 'Enveloppe A5', '2001488428902', 75, 0, 1),
(126, 6, '2017-01-07 09:28:25', NULL, 'Enveloppe  de  50f', '2003137997807', 50, 0, 1),
(127, 5, '2017-01-07 09:28:25', NULL, 'Encrier', '2004419057905', 700, 0, 1),
(128, 5, '2017-01-07 09:28:25', NULL, 'Encre  pour  encrier', '2001863859703', 700, 0, 1),
(129, 6, '2017-01-07 09:28:25', NULL, 'Barrette de  rame laptop4G', '2005136860106', 0, 0, 1),
(130, 6, '2017-01-07 09:28:25', NULL, 'Emballage  CD', '2001127829206', 0, 0, 1),
(131, 7, '2017-01-07 09:28:25', NULL, 'Epingle', '2004887022405', 0, 0, 1),
(132, 6, '2017-01-07 09:28:25', NULL, 'Fronde', '2005297752906', 0, 0, 1),
(133, 5, '2017-01-07 09:28:25', NULL, 'batterie laptop', '2003864931600', 18000, 0, 1),
(134, 6, '2017-01-07 09:28:25', NULL, 'Format  couleur', '2002552126106', 50, 0, 1),
(135, 6, '2017-01-07 09:28:25', NULL, 'Grande  pochette', '2000702289305', 200, 0, 1),
(136, 5, '2017-01-07 09:28:25', NULL, 'LECT', '2006208848701', 2500, 0, 1),
(137, 5, '2017-01-07 09:28:25', NULL, 'cable son', '2003704893303', 1000, 0, 1),
(138, 5, '2017-01-07 09:28:25', NULL, 'Lecteur Carte  500', '2008893136200', 500, 0, 1),
(139, 5, '2017-01-07 09:28:25', NULL, 'Lecteur carte 1000', '2006022936004', 1000, 0, 1),
(140, 5, '2017-01-07 09:28:25', NULL, 'Cable video', '2007579523907', 0, 0, 1),
(141, 5, '2017-01-07 09:28:25', NULL, 'Lecteur  graveur  DVD', '2005354197909', 10000, 0, 1),
(142, 5, '2017-01-07 09:28:25', NULL, 'Lecteur  simple  DVD', '2002905964102', 7000, 0, 1),
(143, 5, '2017-01-07 09:28:25', NULL, 'Lecteur  CD  simple', '2009891982202', 0, 0, 1),
(144, 5, '2017-01-07 09:28:25', NULL, 'Lecteur baladeur  MP3', '2001782945709', 0, 0, 1),
(145, 5, '2017-01-07 09:28:25', NULL, 'Lecteur  baladeur  MP4', '2008218982208', 0, 0, 1),
(146, 5, '2017-01-07 09:28:25', NULL, 'Multiplicateur  USB', '2000252158502', 1500, 0, 1),
(147, 5, '2017-01-07 09:28:25', 'jpeg', 'Manette  USB  4500f', '2004725402208', 4500, 0, 1),
(148, 5, '2017-01-07 09:28:25', 'jpeg', 'Manette  USB  de  6000f', '2005946838401', 6000, 0, 1),
(149, 6, '2017-01-07 09:28:25', NULL, 'Marqueur  200', '2009111553106', 200, 0, 1),
(150, 6, '2017-01-07 09:28:25', 'jpeg', 'Adaptateur  Multi  prise', '2009022755408', 350, 0, 1),
(151, 5, '2017-01-07 09:28:25', NULL, 'Micro', '2003433838507', 0, 0, 1),
(152, 5, '2017-01-07 09:28:25', NULL, 'Nettoyeur  VCD & DVD', '2000274195608', 0, 0, 1),
(153, 6, '2017-01-07 09:28:25', NULL, 'Porte  badge  grand  mix', '2003494842000', 1000, 0, 1),
(154, 6, '2017-01-07 09:28:25', NULL, 'Porte  badge  petit  Mix', '2006757330207', 500, 0, 1),
(155, 6, '2017-01-07 09:28:25', NULL, 'Pile  rechargeable', '2009766678100', 0, 0, 1),
(156, 6, '2017-01-07 09:28:25', NULL, 'Pile  Kodak  petit', '2003712067406', 1500, 0, 1),
(157, 6, '2017-01-07 09:28:25', NULL, 'pile  kodak  moyenne  100', '2008655673806', 1500, 0, 1),
(158, 6, '2017-01-07 09:28:25', NULL, 'Pile  gold  store', '2003834899602', 400, 0, 1),
(159, 6, '2017-01-07 09:28:25', NULL, 'Pile  tuceba', '2002905795409', 200, 0, 1),
(160, 6, '2017-01-07 09:28:25', NULL, 'Pile  vinic  grand', '2006572450708', 0, 0, 1),
(161, 5, '2017-01-07 09:28:25', NULL, 'Pile  d''ordinateur', '2007023646107', 500, 0, 1),
(162, 6, '2017-01-07 09:28:25', NULL, 'Papier  carton', '2001943066809', 100, 0, 1),
(163, 6, '2017-01-07 09:28:25', NULL, 'Paragraphe 12', '2007967224409', 0, 0, 1),
(164, 6, '2017-01-07 09:28:25', NULL, 'Pochette  cassable', '2007558959406', 150, 0, 1),
(165, 6, '2017-01-07 09:28:25', NULL, 'Pochette  plastique', '2003443400008', 150, 0, 1),
(166, 6, '2017-01-07 09:28:25', NULL, 'Plastique  pour  format', '2007466617504', 75, 0, 1),
(167, 6, '2017-01-07 09:28:25', NULL, 'Pendule', '2005886414703', 0, 0, 1),
(168, 6, '2017-01-07 09:28:25', NULL, 'Rame de papier', '2006619729507', 0, 0, 1),
(169, 6, '2017-01-07 09:28:25', NULL, 'Registre  600p', '2000038745308', 0, 0, 1),
(170, 6, '2017-01-07 09:28:25', NULL, 'Registre  400p', '2007757035109', 0, 0, 1),
(171, 6, '2017-01-07 09:28:25', NULL, 'Registre  300p', '2007385850303', 0, 0, 1),
(172, 6, '2017-01-07 09:28:25', NULL, 'Registre  200p', '2005122758509', 0, 0, 1),
(173, 6, '2017-01-07 09:28:25', NULL, 'Registre  de  transmission', '2005479769104', 0, 0, 1),
(174, 6, '2017-01-07 09:28:25', NULL, 'Sac  pour  CD', '2004730139601', 0, 0, 1),
(175, 6, '2017-01-07 09:28:25', NULL, 'Stylo', '2007217669806', 100, 0, 1),
(176, 6, '2017-01-07 09:28:25', NULL, 'Scotch  à  prix', '2005765315800', 350, 0, 1),
(177, 6, '2017-01-07 09:28:25', NULL, 'scotch  Grand', '2004804664404', 1000, 0, 1),
(178, 6, '2017-01-07 09:28:25', NULL, 'scotch  petit', '2005622741704', 0, 0, 1),
(179, 6, '2017-01-07 09:28:25', NULL, 'scotch  plus  petit', '2003616565305', 100, 0, 1),
(180, 6, '2017-01-07 09:28:25', NULL, 'Stiples', '2001776230606', 0, 0, 1),
(181, 8, '2017-01-07 09:28:25', 'jpeg', 'Spiral (100)', '2002467885105', 100, 0, 1),
(182, 8, '2017-01-07 09:28:25', 'jpeg', 'Spiral (200)', '2002251569709', 200, 0, 1),
(183, 6, '2017-01-07 09:28:25', NULL, 'Signature  book', '2009805688602', 0, 0, 1),
(184, 6, '2017-01-07 09:28:25', NULL, 'Super  glue', '2005818335205', 0, 0, 1),
(185, 5, '2017-01-07 09:28:25', NULL, 'Souris  Mix', '2006374336507', 0, 0, 1),
(186, 5, '2017-01-07 09:28:25', NULL, 'Souris  Bluetooth', '2003049140407', 5000, 0, 1),
(187, 5, '2017-01-07 14:39:44', NULL, 'Disque  dur  laptop 60 Go', '2003812690603', 0, 0, 1),
(188, 8, '2017-01-07 09:28:25', 'jpeg', 'Serre  dos (100)', '2004991666502', 100, 0, 1),
(189, 8, '2017-01-07 09:28:25', 'jpeg', 'Serre  dos (200)', '2008826633806', 200, 0, 1),
(190, 6, '2017-01-07 09:28:25', NULL, 'Sim  reconduct.  Mtn', '2003515291206', 0, 0, 1),
(191, 6, '2017-01-07 09:28:25', NULL, 'SIm  reconduct  Orange', '2005483707406', 0, 0, 1),
(192, 6, '2017-01-07 09:28:25', NULL, 'Sim  Mtn', '2008235510705', 0, 0, 1),
(193, 6, '2017-01-07 09:28:25', NULL, 'Sim  Orange', '2007394605109', 0, 0, 1),
(194, 6, '2017-01-07 09:28:25', NULL, 'Sim  nextell', '2002257722405', 0, 0, 1),
(195, 8, '2017-01-07 09:28:25', NULL, 'Transparent', '2003488621307', 100, 0, 1),
(196, 6, '2017-01-07 09:28:25', NULL, 'Téléphone', '2005818795306', 0, 0, 1),
(197, 6, '2017-01-07 09:28:25', NULL, 'Trombone', '2007099720909', 2000, 0, 1),
(198, 6, '2017-01-07 09:28:25', NULL, 'Batterie  rechargeable', '2008872986703', 0, 0, 1),
(199, 5, '2017-01-07 09:28:25', NULL, 'Webcam  4500', '2007883318503', 4500, 0, 1),
(200, 6, '2017-01-07 09:28:25', NULL, 'ecouteur si,ple', '2000167633705', 1000, 0, 1),
(201, 6, '2017-01-07 09:28:25', NULL, 'Bloc  note  A5', '2001513133801', 0, 0, 1),
(202, 6, '2017-01-07 09:28:25', NULL, 'Bloc  note  4A', '2000905863807', 0, 0, 1),
(203, 6, '2017-01-07 09:28:25', NULL, 'Carnet  10  recus', '2000681640104', 0, 0, 1),
(204, 6, '2017-01-07 09:28:25', NULL, 'Carnet  50  recus', '2008671761907', 0, 0, 1),
(205, 6, '2017-01-07 09:28:25', NULL, 'Sac  app.  photo', '2008597618101', 0, 0, 1),
(206, 6, '2017-01-07 09:28:25', NULL, 'Facturier  A4', '2005461016605', 1500, 0, 1),
(207, 6, '2017-01-07 09:28:25', NULL, 'Pile  hyniat', '2001384110000', 0, 0, 1),
(208, 5, '2017-01-07 09:28:25', NULL, 'Encre  imprimante petit', '2005400035209', 0, 0, 1),
(209, 6, '2017-01-07 09:28:25', NULL, 'Encre  imprimante  grand', '2000090710207', 0, 0, 1),
(210, 5, '2017-01-07 09:28:25', NULL, 'Encre  imprimante  en  sachet', '2006934543604', 0, 0, 1),
(213, 5, '2017-01-07 09:28:25', NULL, 'Câble  d''alimentation 500', '2000491509202', 500, 0, 1),
(214, 6, '2017-01-07 09:28:25', NULL, 'Câble  réseau', '2000084721806', 0, 0, 1),
(215, 6, '2017-01-07 09:28:25', NULL, 'Boitier externe sata', '2008349587105', 4000, 0, 1),
(216, 6, '2017-01-07 09:28:25', NULL, 'Adaptateur  IDE/SATA', '2004485791802', 0, 0, 1),
(217, 6, '2017-01-07 09:28:25', NULL, 'Carte  graphique', '2006208690706', 0, 0, 1),
(218, 6, '2017-01-07 14:38:59', NULL, 'Carte  son', '2008188666405', 2000, 0, 1),
(219, 6, '2017-01-07 09:28:25', NULL, 'Porte  clé', '2004385510800', 0, 0, 1),
(220, 6, '2017-01-07 14:49:25', NULL, 'Sticker', '2005077083602', 2000, 0, 1),
(221, 6, '2017-01-07 09:28:25', NULL, 'Ecouteur simple 1000', '2009455160800', 1000, 0, 1),
(222, 6, '2017-01-07 09:28:25', NULL, 'Chargeur  tel  simple', '2004662038805', 1000, 0, 1),
(223, 6, '2017-01-07 09:28:25', NULL, 'Trombone  petit  pk', '2005309595101', 350, 0, 1),
(224, 6, '2017-01-07 14:50:04', NULL, 'Chargeur  unversel', '2002605089501', 500, 0, 1),
(225, 6, '2017-01-07 14:50:46', NULL, 'règle', '2008562100501', 200, 0, 1),
(226, 6, '2017-01-07 09:28:25', NULL, 'Boitier  simple 800', '2000648203403', 600, 0, 1),
(227, 6, '2017-01-07 09:28:25', NULL, 'Chargeur  d''origine  tel 2000', '2001524745208', 2000, 0, 1),
(228, 6, '2017-01-07 09:28:25', NULL, 'Boitier  d''origine', '2009240642306', 2000, 0, 1),
(229, 6, '2017-01-07 09:28:25', NULL, 'Batterie  simple  tel', '2003735689302', 1000, 0, 1),
(230, 6, '2017-01-07 09:28:25', NULL, 'Batterie  d''origine  tel', '2002256910209', 2000, 0, 1),
(231, 6, '2017-01-07 09:28:25', NULL, 'cordon  d''origine', '2003925050509', 2000, 0, 1),
(232, 6, '2017-01-07 09:28:25', NULL, 'Cordon  simple', '2002909132101', 0, 0, 1),
(233, 5, '2017-01-07 14:44:08', NULL, 'Disque  dur laptop  160Go', '2006152959805', 0, 0, 1),
(234, 6, '2017-01-07 09:28:25', NULL, 'Chargeur  tablette', '2004126664403', 2500, 0, 1),
(236, 6, '2017-01-07 09:28:25', NULL, 'Papier à  plstification', '2009018181402', 0, 0, 1),
(237, 6, '2017-01-07 14:57:17', NULL, 'Papier  calque', '2008494568608', 100, 0, 1),
(238, 6, '2017-01-07 09:28:25', NULL, 'Trombone  plus  grand', '2002770045906', 2500, 0, 1),
(239, 5, '2017-01-07 14:58:27', NULL, 'Clé USB wifi', '2008764256402', 0, 0, 1),
(240, 6, '2017-01-07 09:28:25', NULL, 'mp3', '2004234093607', 0, 0, 1),
(241, 6, '2017-01-07 09:28:25', NULL, 'mp4', '2001262361500', 0, 0, 1),
(242, 6, '2017-01-07 09:28:25', NULL, 'Casque  simple', '2005962876609', 2000, 0, 1),
(243, 6, '2017-01-07 15:00:18', NULL, 'Chargeur  iphone', '2009400557204', 0, 0, 1),
(245, 6, '2017-01-07 09:28:25', NULL, 'rallonge', '2008216561405', 0, 0, 1),
(246, 5, '2017-01-07 09:28:25', NULL, 'Clé  USB 120Go', '2008623562002', 0, 0, 1),
(247, 6, '2017-01-07 09:28:25', NULL, 'tablettes', '2006651806105', 0, 0, 1),
(248, 5, '2017-01-07 09:28:25', NULL, 'Disque  laptop 120Go', '2003494928803', 0, 0, 1),
(249, 6, '2017-01-07 09:28:25', NULL, 'Adaptateur  DVI', '2003560817000', 2500, 0, 1),
(250, 5, '2017-01-07 14:45:58', NULL, 'Disque dur  laptop  320Go', '2006856274105', 0, 0, 1),
(251, 6, '2017-01-07 09:28:25', NULL, 'Boite  de  tournevis', '2001036436205', 0, 0, 1),
(252, 6, '2017-01-07 15:03:19', NULL, 'Câble  d''alimentation 1000', '2006986513907', 1000, 0, 1),
(254, 5, '2017-01-07 09:28:25', NULL, 'Câble  USB  pour  imprimante 1500', '2004452504800', 1500, 0, 1),
(255, 5, '2017-01-07 09:28:25', NULL, 'Câble  USB - USB', '2007608162503', 1500, 0, 1),
(256, 6, '2017-01-07 09:28:25', NULL, 'Cable  VGA', '2007749330502', 2000, 0, 1),
(257, 6, '2017-01-07 09:28:25', NULL, 'Cahier', '2008967790604', 100, 0, 1),
(258, 6, '2017-01-07 09:28:25', NULL, 'Calculatrice  scientifique', '2001449341004', 2500, 0, 1),
(259, 6, '2017-01-07 09:28:25', NULL, 'Calculatrice  grande', '2002358864707', 2500, 0, 1),
(260, 6, '2017-01-07 09:28:25', NULL, 'Calculatrice  moyenne', '2002480981204', 1500, 0, 1),
(261, 6, '2017-01-07 09:28:25', NULL, 'Calculatrice  petit', '2003098132507', 1000, 0, 1),
(262, 6, '2017-01-07 09:28:25', NULL, 'Carnet  plus  petit (800)', '2008363126700', 0, 0, 1),
(263, 6, '2017-01-07 09:28:25', NULL, 'Carnet  petit  de  reçu (100p)', '2000928756704', 0, 0, 1),
(264, 6, '2017-01-07 09:28:25', NULL, 'Carnet  plus  petit (50 p)', '2004716989206', 0, 0, 1),
(265, 6, '2017-01-07 09:28:25', NULL, 'carnet  avec  carbone', '2007519453806', 0, 0, 1),
(266, 6, '2017-01-07 09:28:25', NULL, 'carnet 1/3 manifold', '2003400755707', 0, 0, 1),
(267, 6, '2017-01-07 09:28:25', NULL, 'Carte  app  photo  2Go', '2003492792208', 0, 0, 1),
(268, 6, '2017-01-07 09:28:25', NULL, 'Carte  app  photo  4G', '2005994317002', 0, 0, 1),
(269, 6, '2017-01-07 09:28:25', NULL, 'Carte  app  photo 8Go', '2000785397409', 0, 0, 1),
(270, 6, '2017-01-07 09:28:25', NULL, 'Carte  mémoire  1Go', '2001656068701', 0, 0, 1),
(271, 6, '2017-01-07 09:28:25', NULL, 'Carte  mémoire  2Go', '2003833582901', 0, 0, 1),
(272, 6, '2017-01-07 09:28:25', NULL, 'Carte  mémoire  4Go', '2004161617105', 0, 0, 1),
(273, 6, '2017-01-07 09:28:25', NULL, 'Carte  mémoire  8G', '2005089612807', 0, 0, 1),
(274, 6, '2017-01-07 09:28:25', NULL, 'Carte  mémoire 16G', '2001252613404', 0, 0, 1),
(275, 6, '2017-01-07 09:28:25', NULL, 'Carte  mémoire 32G', '2004188842306', 0, 0, 1),
(276, 6, '2017-01-07 09:28:25', NULL, 'Carte  mémoire  SONY', '2007945823402', 0, 0, 1),
(277, 6, '2017-01-07 09:28:25', NULL, 'Carbone', '2000719702804', 100, 0, 1),
(278, 6, '2017-01-07 09:28:25', NULL, 'Carte TV', '2001842817403', 18000, 0, 1),
(279, 6, '2017-01-07 09:28:25', NULL, 'Casque', '2009300182902', 0, 0, 1),
(280, 6, '2017-01-07 09:28:25', NULL, 'Casque  Mp3', '2009637866407', 4000, 0, 1),
(281, 6, '2017-01-07 09:28:25', NULL, 'Casque  Bluetooth', '2001122358701', 15000, 0, 1),
(282, 5, '2017-01-07 09:28:25', NULL, 'CD Simple', '2009439480504', 150, 0, 1),
(283, 5, '2017-01-07 09:28:25', NULL, 'CD  avec  Etui', '2005820392708', 400, 0, 1),
(284, 6, '2017-01-07 09:28:25', NULL, 'chargeur  multi  tete', '2007504651309', 2000, 0, 1),
(285, 6, '2017-01-07 09:28:25', NULL, 'chargeur  app  numérique', '2004459003801', 0, 0, 1),
(286, 6, '2017-01-07 09:28:25', NULL, 'Chargeur  pile  rechargeable', '2002653798301', 2500, 0, 1),
(287, 5, '2017-01-07 09:28:25', NULL, 'Chargeur  de  laptop', '2005345243400', 8000, 0, 1),
(289, 6, '2017-01-07 09:28:25', 'jpeg', 'Classeur  plastique  1500', '2002477275705', 1500, 0, 1),
(290, 6, '2017-01-07 09:28:25', NULL, 'Classeur  plastique  2000', '2002311618101', 2000, 0, 1),
(291, 6, '2017-01-07 09:28:25', NULL, 'Clé  USB 32Go', '2005537202307', 0, 0, 1),
(293, NULL, '2017-01-07 09:28:25', NULL, 'Clé USB 2Go', '2007253493908', 2500, 0, 1),
(294, NULL, '2017-01-07 09:28:25', NULL, 'Clavier neuf', '2001600303100', 3500, 0, 1),
(295, NULL, '2017-01-07 09:28:25', NULL, 'Souris simple 2000', '2003232411901', 1500, 0, 1),
(296, NULL, '2017-01-07 09:28:25', NULL, 'Pile micro', '2004859474607', 500, 0, 1),
(297, NULL, '2017-01-07 09:28:25', NULL, 'TEST', '2008942755802', 0, 0, 1),
(299, 7, '2017-01-07 09:28:25', NULL, 'Lecteur Auto', '2008860013008', 2500, 0, 1),
(300, 7, '2017-01-07 09:28:25', 'jpeg', 'Rallonge electrique 4000', '2006106983405', 4000, 1, 1),
(301, 7, '2017-01-07 09:28:25', 'jpeg', 'Rallonge électrique 5000', '2000045804708', 5000, 0, 1),
(302, 7, '2017-01-07 09:28:25', NULL, 'Marqueur 100', '2008028621205', 100, 0, 1),
(303, NULL, '2017-01-07 09:28:25', NULL, 'Souri simple 2500', '2000581524900', 2500, 0, 1),
(304, NULL, '2017-01-07 09:28:25', NULL, 'Ralonge 5000', '2002693806509', 5000, 0, 1),
(305, NULL, '2017-01-07 09:28:25', NULL, 'Ralonge 4000', '2007978290103', 4000, 0, 1),
(306, 7, '2017-01-07 09:28:25', NULL, 'Detecteur de faux billet', '2009661220206', 6500, 0, 1),
(307, NULL, '2017-01-07 09:28:25', NULL, 'Plastique a plastification', '2007361331604', 500, 0, 1),
(308, 9, '2017-01-07 09:28:25', NULL, 'Scanner 250', '2009164977607', 250, 0, 1),
(309, 9, '2017-01-07 09:28:25', NULL, 'Plastification 500', '2008287848801', 500, 0, 1),
(310, 9, '2017-01-07 09:28:25', NULL, 'Plastification 400', '2005504203207', 400, 0, 1),
(311, 9, '2017-01-07 09:28:25', NULL, 'Plastification 250', '2002853637301', 250, 0, 1),
(312, 9, '2017-01-07 09:28:25', NULL, 'Scanner 150', '2005858115805', 150, 0, 1),
(313, 9, '2017-01-07 09:28:25', NULL, 'Photo 4 X 4', '2001760419802', 1000, 0, 1),
(314, 9, '2017-01-07 09:28:25', NULL, 'Photocopy en couleur', '2004548133907', 250, 0, 1),
(315, NULL, '2017-01-07 09:28:25', NULL, 'Carte memoire M2 sony 2Go', '2001909319901', 2500, 0, 1),
(316, NULL, '2017-01-07 09:28:25', NULL, 'Régulateur de tension 1000 wats', '2005604182105', 20000, 0, 1),
(317, NULL, '2017-01-07 09:28:25', NULL, 'Régulateur de tension 500 wats', '2002546595703', 15000, 0, 1),
(318, NULL, '2017-01-07 09:28:25', NULL, 'Boitier disque dure gros model', '2003639505807', 7000, 0, 1),
(319, NULL, '2017-01-07 09:28:25', NULL, 'Routeur 15000', '2006524911004', 15000, 0, 1),
(320, NULL, '2017-01-07 09:28:25', NULL, 'Routeur 25000', '2000306452303', 25000, 0, 1),
(321, NULL, '2017-01-07 09:28:25', NULL, 'Carte mere desk-top', '2008689294305', 15000, 0, 1),
(322, NULL, '2017-01-07 09:28:25', NULL, 'Alimentation desk-top', '2003392574003', 10000, 0, 1),
(323, NULL, '2017-01-07 09:28:25', NULL, 'Telephone fixe', '2000654462405', 10000, 0, 1),
(324, NULL, '2017-01-07 09:28:25', NULL, 'Antenne 1000', '2006808939403', 1000, 0, 1),
(325, NULL, '2017-01-07 09:28:25', NULL, 'Baffle d''ordinateur 5000', '2003035782802', 5000, 0, 1),
(326, NULL, '2017-01-07 09:28:25', NULL, 'Cable son video 1000', '2004228102605', 1000, 0, 1),
(327, NULL, '2017-01-07 09:28:25', NULL, 'Cable son video 2000', '2005481422202', 2000, 0, 1),
(328, NULL, '2017-01-07 09:28:25', NULL, 'Boite a tournevis', '2009200492705', 2000, 0, 1),
(329, NULL, '2017-01-07 09:28:25', NULL, 'Câble  USB  pour  imprimante 2500', '2008420252106', 2500, 0, 1),
(330, NULL, '2017-01-07 09:28:25', NULL, 'Câble  d''alimentation 2500', '2001524057608', 2500, 0, 1),
(331, NULL, '2017-01-07 09:28:25', NULL, 'Bloc note / manifold A5', '2002042095400', 500, 0, 1),
(332, NULL, '2017-01-07 09:28:25', NULL, 'Bloc note / manifold A4', '2007893999204', 800, 0, 1),
(333, NULL, '2017-01-07 09:28:25', NULL, 'Rallonge electrique 10000', '2009913100102', 10000, 0, 1),
(334, NULL, '2017-01-07 09:28:25', NULL, 'Chargeur  d''origine  tel 2500', '2009140355504', 2500, 0, 1),
(335, NULL, '2017-01-07 09:28:25', NULL, 'Adaptateur multiprise 500', '2003607728900', 500, 0, 1),
(336, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 5000', '2000780690604', 5000, 0, 1),
(337, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 6500', '2005377450302', 6500, 0, 1),
(338, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 10000', '2001427987309', 10000, 0, 1),
(339, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 15000', '2006904079508', 15000, 0, 1),
(340, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 20000', '2006990040604', 20000, 0, 1),
(341, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 25000', '2005614266703', 25000, 0, 1),
(342, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 30000', '2008761462103', 30000, 0, 1),
(343, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 35000', '2008276050000', 35000, 0, 1),
(344, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 40000', '2001584471000', 40000, 0, 1),
(345, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 45000', '2009342391102', 45000, 0, 1),
(346, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 50000', '2001611311200', 50000, 0, 1),
(347, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 55000', '2005123815904', 55000, 0, 1),
(348, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 60000', '2004273973403', 60000, 0, 1),
(349, NULL, '2017-01-07 09:28:25', NULL, 'Téléphone portable 65000', '2007779244008', 65000, 0, 1),
(350, 10, '2017-01-07 14:29:48', 'jpeg', 'L''eau pure 50', '2003518319204', 50, 0, NULL),
(351, 10, '2017-01-07 14:29:48', 'jpeg', 'Eau pure Supermont 200', '2003264917006', 200, 0, NULL),
(352, 10, '2017-01-07 14:29:48', 'jpeg', 'Jus planet PM', '2004988407408', 300, 0, NULL),
(353, NULL, '2017-01-07 14:24:38', NULL, 'Jus planet GM', '2003308859705', 400, 0, NULL),
(354, NULL, NULL, NULL, 'Jus top GM', '2009700144005', 400, 0, NULL),
(355, 10, '2017-01-07 14:29:48', 'jpeg', 'Jus top PM', '2006826443401', 300, 0, NULL),
(356, NULL, NULL, NULL, 'Coca cola PM', '2004130872702', 300, 0, NULL),
(357, NULL, NULL, NULL, 'DVD effacable', '2002664417406', 500, 0, NULL),
(358, NULL, NULL, NULL, 'CD imprimable', '2009485620008', 250, 0, NULL),
(359, NULL, NULL, NULL, 'Disque  dur  laptop 80 Go', '2003733358507', 0, 0, NULL),
(360, NULL, NULL, NULL, 'Disque  dur  laptop 120 Go', '2006984034909', 0, 0, NULL),
(362, NULL, NULL, NULL, 'Disque  dur  laptop 250 Go', '2001298848501', 0, 0, NULL),
(363, NULL, NULL, NULL, 'Disque  dur  laptop 320 Go', '2003091270305', 0, 0, NULL),
(364, NULL, NULL, NULL, 'Disque  dur  laptop 500 Go', '2008171066809', 0, 0, NULL),
(365, NULL, NULL, NULL, 'Disque  dur  laptop 750 Go', '2008485510302', 0, 0, NULL),
(366, NULL, NULL, NULL, 'Disque  dur  laptop 1 To', '2006749359803', 0, 0, NULL),
(367, NULL, '2017-01-07 15:07:12', NULL, 'Cable HDMI 3000', '2008425883602', 3000, 0, NULL),
(368, NULL, '2017-01-07 15:07:19', NULL, 'Cable HDMI 4000', '2001739937504', 4000, 0, NULL),
(369, NULL, '2017-01-07 15:07:44', NULL, 'Cable HDMI 5000', '2002183643102', 5000, 0, NULL),
(370, NULL, '2017-01-07 15:07:40', NULL, 'Cable HDMI 8000', '2006512459402', 8000, 0, NULL),
(371, NULL, NULL, NULL, 'Tete de cable télévision', '2009840540507', 200, 0, NULL),
(372, NULL, NULL, NULL, 'Câble imprimante paralelle', '2002913821701', 0, 0, NULL),
(373, NULL, NULL, NULL, 'Pochette telephone 1500', '2007357559708', 1500, 0, NULL),
(374, NULL, NULL, NULL, 'Manette PS 2 5000', '2001474508601', 5000, 0, NULL),
(375, NULL, NULL, NULL, 'Gomme 200', '2005300017503', 200, 0, NULL),
(376, NULL, NULL, NULL, 'Gomme 100', '2003401743703', 100, 0, NULL),
(377, NULL, NULL, NULL, 'Tranfo 4000', '2004335405804', 4000, 0, NULL),
(378, NULL, '2017-01-07 16:52:26', NULL, 'Ecran 15"', '2009531430001', 10000, 0, NULL),
(379, NULL, '2017-01-07 16:52:14', NULL, 'Ecran 17"', '2004081817708', 15000, 0, NULL),
(380, NULL, NULL, NULL, 'Ecran 19"', '2008824338406', 20000, 0, NULL),
(381, NULL, NULL, NULL, 'Ecran 20"', '2001104120500', 45000, 0, NULL),
(382, NULL, NULL, NULL, 'Ecran 24"', '2004632842302', 50000, 0, NULL),
(383, NULL, NULL, NULL, 'Ecran 32"', '2001978506202', 100000, 0, NULL),
(384, NULL, NULL, NULL, 'Laptop 50000', '2007834373308', 50000, 0, NULL),
(385, NULL, NULL, NULL, 'Laptop 60000', '2006072614808', 60000, 0, NULL),
(386, NULL, NULL, NULL, 'Laptop 65000', '2000907114204', 65000, 0, NULL),
(387, NULL, NULL, NULL, 'Laptop 75000', '2000186590201', 75000, 0, NULL),
(388, NULL, NULL, NULL, 'Laptop 80000', '2001900248200', 80000, 0, NULL),
(389, NULL, NULL, NULL, 'Laptop 100000', '2005573780609', 100000, 0, NULL),
(390, NULL, NULL, NULL, 'Laptop 120000', '2009142743903', 120000, 0, NULL),
(391, NULL, NULL, NULL, 'Laptop 150000', '2006128852208', 150000, 0, NULL),
(392, NULL, NULL, NULL, 'Laptop 160000', '2009569119404', 160000, 0, NULL),
(393, NULL, NULL, NULL, 'Laptop 180000', '2001485741608', 180000, 0, NULL),
(394, NULL, NULL, NULL, 'Laptop 200000', '2007253104903', 200000, 0, NULL),
(395, NULL, NULL, NULL, 'Imprimante 3000', '2007388491107', 30000, 0, NULL),
(396, NULL, NULL, NULL, 'Imprimante 35000', '2001970000401', 35000, 0, NULL),
(397, NULL, NULL, NULL, 'Imprimante 40000', '2004090425406', 40000, 0, NULL),
(398, NULL, NULL, NULL, 'Imprimante 45000', '2009829391700', 45000, 0, NULL),
(399, NULL, NULL, NULL, 'Imprimante 50000', '2002229645701', 50000, 0, NULL),
(400, NULL, NULL, NULL, 'Imprimante 60000', '2004262217204', 60000, 0, NULL),
(401, NULL, NULL, NULL, 'Imprimante 80000', '2003042568208', 80000, 0, NULL),
(402, NULL, NULL, NULL, 'Imprimante 100000', '2007413603208', 100000, 0, NULL),
(403, NULL, NULL, NULL, 'PC 30000', '2001856712008', 30000, 0, NULL),
(404, NULL, NULL, NULL, 'PC 35000', '2001717187501', 35000, 0, NULL),
(405, NULL, NULL, NULL, 'PC 40000', '2004328287707', 40000, 0, NULL),
(406, NULL, NULL, NULL, 'PC 45000', '2005040213401', 45000, 0, NULL),
(407, NULL, NULL, NULL, 'PC 50000', '2006826148405', 50000, 0, NULL),
(408, NULL, NULL, NULL, 'PC 60000', '2005542338503', 60000, 0, NULL),
(409, NULL, NULL, NULL, 'PC 80000', '2005647250403', 80000, 0, NULL),
(410, NULL, NULL, NULL, 'PC 100000', '2006142484300', 100000, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `p_transaction`
--

CREATE TABLE `p_transaction` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `stransaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `profit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `alertLevel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stock`
--

INSERT INTO `stock` (`id`, `product_id`, `branch_id`, `name`, `value`, `createdAt`, `alertLevel`) VALUES
(20, 83, 3, NULL, 0, '2016-12-19 19:36:03', 2),
(21, 137, 3, NULL, 0, '2016-12-19 19:36:34', NULL),
(22, 252, 3, NULL, 0, '2016-12-19 19:36:59', NULL),
(23, 255, 3, NULL, 0, '2016-12-19 19:37:46', NULL),
(24, 280, 3, NULL, 0, '2016-12-19 19:39:44', NULL),
(25, 282, 3, NULL, 0, '2016-12-19 19:42:36', NULL),
(26, 293, 3, NULL, 0, '2016-12-19 19:53:32', NULL),
(27, 76, 3, NULL, 0, '2016-12-19 19:54:31', NULL),
(28, 114, 3, NULL, 0, '2016-12-19 19:58:18', NULL),
(29, 120, 3, NULL, 0, '2016-12-19 19:59:10', NULL),
(30, 121, 3, NULL, 0, '2016-12-19 19:59:41', NULL),
(31, 136, 3, NULL, 0, '2016-12-19 20:00:04', NULL),
(32, 138, 3, NULL, 0, '2016-12-19 20:00:19', NULL),
(33, 139, 3, NULL, 0, '2016-12-19 20:00:50', NULL),
(34, 146, 3, NULL, 0, '2016-12-19 20:01:06', NULL),
(35, 147, 3, NULL, 0, '2016-12-19 20:01:30', NULL),
(36, 148, 3, NULL, 0, '2016-12-19 20:01:56', NULL),
(37, 150, 3, NULL, 0, '2016-12-19 20:04:33', NULL),
(38, 162, 3, NULL, 0, '2016-12-19 20:04:56', NULL),
(39, 181, 3, NULL, 0, '2016-12-19 20:05:28', NULL),
(40, 182, 3, NULL, 0, '2016-12-19 20:06:21', NULL),
(41, 186, 3, NULL, 0, '2016-12-19 20:06:55', NULL),
(42, 188, 3, NULL, 0, '2016-12-19 20:08:22', NULL),
(43, 189, 3, NULL, 0, '2016-12-19 20:08:36', NULL),
(44, 195, 3, NULL, 0, '2016-12-19 20:09:07', NULL),
(45, 296, 3, NULL, 0, '2016-12-19 20:11:16', NULL),
(46, 221, 3, NULL, 0, '2016-12-19 20:13:46', NULL),
(47, 222, 3, NULL, 0, '2016-12-19 20:14:05', NULL),
(48, 226, 3, NULL, 0, '2016-12-19 20:14:38', NULL),
(49, 227, 3, NULL, 0, '2016-12-19 20:15:27', NULL),
(50, 228, 3, NULL, 0, '2016-12-19 20:15:48', NULL),
(51, 229, 3, NULL, 0, '2016-12-19 20:16:42', NULL),
(52, 230, 3, NULL, 0, '2016-12-19 20:17:03', NULL),
(53, 231, 3, NULL, 0, '2016-12-19 20:17:25', NULL),
(54, 242, 3, NULL, 0, '2016-12-19 20:17:44', NULL),
(55, 245, 3, NULL, 0, '2016-12-19 20:18:05', NULL),
(56, 84, 3, NULL, 0, '2016-12-26 17:16:46', NULL),
(127, 315, 3, NULL, 44, '2017-01-06 12:41:04', NULL),
(128, 352, 3, NULL, 0, '2017-01-07 14:31:16', NULL),
(129, 355, 3, NULL, 0, '2017-01-07 14:31:29', NULL),
(130, 351, 3, NULL, 0, '2017-01-07 14:31:40', NULL),
(131, 350, 3, NULL, 0, '2017-01-07 14:31:56', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `s_transaction`
--

CREATE TABLE `s_transaction` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `totalAmount` double NOT NULL,
  `profit` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transaction_cost`
--

CREATE TABLE `transaction_cost` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `branch_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `name`, `language`, `updated`, `phoneNumber`, `image`) VALUES
(1, 3, 'super-admin', 'super-admin', 'super-admin@domain.com', 'super-admin@domain.com', 1, NULL, '$2y$13$mu8o550JtuH2cZgmdJx15uf5iEzYFI4z.gmGIt4.Z9vrhf92oVAai', '2017-01-08 20:59:02', 'xjbrYpt0_jyU4nMR6M1y3RptJjKc7bMK719i0qGQsS8', '2016-12-17 17:21:45', 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', NULL, 'en_GB', '2017-01-08 20:59:02', NULL, 'jpeg'),
(2, 4, 'admin', 'admin', 'admin@domain.com', 'admin@domain.com', 1, NULL, '$2y$13$4.iccPJYIiqtxlLwcI5DoeTB6QsRaGienkFCF0xcXgaob8maaRO7y', '2016-12-23 11:09:53', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', NULL, 'fr', NULL, NULL, NULL),
(3, 3, 'saint-cyr', 'saint-cyr', 'mapoukacyr@yahoo.fr', 'mapoukacyr@yahoo.fr', 1, NULL, '$2y$13$dyms5koeDddNQ21mM5sbiObwFfr9YS9.D0JNKHtAmTyVNGYik4j6W', '2016-12-19 16:16:51', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', NULL, 'en_GB', NULL, NULL, NULL),
(4, 3, 'charles', 'charles', 'charles@yahoofr', 'charles@yahoofr', 1, NULL, '$2y$13$JSHSKga6n5AJbDWCm5zRsOBGms8aRbYWCA/1r3GqzeGdIuBHkdjCG', '2016-12-22 13:38:06', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'issiene', 'fr', NULL, NULL, NULL),
(5, 4, 'herve', 'herve', 'patrickngono@ymail.com', 'patrickngono@ymail.com', 1, NULL, '$2y$13$WMmhaEX37HhJ5NvscLddVOO269lyAiQdARZYPiSjQfKD65AKnolu6', '2017-01-06 10:17:31', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_SELLER";}', 'HERVE', NULL, '2017-01-06 10:17:34', '674872055', 'jpeg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_64C19C15E237E06` (`name`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_81398E09C53D045F` (`image`);

--
-- Index pour la table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D4A5FEBDCD6CC49` (`branch_id`);

--
-- Index pour la table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D34A04AD5E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_D34A04AD97AE0266` (`barcode`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `p_transaction`
--
ALTER TABLE `p_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E54BC0053E8901FA` (`stransaction_id`),
  ADD KEY `IDX_E54BC0054584665A` (`product_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4B3656604584665A` (`product_id`),
  ADD KEY `IDX_4B365660DCD6CC49` (`branch_id`);

--
-- Index pour la table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `s_transaction`
--
ALTER TABLE `s_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5F152788DCD6CC49` (`branch_id`),
  ADD KEY `IDX_5F152788A76ED395` (`user_id`);

--
-- Index pour la table `transaction_cost`
--
ALTER TABLE `transaction_cost`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`),
  ADD KEY `IDX_8D93D649DCD6CC49` (`branch_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;
--
-- AUTO_INCREMENT pour la table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `p_transaction`
--
ALTER TABLE `p_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT pour la table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `s_transaction`
--
ALTER TABLE `s_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `transaction_cost`
--
ALTER TABLE `transaction_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `expenditure`
--
ALTER TABLE `expenditure`
  ADD CONSTRAINT `FK_8D4A5FEBDCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `FK_E54BC0053E8901FA` FOREIGN KEY (`stransaction_id`) REFERENCES `s_transaction` (`id`),
  ADD CONSTRAINT `FK_E54BC0054584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `FK_4B3656604584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_4B365660DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

--
-- Contraintes pour la table `s_transaction`
--
ALTER TABLE `s_transaction`
  ADD CONSTRAINT `FK_5F152788A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_5F152788DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
