-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Décembre 2016 à 23:21
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
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `createdAt`) VALUES
(5, 'CONSOMABLE INFORMATIQUE', '2016-12-17 16:58:23'),
(6, 'SECRETARIAT', '2016-12-19 15:17:20'),
(7, 'UNCATEGORIZED', '2016-12-19 19:25:21');

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
  `WholeSalePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `updated`, `image`, `name`, `barcode`, `unitPrice`, `WholeSalePrice`) VALUES
(73, 6, '2016-12-19 15:47:11', NULL, 'Agenda grand', '2296351682789', 700, 700),
(74, 6, '2016-12-19 15:18:03', NULL, 'Agenda petit', '4588398801896', 0, 0),
(75, 6, '2016-12-19 15:18:21', NULL, 'Agrafe grand', '9971802817960', 0, 0),
(76, 5, '2016-12-22 13:38:06', NULL, 'Clé USB 4G', '6462830673837', 4000, 0),
(77, 5, '2016-12-19 15:18:54', NULL, 'Clé USB 8Go', '9870595574721', 0, 0),
(78, 6, '2016-12-19 15:42:59', NULL, 'Agrafeuse', '8280429046236', 0, 0),
(79, 6, '2016-12-19 15:22:02', NULL, 'Agrafe bebe', '5808514172645', 0, 0),
(80, 5, '2016-12-19 15:22:23', NULL, 'Clé USB  16 Go', '1396582244156', 0, 0),
(81, 5, '2016-12-19 15:22:40', NULL, 'Clé Bluetooth', '8620809936129', 0, 0),
(82, 6, '2016-12-19 15:23:30', NULL, 'Clé  internet', '8669498330398', 0, 0),
(83, 7, '2016-12-22 13:44:55', NULL, 'Antenne 700', '7147534014049', 700, 0),
(84, 6, '2016-12-19 15:23:00', NULL, 'Clavier  option', '5055539835739', 0, 0),
(85, 6, '2016-12-19 15:24:18', NULL, 'Clavier  Occasion', '8642004699611', 0, 0),
(86, 6, '2016-12-19 15:24:40', NULL, 'Clips  petit', '3819142725476', 0, 0),
(87, 6, '2016-12-19 15:24:59', NULL, 'Clips  grand', '8383883617952', 0, 0),
(88, 6, '2016-12-19 15:26:02', NULL, 'Corrector', '2051145656933', 0, 0),
(89, 6, '2016-12-19 15:26:23', NULL, 'corrector  en  tube', '7061776819703', 0, 0),
(90, 5, '2016-12-19 15:26:41', NULL, 'Clé  memo  blanche', '9256682131835', 0, 0),
(91, 6, '2016-12-19 15:26:59', NULL, 'Colle  en  tube  grand', '1586593731892', 0, 0),
(92, 6, '2016-12-19 15:27:36', NULL, 'Colle  grande', '7644035855383', 0, 0),
(93, 6, '2016-12-19 23:19:09', 'jpeg', 'Baffle   d      ordinateur', '4929908020228', 0, 0),
(94, 6, '2016-12-19 15:28:54', NULL, 'Colle  moyenne', '6700983223403', 0, 0),
(95, 6, '2016-12-19 15:29:14', NULL, 'Colle  plus  petit', '5556146767410', 0, 0),
(96, 6, '2016-12-19 15:29:33', NULL, 'Courier  A&D', '7973652020236', 0, 0),
(97, 6, '2016-12-19 15:29:53', NULL, 'bande scotch', '6329034808414', 0, 0),
(98, 6, '2016-12-19 15:30:14', NULL, 'Connecteur', '1268622773602', 0, 0),
(99, 6, '2016-12-19 15:30:33', NULL, 'Corde', '1739713468888', 0, 0),
(100, 6, '2016-12-19 15:30:52', NULL, 'Crayon  spécial', '1000731116700', 0, 0),
(101, 6, '2016-12-19 15:31:09', NULL, 'Crayon  simple', '2723159731781', 0, 0),
(102, 6, '2016-12-19 15:31:27', NULL, 'Crayon  de  couleur', '7167859677859', 0, 0),
(103, 5, '2016-12-19 15:31:52', NULL, 'Barrette de rame 128 mo', '3699159344880', 0, 0),
(104, 6, '2016-12-19 15:32:17', NULL, 'Craie  blanche', '2454132981033', 0, 0),
(105, 6, '2016-12-19 15:32:55', NULL, 'Craie  de  couleur', '7405243616106', 0, 0),
(106, 6, '2016-12-19 15:33:32', NULL, 'Barrette de rame 256 mo', '6076742732069', 0, 0),
(107, 6, '2016-12-19 15:33:56', NULL, 'Barette de ram 512', '2666979228434', 0, 0),
(108, 5, '2016-12-19 15:34:35', NULL, 'Disque  dur  IDE 80  mix', '1957247239317', 0, 0),
(109, 6, '2016-12-19 15:35:11', NULL, 'barrette 1Go', '9859055114086', 0, 0),
(110, 6, '2016-12-19 15:35:37', NULL, 'Barrette de rame2Go', '5704780595982', 0, 0),
(111, 6, '2016-12-19 15:36:46', NULL, 'Barrette de rame 4Go', '9500885211642', 0, 0),
(112, 5, '2016-12-19 15:37:58', NULL, 'Disque  dur  160g', '3461522978123', 0, 0),
(113, 5, '2016-12-19 15:43:42', NULL, 'Disque  dur  inter  iDE 20g', '2324107397365', 0, 0),
(114, 5, '2016-12-22 13:42:46', NULL, 'DVD  simple', '9441146561380', 200, 0),
(115, 5, '2016-12-19 15:44:54', NULL, 'DVD  imprimable', '8724335453888', 0, 0),
(116, 6, '2016-12-19 15:45:48', NULL, 'Barrette d e rame laptop251', '8615818322275', 0, 0),
(117, 5, '2016-12-19 15:46:14', NULL, 'Disque  dur   320/250', '7786997282861', 0, 0),
(118, 5, '2016-12-19 15:46:38', NULL, 'Disque  dur  inter IDE  40g', '3795075127148', 0, 0),
(119, 6, '2016-12-19 15:47:03', NULL, 'Barrette de rame 1G', '0984395639344', 0, 0),
(120, 6, '2016-12-22 13:49:09', NULL, 'Ecouteur  simple  2000', '1610360547956', 2000, 0),
(121, 6, '2016-12-22 13:56:45', NULL, 'Ecouteur  MP3 Micro', '4249816052558', 5000, 0),
(122, 6, '2016-12-19 15:48:21', NULL, 'Enveloppe A3', '7989525506705', 0, 0),
(123, 6, '2016-12-19 15:48:59', NULL, 'Barrette de rame laptop 2G', '0044737943254', 0, 0),
(124, 6, '2016-12-19 15:49:34', NULL, 'Enveloppe  A4', '6981485364856', 0, 0),
(125, 6, '2016-12-19 15:50:02', NULL, 'Enveloppe A5', '5356685359715', 0, 0),
(126, 6, '2016-12-19 15:50:32', NULL, 'Enveloppe  de  50f', '1711818232722', 0, 0),
(127, 5, '2016-12-19 15:54:01', NULL, 'Encrier', '5975254526245', 0, 0),
(128, 5, '2016-12-19 15:54:26', NULL, 'Encre  pour  encrier', '2490105143188', 0, 0),
(129, 6, '2016-12-19 15:54:49', NULL, 'Barrette de  rame laptop4G', '1834710805994', 0, 0),
(130, 6, '2016-12-19 15:55:20', NULL, 'Emballage  CD', '5113109956339', 0, 0),
(131, 6, '2016-12-19 15:55:48', NULL, 'Epingle', '0013279313555', 0, 0),
(132, 6, '2016-12-19 15:56:12', NULL, 'Fronde', '8785245638599', 0, 0),
(133, 5, '2016-12-19 15:56:39', NULL, 'batterie laptop', '4822175596921', 0, 0),
(134, 6, '2016-12-19 15:57:03', NULL, 'Format  couleur', '0654245801986', 0, 0),
(135, 6, '2016-12-19 15:57:30', NULL, 'Grande  pochette', '0038513683267', 0, 0),
(136, 5, '2016-12-22 14:06:40', NULL, 'LECT', '3798440339702', 2500, 0),
(137, 5, '2016-12-19 15:59:05', NULL, 'cable son', '9248075596697', 0, 0),
(138, 5, '2016-12-22 14:08:49', NULL, 'Lecteur  Carte  500', '0794511089860', 500, 0),
(139, 5, '2016-12-22 14:20:11', NULL, 'Lecteur  carte  1000', '9163611818842', 1000, 0),
(140, 5, '2016-12-19 16:00:43', NULL, 'Cable video', '4562848079053', 0, 0),
(141, 5, '2016-12-19 15:53:34', NULL, 'Lecteur  graveur  DVD', '4219663512812', 0, 0),
(142, 5, '2016-12-19 16:01:12', NULL, 'Lecteur  simple  DVD', '7423830706205', 0, 0),
(143, 5, '2016-12-19 16:01:36', NULL, 'Lecteur  CD  simple', '1952308914830', 0, 0),
(144, 5, '2016-12-19 16:01:58', NULL, 'Lecteur baladeur  MP3', '2544482026559', 0, 0),
(145, 5, '2016-12-19 16:02:25', NULL, 'Lecteur  baladeur  MP4', '3809982329147', 0, 0),
(146, 5, '2016-12-19 16:02:48', NULL, 'Multiplicateur  USB', '1861685404246', 0, 0),
(147, 5, '2016-12-22 14:23:50', 'jpeg', 'Manette  USB  4500f', '5885814275429', 4500, 0),
(148, 5, '2016-12-22 14:24:46', NULL, 'Manette  USB  de  6000f', '0149701424703', 6000, 0),
(149, 6, '2016-12-19 16:04:57', NULL, 'Marqueur  blanc', '4333641765768', 0, 0),
(150, 6, '2016-12-22 14:00:29', NULL, 'Adaptateur  Multi  prise', '2082911397989', 350, 0),
(151, 5, '2016-12-19 16:06:38', NULL, 'Micro', '7804033926355', 0, 0),
(152, 5, '2016-12-19 16:07:13', NULL, 'Nettoyeur  VCD & DVD', '5203517698955', 0, 0),
(153, 6, '2016-12-19 16:07:37', NULL, 'Porte  badge  grand  mix', '2051378767226', 0, 0),
(154, 6, '2016-12-19 16:08:05', NULL, 'Porte  badge  petit  Mix', '1806747824017', 0, 0),
(155, 6, '2016-12-19 16:08:57', NULL, 'Pile  rechargeable', '7549026194535', 0, 0),
(156, 6, '2016-12-19 16:09:27', NULL, 'Pile  Kodak  petit', '0951698269413', 0, 0),
(157, 6, '2016-12-19 16:09:51', NULL, 'pile  kodak  moyenne  100', '5456271720274', 0, 0),
(158, 6, '2016-12-19 16:10:19', NULL, 'Pile  gold  store', '5009770276994', 0, 0),
(159, 6, '2016-12-19 16:11:34', NULL, 'Pile  tuceba', '3634712417109', 0, 0),
(160, 6, '2016-12-19 16:12:08', NULL, 'Pile  vinic  grand', '6705198156619', 0, 0),
(161, 5, '2016-12-19 16:12:37', NULL, 'Pile  d''ordinateur', '7181162910462', 0, 0),
(162, 6, '2016-12-22 14:03:14', NULL, 'Papier  carton', '4477993731769', 100, 0),
(163, 6, '2016-12-19 16:13:30', NULL, 'Paragraphe 12', '2189694471355', 0, 0),
(164, 6, '2016-12-19 16:14:01', NULL, 'Pochette  cassable', '5527811361528', 0, 0),
(165, 6, '2016-12-19 16:14:28', NULL, 'Pochette  plastique', '8593290170860', 0, 0),
(166, 6, '2016-12-19 16:14:56', NULL, 'Plastique  pour  format', '5884904830336', 0, 0),
(167, 6, '2016-12-19 16:15:27', NULL, 'Pendule', '5278047078685', 0, 0),
(168, 6, '2016-12-19 16:16:05', NULL, 'Rame  de  papier', '4876939115426', 0, 0),
(169, 6, '2016-12-19 16:16:47', NULL, 'Registre  600p', '4054129351972', 0, 0),
(170, 6, '2016-12-19 16:17:16', NULL, 'Registre  400p', '0149037795021', 0, 0),
(171, 6, '2016-12-19 16:17:52', NULL, 'Registre  300p', '9408363372705', 0, 0),
(172, 6, '2016-12-19 16:18:19', NULL, 'Registre  200p', '3189678190220', 0, 0),
(173, 6, '2016-12-19 16:18:43', NULL, 'Registre  de  transmission', '9425534932303', 0, 0),
(174, 6, '2016-12-19 16:19:09', NULL, 'Sac  pour  CD', '6459716734897', 0, 0),
(175, 6, '2016-12-19 16:19:37', NULL, 'Stylo', '2100294650215', 0, 0),
(176, 6, '2016-12-19 16:20:01', NULL, 'Scotch  à  prix', '7838417078823', 0, 0),
(177, 6, '2016-12-19 16:20:26', NULL, 'scotch  Grand', '1073300297741', 0, 0),
(178, 6, '2016-12-19 16:20:50', NULL, 'scotch  petit', '6744562787267', 0, 0),
(179, 6, '2016-12-19 16:21:11', NULL, 'scotch  plus  petit', '2219314452671', 0, 0),
(180, 6, '2016-12-19 16:21:39', NULL, 'Stiples', '2196735801915', 0, 0),
(181, 6, '2016-12-22 14:04:25', NULL, 'Spiral (100)', '3255122269927', 100, 0),
(182, 6, '2016-12-22 14:05:00', NULL, 'Spiral (200)', '8959466881384', 200, 0),
(183, 6, '2016-12-19 16:23:15', NULL, 'Signature  book', '1347846418065', 0, 0),
(184, 6, '2016-12-19 16:23:43', NULL, 'Super  glue', '5400694473315', 0, 0),
(185, 5, '2016-12-19 16:24:06', NULL, 'Souris  Mix', '5773995504329', 0, 0),
(186, 5, '2016-12-22 14:06:34', NULL, 'Souris  Bluetooth', '3230619827637', 5000, 0),
(187, 5, '2016-12-19 16:25:04', NULL, 'Disque  dur  laptop', '0733921238632', 0, 0),
(188, 6, '2016-12-22 14:09:39', NULL, 'Serre  dos (100)', '0631750032595', 100, 0),
(189, 6, '2016-12-22 14:10:09', NULL, 'Serre  dos (200)', '2962565129881', 200, 0),
(190, 6, '2016-12-19 16:26:18', NULL, 'Sim  reconduct.  Mtn', '1188483564301', 0, 0),
(191, 6, '2016-12-19 16:27:03', NULL, 'SIm  reconduct  Orange', '0145834070298', 0, 0),
(192, 6, '2016-12-19 16:27:30', NULL, 'Sim  Mtn', '6575091495241', 0, 0),
(193, 6, '2016-12-19 16:28:03', NULL, 'Sim  Orange', '0742170131749', 0, 0),
(194, 6, '2016-12-19 16:04:28', NULL, 'Sim  nextell', '7210755259511', 0, 0),
(195, 6, '2016-12-22 14:15:10', NULL, 'Transparent', '8962457249145', 100, 0),
(196, 6, '2016-12-19 16:29:03', NULL, 'Téléphone', '6059313244586', 0, 0),
(197, 6, '2016-12-19 16:29:37', NULL, 'Trombone', '3961440592806', 0, 0),
(198, 6, '2016-12-19 16:30:10', NULL, 'Batterie  rechargeable', '7641485156770', 0, 0),
(199, 5, '2016-12-19 16:30:51', NULL, 'Webcam  4500', '5523302067873', 0, 0),
(200, 6, '2016-12-22 14:21:28', NULL, 'ecouteur si,ple', '3965817780747', 1000, 0),
(201, 6, '2016-12-19 16:32:07', NULL, 'Bloc  note  A5', '6398987018655', 0, 0),
(202, 6, '2016-12-19 16:32:35', NULL, 'Bloc  note  4A', '7743489164594', 0, 0),
(203, 6, '2016-12-19 16:33:06', NULL, 'Carnet  10  recus', '0047203925306', 0, 0),
(204, 6, '2016-12-19 16:33:38', NULL, 'Carnet  50  recus', '4878700857222', 0, 0),
(205, 6, '2016-12-19 16:34:13', NULL, 'Sac  app.  photo', '0281355399316', 0, 0),
(206, 6, '2016-12-19 16:34:43', NULL, 'Facturier  A4', '9662336296925', 0, 0),
(207, 6, '2016-12-19 16:35:15', NULL, 'Pile  hyniat', '0247829185206', 0, 0),
(208, 5, '2016-12-19 16:35:38', NULL, 'Encre  impriman', '1518644466780', 0, 0),
(209, 6, '2016-12-19 16:36:01', NULL, 'Encre  imprimant  grand', '8814938517066', 0, 0),
(210, 5, '2016-12-19 16:36:27', NULL, 'Encre  imprimant  en  sache', '7552921713671', 0, 0),
(211, 5, '2016-12-19 16:36:49', NULL, 'Routeur', '6524840568568', 0, 0),
(212, 5, '2016-12-19 16:37:18', NULL, 'Routeur  wifi', '7969258054521', 0, 0),
(213, 5, '2016-12-19 16:37:45', NULL, 'Alimentation  ordi', '6352576824524', 0, 0),
(214, 6, '2016-12-19 16:38:12', NULL, 'Câble  réseau', '7045967912896', 0, 0),
(215, 6, '2016-12-19 16:38:45', NULL, 'Adaptateur  sata', '6811585771533', 0, 0),
(216, 6, '2016-12-19 16:39:24', NULL, 'Adaptateur  IDE/SATA', '9460878535829', 0, 0),
(217, 6, '2016-12-19 16:39:57', NULL, 'Carte  graphique', '7472896056522', 0, 0),
(218, 6, '2016-12-19 16:40:21', NULL, 'Carte  son', '6100614970333', 0, 0),
(219, 6, '2016-12-19 16:40:48', NULL, 'Porte  clé', '5030293532754', 0, 0),
(220, 6, '2016-12-19 16:41:12', NULL, 'Keyboard  layer', '3220970318073', 0, 0),
(221, 6, '2016-12-22 14:25:52', NULL, 'Ecouteur  simple (1000)', '2797792799825', 1000, 0),
(222, 6, '2016-12-22 14:30:05', NULL, 'Chargeur  tel  simple', '5493124744743', 1000, 0),
(223, 6, '2016-12-19 16:42:40', NULL, 'Trombone  petit  pk', '3588746906109', 0, 0),
(224, 6, '2016-12-19 16:43:05', NULL, 'Chargeur  unversel', '3631433780973', 0, 0),
(225, 6, '2016-12-19 16:43:33', NULL, 'règle', '2332502744958', 0, 0),
(226, 6, '2016-12-22 14:31:03', NULL, 'Boitier  simple', '5111048032874', 500, 0),
(227, 6, '2016-12-19 16:44:23', NULL, 'Chargeur  d''origine  te', '1115639655885', 0, 0),
(228, 6, '2016-12-22 14:31:53', NULL, 'Boitier  d''origine', '2150388212710', 2000, 0),
(229, 6, '2016-12-19 16:45:11', NULL, 'Batterie  simple  tel', '0965992102667', 0, 0),
(230, 6, '2016-12-19 16:45:35', NULL, 'Batterie  d''origine  tel', '6329640456765', 0, 0),
(231, 6, '2016-12-19 16:46:05', NULL, 'cordon  d''origine', '2992665744997', 0, 0),
(232, 6, '2016-12-19 16:46:29', NULL, 'Cordon  simple', '6502476974168', 0, 0),
(233, 5, '2016-12-19 16:47:02', NULL, 'Disque  laptop  160Go', '7200925865312', 0, 0),
(234, 6, '2016-12-19 16:47:25', NULL, 'Chargeur  tablette', '4933907220937', 0, 0),
(235, 6, '2016-12-19 16:47:58', NULL, 'Régulateur  de  la  tension', '6906538374639', 0, 0),
(236, 6, '2016-12-19 16:48:25', NULL, 'Papier à  plstification', '3564477337957', 0, 0),
(237, 6, '2016-12-19 16:48:50', NULL, 'Papier  calque', '4075414341708', 0, 0),
(238, 6, '2016-12-19 16:50:13', NULL, 'Trombone  plus  grand', '7208787641344', 0, 0),
(239, 5, '2016-12-19 16:50:35', NULL, 'Clé wifi', '6964937697230', 0, 0),
(240, 6, '2016-12-19 16:51:11', NULL, 'mp3', '0961253340828', 0, 0),
(241, 6, '2016-12-19 16:51:34', NULL, 'mp4', '3142595592309', 0, 0),
(242, 6, '2016-12-19 16:51:57', NULL, 'Casque  simple', '6965550985670', 0, 0),
(243, 6, '2016-12-19 16:52:17', NULL, 'Chargeur  i  phone', '0612890043063', 0, 0),
(245, 6, '2016-12-19 16:53:02', NULL, 'rallonge', '3681404564892', 0, 0),
(246, 5, '2016-12-19 16:53:21', NULL, 'Clé  USB 120Go', '0535677787536', 0, 0),
(247, 6, '2016-12-19 16:53:44', NULL, 'tablettes', '2971802215911', 0, 0),
(248, 5, '2016-12-19 16:54:08', NULL, 'Disque  laptop 120Go', '2601679273467', 0, 0),
(249, 6, '2016-12-19 16:54:30', NULL, 'Adaptateur  DVI', '9435237103839', 0, 0),
(250, 5, '2016-12-19 16:54:54', NULL, 'Disque  laptop  320Go', '6753119301830', 0, 0),
(251, 6, '2016-12-19 16:55:17', NULL, 'Boite  de  tournevis', '6136426436674', 0, 0),
(252, 6, '2016-12-19 16:55:42', NULL, 'Câble  d''alim (1000)', '2052062932482', 0, 0),
(253, 6, '2016-12-19 16:56:04', NULL, 'Câble  d''alimentation', '0813687935092', 0, 0),
(254, 5, '2016-12-19 16:56:34', NULL, 'Câble  USB  pour  imprimante', '3773067810546', 0, 0),
(255, 5, '2016-12-19 16:56:59', NULL, 'Câble  USB - USB', '4916352437856', 0, 0),
(256, 6, '2016-12-19 16:57:23', NULL, 'Cable  VGA', '7336389914583', 0, 0),
(257, 6, '2016-12-19 16:57:48', NULL, 'Cahier', '7940112028308', 0, 0),
(258, 6, '2016-12-19 16:58:14', NULL, 'Calculatrice  scientifique', '7788419449777', 0, 0),
(259, 6, '2016-12-19 16:59:52', NULL, 'Calculatrice  grande', '7726941032152', 0, 0),
(260, 6, '2016-12-19 17:00:21', NULL, 'Calculatrice  moyenne', '8218312889249', 0, 0),
(261, 6, '2016-12-19 17:00:49', NULL, 'Calculatrice  petit', '0098995368923', 0, 0),
(262, 6, '2016-12-19 17:10:04', NULL, 'Carnet  plus  petit (800)', '6036067898583', 0, 0),
(263, 6, '2016-12-19 17:10:29', NULL, 'Carnet  petit  de  reçu (100p)', '7310669806000', 0, 0),
(264, 6, '2016-12-19 17:11:12', NULL, 'Carnet  plus  petit (50 p)', '3921870071672', 0, 0),
(265, 6, '2016-12-19 17:11:35', NULL, 'carnet  avec  carbone', '5942848796333', 0, 0),
(266, 6, '2016-12-19 17:11:59', NULL, 'carnet 1/3 manifold', '3980684581604', 0, 0),
(267, 6, '2016-12-19 17:12:26', NULL, 'Carte  app  photo  2Go', '7938616066681', 0, 0),
(268, 6, '2016-12-19 17:12:51', NULL, 'Carte  app  photo  4G', '0481033774700', 0, 0),
(269, 6, '2016-12-19 17:13:16', NULL, 'Carte  app  photo 8Go', '6103215024440', 0, 0),
(270, 6, '2016-12-19 17:34:32', NULL, 'Carte  mémoire  1Go', '0726070123557', 0, 0),
(271, 6, '2016-12-19 17:34:56', NULL, 'Carte  mémoire  2Go', '0493407662096', 0, 0),
(272, 6, '2016-12-19 17:35:20', NULL, 'Carte  mémoire  4Go', '2066004017078', 0, 0),
(273, 6, '2016-12-19 17:35:44', NULL, 'Carte  mémoire  8G', '9991763887182', 0, 0),
(274, 6, '2016-12-19 17:36:14', NULL, 'Carte  mémoire 16G', '8976000481623', 0, 0),
(275, 6, '2016-12-19 17:36:39', NULL, 'Carte  mémoire 32G', '5255529944105', 0, 0),
(276, 6, '2016-12-19 17:37:01', NULL, 'Carte  mémoire  SONY', '4505672617847', 0, 0),
(277, 6, '2016-12-19 17:37:24', NULL, 'Carbone', '2965073013155', 0, 0),
(278, 6, '2016-12-19 17:37:47', NULL, 'Carte TV', '1688628590188', 0, 0),
(279, 6, '2016-12-19 17:38:18', NULL, 'Casque', '9918340389679', 0, 0),
(280, 6, '2016-12-22 13:30:49', NULL, 'Casque  Mp3', '2492183472729', 5000, 0),
(281, 6, '2016-12-19 17:39:02', NULL, 'Casque  Bluetooth', '5489749644147', 0, 0),
(282, 5, '2016-12-22 13:33:38', NULL, 'CD Simple', '4306780475834', 150, 0),
(283, 5, '2016-12-19 17:40:54', NULL, 'CD  avec  Etui', '8818586864015', 0, 0),
(284, 6, '2016-12-19 17:42:13', NULL, 'chargeur  multi  tete', '6512540763933', 0, 0),
(285, 6, '2016-12-19 17:42:43', NULL, 'chargeur  app  numérique', '5733103850336', 0, 0),
(286, 6, '2016-12-19 17:43:09', NULL, 'Chargeur  pile  rechargeable', '8300009833214', 0, 0),
(287, 5, '2016-12-19 17:43:37', NULL, 'Chargeur  de  laptop', '8798989489224', 0, 0),
(288, 6, '2016-12-19 17:44:00', NULL, 'Chemise  cartonné', '7258188493565', 0, 0),
(289, 6, '2016-12-19 17:44:28', NULL, 'Classeur  plastique  1500', '1478578681300', 0, 0),
(290, 6, '2016-12-19 17:44:53', NULL, 'Classeur  plastique  2500', '3179405027401', 0, 0),
(291, 6, '2016-12-19 17:45:28', NULL, 'Clé  USB 32Go', '9492091928482', 0, 0),
(293, NULL, '2016-12-22 13:35:56', NULL, 'Clé USB 2Go', '6820617806703', 2500, 0),
(294, NULL, '2016-12-22 13:40:54', NULL, 'Clavier neuf', '8264862269033', 5000, 0),
(295, NULL, '2016-12-22 14:07:33', NULL, 'Souris simple', '2149157335578', 2000, 0),
(296, NULL, NULL, NULL, 'Pile micro', '5499319362715', 0, 0),
(297, NULL, NULL, NULL, 'TEST', '9097016887347', 0, 0),
(298, 7, NULL, NULL, 'antenne', '9798182255604', 1000, 0);

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
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stock`
--

INSERT INTO `stock` (`id`, `product_id`, `branch_id`, `name`, `value`, `createdAt`) VALUES
(20, 83, 3, NULL, 0, '2016-12-19 19:36:03'),
(21, 137, 3, NULL, 0, '2016-12-19 19:36:34'),
(22, 252, 3, NULL, 0, '2016-12-19 19:36:59'),
(23, 255, 3, NULL, 0, '2016-12-19 19:37:46'),
(24, 280, 3, NULL, 0, '2016-12-19 19:39:44'),
(25, 282, 3, NULL, 0, '2016-12-19 19:42:36'),
(26, 293, 3, NULL, 0, '2016-12-19 19:53:32'),
(27, 76, 3, NULL, 0, '2016-12-19 19:54:31'),
(28, 114, 3, NULL, 0, '2016-12-19 19:58:18'),
(29, 120, 3, NULL, 0, '2016-12-19 19:59:10'),
(30, 121, 3, NULL, 0, '2016-12-19 19:59:41'),
(31, 136, 3, NULL, 0, '2016-12-19 20:00:04'),
(32, 138, 3, NULL, 0, '2016-12-19 20:00:19'),
(33, 139, 3, NULL, 0, '2016-12-19 20:00:50'),
(34, 146, 3, NULL, 0, '2016-12-19 20:01:06'),
(35, 147, 3, NULL, 0, '2016-12-19 20:01:30'),
(36, 148, 3, NULL, 0, '2016-12-19 20:01:56'),
(37, 150, 3, NULL, 0, '2016-12-19 20:04:33'),
(38, 162, 3, NULL, 0, '2016-12-19 20:04:56'),
(39, 181, 3, NULL, 0, '2016-12-19 20:05:28'),
(40, 182, 3, NULL, 0, '2016-12-19 20:06:21'),
(41, 186, 3, NULL, 0, '2016-12-19 20:06:55'),
(42, 188, 3, NULL, 0, '2016-12-19 20:08:22'),
(43, 189, 3, NULL, 0, '2016-12-19 20:08:36'),
(44, 195, 3, NULL, 0, '2016-12-19 20:09:07'),
(45, 296, 3, NULL, 0, '2016-12-19 20:11:16'),
(46, 221, 3, NULL, 0, '2016-12-19 20:13:46'),
(47, 222, 3, NULL, 0, '2016-12-19 20:14:05'),
(48, 226, 3, NULL, 0, '2016-12-19 20:14:38'),
(49, 227, 3, NULL, 0, '2016-12-19 20:15:27'),
(50, 228, 3, NULL, 0, '2016-12-19 20:15:48'),
(51, 229, 3, NULL, 0, '2016-12-19 20:16:42'),
(52, 230, 3, NULL, 0, '2016-12-19 20:17:03'),
(53, 231, 3, NULL, 0, '2016-12-19 20:17:25'),
(54, 242, 3, NULL, 0, '2016-12-19 20:17:44'),
(55, 245, 3, NULL, 0, '2016-12-19 20:18:05');

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
  `profit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `s_transaction`
--

INSERT INTO `s_transaction` (`id`, `branch_id`, `createdAt`, `totalAmount`, `profit`) VALUES
(59, 3, '2016-12-19 16:32:26', 0, NULL),
(60, 3, '2016-12-19 16:32:41', 700, NULL),
(61, 3, '2016-12-19 16:34:26', 8400, NULL),
(62, 3, '2016-12-19 16:50:46', 700, NULL),
(63, 3, '2016-12-19 17:07:00', 0, NULL),
(64, 3, '2016-12-19 19:29:46', 0, NULL),
(65, 3, '2016-12-19 19:29:56', 0, NULL),
(66, 3, '2016-12-19 19:32:17', 0, NULL),
(67, 3, '2016-12-19 19:33:49', 0, NULL),
(68, 3, '2016-12-19 20:19:54', 0, NULL);

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
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `branch_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `name`, `language`) VALUES
(1, 3, 'super-admin', 'super-admin', 'super-admin@domain.com', 'super-admin@domain.com', 1, NULL, '$2y$13$mu8o550JtuH2cZgmdJx15uf5iEzYFI4z.gmGIt4.Z9vrhf92oVAai', '2016-12-22 19:00:31', 'xjbrYpt0_jyU4nMR6M1y3RptJjKc7bMK719i0qGQsS8', '2016-12-17 17:21:45', 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', NULL, 'en_GB'),
(2, 4, 'admin', 'admin', 'admin@domain.com', 'admin@domain.com', 1, NULL, '$2y$13$4.iccPJYIiqtxlLwcI5DoeTB6QsRaGienkFCF0xcXgaob8maaRO7y', '2016-12-19 17:33:51', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', NULL, 'fr'),
(3, 3, 'saint-cyr', 'saint-cyr', 'mapoukacyr@yahoo.fr', 'mapoukacyr@yahoo.fr', 1, NULL, '$2y$13$dyms5koeDddNQ21mM5sbiObwFfr9YS9.D0JNKHtAmTyVNGYik4j6W', '2016-12-19 16:16:51', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', NULL, 'en_GB'),
(4, 3, 'charles', 'charles', 'charles@yahoofr', 'charles@yahoofr', 1, NULL, '$2y$13$JSHSKga6n5AJbDWCm5zRsOBGms8aRbYWCA/1r3GqzeGdIuBHkdjCG', '2016-12-22 13:38:06', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'issiene', 'fr');

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
  ADD KEY `IDX_5F152788DCD6CC49` (`branch_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `s_transaction`
--
ALTER TABLE `s_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT pour la table `transaction_cost`
--
ALTER TABLE `transaction_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  ADD CONSTRAINT `FK_5F152788DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
