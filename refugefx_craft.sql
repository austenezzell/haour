-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2017 at 06:27 PM
-- Server version: 5.6.34
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `refugefx_craft`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfiles`
--

CREATE TABLE IF NOT EXISTS `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(31, 1, 1, 'carousel-0.jpg', 'image', 1000, 667, 399177, '2016-12-21 23:50:50', '2016-12-20 22:08:45', '2016-12-21 23:50:54', 'ef7e81b5-0af4-4215-9374-344f89fc29dd'),
(40, 1, 1, 'pnw.jpg', 'image', 2500, 1667, 713623, '2016-12-28 22:32:48', '2016-12-28 22:32:56', '2016-12-28 22:32:56', 'fc47d27b-f0ae-4275-964a-619538349623'),
(45, 1, 1, 'Mobile-Intro-Image.PNG', 'image', 1624, 912, 692192, '2016-12-29 05:36:13', '2016-12-29 05:36:13', '2016-12-29 05:36:13', 'f9032801-35e1-4a3f-83c5-fecdd262ee73'),
(46, 1, 1, 'El-Talbador.jpg', 'image', 1275, 718, 89194, '2017-01-03 08:35:26', '2016-12-29 05:45:53', '2017-01-03 08:35:26', 'c22e94cd-6b43-4154-9fdc-ae6f673c4fac'),
(48, 1, 1, 'Stella-BB-Service.PNG', 'image', 1280, 718, 977559, '2016-12-29 06:02:30', '2016-12-29 06:02:30', '2016-12-29 06:02:30', '922a6bda-e09d-4145-b006-53c5a1766054'),
(49, 1, 1, 'Rat-King-BTS-02.PNG', 'image', 1558, 835, 1006498, '2016-12-29 06:09:38', '2016-12-29 06:09:39', '2016-12-29 06:09:39', 'e3bfb96f-8d4a-49ae-b1ca-f27602d86760'),
(50, 1, 1, 'DSC00793-copy.jpg', 'image', 1920, 1080, 1507762, '2016-12-29 06:32:03', '2016-12-29 06:32:03', '2016-12-29 06:32:03', '74a6e8da-0331-4b3b-ba72-ffca896ed43d'),
(51, 1, 1, 'DSC00804-copy.jpg', 'image', 1920, 1080, 1173488, '2016-12-29 06:32:04', '2016-12-29 06:32:04', '2016-12-29 06:32:04', '3bac6866-8296-4336-af54-9be9041f90b8'),
(52, 1, 1, 'DSC00812-copy.jpg', 'image', 1920, 1080, 1751618, '2016-12-29 06:32:06', '2016-12-29 06:32:06', '2016-12-29 06:32:06', 'd8b4cf2f-6612-4333-8027-8d0a473fc714'),
(53, 1, 1, 'DSC00814-copy.jpg', 'image', 1920, 1080, 1515350, '2016-12-29 06:32:08', '2016-12-29 06:32:08', '2016-12-29 06:32:08', 'b609b3f1-da93-4740-abdf-559d9d4148e1'),
(54, 1, 1, 'DSC00816-copy.jpg', 'image', 1920, 2875, 4030763, '2016-12-29 06:32:10', '2016-12-29 06:32:11', '2016-12-29 06:32:11', '9fd5822e-b216-443c-b4df-518203dca7a9'),
(55, 1, 1, 'DSC00821-copy.jpg', 'image', 1920, 1080, 1308337, '2016-12-29 06:32:12', '2016-12-29 06:32:12', '2016-12-29 06:32:12', 'b8997e62-1d4c-4c07-9dfa-ba1886fb926b'),
(56, 1, 1, 'DSC00828-copy.jpg', 'image', 1920, 1080, 738701, '2016-12-31 02:14:16', '2016-12-29 06:32:13', '2016-12-31 02:14:16', '8145ee98-8ea9-4579-8d97-286924904934'),
(57, 1, 1, 'DSC00844-copy.jpg', 'image', 1920, 1282, 1565276, '2016-12-29 06:32:14', '2016-12-29 06:32:15', '2016-12-29 06:32:15', '46a5ab41-6a37-4cbe-b131-611dc9f1b3bd'),
(58, 1, 1, 'DSC00846-copy.jpg', 'image', 1920, 1282, 1497289, '2016-12-29 06:32:16', '2016-12-29 06:32:17', '2016-12-29 06:32:17', 'dde17126-2676-4a0f-91a0-46af55bf990e'),
(59, 1, 1, 'DSC00862-copy.jpg', 'image', 1920, 1282, 1548961, '2016-12-29 06:32:18', '2016-12-29 06:32:18', '2016-12-29 06:32:18', '9300b3c2-02b1-4994-80a4-094ad754e947'),
(60, 1, 1, 'DSC00866-copy.jpg', 'image', 1920, 2875, 3511873, '2016-12-29 06:32:20', '2016-12-29 06:32:20', '2016-12-29 06:32:20', '5610b673-2f24-4174-892d-b969413baeb1'),
(61, 1, 1, 'DSC00867-copy.jpg', 'image', 1920, 2875, 4177381, '2016-12-29 06:32:23', '2016-12-29 06:32:24', '2016-12-29 06:32:24', '0e3debe5-a1df-4c17-86b4-42b7ea71e96c'),
(62, 1, 1, 'DSC00870-copy.jpg', 'image', 1920, 1282, 1620881, '2016-12-29 06:32:25', '2016-12-29 06:32:26', '2016-12-29 06:32:26', '89512688-a17b-49eb-91d5-cddd8838f492'),
(63, 1, 1, 'DSC00874-copy.jpg', 'image', 1920, 1282, 1465223, '2016-12-29 06:32:27', '2016-12-29 06:32:27', '2016-12-29 06:32:27', 'd519dfc2-baee-438d-9e40-9b3473ce1978'),
(64, 1, 1, 'DSC00881-copy.jpg', 'image', 1920, 1282, 1688386, '2016-12-29 06:32:28', '2016-12-29 06:32:28', '2016-12-29 06:32:28', 'c1789edc-4f5d-41d8-9d1d-e9aacaa015c7'),
(65, 1, 1, 'DSC00884-copy.jpg', 'image', 1920, 1282, 1930974, '2016-12-29 06:32:30', '2016-12-29 06:32:30', '2016-12-29 06:32:30', '26dc44a5-a6e4-4740-8aa1-c2fc7b00123f'),
(66, 1, 1, 'DSC00886-copy.jpg', 'image', 1920, 1282, 1761247, '2016-12-29 06:32:32', '2016-12-29 06:32:32', '2016-12-29 06:32:32', '0c26c4c6-3ffb-464e-8c2b-f8467ba727d3'),
(67, 1, 1, 'DSC00886.jpg', 'image', 1920, 1282, 1761237, '2016-12-29 06:32:33', '2016-12-29 06:32:33', '2016-12-29 06:32:33', 'e7245bec-b4fa-4767-b52d-df026be9e1cc'),
(70, 1, 1, 'Grimm-Title.jpg', 'image', 1622, 914, 337049, '2017-01-03 08:35:13', '2016-12-29 07:39:37', '2017-01-03 08:35:14', 'cfb5c7c8-aab3-4f7e-a09b-3da66560b202'),
(71, 1, 1, 'Mobile-Intro-Image_v02.png', 'image', 1920, 1080, 1380542, '2016-12-29 21:18:03', '2016-12-29 21:18:03', '2016-12-29 21:18:03', '2c165f66-3279-4b19-84e5-d34a5c87bb03'),
(72, 1, 1, 'DeerSkull-GasMask.jpg', 'image', 1920, 1080, 1417007, '2016-12-31 02:12:03', '2016-12-31 02:10:37', '2016-12-31 02:12:03', '3f6adf4a-30ba-4449-a7f8-c1e0e18a32ca'),
(73, 1, 1, 'Hydrus-Egg.jpg', 'image', 1920, 1080, 1448678, '2016-12-31 02:10:40', '2016-12-31 02:10:40', '2016-12-31 02:10:40', '9b8388cc-fef0-4d90-83e2-6e8d011bf6f1'),
(77, 1, 1, 'RefugeMetal.jpg', 'image', 1920, 1080, 712204, '2016-12-31 02:17:40', '2016-12-31 02:14:50', '2016-12-31 02:17:41', '656722ff-498b-4466-9a1a-23062f296d47'),
(79, 1, 1, 'Hydrus-Egg-2.jpg', 'image', 893, 1080, 772521, '2016-12-31 02:26:55', '2016-12-31 02:26:56', '2016-12-31 02:26:56', '29a70b82-fa32-487a-8a06-34dde41ec8eb'),
(80, 1, 1, 'RefugeMetal-2.jpg', 'image', 1920, 843, 623424, '2016-12-31 02:29:10', '2016-12-31 02:29:10', '2016-12-31 02:29:10', '02f77905-2e21-495e-af37-7a3af985295a'),
(81, 1, 1, 'Team-Carousel_v01__0000_04.jpg', 'image', 1920, 1000, 316187, '2016-12-31 04:58:04', '2016-12-31 04:58:04', '2016-12-31 04:58:04', '82caaaf5-91f4-4a20-93c4-5f7241debaff'),
(82, 1, 1, 'Team-Carousel_v01__0001_03.jpg', 'image', 1920, 1000, 388167, '2016-12-31 04:58:06', '2016-12-31 04:58:07', '2016-12-31 04:58:07', '6b84f83e-4444-414c-959f-eca38824c67d'),
(83, 1, 1, 'Team-Carousel_v01__0002_02.jpg', 'image', 1920, 1000, 312703, '2016-12-31 04:58:08', '2016-12-31 04:58:08', '2016-12-31 04:58:08', '63271591-ff5c-4485-943e-220c971b2002'),
(84, 1, 1, 'Team-Carousel_v01__0003_01.jpg', 'image', 1920, 1000, 358379, '2016-12-31 04:58:10', '2016-12-31 04:58:10', '2016-12-31 04:58:10', 'a54bdbc7-b774-4fe4-8953-497ac0ea7cc5'),
(85, 1, 1, 'Team-Carousel_v01__0004_00.jpg', 'image', 1920, 1000, 401847, '2016-12-31 04:58:12', '2016-12-31 04:58:12', '2016-12-31 04:58:12', '2593cea7-4832-4a3e-8b6a-fc2bcb49e85e'),
(87, 1, 1, 'Rat-King-BTS.PNG', 'image', 1437, 805, 1225646, '2017-01-03 08:32:46', '2017-01-03 08:32:46', '2017-01-03 08:32:46', '9c84b596-ed9e-403c-b5de-dce1f55a4c50'),
(88, 1, 1, 'Rat-King.PNG', 'image', 1477, 834, 858467, '2017-01-03 08:32:48', '2017-01-03 08:32:49', '2017-01-03 08:32:49', '8ef06bf7-8596-4b76-aa84-c50cfc47861f'),
(92, 1, 1, 'Team-Carousel_v02_0000_04.png', 'image', 1920, 1000, 1795494, '2017-01-03 21:59:10', '2017-01-03 21:59:12', '2017-01-03 21:59:12', 'c509eec7-8624-485f-9a11-3ca9f4013290'),
(93, 1, 1, 'Last-Knights.jpg', 'image', 1623, 913, 104994, '2017-01-04 03:59:44', '2017-01-04 03:58:01', '2017-01-04 03:59:46', '0b044114-83e6-4489-a63c-8323661fe4bb'),
(95, 1, 1, 'Team-Carousel_v03_0002_05.png', 'image', 1920, 1000, 1783302, '2017-01-04 04:03:13', '2017-01-04 04:03:13', '2017-01-04 04:03:13', '16e381ef-873d-49e5-863f-434fbddb02de'),
(96, 1, 1, 'Team-Carousel_v03_0001_06.png', 'image', 1920, 1000, 1532326, '2017-01-04 04:05:12', '2017-01-04 04:05:12', '2017-01-04 04:05:12', 'f915e105-8783-41e0-98e1-544b99196e1d'),
(97, 1, 1, 'Team-Carousel_v03_0000_07.png', 'image', 1920, 1000, 2333017, '2017-01-04 04:06:19', '2017-01-04 04:06:19', '2017-01-04 04:06:19', '4dff8cfe-b4fd-4ac9-8942-9452a2ac7b42');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfolders`
--

CREATE TABLE IF NOT EXISTS `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'images', '', '2016-12-09 18:18:59', '2016-12-09 18:18:59', 'dee7b570-24a7-493e-8126-9d3cbd9c9988');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE IF NOT EXISTS `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetsources`
--

CREATE TABLE IF NOT EXISTS `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'images', 'images', 'Local', '{"path":".\\/{baseAssetPath}img\\/","publicURLs":"1","url":"{baseAssetUrl}\\/img\\/"}', 1, 42, '2016-12-09 18:18:59', '2016-12-28 22:32:25', '7e6a6a33-70a9-4bac-9204-397c98e161f0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE IF NOT EXISTS `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=68 ;

--
-- Dumping data for table `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(22, 31, 'carousel-0.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-22 00:49:17', '2016-12-22 00:49:17', '2016-12-22 00:49:18', 'f08691fb-cd6a-4feb-af92-9d34e744bc77'),
(25, 40, 'pnw.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-28 22:33:17', '2016-12-28 22:33:17', '2016-12-28 22:33:19', 'a379ec72-be8b-46ea-a479-29008ab7f7c1'),
(29, 48, 'Stella-BB-Service.PNG', NULL, '_sixteenNine', 1, 1, 0, '2016-12-29 06:11:24', '2016-12-29 06:11:24', '2016-12-29 06:11:26', 'c9c06861-60e1-424b-a701-33d73ce20d23'),
(30, 49, 'Rat-King-BTS-02.PNG', NULL, '_sixteenNine', 1, 1, 0, '2016-12-29 06:11:24', '2016-12-29 06:11:24', '2016-12-29 06:11:26', '26131ffd-f456-43ed-af59-cb4f6614afaa'),
(31, 50, 'DSC00793-copy.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-29 06:34:32', '2016-12-29 06:34:32', '2016-12-29 06:34:35', '89dcaad0-0a84-4bfb-8f66-94a9f631c93c'),
(32, 51, 'DSC00804-copy.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-29 06:34:32', '2016-12-29 06:34:32', '2016-12-29 06:34:35', '2382c181-bf57-4b7c-a0e6-8d9296761c60'),
(33, 57, 'DSC00844-copy.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-29 06:36:31', '2016-12-29 06:36:31', '2016-12-29 06:36:35', 'fd72f325-626b-4c4c-95f7-2226319e2451'),
(34, 53, 'DSC00814-copy.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-29 06:36:31', '2016-12-29 06:36:31', '2016-12-29 06:36:35', 'fec36adb-58df-49c9-9b0e-a7b28b0cd08a'),
(35, 57, 'DSC00844-copy.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-29 06:36:31', '2016-12-29 06:36:31', '2016-12-29 06:36:34', 'a862d7c6-6ec0-4612-8a10-fa595ffc2e25'),
(36, 65, 'DSC00884-copy.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-29 06:36:31', '2016-12-29 06:36:31', '2016-12-29 06:36:34', '6c116db8-7dfd-4042-9a9b-1345b2093777'),
(37, 64, 'DSC00881-copy.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-29 06:36:31', '2016-12-29 06:36:31', '2016-12-29 06:36:34', '13bfbe85-3755-49b2-beed-7802b18ab390'),
(38, 55, 'DSC00821-copy.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-29 06:37:09', '2016-12-29 06:37:09', '2016-12-29 06:37:12', '675a709a-a3ba-44cb-9998-53f9bded43d8'),
(39, 58, 'DSC00846-copy.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-29 06:38:24', '2016-12-29 06:38:24', '2016-12-29 06:38:26', 'e4178a3c-a767-4ffa-86d7-b437ed1432cd'),
(43, 52, 'DSC00812-copy.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-31 02:11:06', '2016-12-31 02:11:06', '2016-12-31 02:11:09', '622fef2f-6bdd-4974-b81e-c03e720b58b1'),
(44, 72, 'DeerSkull-GasMask.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-31 02:12:08', '2016-12-31 02:12:08', '2016-12-31 02:12:10', '44a08381-04a8-4722-9bd2-3054a7007cb1'),
(47, 77, 'RefugeMetal.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-31 02:17:53', '2016-12-31 02:17:53', '2016-12-31 02:17:55', 'cac08e9d-5c61-419e-899f-8433c3e1eb77'),
(48, 73, 'Hydrus-Egg.jpg', NULL, '_introImageCarousel', 1, 1, 0, '2016-12-31 02:27:08', '2016-12-31 02:27:08', '2016-12-31 02:27:10', '55e432d5-7ef1-4ac0-83d4-475eeccda744'),
(49, 81, 'Team-Carousel_v01__0000_04.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-31 04:58:31', '2016-12-31 04:58:31', '2016-12-31 04:58:34', '053c5f05-6556-419d-a2f4-cc4806c968ea'),
(50, 82, 'Team-Carousel_v01__0001_03.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-31 04:58:31', '2016-12-31 04:58:31', '2016-12-31 04:58:34', 'f53242b0-1aa0-4685-a730-d52ec88b7977'),
(51, 83, 'Team-Carousel_v01__0002_02.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-31 04:58:31', '2016-12-31 04:58:31', '2016-12-31 04:58:34', 'e8224fd9-db91-40d0-b3bf-f0fca1ed430b'),
(52, 84, 'Team-Carousel_v01__0003_01.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-31 04:58:31', '2016-12-31 04:58:31', '2016-12-31 04:58:34', 'd7706217-c006-4775-9f5e-f023a50cf7f2'),
(53, 85, 'Team-Carousel_v01__0004_00.jpg', NULL, '_carousel', 1, 1, 0, '2016-12-31 04:58:31', '2016-12-31 04:58:31', '2016-12-31 04:58:34', '45fedf38-bf44-49f4-9a55-10b8b5b296ae'),
(54, 81, 'Team-Carousel_v01__0000_04.jpg', NULL, '_ninteenTen', 1, 1, 0, '2017-01-01 15:57:13', '2017-01-01 15:57:13', '2017-01-01 15:57:16', 'cbeee6e0-7999-4e10-b522-d23212aa37d7'),
(55, 82, 'Team-Carousel_v01__0001_03.jpg', NULL, '_ninteenTen', 1, 1, 0, '2017-01-01 15:57:13', '2017-01-01 15:57:13', '2017-01-01 15:57:16', '10840a79-fee7-4038-a05c-c4b625809512'),
(56, 83, 'Team-Carousel_v01__0002_02.jpg', NULL, '_ninteenTen', 1, 1, 0, '2017-01-01 15:57:13', '2017-01-01 15:57:13', '2017-01-01 15:57:15', '0f9e389e-d8a8-40ce-941d-e659944daf9a'),
(57, 84, 'Team-Carousel_v01__0003_01.jpg', NULL, '_ninteenTen', 1, 1, 0, '2017-01-01 15:57:13', '2017-01-01 15:57:13', '2017-01-01 15:57:15', 'ac5ba1f9-716f-427d-b63a-b01b62b4c6d5'),
(58, 85, 'Team-Carousel_v01__0004_00.jpg', NULL, '_ninteenTen', 1, 1, 0, '2017-01-01 15:57:13', '2017-01-01 15:57:13', '2017-01-01 15:57:15', '00d3d22b-3f60-4b1a-a1f3-3982fa8c74e8'),
(59, 70, 'Grimm-Title.jpg', NULL, '_sixteenNine', 1, 1, 0, '2017-01-03 08:36:55', '2017-01-03 08:36:55', '2017-01-03 08:36:57', '685e7152-ed56-4395-b4cb-fd582f6ea5dc'),
(60, 46, 'El-Talbador.jpg', NULL, '_sixteenNine', 1, 1, 0, '2017-01-03 08:36:55', '2017-01-03 08:36:55', '2017-01-03 08:36:57', 'b7e11900-a67c-4f84-95a2-0a3932319bf4'),
(61, 87, 'Rat-King-BTS.PNG', NULL, '_sixteenNine', 1, 1, 0, '2017-01-03 08:36:55', '2017-01-03 08:36:55', '2017-01-03 08:36:58', '519d24b0-ac3f-45d0-8018-a4b661c7aade'),
(62, 92, 'Team-Carousel_v02_0000_04.png', NULL, '_ninteenTen', 1, 1, 0, '2017-01-04 00:47:27', '2017-01-04 00:47:27', '2017-01-04 00:47:29', '9aa11839-a5f5-4f7f-b612-f4c5566bbd75'),
(64, 93, 'Last-Knights.jpg', NULL, '_sixteenNine', 1, 1, 0, '2017-01-04 04:00:35', '2017-01-04 04:00:35', '2017-01-04 04:00:37', '23ab65e2-cfa1-4012-a1c9-4935179d9b87'),
(65, 95, 'Team-Carousel_v03_0002_05.png', NULL, '_ninteenTen', 1, 1, 0, '2017-01-04 04:07:32', '2017-01-04 04:07:32', '2017-01-04 04:07:35', '6a3eb552-81c6-42bf-8cc7-729b9a4dcdf5'),
(66, 96, 'Team-Carousel_v03_0001_06.png', NULL, '_ninteenTen', 1, 1, 0, '2017-01-04 04:07:32', '2017-01-04 04:07:32', '2017-01-04 04:07:35', 'f4603b8d-bf90-4890-89e3-d820e2bd1615'),
(67, 97, 'Team-Carousel_v03_0000_07.png', NULL, '_ninteenTen', 1, 1, 0, '2017-01-04 04:07:32', '2017-01-04 04:07:32', '2017-01-04 04:07:34', '3ba0c52e-8dd7-42d2-8713-ca8fb89c6897');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE IF NOT EXISTS `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_assettransforms`
--

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Carousel', 'carousel', 'crop', 'center-center', 667, 1000, NULL, 60, '2016-12-09 21:33:13', '2016-12-09 21:33:13', '2016-12-09 21:40:33', 'cfb7021c-d7ac-40f9-8498-b55a56f95340'),
(2, 'sixteen nine', 'sixteenNine', 'crop', 'center-center', 900, 1600, NULL, NULL, '2016-12-09 21:52:19', '2016-12-09 21:52:19', '2016-12-09 21:52:19', '60ea918a-94e7-480e-b108-ccf26a869696'),
(3, 'Intro Image Carousel', 'introImageCarousel', 'crop', 'center-center', 937, 2500, NULL, NULL, '2016-12-22 17:23:50', '2016-12-22 17:23:50', '2016-12-22 17:23:50', '9487d78b-35bd-44d6-a099-0de973eb5824'),
(4, 'ninteen ten', 'ninteenTen', 'crop', 'center-center', 1000, 1900, NULL, NULL, '2017-01-01 15:56:22', '2017-01-01 15:56:22', '2017-01-01 15:56:22', '46dbf7fa-6cf3-4a8a-b49a-fd9a33d55bae');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE IF NOT EXISTS `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE IF NOT EXISTS `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_introVideo` text COLLATE utf8_unicode_ci,
  `field_refugeReel` text COLLATE utf8_unicode_ci,
  `field_bodyContentHeader` text COLLATE utf8_unicode_ci,
  `field_production` text COLLATE utf8_unicode_ci,
  `field_animation` text COLLATE utf8_unicode_ci,
  `field_finishing` text COLLATE utf8_unicode_ci,
  `field_email` text COLLATE utf8_unicode_ci,
  `field_phone` text COLLATE utf8_unicode_ci,
  `field_address` text COLLATE utf8_unicode_ci,
  `field_mapUrl` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=86 ;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_introVideo`, `field_refugeReel`, `field_bodyContentHeader`, `field_production`, `field_animation`, `field_finishing`, `field_email`, `field_phone`, `field_address`, `field_mapUrl`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-08 18:40:25', '2016-12-29 03:13:05', 'c7240fbf-433a-4f48-8213-0e593bd67cc5'),
(2, 2, 'en_us', 'Home', '<p>People don’t empathize with explosions. They don’t fall in love with particles. They don’t root for rigging, or set extensions. Those may be our tools, but they’re not why we’re here. The audience comes for the characters. And we’re the ones who bring them to life.</p>', 'https://player.vimeo.com/external/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119', 'https://player.vimeo.com/external/197821599.hd.mp4?s=6ddf64964ea6c03b310e9190aa372b2a40c9df73&profile_id=119', 'We Build Character.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-08 18:40:27', '2017-01-03 08:39:12', '2df51a0d-aa8f-4610-956a-2547eea19a7d'),
(4, 4, 'en_us', 'portfolio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-09 00:45:36', '2017-01-05 05:46:44', '5cd3600d-185e-49b2-ba74-fb7889efa4d8'),
(5, 5, 'en_us', 'studio', '<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we’re not showing the world something new, we haven’t done our job.</p>', NULL, NULL, 'We Have Character.', 'Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by.', 'We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.', 'Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.', NULL, NULL, NULL, NULL, '2016-12-09 00:45:48', '2017-01-04 20:45:36', 'e24cfa4c-c641-4ba6-a752-cf5b099929ea'),
(19, 21, 'en_us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'refuge@refugevfx.com', '+1 (503) 336 9346', '<p>6635 N Baltimore Ave. Suite 112<br />Portland, OR. 97203</p>', 'https://www.google.com/maps/place/6635+N+Baltimore+Ave+%23112,+Portland,+OR+97203/@45.5892135,-122.7635568,17z/data=!3m1!4b1!4m5!3m4!1s0x549507feeaa3c2e3:0x759395de9b804248!8m2!3d45.5892135!4d-122.7613681', '2016-12-09 22:13:00', '2016-12-09 22:24:13', 'f14889fa-8539-4d92-b03e-fea3f9db938c'),
(28, 31, 'en_us', 'Carousel 0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-20 22:08:45', '2016-12-21 23:50:54', '42d1740a-0087-403f-891a-58ee46e4c173'),
(33, 40, 'en_us', 'Pnw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-28 22:32:56', '2016-12-28 22:32:56', '3f1d34a1-77e7-4d4f-9ae1-9c976ce9a397'),
(34, 41, 'en_us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 03:13:58', '2016-12-29 03:13:58', '5ba07d66-3b20-4f69-84f6-38ca8186d3d5'),
(35, 45, 'en_us', 'Mobile Intro Image', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 05:36:13', '2016-12-29 05:36:13', '6df90542-a261-41ad-a85e-b6b9b913179b'),
(36, 46, 'en_us', 'El Talbador', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 05:45:53', '2017-01-03 08:35:26', '056a650a-e2c9-40e5-932e-58e6fe077e61'),
(38, 48, 'en_us', 'Stella Bb Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:02:30', '2016-12-29 06:02:30', '1c56fd58-d444-41c1-82f0-142ec404160b'),
(39, 49, 'en_us', 'Rat King Bts 02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:09:39', '2016-12-29 06:09:39', '58e26dc0-6d25-4d8f-8a5e-47ef280f34e1'),
(40, 50, 'en_us', 'Dsc00793 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:03', '2016-12-29 06:32:03', 'ac8446a8-b2d5-4eef-bcec-82ced50ad716'),
(41, 51, 'en_us', 'Dsc00804 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:04', '2016-12-29 06:32:04', '311b1d9b-6e96-4d6b-85d6-edcb66ce5e66'),
(42, 52, 'en_us', 'Dsc00812 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:06', '2016-12-29 06:32:06', '132821ba-df2c-4c7b-9d14-73dde9cec26c'),
(43, 53, 'en_us', 'Dsc00814 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:08', '2016-12-29 06:32:08', 'c6816d95-6ae3-46c5-b45c-44af76c59517'),
(44, 54, 'en_us', 'Dsc00816 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:11', '2016-12-29 06:32:11', 'fcc2274f-c317-4294-b530-183fbaf016f2'),
(45, 55, 'en_us', 'Dsc00821 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:12', '2016-12-29 06:32:12', '2f49c8cb-58eb-4b7c-9a2f-61fe18b57bf4'),
(46, 56, 'en_us', 'Dsc00828 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:13', '2016-12-31 02:14:16', '2b3349cf-2060-4241-98fa-7574f5c5ef38'),
(47, 57, 'en_us', 'Dsc00844 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:15', '2016-12-29 06:32:15', '4329b32a-532d-4dbf-9f50-10c7cedb4852'),
(48, 58, 'en_us', 'Dsc00846 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:17', '2016-12-29 06:32:17', '40c37e7c-f1be-4199-889e-ee9c4dec6e53'),
(49, 59, 'en_us', 'Dsc00862 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:18', '2016-12-29 06:32:18', '85b65299-fcd7-4c8e-9c92-604dcba7ff3b'),
(50, 60, 'en_us', 'Dsc00866 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:20', '2016-12-29 06:32:20', '90645fbe-c8c6-46b5-a474-a29b6835c4cc'),
(51, 61, 'en_us', 'Dsc00867 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:24', '2016-12-29 06:32:24', 'c6c70c62-84f4-4d50-901a-0568615f8b89'),
(52, 62, 'en_us', 'Dsc00870 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:26', '2016-12-29 06:32:26', '1d735295-1f65-4b3e-b480-00bcaf7382a6'),
(53, 63, 'en_us', 'Dsc00874 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:27', '2016-12-29 06:32:27', '5b276ee3-0a3c-458b-a342-84e69ea91b56'),
(54, 64, 'en_us', 'Dsc00881 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:28', '2016-12-29 06:32:28', '409a584e-4aff-4715-985d-c32ac61298f2'),
(55, 65, 'en_us', 'Dsc00884 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:30', '2016-12-29 06:32:30', '84f43737-df81-4a82-ba0d-64e855b928b7'),
(56, 66, 'en_us', 'Dsc00886 Copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:32', '2016-12-29 06:32:32', 'ba1db855-ab17-49d3-98d2-c803666a59cc'),
(57, 67, 'en_us', 'Dsc00886', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 06:32:33', '2016-12-29 06:32:33', '92882c9b-4932-4ff9-b514-172c41616d2c'),
(59, 70, 'en_us', 'Grimm Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 07:39:37', '2017-01-03 08:35:14', 'a6b2f413-a2a9-47ad-8814-09a0f2a6b567'),
(60, 71, 'en_us', 'Mobile Intro Image V02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 21:18:03', '2016-12-29 21:18:03', 'bdde1798-83e2-4fc2-a758-3defc89738b5'),
(61, 72, 'en_us', 'Deer Skull Gas Mask', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 02:10:37', '2016-12-31 02:12:03', '6c8b9e35-7717-4909-b06a-f1255b686bae'),
(62, 73, 'en_us', 'Hydrus Egg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 02:10:40', '2016-12-31 02:10:40', 'b5f486b7-eddc-4d3f-9a6b-768aac373423'),
(66, 77, 'en_us', 'Refuge Metal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 02:14:49', '2016-12-31 02:17:41', '3d859935-07b9-4c32-9282-bfae3e221563'),
(68, 79, 'en_us', 'Hydrus Egg 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 02:26:56', '2016-12-31 02:26:56', '2edc7e38-18dd-4170-9a8b-56310f646f94'),
(69, 80, 'en_us', 'Refuge Metal 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 02:29:10', '2016-12-31 02:29:10', 'b6f8f342-707a-4e52-af49-4f5d25eabe75'),
(70, 81, 'en_us', 'Team Carousel V01 0000 04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 04:58:04', '2016-12-31 04:58:04', 'b9ff502f-386a-4a37-9b44-bb31adc2b91f'),
(71, 82, 'en_us', 'Team Carousel V01 0001 03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 04:58:07', '2016-12-31 04:58:07', '6e72ef97-ed74-448a-ba8f-3581a1dee3a1'),
(72, 83, 'en_us', 'Team Carousel V01 0002 02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 04:58:08', '2016-12-31 04:58:08', '43d31bb6-e7c3-426d-b41d-c0b81cc85282'),
(73, 84, 'en_us', 'Team Carousel V01 0003 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 04:58:10', '2016-12-31 04:58:10', '1dc954de-971e-4a83-9558-7afab7b95512'),
(74, 85, 'en_us', 'Team Carousel V01 0004 00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31 04:58:12', '2016-12-31 04:58:12', '63e5f2d2-6195-4842-a4d6-81ba1795b534'),
(75, 87, 'en_us', 'Rat King Bts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-03 08:32:46', '2017-01-03 08:32:46', 'f29034ce-ada8-4ce4-955e-35f8f7225eec'),
(76, 88, 'en_us', 'Rat King', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-03 08:32:49', '2017-01-03 08:32:49', 'd9d79e4e-ec3e-42cb-9f1c-d8118372907e'),
(80, 92, 'en_us', 'Team Carousel V02 0000 04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-03 21:59:11', '2017-01-03 21:59:11', 'f2bc84dd-7fa0-4306-981c-e434c178aa39'),
(81, 93, 'en_us', 'Last Knights', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-04 03:58:00', '2017-01-04 03:59:46', '80ea5833-cfa6-4d5b-87d6-9fde6b85744e'),
(83, 95, 'en_us', 'Team Carousel V03 0002 05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-04 04:03:13', '2017-01-04 04:03:13', 'a117be16-f650-40c2-b7de-174ef2dce896'),
(84, 96, 'en_us', 'Team Carousel V03 0001 06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-04 04:05:12', '2017-01-04 04:05:12', '9d2b896d-7988-488a-939b-a59fe96e0588'),
(85, 97, 'en_us', 'Team Carousel V03 0000 07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-04 04:06:19', '2017-01-04 04:06:19', '7bb0de01-c42e-4590-b332-013fce4ee21e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE IF NOT EXISTS `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE IF NOT EXISTS `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE IF NOT EXISTS `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=98 ;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2016-12-08 18:40:25', '2016-12-29 03:13:05', '1f5dee9b-a478-4dec-bb32-cd897e2d1eaa'),
(2, 'Entry', 1, 0, '2016-12-08 18:40:27', '2017-01-03 08:39:12', '5192a580-4610-4f0f-96c3-037c803eb14f'),
(4, 'Entry', 1, 0, '2016-12-09 00:45:36', '2017-01-05 05:46:44', '7f6f94d8-36c7-45a0-af54-ff7f6a380c53'),
(5, 'Entry', 1, 0, '2016-12-09 00:45:48', '2017-01-04 20:45:36', '7c1c51e3-648e-49eb-9a16-2def745e304d'),
(7, 'MatrixBlock', 1, 0, '2016-12-09 19:25:00', '2017-01-05 05:46:44', 'e63ca81e-65e6-4d6e-a26a-0e613ffdde0d'),
(20, 'MatrixBlock', 1, 0, '2016-12-09 22:09:22', '2017-01-05 05:46:44', '6aa2902c-1bd7-469e-a1e2-402d257c7a1a'),
(21, 'GlobalSet', 1, 0, '2016-12-09 22:13:00', '2016-12-09 22:24:13', '1f187ebf-9bc7-4dd0-8129-625532247c38'),
(22, 'MatrixBlock', 1, 0, '2016-12-09 22:17:59', '2016-12-09 22:17:59', '281077e7-7179-4053-9c48-0d69893ef34b'),
(31, 'Asset', 1, 0, '2016-12-20 22:08:45', '2016-12-21 23:50:54', 'e7374273-bece-4dac-8145-efa32fdb8703'),
(35, 'MatrixBlock', 0, 0, '2016-12-27 21:04:43', '2017-01-05 05:46:44', 'fbbdd797-e4f7-4781-8d02-7cdfcdf13e34'),
(36, 'MatrixBlock', 1, 0, '2016-12-27 21:27:40', '2017-01-05 05:46:44', '7e4080d4-1e96-4070-8027-3842da9978d8'),
(37, 'MatrixBlock', 0, 0, '2016-12-27 21:27:40', '2017-01-05 05:46:44', '2a2ced8c-108b-439c-9dc8-da5ebf520a91'),
(38, 'MatrixBlock', 0, 0, '2016-12-27 21:27:40', '2017-01-05 05:46:44', '7afcfdca-1ab9-456a-ad41-49ba1c9e969a'),
(40, 'Asset', 1, 0, '2016-12-28 22:32:56', '2016-12-28 22:32:56', 'ee1cc199-a99b-4012-9277-f30ba6a002c8'),
(41, 'User', 1, 0, '2016-12-29 03:13:58', '2016-12-29 03:13:58', '31062774-de0a-4a3b-8433-8a89dec59aad'),
(42, 'MatrixBlock', 1, 0, '2016-12-29 04:03:49', '2017-01-04 20:45:36', '4b960116-4f43-457b-9b76-ba9f3ddf6e61'),
(43, 'MatrixBlock', 1, 0, '2016-12-29 04:03:49', '2017-01-04 20:45:36', 'c6d8f166-6e29-49d4-9347-d85470435299'),
(44, 'MatrixBlock', 1, 0, '2016-12-29 04:03:49', '2017-01-04 20:45:36', 'd52e165d-b692-410a-9814-ab3a4eb187de'),
(45, 'Asset', 1, 0, '2016-12-29 05:36:13', '2016-12-29 05:36:13', 'b80de1b9-4c56-4042-bc9b-c0b9f2917a3a'),
(46, 'Asset', 1, 0, '2016-12-29 05:45:53', '2017-01-03 08:35:26', '960292a4-4b62-43af-8e58-6662d39ae555'),
(48, 'Asset', 1, 0, '2016-12-29 06:02:30', '2016-12-29 06:02:30', '0de07850-1637-4a03-972f-64d2aed7e902'),
(49, 'Asset', 1, 0, '2016-12-29 06:09:39', '2016-12-29 06:09:39', '18dabc1b-bfe2-4e55-930a-2e2136c5c624'),
(50, 'Asset', 1, 0, '2016-12-29 06:32:03', '2016-12-29 06:32:03', '92cc5d28-488e-4003-873b-9b4f43f54488'),
(51, 'Asset', 1, 0, '2016-12-29 06:32:04', '2016-12-29 06:32:04', '6b8736c6-e697-47e5-ae99-876752a654e1'),
(52, 'Asset', 1, 0, '2016-12-29 06:32:06', '2016-12-29 06:32:06', '117da354-8452-403e-824b-24962124fd50'),
(53, 'Asset', 1, 0, '2016-12-29 06:32:08', '2016-12-29 06:32:08', '92a79daa-58b4-4baa-a0cf-302d98b5a904'),
(54, 'Asset', 1, 0, '2016-12-29 06:32:11', '2016-12-29 06:32:11', '3873eaa6-188b-4207-b841-4cf2aa26ea93'),
(55, 'Asset', 1, 0, '2016-12-29 06:32:12', '2016-12-29 06:32:12', '0518e1a7-ea29-4e84-a9d8-4ef2b438bb20'),
(56, 'Asset', 1, 0, '2016-12-29 06:32:13', '2016-12-31 02:14:16', 'f8d3291f-4847-4e52-8da9-f6ff924d4611'),
(57, 'Asset', 1, 0, '2016-12-29 06:32:15', '2016-12-29 06:32:15', '8807de96-785b-4738-9a51-78c2046c4acb'),
(58, 'Asset', 1, 0, '2016-12-29 06:32:17', '2016-12-29 06:32:17', '6e635098-bcf4-40d7-839f-2c132195dc2a'),
(59, 'Asset', 1, 0, '2016-12-29 06:32:18', '2016-12-29 06:32:18', '57f98066-a483-4adf-9b26-3620f77973ca'),
(60, 'Asset', 1, 0, '2016-12-29 06:32:20', '2016-12-29 06:32:20', 'c49239a1-5a34-41c3-b776-4ffd05003bc6'),
(61, 'Asset', 1, 0, '2016-12-29 06:32:24', '2016-12-29 06:32:24', '80d1b9d8-bc58-49aa-9ccf-7161f6aec37c'),
(62, 'Asset', 1, 0, '2016-12-29 06:32:26', '2016-12-29 06:32:26', 'df7879fe-ed23-4d0b-bf82-7d37be813ede'),
(63, 'Asset', 1, 0, '2016-12-29 06:32:27', '2016-12-29 06:32:27', '04210d2a-4494-4e0c-be95-d8a77801ef77'),
(64, 'Asset', 1, 0, '2016-12-29 06:32:28', '2016-12-29 06:32:28', 'dafc9d1e-72a5-4149-ab2d-603d2d316d5b'),
(65, 'Asset', 1, 0, '2016-12-29 06:32:30', '2016-12-29 06:32:30', 'a55d155d-f4c3-4e2e-8290-627ca331e3d0'),
(66, 'Asset', 1, 0, '2016-12-29 06:32:32', '2016-12-29 06:32:32', '8998ee71-12f8-4148-a01d-b3799567c70d'),
(67, 'Asset', 1, 0, '2016-12-29 06:32:33', '2016-12-29 06:32:33', '472185ac-24e1-4133-abbf-84263730aa07'),
(68, 'MatrixBlock', 1, 0, '2016-12-29 07:28:18', '2017-01-05 05:46:44', '9213faad-433c-453f-b37b-d98e8ad148ac'),
(70, 'Asset', 1, 0, '2016-12-29 07:39:37', '2017-01-03 08:35:14', 'ad9fe306-d6b1-4cca-b199-6dca64295487'),
(71, 'Asset', 1, 0, '2016-12-29 21:18:03', '2016-12-29 21:18:03', 'c8f3419a-acee-4c19-8200-66a5ff42ab56'),
(72, 'Asset', 1, 0, '2016-12-31 02:10:37', '2016-12-31 02:12:03', '4f5fb104-1a89-424a-b49a-1ede72fad484'),
(73, 'Asset', 1, 0, '2016-12-31 02:10:40', '2016-12-31 02:10:40', 'bd3257cb-469b-4f64-b277-9c6fdde6ba22'),
(77, 'Asset', 1, 0, '2016-12-31 02:14:49', '2016-12-31 02:17:41', '06ac026d-293a-435b-b19f-6de4ab0212bb'),
(79, 'Asset', 1, 0, '2016-12-31 02:26:56', '2016-12-31 02:26:56', 'd434966f-155f-460b-9f81-a2393fe99f3a'),
(80, 'Asset', 1, 0, '2016-12-31 02:29:10', '2016-12-31 02:29:10', 'c8f7bf59-e570-496b-966d-9dada0d892ad'),
(81, 'Asset', 1, 0, '2016-12-31 04:58:04', '2016-12-31 04:58:04', 'ca737cef-f8c6-4c89-963f-86d8c4ba2b96'),
(82, 'Asset', 1, 0, '2016-12-31 04:58:07', '2016-12-31 04:58:07', '17c5769e-8fb1-45ac-bd58-42d82c5104ea'),
(83, 'Asset', 1, 0, '2016-12-31 04:58:08', '2016-12-31 04:58:08', '21b349fb-c18f-4ca6-b540-dcd3227ec9be'),
(84, 'Asset', 1, 0, '2016-12-31 04:58:10', '2016-12-31 04:58:10', '228f26ec-6837-4998-8c89-1ffba55cfa6f'),
(85, 'Asset', 1, 0, '2016-12-31 04:58:12', '2016-12-31 04:58:12', '2e9080d6-d8cb-4f78-be3e-1267abfe82bd'),
(87, 'Asset', 1, 0, '2017-01-03 08:32:46', '2017-01-03 08:32:46', '1db50867-82ab-4a65-a382-220123fc65f4'),
(88, 'Asset', 1, 0, '2017-01-03 08:32:49', '2017-01-03 08:32:49', '00d248c8-95a0-4cd9-a8ee-dd32361ca1e6'),
(92, 'Asset', 1, 0, '2017-01-03 21:59:11', '2017-01-03 21:59:11', '42f4e633-7fb4-4642-b551-16721bdc68b6'),
(93, 'Asset', 1, 0, '2017-01-04 03:58:00', '2017-01-04 03:59:46', 'af69607b-e3ca-4d7d-9a3d-922e0d26148e'),
(95, 'Asset', 1, 0, '2017-01-04 04:03:13', '2017-01-04 04:03:13', 'fd8bd858-ab30-43a2-8166-f6f950abca4d'),
(96, 'Asset', 1, 0, '2017-01-04 04:05:12', '2017-01-04 04:05:12', '6586d5d7-1be6-4518-819b-829b53d59d47'),
(97, 'Asset', 1, 0, '2017-01-04 04:06:19', '2017-01-04 04:06:19', '10af99f9-fdd5-45ab-bd88-a5c869f615a6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  KEY `craft_elements_i18n_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=98 ;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', '', NULL, 1, '2016-12-08 18:40:25', '2016-12-29 03:13:05', '65222d51-05e4-47f7-9b90-3d78f1e1ce28'),
(2, 2, 'en_us', 'homepage', '__home__', 1, '2016-12-08 18:40:27', '2017-01-03 08:39:13', 'cc73a3a7-cd65-4ae1-a1cf-2985051b06b8'),
(4, 4, 'en_us', 'portfolio', 'portfolio', 1, '2016-12-09 00:45:36', '2017-01-05 05:46:44', '3a1cf061-6a7d-4ae9-b62a-6d293cdd28d2'),
(5, 5, 'en_us', 'studio', 'studio', 1, '2016-12-09 00:45:48', '2017-01-04 20:45:36', 'b27e9d17-a57e-41c2-bc5d-7827b5323e1e'),
(7, 7, 'en_us', '', NULL, 1, '2016-12-09 19:25:00', '2017-01-05 05:46:44', '04e3d900-4597-4dbb-a5a5-8678804fa002'),
(20, 20, 'en_us', '', NULL, 1, '2016-12-09 22:09:22', '2017-01-05 05:46:44', 'd9c61b7e-360b-4625-89dc-af553937b5f1'),
(21, 21, 'en_us', '', NULL, 1, '2016-12-09 22:13:00', '2016-12-09 22:24:13', '2cd30356-61c4-46e6-915e-8241f0775335'),
(22, 22, 'en_us', '', NULL, 1, '2016-12-09 22:17:59', '2016-12-09 22:17:59', '8da9a71c-abfd-46ab-a468-6a44d4106619'),
(31, 31, 'en_us', 'carousel-0', NULL, 1, '2016-12-20 22:08:45', '2016-12-21 23:50:54', '9eaefb6c-c299-4611-b696-21efe7f0adfd'),
(35, 35, 'en_us', '', NULL, 1, '2016-12-27 21:04:43', '2017-01-05 05:46:44', '49397331-d2ed-4a7b-a33e-7776c6ba4abf'),
(36, 36, 'en_us', '', NULL, 1, '2016-12-27 21:27:40', '2017-01-05 05:46:44', 'eed6fe8d-57e5-4074-85f2-d1007276201c'),
(37, 37, 'en_us', '', NULL, 1, '2016-12-27 21:27:40', '2017-01-05 05:46:44', '91bf277b-c5c1-4dab-b85b-645f81a848bc'),
(38, 38, 'en_us', '', NULL, 1, '2016-12-27 21:27:40', '2017-01-05 05:46:44', 'a6620b62-8894-4a8c-ad15-0451f100efb2'),
(40, 40, 'en_us', 'pnw', NULL, 1, '2016-12-28 22:32:56', '2016-12-28 22:32:56', '336d9eef-4ded-460e-92b0-dc9c6820a33c'),
(41, 41, 'en_us', '', NULL, 1, '2016-12-29 03:13:58', '2016-12-29 03:13:58', '74f25f76-36c4-47b3-b3e1-41b7b4939ac0'),
(42, 42, 'en_us', '', NULL, 1, '2016-12-29 04:03:49', '2017-01-04 20:45:36', 'cbd80ab6-05bb-4cc0-9d2e-ea47945613f9'),
(43, 43, 'en_us', '', NULL, 1, '2016-12-29 04:03:49', '2017-01-04 20:45:36', 'd349a7af-d6ec-4d52-af51-3ffe9b77c7c4'),
(44, 44, 'en_us', '', NULL, 1, '2016-12-29 04:03:49', '2017-01-04 20:45:36', '497fdf60-7b79-4e4d-aead-e712bc20979e'),
(45, 45, 'en_us', 'mobile-intro-image', NULL, 1, '2016-12-29 05:36:13', '2016-12-29 05:36:13', '9638cb67-caa7-4096-8b5c-1479411de5a4'),
(46, 46, 'en_us', 'el-talbador', NULL, 1, '2016-12-29 05:45:53', '2017-01-03 08:35:26', 'e0292fd5-e6eb-4727-84f2-10020b06de7e'),
(48, 48, 'en_us', 'stella-bb-service', NULL, 1, '2016-12-29 06:02:30', '2016-12-29 06:02:30', 'ac20d4ec-fe83-44e8-a82a-c75f415d7575'),
(49, 49, 'en_us', 'rat-king-bts-02', NULL, 1, '2016-12-29 06:09:39', '2016-12-29 06:09:39', 'e2b6ce1e-aa43-4c8c-be2d-45da5b22fef6'),
(50, 50, 'en_us', 'dsc00793-copy', NULL, 1, '2016-12-29 06:32:03', '2016-12-29 06:32:03', '4d545757-06ba-42b1-93bb-edb55983a5f5'),
(51, 51, 'en_us', 'dsc00804-copy', NULL, 1, '2016-12-29 06:32:04', '2016-12-29 06:32:04', '2c15d45a-5ae4-4a4d-984c-9cfcdf5fb7eb'),
(52, 52, 'en_us', 'dsc00812-copy', NULL, 1, '2016-12-29 06:32:06', '2016-12-29 06:32:06', '87d9a1cc-cec1-4798-84f4-f613c38fbda8'),
(53, 53, 'en_us', 'dsc00814-copy', NULL, 1, '2016-12-29 06:32:08', '2016-12-29 06:32:08', '2c9616a2-08bd-488f-bb9a-4a6747aa2934'),
(54, 54, 'en_us', 'dsc00816-copy', NULL, 1, '2016-12-29 06:32:11', '2016-12-29 06:32:11', '37b2d663-0c6b-4f0e-8601-392abe1a8493'),
(55, 55, 'en_us', 'dsc00821-copy', NULL, 1, '2016-12-29 06:32:12', '2016-12-29 06:32:12', 'a528586a-9d3c-412b-9e0e-44b36ae501d3'),
(56, 56, 'en_us', 'dsc00828-copy', NULL, 1, '2016-12-29 06:32:13', '2016-12-31 02:14:16', '390915fa-5627-45e2-9884-28663fbf579d'),
(57, 57, 'en_us', 'dsc00844-copy', NULL, 1, '2016-12-29 06:32:15', '2016-12-29 06:32:15', 'b822e702-0a83-4fed-b83f-bc3d6ffa9b6a'),
(58, 58, 'en_us', 'dsc00846-copy', NULL, 1, '2016-12-29 06:32:17', '2016-12-29 06:32:17', '118fe11a-6a8a-488d-9716-2809ae2aaec7'),
(59, 59, 'en_us', 'dsc00862-copy', NULL, 1, '2016-12-29 06:32:18', '2016-12-29 06:32:18', '4d57b47e-00dd-4f52-89df-8afa07c38aa7'),
(60, 60, 'en_us', 'dsc00866-copy', NULL, 1, '2016-12-29 06:32:20', '2016-12-29 06:32:20', '51cb6a23-856a-4069-9d67-f782cafaab31'),
(61, 61, 'en_us', 'dsc00867-copy', NULL, 1, '2016-12-29 06:32:24', '2016-12-29 06:32:24', 'abd44d7e-bb63-4d66-8890-3e938e54bae4'),
(62, 62, 'en_us', 'dsc00870-copy', NULL, 1, '2016-12-29 06:32:26', '2016-12-29 06:32:26', 'f4bbea19-1c26-41c0-a837-d83bfe82faf9'),
(63, 63, 'en_us', 'dsc00874-copy', NULL, 1, '2016-12-29 06:32:27', '2016-12-29 06:32:27', 'b5276e26-3da3-42c0-8ed7-1a32d4a2e987'),
(64, 64, 'en_us', 'dsc00881-copy', NULL, 1, '2016-12-29 06:32:28', '2016-12-29 06:32:28', '56924d5a-164a-454c-a455-72e93d2b39f9'),
(65, 65, 'en_us', 'dsc00884-copy', NULL, 1, '2016-12-29 06:32:30', '2016-12-29 06:32:30', 'fc2f1286-c881-4d42-b71d-c188a28f54fe'),
(66, 66, 'en_us', 'dsc00886-copy', NULL, 1, '2016-12-29 06:32:32', '2016-12-29 06:32:32', '021b1749-f251-4810-82d3-3f919fcdf701'),
(67, 67, 'en_us', 'dsc00886', NULL, 1, '2016-12-29 06:32:33', '2016-12-29 06:32:33', 'b7f16a96-a5a4-44f9-87d0-0015a244ba65'),
(68, 68, 'en_us', '', NULL, 1, '2016-12-29 07:28:18', '2017-01-05 05:46:44', 'e4f18686-aaf4-45fc-9906-7c46788b874a'),
(70, 70, 'en_us', 'grimm-title', NULL, 1, '2016-12-29 07:39:37', '2017-01-03 08:35:14', '504e0c91-34ac-4ffe-be3c-ef5cde21b721'),
(71, 71, 'en_us', 'mobile-intro-image-v02', NULL, 1, '2016-12-29 21:18:03', '2016-12-29 21:18:03', 'c22ea2ca-017f-4499-8c9e-394b2b97aedf'),
(72, 72, 'en_us', 'deer-skull-gas-mask', NULL, 1, '2016-12-31 02:10:37', '2016-12-31 02:12:03', '0337bf6c-c72a-43d6-a7ce-9334d46f89f4'),
(73, 73, 'en_us', 'hydrus-egg', NULL, 1, '2016-12-31 02:10:40', '2016-12-31 02:10:40', '9180e823-d99c-43d6-af32-426c5bed1955'),
(77, 77, 'en_us', 'refuge-metal', NULL, 1, '2016-12-31 02:14:49', '2016-12-31 02:17:41', '1ddd1a90-6955-4bbd-b592-e15432f7497b'),
(79, 79, 'en_us', 'hydrus-egg-2', NULL, 1, '2016-12-31 02:26:56', '2016-12-31 02:26:56', 'a9f96c94-6a2b-47f5-8caf-6a3e944a8ab3'),
(80, 80, 'en_us', 'refuge-metal-2', NULL, 1, '2016-12-31 02:29:10', '2016-12-31 02:29:10', '272a754f-2de3-4de2-bfe9-6f71cad1caa0'),
(81, 81, 'en_us', 'team-carousel-v01-0000-04', NULL, 1, '2016-12-31 04:58:04', '2016-12-31 04:58:04', 'dc582b47-cb4d-447c-8ba6-57e471f42c75'),
(82, 82, 'en_us', 'team-carousel-v01-0001-03', NULL, 1, '2016-12-31 04:58:07', '2016-12-31 04:58:07', 'a495c086-440d-4ccc-9a68-4f4c57639056'),
(83, 83, 'en_us', 'team-carousel-v01-0002-02', NULL, 1, '2016-12-31 04:58:08', '2016-12-31 04:58:08', 'ea54b225-a522-455d-a061-3584ddca108d'),
(84, 84, 'en_us', 'team-carousel-v01-0003-01', NULL, 1, '2016-12-31 04:58:10', '2016-12-31 04:58:10', '5de0b6e7-661c-47c8-9884-06588a25120e'),
(85, 85, 'en_us', 'team-carousel-v01-0004-00', NULL, 1, '2016-12-31 04:58:12', '2016-12-31 04:58:12', 'ec72b15b-4bb6-488c-a937-6bb134ec2bcb'),
(87, 87, 'en_us', 'rat-king-bts', NULL, 1, '2017-01-03 08:32:46', '2017-01-03 08:32:46', 'd49ca37e-9ca1-4524-9b42-6cc4935f6827'),
(88, 88, 'en_us', 'rat-king', NULL, 1, '2017-01-03 08:32:49', '2017-01-03 08:32:49', 'cc899a37-5450-41fe-bfba-5856694ca2d5'),
(92, 92, 'en_us', 'team-carousel-v02-0000-04', NULL, 1, '2017-01-03 21:59:12', '2017-01-03 21:59:12', 'c293e317-9978-4dbe-9c4f-2759cbe6cf82'),
(93, 93, 'en_us', 'last-knights', NULL, 1, '2017-01-04 03:58:01', '2017-01-04 03:59:46', '3918460e-252e-4d49-8302-8ff8d0488e04'),
(95, 95, 'en_us', 'team-carousel-v03-0002-05', NULL, 1, '2017-01-04 04:03:13', '2017-01-04 04:03:13', '23669cd1-415a-403b-b015-b20c1779bccb'),
(96, 96, 'en_us', 'team-carousel-v03-0001-06', NULL, 1, '2017-01-04 04:05:12', '2017-01-04 04:05:12', '8a908a58-3cd9-424f-b02f-39a728577d3e'),
(97, 97, 'en_us', 'team-carousel-v03-0000-07', NULL, 1, '2017-01-04 04:06:19', '2017-01-04 04:06:19', 'b9b316dd-2963-4880-bc44-11bb1c82f4c4');

-- --------------------------------------------------------

--
-- Table structure for table `craft_emailmessages`
--

CREATE TABLE IF NOT EXISTS `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE IF NOT EXISTS `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 1, NULL, '2016-12-09 00:39:57', NULL, '2016-12-08 18:40:27', '2017-01-03 08:39:13', 'fac48a91-746a-4e38-8edf-4468ace03fe6'),
(4, 3, NULL, NULL, '2016-12-09 00:45:36', NULL, '2016-12-09 00:45:36', '2017-01-05 05:46:44', 'e6ea3a76-68b2-46d4-afea-b9c9c54d5e49'),
(5, 4, NULL, NULL, '2016-12-09 00:45:48', NULL, '2016-12-09 00:45:48', '2017-01-04 20:45:36', '05c9833e-7414-4ad2-86f2-23cd3a0e41e2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrydrafts`
--

CREATE TABLE IF NOT EXISTS `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE IF NOT EXISTS `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 11, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2016-12-08 18:40:27', '2016-12-09 18:22:38', 'a8047902-b858-48a3-bd88-305dfe67e7bd'),
(3, 3, 20, 'portfolio', 'portfolio', 0, NULL, '{section.name|raw}', 1, '2016-12-09 00:45:36', '2016-12-09 19:20:13', '198968a3-dc4c-4535-bbb7-e13deb0699b5'),
(4, 4, 46, 'studio', 'studio', 0, NULL, '{section.name|raw}', 1, '2016-12-09 00:45:48', '2016-12-30 17:37:03', '56d8f1cb-f13a-48dc-ba16-10d5544709f0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entryversions`
--

CREATE TABLE IF NOT EXISTS `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=134 ;

--
-- Dumping data for table `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'en_us', 1, NULL, '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1481222427,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-12-08 18:40:27', '2016-12-08 18:40:27', '428c7ec5-65ca-4e7d-9ebd-19069d750a09'),
(2, 2, 1, 1, 'en_us', 2, NULL, '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1481222427,"expiryDate":null,"enabled":"1","parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2016-12-08 18:40:27', '2016-12-08 18:40:27', '2c0e2ba0-98a2-48ae-8fed-a1027117a05c'),
(4, 2, 1, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"Home","slug":"homepage","postDate":1481222427,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2016-12-09 00:37:36', '2016-12-09 00:37:36', '4cc2766f-8647-4621-8aae-1ad28539f8c8'),
(5, 4, 3, 1, 'en_us', 1, NULL, '{"typeId":"3","authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-12-09 00:45:36', '2016-12-09 00:45:36', 'b1b631ff-9f9b-4090-bd95-e7863f974e96'),
(6, 5, 4, 1, 'en_us', 1, NULL, '{"typeId":"4","authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-12-09 00:45:48', '2016-12-09 00:45:48', '9e3fcb83-0b0e-4d67-b7e3-612f1524cd20'),
(7, 2, 1, 1, 'en_us', 4, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:11:57', '2016-12-09 18:11:57', 'ba4e38d6-4fde-47c3-a8ed-5fdbc5f513b8'),
(8, 2, 1, 1, 'en_us', 5, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:13:35', '2016-12-09 18:13:35', '1d11a6e2-2198-4604-b767-cdee9ea306e5'),
(9, 2, 1, 1, 'en_us', 6, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["6"],"4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:27:38', '2016-12-09 18:27:38', '3ae7fd3d-b1dd-40b6-9a1b-85581afdaf60'),
(10, 2, 1, 1, 'en_us', 7, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["6"],"4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:28:30', '2016-12-09 18:28:30', '19295b7c-9ac3-4afe-8b25-b9622e75e69b'),
(11, 2, 1, 1, 'en_us', 8, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":"","4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:44:08', '2016-12-09 18:44:08', 'bde656cf-d0c9-49cd-9eb4-d18e833c76cc'),
(12, 2, 1, 1, 'en_us', 9, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":"","4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:47:47', '2016-12-09 18:47:47', '405e22b3-df95-4c25-a221-c0af43084f8d'),
(13, 2, 1, 1, 'en_us', 10, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":"","4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:50:21', '2016-12-09 18:50:21', '584c61a5-26dc-4e5d-ba13-59e14ac730ba'),
(14, 2, 1, 1, 'en_us', 11, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":"","4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 18:51:30', '2016-12-09 18:51:30', '9086c722-015c-4eb4-8b4a-7d52a48de2cc'),
(15, 5, 4, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":"","9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 19:04:06', '2016-12-09 19:04:06', '7cd98301-345e-4656-b8c6-977be2bc0551'),
(16, 5, 4, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":"","9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 19:06:27', '2016-12-09 19:06:27', '6d275eb9-ba12-40cc-85fb-2f2f0269ccdc'),
(17, 4, 3, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"new1":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Example Title","videoCredits":"","description":""},"collapsed":""}}}}', '2016-12-09 19:25:00', '2016-12-09 19:25:00', '9e8ebcae-3fa6-45c9-9422-74e05c2ff168'),
(18, 4, 3, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"","videoCredits":"","description":""}}}}}', '2016-12-09 19:28:15', '2016-12-09 19:28:15', '39107535-02b8-4347-9854-c7242f838fda'),
(19, 4, 3, 1, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-09 19:32:41', '2016-12-09 19:32:41', '92d79086-622f-4ece-916f-64ff54885a82'),
(20, 4, 3, 1, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-09 19:33:28', '2016-12-09 19:33:28', 'd6317eeb-a306-45f1-a5df-b9bfabd9bad6'),
(21, 2, 1, 1, 'en_us', 12, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["8"],"4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-09 19:43:21', '2016-12-09 19:43:21', '1177d017-5225-4fc4-91b9-3d0419d45137'),
(22, 5, 4, 1, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":["8"],"11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":"","9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 20:02:50', '2016-12-09 20:02:50', 'c917d636-d349-4032-a25f-4d847e63a03c'),
(23, 5, 4, 1, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":"","9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 20:04:58', '2016-12-09 20:04:58', '156a3ed0-b555-452c-b9a5-957bc189f976'),
(24, 5, 4, 1, 'en_us', 6, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":["10"],"11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":"","9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 21:30:36', '2016-12-09 21:30:36', 'a44ff99f-8fc8-4328-a60a-d3b907c6045c'),
(25, 5, 4, 1, 'en_us', 7, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":"","9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 21:31:34', '2016-12-09 21:31:34', '24c7d4e9-01cb-4e9f-ac51-fc62414fc6e4'),
(26, 5, 4, 1, 'en_us', 8, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":["16","17","18","19","10"],"9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 21:42:34', '2016-12-09 21:42:34', '3c6510cb-fe49-49da-81c2-49002fdb6881'),
(27, 5, 4, 1, 'en_us', 9, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":"","9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 21:45:58', '2016-12-09 21:45:58', 'c88ddd6c-9a9b-4c18-8ae1-31a2dcca6e03'),
(28, 5, 4, 1, 'en_us', 10, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":["16","17","18","19","10"],"9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 21:46:24', '2016-12-09 21:46:24', '13c2ff5d-5b98-45a5-b6c7-89768930cca7'),
(29, 5, 4, 1, 'en_us', 11, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":"","12":["16","17","18","19","10"],"9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 21:49:19', '2016-12-09 21:49:19', 'bf2a3308-7e1b-423d-92b9-a0319eeb5e0e'),
(30, 5, 4, 1, 'en_us', 12, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa.","13":["10"],"12":["16","17","18","19","10"],"9":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam aperiam esse repudiandae reprehenderit aut non possimus eius. Molestias cumque ducimus, enim esse quibusdam harum provident deleniti nam adipisci dolores ipsa."}}', '2016-12-09 21:49:35', '2016-12-09 21:49:35', 'aa7c8240-17fa-4006-8193-fac1ba07a6b4'),
(31, 4, 3, 1, 'en_us', 6, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["19"],"videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-09 22:07:02', '2016-12-09 22:07:02', '3ef5f8d4-57c8-4206-85df-4168217d66f5'),
(32, 4, 3, 1, 'en_us', 7, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-09 22:07:34', '2016-12-09 22:07:34', 'faf3db3a-3b9a-4357-a001-49ecadd1cc7d'),
(33, 4, 3, 1, 'en_us', 8, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}},"new1":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["19"],"videoTitle":"Another Title","videoCredits":"Some Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-09 22:09:22', '2016-12-09 22:09:22', '7a90fde5-c5ff-4a27-aa9e-9647adaf8400'),
(34, 5, 4, 1, 'en_us', 13, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["10"],"12":["16","17","18","19","10"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-11 19:06:55', '2016-12-11 19:06:55', 'cc3e95c9-8678-408e-9883-3dce59b20a0e'),
(35, 5, 4, 1, 'en_us', 14, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["10"],"12":["16","17","18","19"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-11 19:09:06', '2016-12-11 19:09:06', '6ee944b1-5271-45e7-97c8-b0d4dea0f854'),
(36, 5, 4, 1, 'en_us', 15, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["10"],"12":["16","17","18","19","10"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-11 19:11:04', '2016-12-11 19:11:04', 'aacc4cc9-b58c-4a33-8706-2f3f859edf3c'),
(37, 4, 3, 1, 'en_us', 9, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["19"],"videoTitle":"Another Title","videoCredits":"Some Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-20 21:55:28', '2016-12-20 21:55:28', '53aa7ee8-f384-44a3-b773-13dea409123b'),
(38, 4, 3, 1, 'en_us', 10, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["19"],"videoTitle":"Another Title","videoCredits":"Some Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-20 22:03:14', '2016-12-20 22:03:14', '4da801ea-dab8-47c3-be07-8711b634ec62'),
(39, 4, 3, 1, 'en_us', 11, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["19"],"videoTitle":"Another Title","videoCredits":"Some Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-20 22:04:14', '2016-12-20 22:04:14', '254501f9-7bd3-4659-8f3e-814eff492b3f'),
(40, 5, 4, 1, 'en_us', 16, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["10"],"12":["16","17","18","19","10"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-20 22:05:50', '2016-12-20 22:05:50', '7d68d258-9b63-420d-bfa9-faa1e9093f97'),
(41, 4, 3, 1, 'en_us', 12, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Another Title","videoCredits":"Some Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-20 22:07:35', '2016-12-20 22:07:35', 'b1dcdecb-e3ae-474e-a3a9-2813010d3ff5'),
(42, 5, 4, 1, 'en_us', 17, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":"","12":["31","32","33","30","29"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-20 22:08:55', '2016-12-20 22:08:55', '5fad6475-2004-4961-adbc-3035d305b06a'),
(43, 4, 3, 1, 'en_us', 13, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":"","videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["30"],"videoTitle":"Another Title","videoCredits":"Some Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-20 22:09:26', '2016-12-20 22:09:26', '1eb4c5a9-488b-4d6b-88ba-a4ab9736e7ae'),
(44, 4, 3, 1, 'en_us', 14, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["8"],"videoTitle":"Example Title","videoCredits":"Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["30"],"videoTitle":"Another Title","videoCredits":"Some Credits","description":"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facere illum inventore voluptas aspernatur voluptate, tempore similique eius vero, consectetur. Atque corrupti aliquam natus, deserunt accusantium qui officiis nam cupiditate."}}}}}', '2016-12-21 02:18:38', '2016-12-21 02:18:38', 'f80480fe-e458-4121-94ea-3be18546843e'),
(45, 5, 4, 1, 'en_us', 18, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":"","12":["31","32","33","30","29"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-21 02:23:29', '2016-12-21 02:23:29', '432a378a-e14e-4cb7-91d0-eeb8ccb524e9'),
(46, 5, 4, 1, 'en_us', 19, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","7":"","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["31","32","33","30"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-21 02:24:16', '2016-12-21 02:24:16', 'a23713ad-4de6-4c3d-908e-1818da49384d'),
(47, 2, 1, 1, 'en_us', 13, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["8"],"4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-21 23:49:55', '2016-12-21 23:49:55', '469ddbec-56e0-46a8-9aab-f59f8cd53c0e'),
(48, 2, 1, 1, 'en_us', 14, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["31"],"4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-21 23:50:58', '2016-12-21 23:50:58', '8c7a8955-53a2-4ae2-a81c-9a364e1889d4'),
(49, 2, 1, 1, 'en_us', 15, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["29"],"4":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119"}}', '2016-12-21 23:56:50', '2016-12-21 23:56:50', 'd7f3e825-b2f8-4923-846c-9d3ddb9a625a');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(50, 5, 4, 1, 'en_us', 20, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["31","32","33","30"],"26":["34"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-22 17:27:49', '2016-12-22 17:27:49', 'ee3d63ff-1055-48ca-87b0-3abf53db37b8'),
(51, 4, 3, 1, 'en_us', 15, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["8"],"videoTitle":"El Tabador","videoCredits":"","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/fpdl.vimeocdn.com\\/vimeo-prod-skyfire-std-us\\/01\\/4325\\/7\\/196629330\\/660431049.mp4?token=58630e6d_0x52386f319c3f18e1662214f472b2e0f6eca90bc5","videoPoster":["30"],"videoTitle":"Last Knights","videoCredits":"","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}}}}}', '2016-12-27 20:59:42', '2016-12-27 20:59:42', 'a73cde77-f0fc-48be-b343-b9dd54601a98'),
(52, 4, 3, 1, 'en_us', 16, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["8"],"videoTitle":"El Tabador","videoCredits":"","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["30"],"videoTitle":"Last Knights","videoCredits":"","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"new1":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":"","videoTitle":"Grimm","videoCredits":"The Rat King - The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.","description":""}}}}}', '2016-12-27 21:04:43', '2016-12-27 21:04:43', '754711d8-0e5d-4833-9d79-29245b49c014'),
(53, 4, 3, 1, 'en_us', 17, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["8"],"videoTitle":"El Tabador","videoCredits":"","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["30"],"videoTitle":"Last Knights","videoCredits":"","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":"","videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"","description":"Refuge, along with writer Mike Wellins had created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"new1":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":"","videoTitle":"Grimm - The Rat King","videoCredits":"","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"new2":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3  e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"new3":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-27 21:27:40', '2016-12-27 21:27:40', '3f97dbe0-e017-4464-9603-f4785a22b59d'),
(54, 4, 3, 1, 'en_us', 18, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["8"],"videoTitle":"El Tabador","videoCredits":"","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["30"],"videoTitle":"Last Knights","videoCredits":"","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":"","videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"","description":"Refuge, along with writer Mike Wellins had created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":"","videoTitle":"Grimm - The Rat King","videoCredits":"","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-27 21:28:26', '2016-12-27 21:28:26', '249b1267-f0d7-4750-b202-7f88b9b3fffa'),
(55, 5, 4, 1, 'en_us', 21, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["31","32","33","30"],"26":["40"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-28 22:33:05', '2016-12-28 22:33:05', '32855175-c62e-4784-bd9b-9d60c2335ad0'),
(56, 5, 4, 1, 'en_us', 22, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["31","32","33","30"],"26":["40","30"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-28 22:34:00', '2016-12-28 22:34:00', '3b85e5a7-6d18-4d25-a563-069a869e4375'),
(57, 5, 4, 1, 'en_us', 23, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"new1":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabilitydescription":"<p>We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"new2":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Production","capabilitydescription":"<p>Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by.<\\/p>"}},"new3":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabilitydescription":"<p>Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["31","32","33","30"],"26":["40","30"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 04:03:49', '2016-12-29 04:03:49', '1c6c85ab-0b1b-46db-9976-a5dc4992e18c'),
(58, 2, 1, 41, 'en_us', 16, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["29"],"4":"https:\\/\\/player.vimeo.com\\/external\\/146206058.hd.mp4?s=a6973dcf07b105f46d209935b6ae6bd569d20bb3&profile_id=119"}}', '2016-12-29 05:33:36', '2016-12-29 05:33:36', 'fbfce4c2-7c00-4f4e-878b-c4c15916b2c4'),
(59, 2, 1, 41, 'en_us', 17, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["45"],"4":"https:\\/\\/player.vimeo.com\\/external\\/146206058.hd.mp4?s=a6973dcf07b105f46d209935b6ae6bd569d20bb3&profile_id=119"}}', '2016-12-29 05:38:12', '2016-12-29 05:38:12', '1df3627f-273e-4b27-a87c-70ceacea7c0b'),
(60, 2, 1, 41, 'en_us', 18, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["45"],"4":"https:\\/\\/player.vimeo.com\\/external\\/146206058.hd.mp4?s=a6973dcf07b105f46d209935b6ae6bd569d20bb3&profile_id=119"}}', '2016-12-29 05:38:13', '2016-12-29 05:38:13', 'c31eecaf-f519-49be-8267-6b81e27682d2'),
(61, 2, 1, 41, 'en_us', 19, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["45"],"4":"https:\\/\\/player.vimeo.com\\/external\\/146206058.hd.mp4?s=a6973dcf07b105f46d209935b6ae6bd569d20bb3&profile_id=119"}}', '2016-12-29 05:42:03', '2016-12-29 05:42:03', '795ac8bb-8606-4848-a5ad-a9952efa6451'),
(62, 4, 3, 41, 'en_us', 19, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["46"],"videoTitle":"El Tabador","videoCredits":"","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"Last Knights","videoCredits":"","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":"","videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"","description":"Refuge, along with writer Mike Wellins had created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":"","videoTitle":"Grimm - The Rat King","videoCredits":"","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 05:48:13', '2016-12-29 05:48:13', 'b3d75f89-996e-40de-b3d5-296b49c87286'),
(63, 4, 3, 41, 'en_us', 20, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","videoPoster":["46"],"videoTitle":"El Tabadorr","videoCredits":"","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 06:10:31', '2016-12-29 06:10:31', '88e72074-e12f-4b38-b057-b90255526c85'),
(64, 4, 3, 41, 'en_us', 21, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director: Rob Shaw\\r\\nSupervising Animator: Eric Scheur\\r\\nTechnical Director: Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director: Kazuaki Kiriya\\r\\nVisual FX Supervisor: Tarn Fox","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director: Fred Ruff\\r\\nProducer: Jose Behar\\r\\nCreator: Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator: Eric Schuer\\r\\nVisual FX Supervisor: Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 06:19:13', '2016-12-29 06:19:13', '7f73f3e6-918a-469c-9b97-bcb2c66454c2'),
(65, 4, 3, 41, 'en_us', 22, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director: Rob Shaw\\r\\n\\r\\nSupervising Animator: Eric Scheur\\r\\n\\r\\nTechnical Director: Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director: Kazuaki Kiriya\\r\\nVisual FX Supervisor: Tarn Fox","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director: Fred Ruff\\r\\nProducer: Jose Behar\\r\\nCreator: Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator: Eric Schuer\\r\\nVisual FX Supervisor: Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 06:20:08', '2016-12-29 06:20:08', 'c429ab8f-fd11-4c2c-9ef5-635273f6f414'),
(66, 4, 3, 41, 'en_us', 23, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff,Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor: Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 06:25:09', '2016-12-29 06:25:09', '0c6c0e1a-439a-4191-aa3f-7c7eab946533'),
(67, 4, 3, 41, 'en_us', 24, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"For the Last Knights, starring Clive Owen and Morgan Freeman, the team at Refuge took on the task of building out the incredibly vast and oppressed world of Capitol City."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 06:29:19', '2016-12-29 06:29:19', '9e5cec83-15ee-4712-8121-8aefb57edb65'),
(68, 5, 4, 41, 'en_us', 24, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Production","capabiltyDescription":"<p>Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["31","32","33","30"],"26":["50","51"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 06:33:42', '2016-12-29 06:33:42', '9266ae51-16cf-4a1b-ad03-2d5937701a33'),
(69, 5, 4, 41, 'en_us', 25, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Production","capabiltyDescription":"<p>Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["57","65","64"],"26":["50","51","57","53"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 06:36:27', '2016-12-29 06:36:27', 'e2321b8a-92f0-4198-8d77-76036a104cd8'),
(70, 5, 4, 41, 'en_us', 26, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Production","capabiltyDescription":"<p>Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["57","65","64"],"26":["50","51","53","55"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 06:36:57', '2016-12-29 06:36:57', '4ad83dbf-cf8e-4ddf-9e16-de1962422934'),
(71, 5, 4, 41, 'en_us', 27, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Production","capabiltyDescription":"<p>Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["58","65","64"],"26":["50","51","53","55"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 06:38:21', '2016-12-29 06:38:21', '7f9dad6a-fcc2-48de-9aab-c6f052e05a31');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(72, 5, 4, 41, 'en_us', 28, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can produce&nbsp;many types of 3d and 2d computer animation. From a stylized 3D Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["58","65","64"],"26":["50","51","53","55"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 06:47:02', '2016-12-29 06:47:02', 'c63aa772-cdf9-47f0-89c8-4f55d6a7e4e3'),
(73, 5, 4, 41, 'en_us', 29, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can produce&nbsp;many types of 3d and 2d computer animation. From a stylized 3D Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["31"],"12":["58","64","57"],"26":["56","50","51","53","55"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 07:07:35', '2016-12-29 07:07:35', '96e7cfdc-8560-4b82-b9ad-632791fbb32e'),
(74, 5, 4, 41, 'en_us', 30, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can produce&nbsp;many types of 3d and 2d computer animation. From a stylized 3D Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["54","60"],"12":["58","64","57"],"26":["56","50","51","53","55"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 07:13:13', '2016-12-29 07:13:13', 'd4172d9d-b43e-4dce-94bf-717dd8f7a588'),
(75, 5, 4, 41, 'en_us', 31, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many other types of 3d and 2d computer animation styles as well. From a stylized Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can produce&nbsp;many types of 3d and 2d computer animation. From a stylized 3D Pixar look, to classic cell animation, we would love to use our tools and skills to help make any of your animated ideas come to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["62"],"12":["64","58","57"],"26":["56","50","51","53","55"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-29 07:15:12', '2016-12-29 07:15:12', 'dfaff867-fee0-4762-a5c6-98fda659dc4f'),
(76, 4, 3, 41, 'en_us', 25, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 07:19:07', '2016-12-29 07:19:07', 'cb96238a-cef7-4665-8700-1057815e15ea'),
(77, 4, 3, 41, 'en_us', 26, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 07:20:46', '2016-12-29 07:20:46', '4febb109-a5f9-460f-bc45-4fd81ce34c87'),
(78, 4, 3, 41, 'en_us', 27, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}},"new1":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":"","videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}}}}}', '2016-12-29 07:28:18', '2016-12-29 07:28:18', '9f87c293-a258-405c-936a-b426e4d0aabb'),
(79, 4, 3, 41, 'en_us', 28, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-29 07:40:47', '2016-12-29 07:40:47', 'a10da8e8-2f6e-491b-a60c-20b9ba7489ce'),
(80, 2, 1, 41, 'en_us', 20, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/146206058.hd.mp4?s=a6973dcf07b105f46d209935b6ae6bd569d20bb3&profile_id=119"}}', '2016-12-29 21:18:09', '2016-12-29 21:18:09', '42b658e4-f1f0-4594-8369-7e6fab6053ef'),
(81, 4, 3, 41, 'en_us', 29, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197361496.hd.mp4?s=94c50baa768aa6bd41fda56926527fc811d35e48&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-30 07:27:36', '2016-12-30 07:27:36', 'e26b0036-9562-4770-bc3c-bf8104afdb40'),
(82, 4, 3, 41, 'en_us', 30, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-30 07:32:53', '2016-12-30 07:32:53', 'b7cc2819-59dc-434d-8313-62144b5e85c5'),
(83, 4, 3, 41, 'en_us', 31, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"El Talbador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-30 07:34:15', '2016-12-30 07:34:15', 'ef51df2f-0851-46f8-8701-0d05ef405ca6'),
(84, 4, 3, 41, 'en_us', 32, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-30 07:36:48', '2016-12-30 07:36:48', '2c79a099-6ebe-4d57-a0c5-0060c467ffc0'),
(85, 4, 3, 41, 'en_us', 33, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-30 07:42:58', '2016-12-30 07:42:58', 'dcb97333-2ef5-4aaa-9e0e-78eab1e4ccb2'),
(86, 4, 3, 41, 'en_us', 34, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf","description":"Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm."}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff","description":"Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself."}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox","description":"Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman."}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins","description":"Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls."}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora","description":"The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it."}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick","description":"Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters. "}},"38":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-30 07:45:11', '2016-12-30 07:45:11', '8b90fd42-f77f-4d4c-808d-1e6c8f4b3a53');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(87, 5, 4, 41, 'en_us', 32, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"10":"We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.","1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"11":"Come work with us when you want to create amazing creatures like we do for NBC''s Grimm, or you need a massive set extension like the cities we did for Last Knights.","13":["62"],"12":["64","58","57"],"26":["56","50","51","53","55"],"9":"Do you need to do a live shoot for your production? We can handle more than fabulous animation and visual effects - we also provide production services. We have the latest cameras with a team of producers and directors standing by."}}', '2016-12-30 07:50:31', '2016-12-30 07:50:31', '01351547-c3dc-46e8-9aa7-f92d27ce8a16'),
(88, 2, 1, 41, 'en_us', 21, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/146206058.hd.mp4?s=a6973dcf07b105f46d209935b6ae6bd569d20bb3&profile_id=119"}}', '2016-12-30 10:10:34', '2016-12-30 10:10:34', '0453de42-27e0-47e6-822b-943ff7561c63'),
(89, 2, 1, 41, 'en_us', 22, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/197488621.hd.mp4?s=05b3f07a71bff83b21a37bcc404d119bd3426eac&profile_id=119"}}', '2016-12-30 17:09:16', '2016-12-30 17:09:16', '2ca343ed-e8c0-41ff-addc-9532c9f89da4'),
(90, 4, 3, 41, 'en_us', 35, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf<\\/p>","description":"<p>Refuge has had the pleasure of helping the team at NBC bring the creatures to life for 6 seasons now. From digital makeup effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"<p>Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-30 21:01:11', '2016-12-30 21:01:11', '2d8e4caf-d654-4c38-aa10-7a9f04f279ce'),
(91, 4, 3, 41, 'en_us', 36, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little Luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"<p>Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-31 01:55:04', '2016-12-31 01:55:04', 'ef41206a-5126-442f-ad7b-95463870ba9f'),
(92, 4, 3, 41, 'en_us', 37, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"<p>Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about building the fantasy cities for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-31 01:57:41', '2016-12-31 01:57:41', 'b3155889-9d50-4493-95b7-54570190a990'),
(93, 4, 3, 41, 'en_us', 38, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"<p>Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["49"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2016-12-31 01:59:34', '2016-12-31 01:59:34', '45cca3f7-9260-46dd-988e-42994d5fc253'),
(94, 5, 4, 41, 'en_us', 33, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["62"],"12":["64","58","57"],"26":["56","50","51","53"]}}', '2016-12-31 02:00:29', '2016-12-31 02:00:29', 'feb9c585-f559-4add-a8f0-ddba25af30b6'),
(95, 5, 4, 41, 'en_us', 34, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["56"],"12":["64","58","57"],"26":["56","50","51","53"]}}', '2016-12-31 02:02:19', '2016-12-31 02:02:19', 'b3925a0c-8c7d-43cd-85eb-f4ec9eaa3041'),
(96, 5, 4, 41, 'en_us', 35, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["56"],"12":["64","58","57"],"26":["56","51","53"]}}', '2016-12-31 02:02:44', '2016-12-31 02:02:44', '3f7d98f8-dbd2-434f-9669-54a4f04d8208'),
(97, 5, 4, 41, 'en_us', 36, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":"","12":["64","58","57"],"26":["56","51","53"]}}', '2016-12-31 02:05:52', '2016-12-31 02:05:52', '84ed614c-0dc3-4846-b683-6cd5e488978c'),
(98, 5, 4, 41, 'en_us', 37, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":"","12":["64","58","57"],"26":["56","51","52"]}}', '2016-12-31 02:07:52', '2016-12-31 02:07:52', 'e97ea72f-ce39-465c-95fa-fa5b61eb70fa'),
(99, 5, 4, 41, 'en_us', 38, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":"","12":["64","58","57"],"26":["72","56","51","52"]}}', '2016-12-31 02:10:59', '2016-12-31 02:10:59', 'ca87b6de-2f43-45e4-bced-0050eec9dd65'),
(100, 5, 4, 41, 'en_us', 39, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":"","12":["64","58","57"],"26":["77","72","51","52"]}}', '2016-12-31 02:15:20', '2016-12-31 02:15:20', 'd944814a-a6fd-485f-9544-3f1b4874bd13'),
(101, 5, 4, 41, 'en_us', 40, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Animation","capabiltyDescription":"<p>We can do many types of computer animation. From 3D stylized and photo-realistic to classic cartoon styles, we would love to use all of our skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Although Refuge focuses on character animation, we are well versed in all types of visual effects. From massive city recreations to simple wire removals, we can do it all. Check out the work we''ve done for&nbsp;NBC''s Grimm on our portfolio page.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":"","12":["64","57"],"26":["77","72","51","52"]}}', '2016-12-31 02:18:21', '2016-12-31 02:18:21', 'e3ba9859-bf44-4613-815b-3edfe09e935d'),
(102, 5, 4, 41, 'en_us', 41, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":"","12":["64","57"],"26":["77","72","51","52"]}}', '2016-12-31 02:21:45', '2016-12-31 02:21:45', '22788073-f1b0-45b0-8630-598ed9f66bd6'),
(103, 5, 4, 41, 'en_us', 42, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["73"],"12":["64","57"],"26":["77","72","51","52"]}}', '2016-12-31 02:22:22', '2016-12-31 02:22:22', 'ad54719d-9650-4f82-ae6c-ef98fa272e58'),
(104, 5, 4, 41, 'en_us', 43, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["79"],"12":["64","57"],"26":["77","72","51","52","73"]}}', '2016-12-31 02:27:03', '2016-12-31 02:27:03', '136eb9f5-73b7-41b7-a0ff-6e8ba0cc218e'),
(105, 5, 4, 41, 'en_us', 44, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["56"],"12":["64","57"],"26":["72","51","52"]}}', '2016-12-31 02:28:21', '2016-12-31 02:28:21', '573f70ff-8d4a-461b-adb2-2dd00e310b77'),
(106, 5, 4, 41, 'en_us', 45, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["64","57"],"26":["72","51","52"]}}', '2016-12-31 02:29:17', '2016-12-31 02:29:17', '1f51b039-e50c-4e55-8a2a-cdc75290e01b'),
(107, 5, 4, 41, 'en_us', 46, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["64","57"],"26":["51","72","52"]}}', '2016-12-31 02:30:05', '2016-12-31 02:30:05', 'd311c55e-f5c5-458e-ab5c-dce5c7ff919d'),
(108, 5, 4, 41, 'en_us', 47, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["81","82","83","84","85"],"26":["51","72","52"]}}', '2016-12-31 04:58:27', '2016-12-31 04:58:27', 'dc4927da-ec75-4be4-8b6a-8309f42b8222'),
(109, 5, 4, 41, 'en_us', 48, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["81","82","83","84","85"],"26":["51","72","52"]}}', '2016-12-31 05:22:41', '2016-12-31 05:22:41', '022f7d37-0bce-4b79-bc6d-0a4406d152ac'),
(110, 5, 4, 41, 'en_us', 49, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}},"new1":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Capability","capabiltyDescription":"<p>Text here<\\/p>"}}},"13":["80"],"12":["81","82","83","84","85"],"26":["51","72","52"]}}', '2016-12-31 05:23:35', '2016-12-31 05:23:35', 'a90b95da-4b7b-4634-b68a-8da3065b547b'),
(111, 5, 4, 41, 'en_us', 50, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}},"86":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Capability","capabiltyDescription":"<p>Text here<\\/p>"}}},"13":["80"],"12":["81","82","83","84","85"],"26":["51","72","52"]}}', '2016-12-31 05:24:04', '2016-12-31 05:24:04', 'c33bd223-8773-44cb-a763-be6d1f97a7d5');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(112, 5, 4, 1, 'en_us', 51, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["81","82","83","84","85"],"26":["51","72","52"]}}', '2016-12-31 17:12:19', '2016-12-31 17:12:19', '7f75a895-6778-4a15-9191-b26034c0bc65'),
(113, 2, 1, 41, 'en_us', 23, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/197821599.hd.mp4?s=6ddf64964ea6c03b310e9190aa372b2a40c9df73&profile_id=119"}}', '2017-01-02 22:20:41', '2017-01-02 22:20:41', 'aefb7523-9aee-493f-942f-4d88a71e0f9c'),
(114, 2, 1, 41, 'en_us', 24, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/197821599.hd.mp4?s=6ddf64964ea6c03b310e9190aa372b2a40c9df73&profile_id=119"}}', '2017-01-03 08:27:52', '2017-01-03 08:27:52', '1353f149-cfcb-4450-9845-b6f27ea87af5'),
(115, 2, 1, 41, 'en_us', 25, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/197821599.hd.mp4?s=6ddf64964ea6c03b310e9190aa372b2a40c9df73&profile_id=119"}}', '2017-01-03 08:27:53', '2017-01-03 08:27:53', '2395a41b-61e7-4c89-a66a-7c789b17fd5d'),
(116, 5, 4, 41, 'en_us', 52, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["83","84","85"],"26":["51","72","52"]}}', '2017-01-03 08:28:26', '2017-01-03 08:28:26', 'd88bed0f-9801-4f91-98a7-74d5d4ffdfc9'),
(117, 5, 4, 41, 'en_us', 53, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We have character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["85","83","84"],"26":["51","72","52"]}}', '2017-01-03 08:29:00', '2017-01-03 08:29:00', '370cd897-c6c8-4c6c-a498-2a2ef9d3a065'),
(118, 4, 3, 41, 'en_us', 39, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor Ed Irastorza, Executive Producer Norberto Barbera, Show Runners David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["47"],"videoTitle":"The Last Knights","videoCredits":"<p>Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-03 08:33:08', '2017-01-03 08:33:08', '3c083f09-4199-41e9-8390-fa0c8a39a266'),
(119, 2, 1, 41, 'en_us', 26, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/197821599.hd.mp4?s=6ddf64964ea6c03b310e9190aa372b2a40c9df73&profile_id=119"}}', '2017-01-03 08:39:12', '2017-01-03 08:39:12', '6cd01382-620d-403d-be0f-2b0e4a649160'),
(120, 2, 1, 41, 'en_us', 27, '', '{"typeId":"1","authorId":null,"title":"Home","slug":"homepage","postDate":1481243997,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>People don\\u2019t empathize with explosions. They don\\u2019t fall in love with particles. They don\\u2019t root for rigging, or set extensions. Those may be our tools, but they\\u2019re not why we\\u2019re here. The audience comes for the characters. And we\\u2019re the ones who bring them to life.<\\/p>","5":"We Build Character.","3":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","6":["71"],"4":"https:\\/\\/player.vimeo.com\\/external\\/197821599.hd.mp4?s=6ddf64964ea6c03b310e9190aa372b2a40c9df73&profile_id=119"}}', '2017-01-03 08:39:13', '2017-01-03 08:39:13', '642b5ee1-f8e0-4585-90d4-4b29e0c8970a'),
(121, 4, 3, 41, 'en_us', 40, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor Ed Irastorza<\\/p><p>Executive Producer Norberto Barbera<\\/p><p>Show Runners David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director Rob Shaw, Supervising Animator Eric Scheur, Technical Director Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":"","videoTitle":"The Last Knights","videoCredits":"<p>Director Kazuaki Kiriya, Visual FX Supervisor Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director Fred Ruff, Producer Jose Behar, Creator Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator Eric Schuer, Visual FX Supervisor Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer Fred Ruff, Director Rob Shaw, Starring Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-03 08:41:24', '2017-01-03 08:41:24', '6c09080a-a4ec-4afe-ae2f-e71bc5e1f3d2'),
(122, 4, 3, 41, 'en_us', 41, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/146206123.hd.mp4?s=38b4a10971c10cf975692ad7aef7ea61c69769e1&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor: Ed Irastorza<\\/p>\\r\\n<p>Director: Norberto Barbera<\\/p>\\r\\n<p>Executive Producers: David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director: Rob Shaw<\\/p><p>Supervising Animator: Eric Scheur<\\/p><p>Technical Director: Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":"","videoTitle":"The Last Knights","videoCredits":"<p>Director: Kazuaki Kiriya<\\/p><p>Visual FX Supervisor: Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director: Fred Ruff<\\/p><p>Producer: Jose Behar<\\/p><p>Created By:&nbsp;Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator: Eric Schuer<\\/p><p>Visual FX Supervisor: Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer: Fred Ruff<\\/p><p>Director: Rob Shaw<\\/p><p>Starring:&nbsp;Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-03 08:44:15', '2017-01-03 08:44:15', '91e1d515-5fc6-47eb-bbdf-e66e6e1c5d14'),
(123, 5, 4, 41, 'en_us', 54, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We Have Character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["85","83","84"],"26":["51","72","52"]}}', '2017-01-03 08:45:04', '2017-01-03 08:45:04', '2bd3ea76-d8f0-4ef8-b336-114269f77ef8'),
(124, 5, 4, 41, 'en_us', 55, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We Have Character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["85","83","92","84"],"26":["51","72","52"]}}', '2017-01-04 00:47:25', '2017-01-04 00:47:25', '5a2e3077-9b8d-46bc-a3d0-61f47953d59a'),
(125, 4, 3, 41, 'en_us', 42, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197984435.hd.mp4?s=499cada71e87bde2c4819d993d4d4bc82da54129&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor: Ed Irastorza<\\/p>\\r\\n<p>Director: Norberto Barbera<\\/p>\\r\\n<p>Executive Producers: David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director: Rob Shaw<\\/p>\\r\\n<p>Supervising Animator: Eric Scheur<\\/p>\\r\\n<p>Technical Director: Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":"","videoTitle":"The Last Knights","videoCredits":"<p>Director: Kazuaki Kiriya<\\/p>\\r\\n<p>Visual FX Supervisor: Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director: Fred Ruff<\\/p>\\r\\n<p>Producer: Jose Behar<\\/p>\\r\\n<p>Created By:&nbsp;Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator: Eric Schuer<\\/p>\\r\\n<p>Visual FX Supervisor: Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer: Fred Ruff<\\/p>\\r\\n<p>Director: Rob Shaw<\\/p>\\r\\n<p>Starring:&nbsp;Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-04 03:54:31', '2017-01-04 03:54:31', '7f2b8204-7e14-466e-ad8a-7053135cbb36'),
(126, 4, 3, 41, 'en_us', 43, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197984435.hd.mp4?s=499cada71e87bde2c4819d993d4d4bc82da54129&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor: Ed Irastorza<\\/p>\\r\\n<p>Director: Norberto Barbera<\\/p>\\r\\n<p>Executive Producers: David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director: Rob Shaw<\\/p>\\r\\n<p>Supervising Animator: Eric Scheur<\\/p>\\r\\n<p>Technical Director: Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["93"],"videoTitle":"The Last Knights","videoCredits":"<p>Director: Kazuaki Kiriya<\\/p>\\r\\n<p>Visual FX Supervisor: Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director: Fred Ruff<\\/p>\\r\\n<p>Producer: Jose Behar<\\/p>\\r\\n<p>Created By:&nbsp;Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator: Eric Schuer<\\/p>\\r\\n<p>Visual FX Supervisor: Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer: Fred Ruff<\\/p>\\r\\n<p>Director: Rob Shaw<\\/p>\\r\\n<p>Starring:&nbsp;Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-04 03:58:07', '2017-01-04 03:58:07', '32c6e259-78fe-433a-bffc-84d0a6240fd5'),
(127, 4, 3, 41, 'en_us', 44, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197984435.hd.mp4?s=499cada71e87bde2c4819d993d4d4bc82da54129&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor: Ed Irastorza<\\/p>\\r\\n<p>Director: Norberto Barbera<\\/p>\\r\\n<p>Executive Producers: David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director: Rob Shaw<\\/p>\\r\\n<p>Supervising Animator: Eric Scheur<\\/p>\\r\\n<p>Technical Director: Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["93"],"videoTitle":"The Last Knights","videoCredits":"<p>Director: Kazuaki Kiriya<\\/p>\\r\\n<p>Visual FX Supervisor: Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director: Fred Ruff<\\/p>\\r\\n<p>Producer: Jose Behar<\\/p>\\r\\n<p>Created By:&nbsp;Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator: Eric Schuer<\\/p>\\r\\n<p>Visual FX Supervisor: Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer: Fred Ruff<\\/p>\\r\\n<p>Director: Rob Shaw<\\/p>\\r\\n<p>Starring:&nbsp;Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-04 03:59:53', '2017-01-04 03:59:53', '20d5db24-67ba-4db3-abef-e926a1dafc40'),
(128, 5, 4, 41, 'en_us', 56, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We Have Character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["85","83","84","95","96","97"],"26":["51","72","52"]}}', '2017-01-04 04:07:28', '2017-01-04 04:07:28', '1d143904-c1f1-4c23-b1fd-1a14d6723527'),
(129, 5, 4, 41, 'en_us', 57, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We Have Character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["85","95","96","84","97"],"26":["51","72","52"]}}', '2017-01-04 04:08:06', '2017-01-04 04:08:06', 'c770b8c4-b8a0-4a8e-acae-3bb230aec587'),
(130, 4, 3, 41, 'en_us', 45, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197984435.hd.mp4?s=499cada71e87bde2c4819d993d4d4bc82da54129&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor: Ed Irastorza<\\/p>\\r\\n<p>Director: Norberto Barbera<\\/p>\\r\\n<p>Executive Producers: David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director: Rob Shaw<\\/p>\\r\\n<p>Supervising Animator: Eric Scheur<\\/p>\\r\\n<p>Technical Director: Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["93"],"videoTitle":"The Last Knights","videoCredits":"<p>Director: Kazuaki Kiriya<\\/p>\\r\\n<p>Visual FX Supervisor: Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director: Fred Ruff<\\/p>\\r\\n<p>Producer: Jose Behar<\\/p>\\r\\n<p>Created By:&nbsp;Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator: Eric Schuer<\\/p>\\r\\n<p>Visual FX Supervisor: Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer: Fred Ruff<\\/p>\\r\\n<p>Director: Rob Shaw<\\/p>\\r\\n<p>Starring:&nbsp;Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-04 04:28:28', '2017-01-04 04:28:28', '8de5bf61-f4da-4ab6-899d-3dd095a9ba14'),
(131, 5, 4, 41, 'en_us', 58, '', '{"typeId":null,"authorId":null,"title":"studio","slug":"studio","postDate":1481244348,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Portland, OR. The land of craft beer, craft coffee, craft doughnuts. And inside our studio of twenty-some artists, craft characters. We use tools of science to make pieces of art. If we\\u2019re not showing the world something new, we haven\\u2019t done our job.<\\/p>","5":"We Have Character.","27":{"42":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Character Animation","capabiltyDescription":"<p>Refuge focuses on several types of character&nbsp;animation. From&nbsp;stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation&nbsp;skills to help bring your animated ideas to life.<\\/p>"}},"43":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Visual Effects","capabiltyDescription":"<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from&nbsp;wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.<\\/p>"}},"44":{"type":"capability","enabled":"1","fields":{"capabilityTitle":"Finishing","capabiltyDescription":"<p>Come sit with us and let us handle the final steps of finishing, color correction and output.<\\/p>"}}},"13":["80"],"12":["85","95","96","97"],"26":["51","72","52"]}}', '2017-01-04 20:45:36', '2017-01-04 20:45:36', '2d7b7cf0-049a-42b9-9875-73a9ba8adb6f');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(132, 4, 3, 41, 'en_us', 46, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197984435.hd.mp4?s=499cada71e87bde2c4819d993d4d4bc82da54129&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor: Ed Irastorza<\\/p><p>Visual Effects Producer: Adam Lambert<\\/p><p>Post Supervisor:&nbsp;Julie Herlocker<\\/p>\\r\\n<p>Executive Producers: David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director: Rob Shaw<\\/p>\\r\\n<p>Supervising Animator: Eric Scheur<\\/p>\\r\\n<p>Technical Director: Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["93"],"videoTitle":"The Last Knights","videoCredits":"<p>Director: Kazuaki Kiriya<\\/p>\\r\\n<p>Visual FX Supervisor: Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director: Fred Ruff<\\/p>\\r\\n<p>Producer: Jose Behar<\\/p>\\r\\n<p>Created By:&nbsp;Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator: Eric Schuer<\\/p>\\r\\n<p>Visual FX Supervisor: Ed Irastora<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer: Fred Ruff<\\/p>\\r\\n<p>Director: Rob Shaw<\\/p>\\r\\n<p>Starring:&nbsp;Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-05 05:45:32', '2017-01-05 05:45:32', '397d46d5-a158-47b7-979f-67f391d7bdab'),
(133, 4, 3, 41, 'en_us', 47, '', '{"typeId":null,"authorId":null,"title":"portfolio","slug":"portfolio","postDate":1481244336,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"14":{"68":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197984435.hd.mp4?s=499cada71e87bde2c4819d993d4d4bc82da54129&profile_id=119","videoPoster":["70"],"videoTitle":"NBC''s Grimm","videoCredits":"<p>Visual Effects Supervisor: Ed Irastorza<\\/p>\\r\\n<p>Visual Effects Producer: Adam Lambert<\\/p>\\r\\n<p>Post Supervisor:&nbsp;Julie Herlocker<\\/p>\\r\\n<p>Executive Producers: David Greenwalt Jim Kouf<\\/p>","description":"<p>The team at&nbsp;Refuge has had the pleasure of working on the hit&nbsp;NBC series Grimm&nbsp;for 6 seasons now. From all the mysterious&nbsp;wessen creatures, to&nbsp;digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.<\\/p>"}},"7":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174","videoPoster":["46"],"videoTitle":"Koodo Mobile - El Tabador","videoCredits":"<p>Director: Rob Shaw<\\/p>\\r\\n<p>Supervising Animator: Eric Scheur<\\/p>\\r\\n<p>Technical Director: Fred Ruff<\\/p>","description":"<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox&nbsp;on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.<\\/p>"}},"20":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119","videoPoster":["93"],"videoTitle":"The Last Knights","videoCredits":"<p>Director: Kazuaki Kiriya<\\/p>\\r\\n<p>Visual Effects Supervisor: Tarn Fox<\\/p>","description":"<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the&nbsp;fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.<\\/p>"}},"35":{"type":"caseStudy","enabled":"","fields":{"videoLink":"","videoPoster":["48"],"videoTitle":"Stella\\u2019s Baby-Sitting Service","videoCredits":"<p>Director: Fred Ruff<\\/p>\\r\\n<p>Producer: Jose Behar<\\/p>\\r\\n<p>Created By:&nbsp;Mike Wellins<\\/p>","description":"<p>Refuges founder Fred Ruff along with producer Jose Behar and writer\\/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.<\\/p>"}},"36":{"type":"caseStudy","enabled":"1","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119","videoPoster":["87"],"videoTitle":"Grimm - The Rat King","videoCredits":"<p>Supervising Animator: Eric Schuer<\\/p>\\r\\n<p>Animation Director: Fred Ruff<\\/p>","description":"<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC\\u2019s Grimm and then brings it down by electrocuting it.<\\/p>"}},"37":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/player.vimeo.com\\/external\\/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119","videoPoster":"","videoTitle":"Medieval Monsters","videoCredits":"<p>Writer: Fred Ruff<\\/p>\\r\\n<p>Director: Rob Shaw<\\/p>\\r\\n<p>Starring:&nbsp;Austin Hillebrecht and Dennis FItzpatrick<\\/p>","description":"<p>Refuge\\u2019s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.<\\/p>"}},"38":{"type":"caseStudy","enabled":"","fields":{"videoLink":"https:\\/\\/www.youtube.com\\/watch?v=vojbt3kpVuo","videoPoster":"","videoTitle":"Grimm VR Experience","videoCredits":"","description":""}}}}}', '2017-01-05 05:46:44', '2017-01-05 05:46:44', '98dd50ca-17ac-40e2-a3b8-c8c67ea68193');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE IF NOT EXISTS `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2016-12-08 18:40:27', '2016-12-08 18:40:27', 'cf19ad26-2f83-43f3-b87f-e1410ac258bb'),
(2, 'home', '2016-12-09 18:04:13', '2016-12-09 18:04:13', '4594f910-5bde-47f1-a9ed-324b64355dcd'),
(3, 'studio', '2016-12-09 18:53:36', '2016-12-09 18:53:36', 'd5f41d75-ee02-4ef8-9d48-063c8e4cd0ab'),
(4, 'portfolio', '2016-12-09 19:10:53', '2016-12-09 19:10:53', '3f3b35a5-eab4-4aac-9dc2-fa8f42462603'),
(5, 'footer', '2016-12-09 22:13:15', '2016-12-09 22:13:15', '01105d48-c3ac-4a37-99bb-f475dbf689f9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=84 ;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(9, 11, 4, 3, 0, 1, '2016-12-09 18:22:38', '2016-12-09 18:22:38', 'e8b3360f-b031-4e6e-a642-173fa5d2a159'),
(10, 11, 4, 6, 0, 2, '2016-12-09 18:22:38', '2016-12-09 18:22:38', '491deb19-e296-4eb4-ba15-d7c610908589'),
(11, 11, 4, 4, 0, 3, '2016-12-09 18:22:38', '2016-12-09 18:22:38', '5f1d1077-fbbf-412b-aa8d-eed099b78063'),
(12, 11, 4, 5, 0, 4, '2016-12-09 18:22:38', '2016-12-09 18:22:38', 'cf6a08c9-3f5f-43ee-92ee-6f8267ca5b3e'),
(13, 11, 4, 1, 1, 5, '2016-12-09 18:22:38', '2016-12-09 18:22:38', 'a6aa7488-5732-4691-9e7e-adcf990ffc0e'),
(32, 20, 8, 14, 0, 1, '2016-12-09 19:20:13', '2016-12-09 19:20:13', '78cfce23-3580-4dfb-bc71-bf49a723a387'),
(38, 25, 10, 23, 0, 1, '2016-12-09 22:15:49', '2016-12-09 22:15:49', '63334f12-e237-4ea5-ab70-498aa5b3621f'),
(39, 25, 10, 24, 0, 2, '2016-12-09 22:15:49', '2016-12-09 22:15:49', '68419274-cc25-4ec1-b9dc-0401d2071bfe'),
(43, 27, 12, 20, 0, 1, '2016-12-09 22:19:53', '2016-12-09 22:19:53', '705bfc08-a28c-43f0-bcef-dba2a4927b6e'),
(44, 27, 12, 21, 0, 2, '2016-12-09 22:19:53', '2016-12-09 22:19:53', 'bc11220e-bb7d-48b0-866f-7f6c2c38a7f6'),
(45, 27, 12, 22, 0, 3, '2016-12-09 22:19:53', '2016-12-09 22:19:53', '9bb2bf75-582c-4517-8bd6-7b2887056e7d'),
(46, 27, 12, 25, 0, 4, '2016-12-09 22:19:53', '2016-12-09 22:19:53', 'e468a56f-3bf8-484b-b091-9cefdb1e5e80'),
(66, 45, 16, 28, 0, 1, '2016-12-29 04:07:10', '2016-12-29 04:07:10', '7eac341f-75e6-4d9c-b7c3-58ff1537af72'),
(67, 45, 16, 29, 0, 2, '2016-12-29 04:07:10', '2016-12-29 04:07:10', '2f3b3d3e-f8bf-41c3-9a76-337505d4330d'),
(68, 46, 17, 26, 0, 1, '2016-12-30 17:37:03', '2016-12-30 17:37:03', 'a81befa8-3156-4fee-a9aa-64bd9dad3720'),
(69, 46, 17, 5, 0, 2, '2016-12-30 17:37:03', '2016-12-30 17:37:03', '202365b7-ac26-4190-bdca-8ce6e329122f'),
(70, 46, 17, 1, 0, 3, '2016-12-30 17:37:03', '2016-12-30 17:37:03', '61ec1ca9-3798-4356-876c-4c0e5ef249a4'),
(71, 46, 17, 12, 0, 4, '2016-12-30 17:37:03', '2016-12-30 17:37:03', 'c8be6f59-3b60-42bd-a343-5522996f0e70'),
(72, 46, 17, 27, 0, 5, '2016-12-30 17:37:03', '2016-12-30 17:37:03', '64417ba2-b666-4066-aec6-637c909d037d'),
(73, 46, 17, 13, 0, 6, '2016-12-30 17:37:03', '2016-12-30 17:37:03', '8698a79e-4f5b-41d2-a511-0e505f72779a'),
(79, 48, 19, 15, 0, 1, '2016-12-30 17:39:17', '2016-12-30 17:39:17', 'cbc74eab-5de8-4b95-850b-9d5315ffa2be'),
(80, 48, 19, 16, 0, 2, '2016-12-30 17:39:17', '2016-12-30 17:39:17', '9a5d3351-11a3-4fb3-a503-aee4ff0c39ba'),
(81, 48, 19, 17, 0, 3, '2016-12-30 17:39:17', '2016-12-30 17:39:17', 'b700ee26-2985-4faf-90eb-f592e356385b'),
(82, 48, 19, 18, 0, 4, '2016-12-30 17:39:17', '2016-12-30 17:39:17', 'a78f6b70-53d7-4f16-b1d5-d5a6e785add9'),
(83, 48, 19, 19, 0, 5, '2016-12-30 17:39:17', '2016-12-30 17:39:17', '9ff70b43-fbab-41e3-9029-91de2c5d48d9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2016-12-08 18:40:27', '2016-12-08 18:40:27', 'f565f8ec-f72a-47b9-bda9-41bd758e90fb'),
(11, 'Entry', '2016-12-09 18:22:38', '2016-12-09 18:22:38', '95cdf42b-e509-4398-a74a-fb61f7cf6a17'),
(20, 'Entry', '2016-12-09 19:20:13', '2016-12-09 19:20:13', '787a954c-e851-4cb3-b628-0c3c1edec945'),
(25, 'MatrixBlock', '2016-12-09 22:15:49', '2016-12-09 22:15:49', 'cb1e5b73-d9de-4d9e-b1fe-f2948afe9132'),
(27, 'GlobalSet', '2016-12-09 22:19:53', '2016-12-09 22:19:53', '13135395-53c0-4612-a19b-26391fcd590b'),
(42, 'Asset', '2016-12-28 22:32:25', '2016-12-28 22:32:25', '30ce2c83-6485-4b12-a653-a45bb9d88103'),
(45, 'MatrixBlock', '2016-12-29 04:07:10', '2016-12-29 04:07:10', 'f9cf19c5-304c-4eed-9198-16ffa037c5fb'),
(46, 'Entry', '2016-12-30 17:37:03', '2016-12-30 17:37:03', '9034026e-966d-4623-8a4b-55f29f8d5594'),
(48, 'MatrixBlock', '2016-12-30 17:39:17', '2016-12-30 17:39:17', '9c6a739b-5c9e-4a28-9720-19724718697b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 11, 'Content', 1, '2016-12-09 18:22:38', '2016-12-09 18:22:38', '3a519a16-e916-45f1-bf9c-e6b4fc1adbdc'),
(8, 20, 'Tab 1', 1, '2016-12-09 19:20:13', '2016-12-09 19:20:13', 'b800951b-90f9-4771-9bca-cb3736344d9d'),
(10, 25, 'Content', 1, '2016-12-09 22:15:49', '2016-12-09 22:15:49', '6eb95a96-1310-4a72-a0ff-ed2a9e3930bf'),
(12, 27, 'Content', 1, '2016-12-09 22:19:53', '2016-12-09 22:19:53', '9cb23b51-083b-40ed-974a-ee43029f967d'),
(16, 45, 'Content', 1, '2016-12-29 04:07:10', '2016-12-29 04:07:10', '3d12fd4b-2e0a-4129-a9f9-c8be9b0ee782'),
(17, 46, 'Tab 1', 1, '2016-12-30 17:37:03', '2016-12-30 17:37:03', 'be80d7c9-9fb7-4543-a27d-21fef1c0961a'),
(19, 48, 'Content', 1, '2016-12-30 17:39:17', '2016-12-30 17:39:17', '57b420be-c3b1-4bae-b9a1-374d5ea64096');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE IF NOT EXISTS `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_groupId_fk` (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{"configFile":"Standard.json","columnType":"text"}', '2016-12-08 18:40:27', '2016-12-08 18:40:27', 'd220e293-0e62-45dd-b680-16a6bb0c0eb5'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2016-12-08 18:40:27', '2016-12-08 18:40:27', '36e0ed9d-163c-43ff-ae38-ceb50e8fa9a7'),
(3, 2, 'Intro video', 'introVideo', 'global', 'Paste in link to vimeo hosted HD video here', 0, 'PlainText', '{"placeholder":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 18:07:48', '2016-12-09 18:07:48', 'e2b72bed-bdf2-4624-8e36-3b08d84afc41'),
(4, 2, 'Refuge Reel', 'refugeReel', 'global', 'Paste in link to vimeo hosted HD video', 0, 'PlainText', '{"placeholder":"https:\\/\\/player.vimeo.com\\/external\\/194283433.hd.mp4?s=1856000a93080f138912d7a5f17d68632c3edfe5&profile_id=119","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 18:08:33', '2016-12-09 18:08:33', '54557526-1eef-4193-81e8-488d9607c499'),
(5, 2, 'Body Content Header', 'bodyContentHeader', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 18:11:16', '2016-12-09 18:11:16', 'a47ddcd6-3250-4f41-992e-ef3d5947f5fd'),
(6, 2, 'Mobile Intro Image', 'mobileIntroImage', 'global', 'Upload an image that will greet mobile users ( > 800px width and height)', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:1"],"defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"list","selectionLabel":"Upload Mobile Cover Image"}', '2016-12-09 18:14:51', '2016-12-09 18:22:17', '18c8a7a1-469e-46a4-a998-0aa087c93380'),
(7, 3, 'Cover', 'cover', 'global', 'Upload a cover image', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"large","selectionLabel":"Upload a cover image"}', '2016-12-09 18:54:45', '2016-12-09 18:58:40', 'de459c87-3859-4b80-bf11-1ebb2393d068'),
(9, 3, 'Production', 'production', 'global', 'Production capability description', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"1","initialRows":"4"}', '2016-12-09 18:57:20', '2016-12-09 18:57:20', '6b9253ee-6583-4b94-8357-a8aa528228a2'),
(10, 3, 'Animation', 'animation', 'global', 'Animation capability description', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"1","initialRows":"4"}', '2016-12-09 18:58:07', '2016-12-09 18:58:07', '8c241a8b-ddd3-419a-b3fb-792af150ab4c'),
(11, 3, 'Finishing', 'finishing', 'global', 'Finishing capability description', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"1","initialRows":"4"}', '2016-12-09 18:58:26', '2016-12-09 18:58:26', 'a6c7d456-c8c3-49c3-9bb7-725f1f39711b'),
(12, 3, 'Image Carousel', 'imageCarousel', 'global', 'upload images for slideshow (1000px x 667px)', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"list","selectionLabel":"Image Carrossel"}', '2016-12-09 19:00:25', '2016-12-09 21:38:49', '3a8265a8-ccd6-4037-95b9-e8716e65eb12'),
(13, 3, 'image', 'image', 'global', 'Upload an image', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"","viewMode":"large","selectionLabel":""}', '2016-12-09 19:01:20', '2016-12-09 19:01:20', '3b283d61-20c6-4fb7-a3e8-31ff05ca9e1b'),
(14, 4, 'Portfolio Item', 'portfolioItem', 'global', '', 0, 'Matrix', '{"maxBlocks":null}', '2016-12-09 19:16:48', '2016-12-30 17:39:17', 'd7d50c01-c32d-4e28-b155-daec3e1d09f6'),
(15, NULL, 'video link', 'videoLink', 'matrixBlockType:1', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 19:16:48', '2016-12-30 17:39:17', '981e507e-ad15-4ba9-86db-c48c2be0f661'),
(16, NULL, 'Video Poster', 'videoPoster', 'matrixBlockType:1', 'Upload a cover image for your video', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"list","selectionLabel":""}', '2016-12-09 19:16:48', '2016-12-30 17:39:17', '73933b69-4f21-4901-af74-f01696436faa'),
(17, NULL, 'Video Title', 'videoTitle', 'matrixBlockType:1', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 19:16:48', '2016-12-30 17:39:17', 'a80ad74c-3040-4d6d-a403-60ed25f36dfa'),
(18, NULL, 'Video Credits', 'videoCredits', 'matrixBlockType:1', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-12-09 19:16:48', '2016-12-30 17:39:17', '7535e644-3f1a-4656-9f8a-cf87cdf97948'),
(19, NULL, 'Description', 'description', 'matrixBlockType:1', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-12-09 19:16:48', '2016-12-30 17:39:17', 'ac92a713-09db-434e-89a4-17c7d528bad5'),
(20, 5, 'email', 'email', 'global', 'email address', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 22:13:47', '2016-12-09 22:13:47', 'c9c59e58-ebaa-4376-883f-a90acf7497c2'),
(21, 5, 'phone', 'phone', 'global', 'phone number', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 22:14:02', '2016-12-09 22:14:02', '1d459e2b-4209-42e1-8a40-18f3900bf3e4'),
(22, 5, 'address', 'address', 'global', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-12-09 22:15:49', '2016-12-09 22:23:38', '4bf60a4c-d3e0-4e9f-831e-7ed0e878ce83'),
(23, NULL, 'address', 'address', 'matrixBlockType:2', 'address', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 22:15:49', '2016-12-09 22:15:49', '8b4d9741-ff49-4c1d-8c15-6c66f57387b3'),
(24, NULL, 'link to map', 'linkToMap', 'matrixBlockType:2', 'Google map of address url', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 22:15:49', '2016-12-09 22:15:49', 'bb7d6666-62ca-4982-a074-c69528651771'),
(25, 5, 'map url', 'mapUrl', 'global', 'google map to address url', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-09 22:19:32', '2016-12-09 22:19:32', '469f84f9-1d91-42e6-87ce-59f0e760eb1c'),
(26, 3, 'Intro Image Carousel', 'introImageCarousel', 'global', 'Upload landscape images with 16 x 6 aspect ration', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"10","viewMode":"list","selectionLabel":"Add a cover image"}', '2016-12-22 17:21:42', '2016-12-22 17:22:09', 'aadc920f-fb27-49fd-99db-0edee2ecf9bc'),
(27, 3, 'capability', 'capability', 'global', '', 0, 'Matrix', '{"maxBlocks":null}', '2016-12-29 04:02:13', '2016-12-29 04:07:10', '610c5501-52df-4663-beaa-4e449defc794'),
(28, NULL, 'capability title', 'capabilityTitle', 'matrixBlockType:3', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-12-29 04:02:13', '2016-12-29 04:07:10', 'd9eb91a4-2979-400f-a3bd-43f45dc8184c'),
(29, NULL, 'capabilty description', 'capabiltyDescription', 'matrixBlockType:3', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-12-29 04:02:13', '2016-12-29 04:07:10', '9b6e5bfb-5c5d-464b-946a-273a15dc3a29');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE IF NOT EXISTS `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(21, 'footer', 'footer', 27, '2016-12-09 22:13:00', '2016-12-09 22:19:53', '75fd6ade-6a15-48fb-b51f-cb3a35f48ae7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE IF NOT EXISTS `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6.2957', '2.6.9', 1, 'Refuge VFX', 'http://refugevfx.com/', 'UTC', 1, 0, '2016-12-08 18:40:23', '2016-12-31 17:12:36', '79acac90-5881-42aa-ad7a-193e9b55cd87');

-- --------------------------------------------------------

--
-- Table structure for table `craft_locales`
--

CREATE TABLE IF NOT EXISTS `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en_us', 1, '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'adb3cc93-8d3e-45b3-85fb-92e256cecd33');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 4, 14, 1, 2, NULL, '2016-12-09 19:25:00', '2017-01-05 05:46:44', '0742a6e8-b432-4d3c-9ccc-83106216aedb'),
(20, 4, 14, 1, 3, NULL, '2016-12-09 22:09:22', '2017-01-05 05:46:44', '6d9d8a92-ef08-43d7-9f39-d7cd8c6dbd22'),
(22, 21, 22, 2, 1, NULL, '2016-12-09 22:17:59', '2016-12-09 22:17:59', '2b2d3104-9563-45ab-9f73-adb3c8b39527'),
(35, 4, 14, 1, 4, NULL, '2016-12-27 21:04:43', '2017-01-05 05:46:44', 'b7de278c-1249-4ba3-b48c-1818738455e3'),
(36, 4, 14, 1, 5, NULL, '2016-12-27 21:27:40', '2017-01-05 05:46:44', '640168a0-3a37-44af-b785-ea0d3382b83a'),
(37, 4, 14, 1, 6, NULL, '2016-12-27 21:27:40', '2017-01-05 05:46:44', '316ea581-609b-4761-811b-ce4365d95d00'),
(38, 4, 14, 1, 7, NULL, '2016-12-27 21:27:40', '2017-01-05 05:46:44', '6b73e330-ec85-4f7e-9c4a-844ed212c2b3'),
(42, 5, 27, 3, 1, NULL, '2016-12-29 04:03:49', '2017-01-04 20:45:36', '170a318a-33b1-4dea-a8db-52b1d515d384'),
(43, 5, 27, 3, 2, NULL, '2016-12-29 04:03:49', '2017-01-04 20:45:36', 'd53ee5d3-8ccc-4cc8-b069-2b3a3cea4dcc'),
(44, 5, 27, 3, 3, NULL, '2016-12-29 04:03:49', '2017-01-04 20:45:36', '5178744b-421b-465f-af2a-7eaeaa226789'),
(68, 4, 14, 1, 1, NULL, '2016-12-29 07:28:18', '2017-01-05 05:46:44', '4880a944-a9b1-4aaf-adf4-019dfae6b320');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 14, 48, 'case study', 'caseStudy', 1, '2016-12-09 19:16:48', '2016-12-30 17:39:17', 'f0a8b38f-578d-43e1-afa4-cd359f9005ed'),
(2, 22, 25, 'address', 'address', 1, '2016-12-09 22:15:49', '2016-12-09 22:15:49', '6b040bfa-109e-40c0-96e6-fe4898cccdf5'),
(3, 27, 45, 'capability', 'capability', 1, '2016-12-29 04:02:13', '2016-12-29 04:07:10', 'ba02883b-e059-4653-89c5-8d4865e128e8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_address`
--

CREATE TABLE IF NOT EXISTS `craft_matrixcontent_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_address_address` text COLLATE utf8_unicode_ci,
  `field_address_linkToMap` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_address_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_address_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_matrixcontent_address`
--

INSERT INTO `craft_matrixcontent_address` (`id`, `elementId`, `locale`, `field_address_address`, `field_address_linkToMap`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 22, 'en_us', '', '', '2016-12-09 22:17:59', '2016-12-09 22:17:59', '2bf3a837-3ee1-474b-9f27-0c2becd5a658');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_capability`
--

CREATE TABLE IF NOT EXISTS `craft_matrixcontent_capability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_capability_capabilityTitle` text COLLATE utf8_unicode_ci,
  `field_capability_capabiltyDescription` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_capability_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_capability_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_matrixcontent_capability`
--

INSERT INTO `craft_matrixcontent_capability` (`id`, `elementId`, `locale`, `field_capability_capabilityTitle`, `field_capability_capabiltyDescription`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 42, 'en_us', 'Character Animation', '<p>Refuge focuses on several types of character animation. From stylized and photo-realistic to classic cartoon, we would love to use all of our computer animation skills to help bring your animated ideas to life.</p>', '2016-12-29 04:03:49', '2017-01-04 20:45:36', '25a14465-549e-4bd8-be26-38c381c319bc'),
(2, 43, 'en_us', 'Visual Effects', '<p>Refuge we are well versed in all types of visual effects. From massive city recreations to simple set extensions, from wire removals do digital blood and guts, we can do it all. Check out our portfolio page for some examples.</p>', '2016-12-29 04:03:49', '2017-01-04 20:45:36', '6f55739b-3a9b-4fee-9564-e95c344e4ef7'),
(3, 44, 'en_us', 'Finishing', '<p>Come sit with us and let us handle the final steps of finishing, color correction and output.</p>', '2016-12-29 04:03:49', '2017-01-04 20:45:36', '608e8568-29c4-438c-9309-452d6de3f98d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_portfolioitem`
--

CREATE TABLE IF NOT EXISTS `craft_matrixcontent_portfolioitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_caseStudy_videoLink` text COLLATE utf8_unicode_ci,
  `field_caseStudy_videoTitle` text COLLATE utf8_unicode_ci,
  `field_caseStudy_videoCredits` text COLLATE utf8_unicode_ci,
  `field_caseStudy_description` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_portfolioitem_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_portfolioitem_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `craft_matrixcontent_portfolioitem`
--

INSERT INTO `craft_matrixcontent_portfolioitem` (`id`, `elementId`, `locale`, `field_caseStudy_videoLink`, `field_caseStudy_videoTitle`, `field_caseStudy_videoCredits`, `field_caseStudy_description`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 7, 'en_us', 'https://player.vimeo.com/external/197233426.hd.mp4?s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f&profile_id=174', 'Koodo Mobile - El Tabador', '<p>Director: Rob Shaw</p>\n<p>Supervising Animator: Eric Scheur</p>\n<p>Technical Director: Fred Ruff</p>', '<p>Previous to starting Refuge, Fred Ruff worked alongside Lead Animator Eric Scheur and Compositing Supervisor Tarn Fox on a series of commercial spots for a cell phone company that had a tiny Mexican wrestler as their spokesperson. The sexy little luchador had a bold attitude and was full of himself.</p>', '2016-12-09 19:25:00', '2017-01-05 05:46:44', '46bbfaa5-63fa-4e09-932a-b15daecd2032'),
(2, 20, 'en_us', 'https://player.vimeo.com/external/196629330.hd.mp4?s=9393713cad53f098ddbc1bf051983a4f2d8de7c8&profile_id=119', 'The Last Knights', '<p>Director: Kazuaki Kiriya</p>\n<p>Visual Effects Supervisor: Tarn Fox</p>', '<p>Go behind the scenes with the team from Refuge as they talk about the work of creating the fantasy world for the Last Knights, starring Clive Owen and Morgan Freeman.</p>', '2016-12-09 22:09:22', '2017-01-05 05:46:44', 'e1a7318a-28cb-4114-b576-a124a519c175'),
(3, 35, 'en_us', '', 'Stella’s Baby-Sitting Service', '<p>Director: Fred Ruff</p>\n<p>Producer: Jose Behar</p>\n<p>Created By: Mike Wellins</p>', '<p>Refuges founder Fred Ruff along with producer Jose Behar and writer/director Mike Wellins have created an animated cartoon series about Stella Segwick, a young baby-sitter that investigates the strange and the mysterious happening in her town of Trickle Falls.</p>', '2016-12-27 21:04:43', '2017-01-05 05:46:44', '912581b3-f61d-4ed3-8c04-9abfce515faf'),
(4, 36, 'en_us', 'https://player.vimeo.com/external/196639563.hd.mp4?s=64e4e24d932b19918c61e7407481fa2a370eb28c&profile_id=119', 'Grimm - The Rat King', '<p>Supervising Animator: Eric Schuer</p>\n<p>Animation Director: Fred Ruff</p>', '<p>The Refuge team brings a 50ft tall rat creature to life in this episode of NBC’s Grimm and then brings it down by electrocuting it.</p>', '2016-12-27 21:27:40', '2017-01-05 05:46:44', '14fe2f66-d4a2-4480-b15f-d206ebac2b4d'),
(5, 37, 'en_us', 'https://player.vimeo.com/external/196681144.hd.mp4?s=73efd2ac479c72e3fc751971187d6d3e41f1b048&profile_id=119', 'Medieval Monsters', '<p>Writer: Fred Ruff</p>\n<p>Director: Rob Shaw</p>\n<p>Starring: Austin Hillebrecht and Dennis FItzpatrick</p>', '<p>Refuge’s produced a proof of concept that aired on Animal Planet during Monster week. Medieval Monsters combines a mockumentary style sense of humor with the epic fantasy adventures. The Office meets Game of Thrones, with more monsters. Using the familiar structure of a procedural, episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation. Charming characters and state-of-the-art CGI visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters.</p>', '2016-12-27 21:27:40', '2017-01-05 05:46:44', '542b95a4-5a6c-42b3-ac9d-86081f183670'),
(6, 38, 'en_us', 'https://www.youtube.com/watch?v=vojbt3kpVuo', 'Grimm VR Experience', '', '', '2016-12-27 21:27:40', '2017-01-05 05:46:44', '09bb2d2e-6536-4181-9aaa-ceeeebbd0039'),
(7, 68, 'en_us', 'https://player.vimeo.com/external/197984435.hd.mp4?s=499cada71e87bde2c4819d993d4d4bc82da54129&profile_id=119', 'NBC''s Grimm', '<p>Visual Effects Supervisor: Ed Irastorza</p>\n<p>Visual Effects Producer: Adam Lambert</p>\n<p>Post Supervisor: Julie Herlocker</p>\n<p>Executive Producers: David Greenwalt Jim Kouf</p>', '<p>The team at Refuge has had the pleasure of working on the hit NBC series Grimm for 6 seasons now. From all the mysterious wessen creatures, to digital makeup and blood effects, to full creature animation, we''ve helped sculpt and shape the fantasy world of Grimm.</p>', '2016-12-29 07:28:18', '2017-01-05 05:46:44', '8c4f3f63-6600-46da-bda7-4ced8d52fb3d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE IF NOT EXISTS `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '5a70a591-7e10-40ff-8608-9a189ee69e82'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'a22d72a5-b8d8-429a-b088-8bdb6a7c01e1'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'e42e0317-ff99-4a1a-95e1-f1b33d7db185'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '0b2e835d-c497-478c-ab02-a9f9214776d9'),
(5, NULL, 'm140829_000001_single_title_formats', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'f7e084fd-a455-40e4-8d04-662977653249'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'd2bb03a4-5c63-46da-b614-8b43670b4c0a'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'e3fdda2a-da18-4bd2-9b2a-d40d06baed0c'),
(8, NULL, 'm141008_000001_elements_index_tune', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'e530fec1-3fab-42c5-8b4b-9f046d3af74c'),
(9, NULL, 'm141009_000001_assets_source_handle', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '4e8d06da-6020-4981-add8-ecf19f50b1bc'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '7d5a2499-7b06-4f20-a35b-7d0bf05018c4'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'd29e1529-d553-4d73-8d52-ab48cd450b64'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'b423f0c6-0853-44bb-97e3-1d2a64ccf868'),
(13, NULL, 'm141103_000001_tag_titles', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '37fe026c-dd8d-4d8b-90b3-03b77b370366'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '7b01fbe8-161f-4d79-860e-0ed4f8000ba7'),
(15, NULL, 'm141126_000001_user_week_start_day', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'adfc9c6b-4391-4d8c-bad4-4cd0ce0b7ebd'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '7b066fa9-1269-43d6-aa73-d873af39a74a'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '18a2e1c3-bab8-4c13-84a9-99987538f34c'),
(18, NULL, 'm150827_000000_element_index_settings', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '7b9501a1-db1e-4d16-856a-68729e544d6c'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'cc641b8f-c98e-4872-8ced-dd0f741ea666'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'a591ce37-febb-48c3-860d-14ffc8efa018'),
(21, NULL, 'm151109_000000_text_url_formats', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '3ef48aee-5fad-4493-acae-18260ff0b0a8'),
(22, NULL, 'm151110_000000_move_logo', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '34925e82-2037-4d3d-9b34-6db10901cff7'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '7484cd1f-58ee-44d9-9266-2347419680b7'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '32667141-90ed-4bd2-83e3-ed77e4b629cb'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '1a9740f3-0405-4683-85bc-0330efa4cd5f'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '986a9355-62be-4322-aeaf-101dfafc8bb6'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '61804534-1eb6-4966-b06e-219e91a08109'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '7962c97f-6a8c-488b-9575-1fab473251c1'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'e9899f9a-52c2-4dca-b00f-8126840a2b69'),
(30, NULL, 'm160304_000000_client_permissions', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'e8473d1a-6d95-4dca-8f14-0c68fc1fa8f6'),
(31, NULL, 'm160322_000000_asset_filesize', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '353bf854-2728-4a6f-b81d-b1a2d653dec2'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '75807092-fd86-4c94-aa30-da9baac94a89'),
(33, NULL, 'm160510_000000_tasksettings', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '3006cc39-693e-437b-a4b0-9858e87607cd'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'e3fccdcc-8ef4-4767-9a30-9a6c9d4deb0d'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', 'deda7632-fa35-4251-83f2-ec2316727732'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '0ffa890b-9d65-4ead-980c-caf129cb55d8'),
(37, NULL, 'm161108_000000_new_version_format', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '3b703a2b-1654-4b1e-812e-12057049eb47'),
(38, NULL, 'm161109_000000_index_shuffle', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '2016-12-08 18:40:23', '3628a9a0-dabb-4e91-8067-993bc05a1834');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE IF NOT EXISTS `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_rackspaceaccess`
--

CREATE TABLE IF NOT EXISTS `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE IF NOT EXISTS `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_fk` (`sourceId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  KEY `craft_relations_targetId_fk` (`targetId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=524 ;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(444, 6, 2, NULL, 71, 1, '2017-01-03 08:39:13', '2017-01-03 08:39:13', 'dafef9b2-cd6a-470b-b0c0-fbf8d1878b7c'),
(506, 26, 5, NULL, 51, 1, '2017-01-04 20:45:36', '2017-01-04 20:45:36', '785a577d-b4fe-402c-93f9-d4f347a19527'),
(507, 26, 5, NULL, 72, 2, '2017-01-04 20:45:36', '2017-01-04 20:45:36', '758646a8-fd28-4d63-8207-8875755e9134'),
(508, 26, 5, NULL, 52, 3, '2017-01-04 20:45:36', '2017-01-04 20:45:36', '65bbe0bf-cf27-4d86-9185-17276ace798f'),
(509, 12, 5, NULL, 85, 1, '2017-01-04 20:45:36', '2017-01-04 20:45:36', 'ce8ca8f5-f504-4c6f-8c8c-c88cc607eaa1'),
(510, 12, 5, NULL, 95, 2, '2017-01-04 20:45:36', '2017-01-04 20:45:36', '7b03d6fc-96d8-4bfe-acdf-15a5e5424a8b'),
(511, 12, 5, NULL, 96, 3, '2017-01-04 20:45:36', '2017-01-04 20:45:36', '156dcaae-637c-47e3-8248-d5c1dcae1d2d'),
(512, 12, 5, NULL, 97, 4, '2017-01-04 20:45:36', '2017-01-04 20:45:36', '62755642-f880-426a-b64e-94891fac3142'),
(513, 13, 5, NULL, 80, 1, '2017-01-04 20:45:36', '2017-01-04 20:45:36', '90fe4eee-81a8-434f-9b98-46e98eb793d8'),
(519, 16, 68, NULL, 70, 1, '2017-01-05 05:46:44', '2017-01-05 05:46:44', '39b3d5e8-7ee9-4dfc-8a18-4ebf3775e84c'),
(520, 16, 7, NULL, 46, 1, '2017-01-05 05:46:44', '2017-01-05 05:46:44', '83ad3a94-7088-48c0-b354-c26b7c4a3ce2'),
(521, 16, 20, NULL, 93, 1, '2017-01-05 05:46:44', '2017-01-05 05:46:44', 'cc14c265-1913-42b0-89f9-2942cfff3434'),
(522, 16, 35, NULL, 48, 1, '2017-01-05 05:46:44', '2017-01-05 05:46:44', '89166729-7345-4997-9c90-0bd6ea65d4d2'),
(523, 16, 36, NULL, 87, 1, '2017-01-05 05:46:44', '2017-01-05 05:46:44', 'c279739b-4301-4b27-8fdf-308e08bbb31d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_routes`
--

CREATE TABLE IF NOT EXISTS `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  KEY `craft_routes_locale_idx` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE IF NOT EXISTS `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'en_us', ' austen '),
(1, 'firstname', 0, 'en_us', ''),
(1, 'lastname', 0, 'en_us', ''),
(1, 'fullname', 0, 'en_us', ''),
(1, 'email', 0, 'en_us', ' austenezzell gmail com '),
(1, 'slug', 0, 'en_us', ''),
(2, 'slug', 0, 'en_us', ' homepage '),
(2, 'title', 0, 'en_us', ' home '),
(2, 'field', 1, 'en_us', ' people don t empathize with explosions they don t fall in love with particles they don t root for rigging or set extensions those may be our tools but they re not why we re here the audience comes for the characters and we re the ones who bring them to life '),
(5, 'field', 7, 'en_us', ''),
(5, 'field', 5, 'en_us', ' we have character '),
(2, 'field', 3, 'en_us', ' https player vimeo com external 194283433 hd mp4 s=1856000a93080f138912d7a5f17d68632c3edfe5 profile_id=119 '),
(2, 'field', 4, 'en_us', ' https player vimeo com external 197821599 hd mp4 s=6ddf64964ea6c03b310e9190aa372b2a40c9df73 profile_id=119 '),
(2, 'field', 5, 'en_us', ' we build character '),
(5, 'title', 0, 'en_us', ' studio '),
(5, 'slug', 0, 'en_us', ' studio '),
(4, 'slug', 0, 'en_us', ' portfolio '),
(4, 'title', 0, 'en_us', ' portfolio '),
(5, 'field', 1, 'en_us', ' portland or the land of craft beer craft coffee craft doughnuts and inside our studio of twenty some artists craft characters we use tools of science to make pieces of art if we re not showing the world something new we haven t done our job '),
(2, 'field', 6, 'en_us', ' mobile intro image v02 '),
(5, 'field', 12, 'en_us', ' team carousel v01 0004 00 team carousel v03 0002 05 team carousel v03 0001 06 team carousel v03 0000 07 '),
(5, 'field', 10, 'en_us', ' we can do many types of computer animation from 3d stylized and photo realistic to classic cartoon styles we would love to use all of our skills to help bring your animated ideas to life '),
(5, 'field', 9, 'en_us', ' do you need to do a live shoot for your production we can handle more than fabulous animation and visual effects we also provide production services we have the latest cameras with a team of producers and directors standing by '),
(5, 'field', 11, 'en_us', ' come work with us when you want to create amazing creatures like we do for nbc s grimm or you need a massive set extension like the cities we did for last knights '),
(5, 'field', 13, 'en_us', ' refuge metal 2 '),
(4, 'field', 14, 'en_us', ' the team at refuge has had the pleasure of working on the hit nbc series grimm for 6 seasons now from all the mysterious wessen creatures to digital makeup and blood effects to full creature animation we ve helped sculpt and shape the fantasy world of grimm visual effects supervisor ed irastorza visual effects producer adam lambert post supervisor julie herlocker executive producers david greenwalt jim kouf https player vimeo com external 197984435 hd mp4 s=499cada71e87bde2c4819d993d4d4bc82da54129 profile_id=119 grimm title nbc s grimm previous to starting refuge fred ruff worked alongside lead animator eric scheur and compositing supervisor tarn fox on a series of commercial spots for a cell phone company that had a tiny mexican wrestler as their spokesperson the sexy little luchador had a bold attitude and was full of himself director rob shaw supervising animator eric scheur technical director fred ruff https player vimeo com external 197233426 hd mp4 s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f profile_id=174 el talbador koodo mobile el tabador go behind the scenes with the team from refuge as they talk about the work of creating the fantasy world for the last knights starring clive owen and morgan freeman director kazuaki kiriya visual effects supervisor tarn fox https player vimeo com external 196629330 hd mp4 s=9393713cad53f098ddbc1bf051983a4f2d8de7c8 profile_id=119 last knights the last knights refuges founder fred ruff along with producer jose behar and writer director mike wellins have created an animated cartoon series about stella segwick a young baby sitter that investigates the strange and the mysterious happening in her town of trickle falls director fred ruff producer jose behar created by mike wellins stella bb service stella s baby sitting service the refuge team brings a 50ft tall rat creature to life in this episode of nbc s grimm and then brings it down by electrocuting it supervising animator eric schuer animation director fred ruff https player vimeo com external 196639563 hd mp4 s=64e4e24d932b19918c61e7407481fa2a370eb28c profile_id=119 rat king bts grimm the rat king refuge s produced a proof of concept that aired on animal planet during monster week medieval monsters combines a mockumentary style sense of humor with the epic fantasy adventures the office meets game of thrones with more monsters using the familiar structure of a procedural episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation charming characters and state of the art cgi visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters writer fred ruff director rob shaw starring austin hillebrecht and dennis fitzpatrick https player vimeo com external 196681144 hd mp4 s=73efd2ac479c72e3fc751971187d6d3e41f1b048 profile_id=119 medieval monsters https www youtube com watch v=vojbt3kpvuo grimm vr experience '),
(7, 'field', 15, 'en_us', ' https player vimeo com external 197233426 hd mp4 s=244a72eb58d9ecf481ad7964a2ee227ea6250b2f profile_id=174 '),
(7, 'field', 16, 'en_us', ' el talbador '),
(7, 'field', 17, 'en_us', ' koodo mobile el tabador '),
(7, 'field', 18, 'en_us', ' director rob shaw supervising animator eric scheur technical director fred ruff '),
(7, 'field', 19, 'en_us', ' previous to starting refuge fred ruff worked alongside lead animator eric scheur and compositing supervisor tarn fox on a series of commercial spots for a cell phone company that had a tiny mexican wrestler as their spokesperson the sexy little luchador had a bold attitude and was full of himself '),
(7, 'slug', 0, 'en_us', ''),
(96, 'slug', 0, 'en_us', ' team carousel v03 0001 06 '),
(96, 'title', 0, 'en_us', ' team carousel v03 0001 06 '),
(95, 'extension', 0, 'en_us', ' png '),
(95, 'filename', 0, 'en_us', ' team carousel_v03_0002_05 png '),
(35, 'field', 16, 'en_us', ' stella bb service '),
(35, 'field', 19, 'en_us', ' refuges founder fred ruff along with producer jose behar and writer director mike wellins have created an animated cartoon series about stella segwick a young baby sitter that investigates the strange and the mysterious happening in her town of trickle falls '),
(35, 'field', 17, 'en_us', ' stella s baby sitting service '),
(5, 'field', 26, 'en_us', ' dsc00804 copy deer skull gas mask dsc00812 copy '),
(35, 'field', 15, 'en_us', ''),
(96, 'kind', 0, 'en_us', ' image '),
(96, 'filename', 0, 'en_us', ' team carousel_v03_0001_06 png '),
(35, 'field', 18, 'en_us', ' director fred ruff producer jose behar created by mike wellins '),
(96, 'extension', 0, 'en_us', ' png '),
(20, 'field', 15, 'en_us', ' https player vimeo com external 196629330 hd mp4 s=9393713cad53f098ddbc1bf051983a4f2d8de7c8 profile_id=119 '),
(20, 'field', 16, 'en_us', ' last knights '),
(20, 'field', 17, 'en_us', ' the last knights '),
(20, 'field', 18, 'en_us', ' director kazuaki kiriya visual effects supervisor tarn fox '),
(20, 'field', 19, 'en_us', ' go behind the scenes with the team from refuge as they talk about the work of creating the fantasy world for the last knights starring clive owen and morgan freeman '),
(20, 'slug', 0, 'en_us', ''),
(21, 'slug', 0, 'en_us', ''),
(21, 'field', 20, 'en_us', ' refuge refugevfx com '),
(21, 'field', 21, 'en_us', ' 1 503 336 9346 '),
(21, 'field', 22, 'en_us', ' 6635 n baltimore ave suite 112portland or 97203 '),
(22, 'field', 23, 'en_us', ''),
(22, 'field', 24, 'en_us', ''),
(22, 'slug', 0, 'en_us', ''),
(21, 'field', 25, 'en_us', ' https www google com maps place 6635 n baltimore ave %23112 portland or 97203 45 5892135 122 7635568 17z data= 3m1 4b1 4m5 3m4 1s0x549507feeaa3c2e3 0x759395de9b804248 8m2 3d45 5892135 4d 122 7613681 '),
(31, 'filename', 0, 'en_us', ' carousel 0 jpg '),
(31, 'extension', 0, 'en_us', ' jpg '),
(31, 'kind', 0, 'en_us', ' image '),
(31, 'slug', 0, 'en_us', ' carousel 0 '),
(31, 'title', 0, 'en_us', ' carousel 0 '),
(93, 'title', 0, 'en_us', ' last knights '),
(93, 'slug', 0, 'en_us', ' last knights '),
(93, 'kind', 0, 'en_us', ' image '),
(93, 'extension', 0, 'en_us', ' jpg '),
(93, 'filename', 0, 'en_us', ' last knights jpg '),
(92, 'filename', 0, 'en_us', ' team carousel_v02_0000_04 png '),
(92, 'extension', 0, 'en_us', ' png '),
(92, 'kind', 0, 'en_us', ' image '),
(92, 'slug', 0, 'en_us', ' team carousel v02 0000 04 '),
(92, 'title', 0, 'en_us', ' team carousel v02 0000 04 '),
(35, 'slug', 0, 'en_us', ''),
(36, 'field', 15, 'en_us', ' https player vimeo com external 196639563 hd mp4 s=64e4e24d932b19918c61e7407481fa2a370eb28c profile_id=119 '),
(36, 'field', 16, 'en_us', ' rat king bts '),
(36, 'field', 17, 'en_us', ' grimm the rat king '),
(36, 'field', 18, 'en_us', ' supervising animator eric schuer animation director fred ruff '),
(36, 'field', 19, 'en_us', ' the refuge team brings a 50ft tall rat creature to life in this episode of nbc s grimm and then brings it down by electrocuting it '),
(36, 'slug', 0, 'en_us', ''),
(37, 'field', 15, 'en_us', ' https player vimeo com external 196681144 hd mp4 s=73efd2ac479c72e3fc751971187d6d3e41f1b048 profile_id=119 '),
(37, 'field', 16, 'en_us', ''),
(37, 'field', 17, 'en_us', ' medieval monsters '),
(37, 'field', 18, 'en_us', ' writer fred ruff director rob shaw starring austin hillebrecht and dennis fitzpatrick '),
(37, 'field', 19, 'en_us', ' refuge s produced a proof of concept that aired on animal planet during monster week medieval monsters combines a mockumentary style sense of humor with the epic fantasy adventures the office meets game of thrones with more monsters using the familiar structure of a procedural episodes typically start with a dramatic creature moment in the cold open and end in the resolution of the situation charming characters and state of the art cgi visual effects keep families coming back episode after episode to see where the journey takes our team of monster hunters '),
(37, 'slug', 0, 'en_us', ''),
(38, 'field', 15, 'en_us', ' https www youtube com watch v=vojbt3kpvuo '),
(38, 'field', 16, 'en_us', ''),
(38, 'field', 17, 'en_us', ' grimm vr experience '),
(38, 'field', 18, 'en_us', ''),
(38, 'field', 19, 'en_us', ''),
(38, 'slug', 0, 'en_us', ''),
(41, 'firstname', 0, 'en_us', ' fred '),
(41, 'lastname', 0, 'en_us', ''),
(41, 'username', 0, 'en_us', ' fred '),
(40, 'filename', 0, 'en_us', ' pnw jpg '),
(40, 'extension', 0, 'en_us', ' jpg '),
(40, 'kind', 0, 'en_us', ' image '),
(40, 'slug', 0, 'en_us', ' pnw '),
(40, 'title', 0, 'en_us', ' pnw '),
(41, 'fullname', 0, 'en_us', ' fred '),
(41, 'email', 0, 'en_us', ' fred refugevfx com '),
(41, 'slug', 0, 'en_us', ''),
(5, 'field', 27, 'en_us', ' character animation refuge focuses on several types of character animation from stylized and photo realistic to classic cartoon we would love to use all of our computer animation skills to help bring your animated ideas to life visual effects refuge we are well versed in all types of visual effects from massive city recreations to simple set extensions from wire removals do digital blood and guts we can do it all check out our portfolio page for some examples finishing come sit with us and let us handle the final steps of finishing color correction and output '),
(42, 'field', 28, 'en_us', ' character animation '),
(42, 'field', 29, 'en_us', ' refuge focuses on several types of character animation from stylized and photo realistic to classic cartoon we would love to use all of our computer animation skills to help bring your animated ideas to life '),
(42, 'slug', 0, 'en_us', ''),
(43, 'field', 28, 'en_us', ' visual effects '),
(43, 'field', 29, 'en_us', ' refuge we are well versed in all types of visual effects from massive city recreations to simple set extensions from wire removals do digital blood and guts we can do it all check out our portfolio page for some examples '),
(43, 'slug', 0, 'en_us', ''),
(44, 'field', 28, 'en_us', ' finishing '),
(44, 'field', 29, 'en_us', ' come sit with us and let us handle the final steps of finishing color correction and output '),
(44, 'slug', 0, 'en_us', ''),
(45, 'filename', 0, 'en_us', ' mobile intro image png '),
(45, 'extension', 0, 'en_us', ' png '),
(45, 'kind', 0, 'en_us', ' image '),
(45, 'slug', 0, 'en_us', ' mobile intro image '),
(45, 'title', 0, 'en_us', ' mobile intro image '),
(46, 'filename', 0, 'en_us', ' el talbador jpg '),
(46, 'extension', 0, 'en_us', ' jpg '),
(46, 'kind', 0, 'en_us', ' image '),
(46, 'slug', 0, 'en_us', ' el talbador '),
(46, 'title', 0, 'en_us', ' el talbador '),
(95, 'kind', 0, 'en_us', ' image '),
(95, 'slug', 0, 'en_us', ' team carousel v03 0002 05 '),
(95, 'title', 0, 'en_us', ' team carousel v03 0002 05 '),
(48, 'filename', 0, 'en_us', ' stella bb service png '),
(48, 'extension', 0, 'en_us', ' png '),
(48, 'kind', 0, 'en_us', ' image '),
(48, 'slug', 0, 'en_us', ' stella bb service '),
(48, 'title', 0, 'en_us', ' stella bb service '),
(49, 'filename', 0, 'en_us', ' rat king bts 02 png '),
(49, 'extension', 0, 'en_us', ' png '),
(49, 'kind', 0, 'en_us', ' image '),
(49, 'slug', 0, 'en_us', ' rat king bts 02 '),
(49, 'title', 0, 'en_us', ' rat king bts 02 '),
(50, 'filename', 0, 'en_us', ' dsc00793 copy jpg '),
(50, 'extension', 0, 'en_us', ' jpg '),
(50, 'kind', 0, 'en_us', ' image '),
(50, 'slug', 0, 'en_us', ' dsc00793 copy '),
(50, 'title', 0, 'en_us', ' dsc00793 copy '),
(51, 'filename', 0, 'en_us', ' dsc00804 copy jpg '),
(51, 'extension', 0, 'en_us', ' jpg '),
(51, 'kind', 0, 'en_us', ' image '),
(51, 'slug', 0, 'en_us', ' dsc00804 copy '),
(51, 'title', 0, 'en_us', ' dsc00804 copy '),
(52, 'filename', 0, 'en_us', ' dsc00812 copy jpg '),
(52, 'extension', 0, 'en_us', ' jpg '),
(52, 'kind', 0, 'en_us', ' image '),
(52, 'slug', 0, 'en_us', ' dsc00812 copy '),
(52, 'title', 0, 'en_us', ' dsc00812 copy '),
(53, 'filename', 0, 'en_us', ' dsc00814 copy jpg '),
(53, 'extension', 0, 'en_us', ' jpg '),
(53, 'kind', 0, 'en_us', ' image '),
(53, 'slug', 0, 'en_us', ' dsc00814 copy '),
(53, 'title', 0, 'en_us', ' dsc00814 copy '),
(54, 'filename', 0, 'en_us', ' dsc00816 copy jpg '),
(54, 'extension', 0, 'en_us', ' jpg '),
(54, 'kind', 0, 'en_us', ' image '),
(54, 'slug', 0, 'en_us', ' dsc00816 copy '),
(54, 'title', 0, 'en_us', ' dsc00816 copy '),
(55, 'filename', 0, 'en_us', ' dsc00821 copy jpg '),
(55, 'extension', 0, 'en_us', ' jpg '),
(55, 'kind', 0, 'en_us', ' image '),
(55, 'slug', 0, 'en_us', ' dsc00821 copy '),
(55, 'title', 0, 'en_us', ' dsc00821 copy '),
(56, 'filename', 0, 'en_us', ' dsc00828 copy jpg '),
(56, 'extension', 0, 'en_us', ' jpg '),
(56, 'kind', 0, 'en_us', ' image '),
(56, 'slug', 0, 'en_us', ' dsc00828 copy '),
(56, 'title', 0, 'en_us', ' dsc00828 copy '),
(57, 'filename', 0, 'en_us', ' dsc00844 copy jpg '),
(57, 'extension', 0, 'en_us', ' jpg '),
(57, 'kind', 0, 'en_us', ' image '),
(57, 'slug', 0, 'en_us', ' dsc00844 copy '),
(57, 'title', 0, 'en_us', ' dsc00844 copy '),
(58, 'filename', 0, 'en_us', ' dsc00846 copy jpg '),
(58, 'extension', 0, 'en_us', ' jpg '),
(58, 'kind', 0, 'en_us', ' image '),
(58, 'slug', 0, 'en_us', ' dsc00846 copy '),
(58, 'title', 0, 'en_us', ' dsc00846 copy '),
(59, 'filename', 0, 'en_us', ' dsc00862 copy jpg '),
(59, 'extension', 0, 'en_us', ' jpg '),
(59, 'kind', 0, 'en_us', ' image '),
(59, 'slug', 0, 'en_us', ' dsc00862 copy '),
(59, 'title', 0, 'en_us', ' dsc00862 copy '),
(60, 'filename', 0, 'en_us', ' dsc00866 copy jpg '),
(60, 'extension', 0, 'en_us', ' jpg '),
(60, 'kind', 0, 'en_us', ' image '),
(60, 'slug', 0, 'en_us', ' dsc00866 copy '),
(60, 'title', 0, 'en_us', ' dsc00866 copy '),
(61, 'filename', 0, 'en_us', ' dsc00867 copy jpg '),
(61, 'extension', 0, 'en_us', ' jpg '),
(61, 'kind', 0, 'en_us', ' image '),
(61, 'slug', 0, 'en_us', ' dsc00867 copy '),
(61, 'title', 0, 'en_us', ' dsc00867 copy '),
(62, 'filename', 0, 'en_us', ' dsc00870 copy jpg '),
(62, 'extension', 0, 'en_us', ' jpg '),
(62, 'kind', 0, 'en_us', ' image '),
(62, 'slug', 0, 'en_us', ' dsc00870 copy '),
(62, 'title', 0, 'en_us', ' dsc00870 copy '),
(63, 'filename', 0, 'en_us', ' dsc00874 copy jpg '),
(63, 'extension', 0, 'en_us', ' jpg '),
(63, 'kind', 0, 'en_us', ' image '),
(63, 'slug', 0, 'en_us', ' dsc00874 copy '),
(63, 'title', 0, 'en_us', ' dsc00874 copy '),
(64, 'filename', 0, 'en_us', ' dsc00881 copy jpg '),
(64, 'extension', 0, 'en_us', ' jpg '),
(64, 'kind', 0, 'en_us', ' image '),
(64, 'slug', 0, 'en_us', ' dsc00881 copy '),
(64, 'title', 0, 'en_us', ' dsc00881 copy '),
(65, 'filename', 0, 'en_us', ' dsc00884 copy jpg '),
(65, 'extension', 0, 'en_us', ' jpg '),
(65, 'kind', 0, 'en_us', ' image '),
(65, 'slug', 0, 'en_us', ' dsc00884 copy '),
(65, 'title', 0, 'en_us', ' dsc00884 copy '),
(66, 'filename', 0, 'en_us', ' dsc00886 copy jpg '),
(66, 'extension', 0, 'en_us', ' jpg '),
(66, 'kind', 0, 'en_us', ' image '),
(66, 'slug', 0, 'en_us', ' dsc00886 copy '),
(66, 'title', 0, 'en_us', ' dsc00886 copy '),
(67, 'filename', 0, 'en_us', ' dsc00886 jpg '),
(67, 'extension', 0, 'en_us', ' jpg '),
(67, 'kind', 0, 'en_us', ' image '),
(67, 'slug', 0, 'en_us', ' dsc00886 '),
(67, 'title', 0, 'en_us', ' dsc00886 '),
(79, 'filename', 0, 'en_us', ' hydrus egg 2 jpg '),
(72, 'filename', 0, 'en_us', ' deerskull gasmask jpg '),
(68, 'field', 15, 'en_us', ' https player vimeo com external 197984435 hd mp4 s=499cada71e87bde2c4819d993d4d4bc82da54129 profile_id=119 '),
(68, 'field', 16, 'en_us', ' grimm title '),
(68, 'field', 17, 'en_us', ' nbc s grimm '),
(68, 'field', 18, 'en_us', ' visual effects supervisor ed irastorza visual effects producer adam lambert post supervisor julie herlocker executive producers david greenwalt jim kouf '),
(68, 'field', 19, 'en_us', ' the team at refuge has had the pleasure of working on the hit nbc series grimm for 6 seasons now from all the mysterious wessen creatures to digital makeup and blood effects to full creature animation we ve helped sculpt and shape the fantasy world of grimm '),
(68, 'slug', 0, 'en_us', ''),
(70, 'kind', 0, 'en_us', ' image '),
(70, 'extension', 0, 'en_us', ' jpg '),
(70, 'filename', 0, 'en_us', ' grimm title jpg '),
(70, 'slug', 0, 'en_us', ' grimm title '),
(70, 'title', 0, 'en_us', ' grimm title '),
(71, 'filename', 0, 'en_us', ' mobile intro image_v02 png '),
(71, 'extension', 0, 'en_us', ' png '),
(71, 'kind', 0, 'en_us', ' image '),
(71, 'slug', 0, 'en_us', ' mobile intro image v02 '),
(71, 'title', 0, 'en_us', ' mobile intro image v02 '),
(72, 'extension', 0, 'en_us', ' jpg '),
(72, 'kind', 0, 'en_us', ' image '),
(72, 'slug', 0, 'en_us', ' deer skull gas mask '),
(72, 'title', 0, 'en_us', ' deer skull gas mask '),
(73, 'filename', 0, 'en_us', ' hydrus egg jpg '),
(73, 'extension', 0, 'en_us', ' jpg '),
(73, 'kind', 0, 'en_us', ' image '),
(73, 'slug', 0, 'en_us', ' hydrus egg '),
(73, 'title', 0, 'en_us', ' hydrus egg '),
(80, 'filename', 0, 'en_us', ' refugemetal 2 jpg '),
(77, 'filename', 0, 'en_us', ' refugemetal jpg '),
(77, 'extension', 0, 'en_us', ' jpg '),
(77, 'kind', 0, 'en_us', ' image '),
(77, 'slug', 0, 'en_us', ' refuge metal '),
(77, 'title', 0, 'en_us', ' refuge metal '),
(79, 'extension', 0, 'en_us', ' jpg '),
(79, 'kind', 0, 'en_us', ' image '),
(79, 'slug', 0, 'en_us', ' hydrus egg 2 '),
(79, 'title', 0, 'en_us', ' hydrus egg 2 '),
(80, 'extension', 0, 'en_us', ' jpg '),
(80, 'kind', 0, 'en_us', ' image '),
(80, 'slug', 0, 'en_us', ' refuge metal 2 '),
(80, 'title', 0, 'en_us', ' refuge metal 2 '),
(81, 'filename', 0, 'en_us', ' team carousel_v01__0000_04 jpg '),
(81, 'extension', 0, 'en_us', ' jpg '),
(81, 'kind', 0, 'en_us', ' image '),
(81, 'slug', 0, 'en_us', ' team carousel v01 0000 04 '),
(81, 'title', 0, 'en_us', ' team carousel v01 0000 04 '),
(82, 'filename', 0, 'en_us', ' team carousel_v01__0001_03 jpg '),
(82, 'extension', 0, 'en_us', ' jpg '),
(82, 'kind', 0, 'en_us', ' image '),
(82, 'slug', 0, 'en_us', ' team carousel v01 0001 03 '),
(82, 'title', 0, 'en_us', ' team carousel v01 0001 03 '),
(83, 'filename', 0, 'en_us', ' team carousel_v01__0002_02 jpg '),
(83, 'extension', 0, 'en_us', ' jpg '),
(83, 'kind', 0, 'en_us', ' image '),
(83, 'slug', 0, 'en_us', ' team carousel v01 0002 02 '),
(83, 'title', 0, 'en_us', ' team carousel v01 0002 02 '),
(84, 'filename', 0, 'en_us', ' team carousel_v01__0003_01 jpg '),
(84, 'extension', 0, 'en_us', ' jpg '),
(84, 'kind', 0, 'en_us', ' image '),
(84, 'slug', 0, 'en_us', ' team carousel v01 0003 01 '),
(84, 'title', 0, 'en_us', ' team carousel v01 0003 01 '),
(85, 'filename', 0, 'en_us', ' team carousel_v01__0004_00 jpg '),
(85, 'extension', 0, 'en_us', ' jpg '),
(85, 'kind', 0, 'en_us', ' image '),
(85, 'slug', 0, 'en_us', ' team carousel v01 0004 00 '),
(85, 'title', 0, 'en_us', ' team carousel v01 0004 00 '),
(87, 'filename', 0, 'en_us', ' rat king bts png '),
(87, 'kind', 0, 'en_us', ' image '),
(87, 'extension', 0, 'en_us', ' png '),
(87, 'slug', 0, 'en_us', ' rat king bts '),
(87, 'title', 0, 'en_us', ' rat king bts '),
(88, 'filename', 0, 'en_us', ' rat king png '),
(88, 'extension', 0, 'en_us', ' png '),
(88, 'kind', 0, 'en_us', ' image '),
(88, 'slug', 0, 'en_us', ' rat king '),
(88, 'title', 0, 'en_us', ' rat king '),
(97, 'filename', 0, 'en_us', ' team carousel_v03_0000_07 png '),
(97, 'extension', 0, 'en_us', ' png '),
(97, 'kind', 0, 'en_us', ' image '),
(97, 'slug', 0, 'en_us', ' team carousel v03 0000 07 '),
(97, 'title', 0, 'en_us', ' team carousel v03 0000 07 ');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE IF NOT EXISTS `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2016-12-08 18:40:27', '2016-12-09 00:39:57', 'cad89209-2161-4d9e-ad54-014b10eda4ec'),
(3, NULL, 'portfolio', 'portfolio', 'single', 1, 'portfolio', 1, '2016-12-09 00:45:36', '2016-12-09 00:45:36', 'd8cf8fd2-ec07-4a0a-a0e9-cd516ab6703b'),
(4, NULL, 'studio', 'studio', 'single', 1, 'studio', 1, '2016-12-09 00:45:48', '2016-12-09 00:45:48', 'dafce620-9d37-4f4e-83ae-add4e6853f53');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', 1, '__home__', NULL, '2016-12-08 18:40:27', '2016-12-08 18:40:27', '6d7d7b7d-6a1a-4380-9ee9-0711a81da5e6'),
(3, 3, 'en_us', 1, 'portfolio', NULL, '2016-12-09 00:45:36', '2016-12-09 00:45:36', 'e9e6a9fb-8fa5-4fc0-8ec7-a9f424280842'),
(4, 4, 'en_us', 1, 'studio', NULL, '2016-12-09 00:45:48', '2016-12-09 00:45:48', '150f54a2-95dd-44f8-a0c9-af8db51423da');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE IF NOT EXISTS `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'bd0ffc6d6f9555ddcecbeed8f979faccbcff7e89czozMjoiNERCMWxFNE5sY0pSSEJDSGt3NGUzT1JoSlU5WXVseUMiOw==', '2016-12-08 18:40:27', '2016-12-08 18:40:27', '9d7f9f02-269b-48c8-971d-bf242ab62b0d'),
(2, 1, 'c269fdf471c66504cc2be84ef23f4f34b27d2c84czozMjoiZEpCY0RRSXVFdVQ4aUgyZzFuMzN2eTZ3Z01yTDFSb2giOw==', '2016-12-09 00:34:16', '2016-12-09 00:34:16', '78597f9c-2859-4565-b4b0-9138abdd6cc5'),
(3, 1, '770078d2979b70d6a3b2bc49f93ff79e257a75baczozMjoia2x1cE9hYW9yaHVQaHJlNHRUZEE3djFOZ0t4ZFpQQkUiOw==', '2016-12-09 00:34:22', '2016-12-09 00:34:22', '217e8537-ef74-4c1c-a893-10ca471b37ed'),
(4, 1, '002ddf80bfbc4fd7bc8ff24628dd2e7685467878czozMjoiX3YyVWlEWXFWMlNtVUZBTTc5a1RERGFQSFd4dWxRTHciOw==', '2016-12-09 00:34:57', '2016-12-09 00:34:57', '42de8820-3af4-47f0-854b-e5dc47e680b1'),
(5, 1, '2ae77e65c8fa04813569f772ef5325c04ac6c68cczozMjoiRlk3a05FalFqMXdScmdBdmp0akVXaUhyN3pnYzlJTmkiOw==', '2016-12-09 00:36:21', '2016-12-09 00:36:21', '76b5586f-0c2d-4a26-8b42-ac8d402633da'),
(6, 1, '59ce1ea9c61b745129fa45c6331e2703c3ba72b7czozMjoiMEJsNzhRajRlN2lKfkJVcnhiTTM1MU0wZVNWc3U4dUQiOw==', '2016-12-09 17:59:09', '2016-12-09 17:59:09', '9adcece8-387d-4614-9021-08b94c6daae2'),
(7, 1, '96f1e19b5489a25a241861b37193535c87028fbdczozMjoiYjJCQ2pCWlAzUVVOeTlLRkZwYlJBNGNMNUdlWHlzbH4iOw==', '2016-12-09 21:29:41', '2016-12-09 21:29:41', 'e7963de4-9b82-483d-bcdc-ed5151e3a4d8'),
(8, 1, '4c389e920e541f739abf9a127fb13a363b405341czozMjoicjdXen5ad05fUjFoRks3Z2pIV3QwSnlKaVY1a05wTF8iOw==', '2016-12-11 19:04:38', '2016-12-11 19:04:38', 'f7ea15fe-1599-4212-a520-893caf6b3f67'),
(9, 1, 'a588e5a68703dec949232a7000e41692019fbeffczozMjoiSjRffnlmQ2I1WEZMVmF2fktXUEZ6aXJVT1BjbWFNTVgiOw==', '2016-12-20 21:51:45', '2016-12-20 21:51:45', '47d69830-a98e-4e50-aa51-9dc7fc55f5cc'),
(10, 1, '3b4ed3f21518e18dc792b4723f86a52ec3490554czozMjoiVVJ3X25jb1lYdWxEQmhCZWZxb1o4NG5vN3BTSzRsaVUiOw==', '2016-12-21 02:05:14', '2016-12-21 02:05:14', 'e79fec57-d320-426d-b18f-4297d7cf35ee'),
(11, 1, 'b234ed89889d8e1b5cbf4a01a0fd24f7512e3306czozMjoiak5LaUg5dkw0OHVmQ1NVQVpDRk43WX5uRkhHQTc2NzQiOw==', '2016-12-21 23:49:06', '2016-12-21 23:49:06', '2c660533-ac72-4adc-9e78-d05073491096'),
(12, 1, '2b36fc7a8a8c7402953fda73f08ae07d06dc0bcaczozMjoiRmZYRndqX2xxT2RLQmZNcEVGcXQ4QlI4OUdDYk5qWWciOw==', '2016-12-22 17:18:56', '2016-12-22 17:18:56', 'ee764454-bb0a-4e10-ab3a-bb90fee70a99'),
(13, 1, 'dd1c356717aae736ed21e0d9bff278659a999324czozMjoiYURHRVNvMjhseE1yVnByUVNmNXpsUlNGcGNOTzlEaEUiOw==', '2016-12-27 20:52:58', '2016-12-27 20:52:58', '6ad2e6dc-bc89-466f-898a-b26bf4fc1def'),
(14, 1, '79ce748d616cb1a70d54eeff4334424a38078159czozMjoibkNmZTZHNUcxRXljRFdSRl9Ta2tObFB6VlNKQUM2MlciOw==', '2016-12-28 19:02:38', '2016-12-28 19:02:38', '41fe5dac-f13e-47e2-8f9b-2cf17874e561'),
(15, 1, '0dfc0f62eb14b085ffc7a0a850c7fa496d2cdc0cczozMjoiQ2FRa2VPREFNM2hSaUtWQnhCZXNucGp0N0VpNkVpeGwiOw==', '2016-12-28 21:59:11', '2016-12-28 21:59:11', '02e17287-b37e-4487-9da9-ac5ac6184006'),
(16, 1, 'a0a1fd38806b6d6946dab0001cf06717afef5614czozMjoiRkc0R1llTEZ6ZWYxcHo4RnlxS29rUUN+Ql9uTH50bEEiOw==', '2016-12-29 02:18:11', '2016-12-29 02:18:11', '2bf912a3-b29f-49d0-8687-7fcd9764994e'),
(17, 1, '5198ae73438c110e123ac97b92bb4a7d96a5fb31czozMjoiY3JBeUFETWpaUnJkQUY0Y0tvOGptbnIxUV9pdVZPNmMiOw==', '2016-12-29 02:21:24', '2016-12-29 02:21:24', '73b93959-9c11-4b24-a0b1-6b63423bb8ec'),
(20, 41, '343616c2b2a9687340e74f45fea4550fca192bc7czozMjoiTG9pZW9ZdG1XS09+T3hYR2I1Nmg4aEh3UVdmY2RGajEiOw==', '2016-12-29 05:28:41', '2016-12-29 05:28:41', '51cafa79-5e24-4359-bd05-981164c0692a'),
(22, 41, '41e8da686f0bbbcf2a818cba94d77f0c3fa8f6e0czozMjoiaGkzMjNVMFlDbnFUNjE4YVhXWkY1YUdqdjNfTjhJcE4iOw==', '2016-12-29 06:34:17', '2016-12-29 06:34:17', '7182ac92-db62-41f1-9f5e-82210573d9a6'),
(23, 41, '00b34433c48acefd21f89b0ad77f3b2f73211a0eczozMjoia2hkXzdRWEFHczJuY1V6bXRORzBmSzRsaDRDdFh5d1YiOw==', '2016-12-29 07:33:36', '2016-12-29 07:33:36', 'ad3685d6-5671-418e-bf6e-933d0378f628'),
(24, 41, '671733c82a5f1752867e139b2944a9cbe3e0ba2cczozMjoiMnFtbkJ5dm9lclV3RlNNYzF5VGQxNUJFSEx6R19hRjMiOw==', '2016-12-29 21:17:30', '2016-12-29 21:17:30', 'b51c9ece-72f8-4c53-aa0a-2960fad9bebc'),
(25, 41, '4bddcc65f2b860434ba59ceae5610234922c6c22czozMjoiS1plUzQ0VjU5a2VWcX50eWh2bzhRbHNyYXJsaHRmczMiOw==', '2016-12-30 07:26:28', '2016-12-30 07:26:28', '60acf07b-8800-4ae1-a9ea-fc3f2ab44a7e'),
(26, 41, '843138fd2f56ab6db4f26e00e0260cb1683fb750czozMjoiemd2cWs1TTgzNzZYdGJLVkNrVmtJcn53eWVwUXdhclIiOw==', '2016-12-30 17:09:02', '2016-12-30 17:09:02', 'f013d0dd-a7bc-401d-be67-6033eb76985f'),
(27, 41, '2b64428d76c92843a2d826cb9bfde703bec40984czozMjoiNjlBMG9pZFFUYVQzazQ4SkNJZnBvMjdTcEpLN0RTcjMiOw==', '2016-12-30 19:50:50', '2016-12-30 19:50:50', '6060273f-5fcf-457a-86c5-7a93ba25a703'),
(28, 41, '918049bc012cdd7dd3c0dfbaadf039b36515a04eczozMjoiREUyR2thMkI1dldfdFJYeTJjbVM0TTdrZ01mRVVGNXkiOw==', '2016-12-31 01:49:29', '2016-12-31 01:49:29', 'b79a61e4-0838-4e5c-b18e-72b169e214ff'),
(29, 41, '49c01c8a7097c4d3509b21f71cc52d19030eca3eczozMjoiQ25QY0pFVERIYjRWYU1rV3JCX3FoUkNLdXBjTWtxUzgiOw==', '2016-12-31 04:57:23', '2016-12-31 04:57:23', '0243195a-ce41-4e4b-8d52-525c08f2c59e'),
(30, 41, '4fa7ee17391dcb4de131a61c675f3c4f5786cb34czozMjoieG9vaThwdUE3Tnc1YTA3WnphRVVNVjdDWU53eWM5cHIiOw==', '2016-12-31 06:48:42', '2016-12-31 06:48:42', '74abf641-5274-42a5-be5e-707a59e4732d'),
(31, 41, 'c6d075898c04502b017454b9cacabb38078b862cczozMjoibTN4T3FtcDByR1VYMU1JN3p5Vmg2WmxqNVlmMXNfOU0iOw==', '2017-01-02 22:20:15', '2017-01-02 22:20:15', '6d7a6100-9a0f-4f2c-8e05-d25908cb59b5'),
(32, 41, '5db5a128d2fe03d3caa107f2a52a054893223146czozMjoiWE5YMV8wSnh4eWhjOWtEZmw1M1VkVUpXN25HNUl5YXEiOw==', '2017-01-03 08:24:40', '2017-01-03 08:24:40', 'dd3b23c6-0451-4e6c-8d27-889c3a004b06'),
(33, 41, '2d83649fafe13e6fd539150d84b220591b1a02a4czozMjoiZEJ+MjdxYjdVTEM5WTNTUFM3dWpjeXB4enJRTHdLeVciOw==', '2017-01-03 08:31:50', '2017-01-03 08:31:50', '0027ffc4-556f-4940-9eb9-c6d7f908b19c'),
(34, 41, '1f66f042b1b63f08572f31a9066cc57f54e19577czozMjoiM0lEREdRMVh2RzVPRUpkT250QUt2a0JiVTRtbXZfVUMiOw==', '2017-01-03 21:57:17', '2017-01-03 21:57:17', 'e315be5c-8cdc-473c-aaca-de045a247b09'),
(35, 41, 'e5d550dc6dc2ab8160a98607465b527032376782czozMjoidnFhVEY3MnBISENrbUVvZEdYVXhiTFB+Q2lwSzNMRkkiOw==', '2017-01-04 00:46:49', '2017-01-04 00:46:49', '17fceb08-3cfc-46ae-a4d6-6bb3bddfeb0a'),
(36, 41, '30595aea099fefa901329f48234a2f816320b036czozMjoiSUFlb0xzeVE5MDMwUGU2Skp4ZUdoQnRnU2Iyb2ZId0UiOw==', '2017-01-04 03:54:16', '2017-01-04 03:54:16', 'b34caabf-e061-4779-b095-0a5959058119'),
(37, 41, '014748b9a0dea2af219f398e982c4faf1b32da57czozMjoidFFjcnpoZENJVHFNaU9xX0VxeEdiWWpGQlprRkpzaXAiOw==', '2017-01-04 20:44:24', '2017-01-04 20:44:24', '1c975d42-0e37-4165-90d9-32894ed82fbc'),
(38, 41, '44ee88d0f10209bff3c021a034d6ff3ce769186aczozMjoib2FyWXBKY19ObHlWVmhRZ3FKTklTS1hrTXczNDhkbmciOw==', '2017-01-05 05:44:13', '2017-01-05 05:44:13', 'f2987804-9c0a-4be1-8f33-0ce910d3b9cd'),
(39, 1, 'f1b4ae2978978c8826ead60707c8fccb702fbcceczozMjoiMDZxVTlWZFpydGdyb2tOVjRKZmt0blhvRWtYZ2Z1MUEiOw==', '2017-01-05 19:23:47', '2017-01-05 19:23:47', 'd563e776-97d1-4fe5-b17a-0608c13b3061');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE IF NOT EXISTS `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE IF NOT EXISTS `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE IF NOT EXISTS `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemsettings`
--

CREATE TABLE IF NOT EXISTS `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"template":"","protocol":"php","emailAddress":"fred@refugevfx.com","senderName":"Refuge"}', '2016-12-08 18:40:27', '2016-12-29 03:07:56', '827f1a4e-26ac-44cc-b7f8-c3f0eb658f8c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE IF NOT EXISTS `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2016-12-08 18:40:27', '2016-12-08 18:40:27', '0cf5698d-a2ab-4c59-8d44-679331f35044');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE IF NOT EXISTS `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_fk` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tasks`
--

CREATE TABLE IF NOT EXISTS `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=123 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachecriteria`
--

CREATE TABLE IF NOT EXISTS `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE IF NOT EXISTS `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE IF NOT EXISTS `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  KEY `craft_templatecaches_locale_fk` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE IF NOT EXISTS `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `craft_userpermissions`
--

INSERT INTO `craft_userpermissions` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'accesssitewhensystemisoff', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '529f0e33-7bee-4fa1-9a35-09ab63fcb26d'),
(2, 'accesscpwhensystemisoff', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '885b145a-f9f3-4873-86d2-badc50468010'),
(3, 'performupdates', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '9b720d37-bc99-4d41-8351-e4851eb0a52b'),
(4, 'accesscp', '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'e31ef379-a329-43c2-8313-eb191718a77f'),
(5, 'publishentries:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'dbb85240-3afb-45f7-b61b-f69c093d113e'),
(6, 'publishpeerentrydrafts:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '7fd5fc3d-073f-4e62-ad10-0ddfeee34cee'),
(7, 'deletepeerentrydrafts:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '1208e92c-28ee-41e7-b344-6ca4f208a2f4'),
(8, 'editpeerentrydrafts:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '725283c2-e8de-4846-bb26-ee1a74a3e74b'),
(9, 'editentries:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '2bd3e342-673d-4fd4-88b8-f8abd8321acd'),
(10, 'publishentries:3', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '09e155ce-307f-4383-a7ac-2e68c58b1d21'),
(11, 'publishpeerentrydrafts:3', '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'ab9e70fc-0fee-4f9d-b425-0149c22f18c6'),
(12, 'deletepeerentrydrafts:3', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '26bb2b5b-4317-4154-a24d-c223d6c4842d'),
(13, 'editpeerentrydrafts:3', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '5f17a9b2-8862-47c8-a6d8-598af69c76a6'),
(14, 'editentries:3', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '86cd7501-8710-4ff9-a2ce-91ef7005d109'),
(15, 'publishentries:4', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '40f86c1e-b347-46c4-a388-002963130137'),
(16, 'publishpeerentrydrafts:4', '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'e5f647e2-a21e-4bfc-ad6b-42281e54598f'),
(17, 'deletepeerentrydrafts:4', '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'c8c66f34-69b4-46e4-9736-c72034a875e0'),
(18, 'editpeerentrydrafts:4', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '101abc55-0765-41ed-8403-bd28e7a9a1fb'),
(19, 'editentries:4', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '9d20eb9f-cf68-46fe-a563-a118adf4115e'),
(20, 'editglobalset:21', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '92ed7caf-dc28-4276-a99d-db9c27f0465a'),
(21, 'uploadtoassetsource:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '4bed481d-faf0-4ae8-9406-43e3e2cc4e20'),
(22, 'createsubfoldersinassetsource:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', '44220088-b5b3-4cc2-915b-174deb1558dc'),
(23, 'removefromassetsource:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'd198fe12-d6da-42ac-9fd4-62c555c80c25'),
(24, 'viewassetsource:1', '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'dbc0f38f-aca1-4798-a713-ad203476f3ba');

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `craft_userpermissions_users`
--

INSERT INTO `craft_userpermissions_users` (`id`, `permissionId`, `userId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'bc0f2e8e-5c05-4782-a356-eeb9ecd77cf1'),
(2, 2, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'bb5030ea-b864-432d-92e6-30cdd74ea034'),
(3, 3, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '33472c94-176e-41d0-93ab-8085859fce24'),
(4, 4, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'd7a5db5e-0260-4029-a93c-bb3e37d7a751'),
(5, 5, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '470c4093-98bc-4a10-8506-07b56f77456e'),
(6, 6, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'e63dfcd8-f4d2-43c1-b4ff-70bc70549edf'),
(7, 7, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'fb05cda5-a35f-48bf-a34e-715496d41333'),
(8, 8, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '398ad65b-ce6c-41ba-ac96-058e0da4d43b'),
(9, 9, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '33077bb1-fd83-425b-93c3-9d1a27e65e0d'),
(10, 10, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '2f76cbdd-bee6-4c52-9894-1dec4d7e93ec'),
(11, 11, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '38ca7f33-8a06-48c2-a602-c41cba80ef7d'),
(12, 12, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '3ee253ef-1e4f-49a6-a1e6-d7287315f022'),
(13, 13, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '7a1d7871-784b-4397-b27c-17b334bddc90'),
(14, 14, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '20f34c15-2357-4922-b2a2-e54b3b49a64c'),
(15, 15, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'e1535f0e-e864-4793-aef9-60af68043347'),
(16, 16, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '0b4b6d53-e518-40a5-80db-1472d1b427be'),
(17, 17, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '1d3e246e-252e-430c-94a3-a46d4e5a98dd'),
(18, 18, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '0103e280-dcd2-4465-a410-ee80182e251d'),
(19, 19, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '35988b68-05f1-4b64-974c-71fea58d4137'),
(20, 20, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'dd99405a-254e-44d8-84b9-07a5ba89bbb1'),
(21, 21, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '7da72fc5-1955-47bf-bc6b-8e489438e37f'),
(22, 22, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', '65279003-1f09-444e-bb89-7c52cee9d1e9'),
(23, 23, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'ad05ce84-6017-4032-b8d6-f6557743d322'),
(24, 24, 41, '2016-12-29 03:13:59', '2016-12-29 03:13:59', 'e0201f75-7192-43c7-ad10-97e6de839d89');

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE IF NOT EXISTS `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Austen', 'IMG_0291.jpg', '', '', 'austenezzell@gmail.com', '$2y$13$.QYYY0UjrSvDk09uhLQ.MO6zXzij3ijV3SuqzI6meecUTa3vFvIx2', NULL, 0, 1, 0, 0, 0, 0, 0, '2017-01-05 19:23:47', '50.202.153.218', NULL, NULL, '2017-01-05 19:23:32', NULL, NULL, NULL, NULL, 0, '2016-12-29 03:11:16', '2016-12-08 18:40:25', '2017-01-05 19:23:47', '9daeb995-e683-4228-a4b5-e914dfece878'),
(41, 'Fred', NULL, 'Fred', '', 'fred@refugevfx.com', '$2y$13$GQ7J5nMm9JCZI77oIO7w..Zg1RRprAGpODlYf2PX9xgaNiWB5jHi6', NULL, 0, 0, 1, 0, 0, 0, 0, '2017-01-05 05:44:13', '24.20.215.173', NULL, NULL, '2016-12-30 07:25:57', NULL, NULL, NULL, NULL, 0, '2016-12-29 05:28:26', '2016-12-29 03:13:58', '2017-01-05 05:44:13', 'b5d90481-5a5c-4886-a515-42a0a4dd0ce4');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE IF NOT EXISTS `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2016-12-08 18:40:31', '2016-12-08 18:40:31', 'f18b6d2d-4530-4427-aeb6-ad7a8e2e9c34'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2016-12-08 18:40:31', '2016-12-08 18:40:31', '730c4288-8af4-4c8c-a887-a2afa172760f'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2016-12-08 18:40:31', '2016-12-08 18:40:31', 'bd047db7-57c1-46d0-836e-aa4e1daf79ae'),
(4, 1, 'Feed', 4, NULL, '{"url":"https:\\/\\/craftcms.com\\/news.rss","title":"Craft News"}', 1, '2016-12-08 18:40:31', '2016-12-08 18:40:31', '9ba8fd67-a8ce-4559-aeeb-7e6552d5566a'),
(5, 41, 'RecentEntries', 1, NULL, NULL, 1, '2016-12-29 05:28:42', '2016-12-29 05:28:42', '225146d2-726d-44a9-8f7c-e9770b2679ed'),
(6, 41, 'Updates', 2, NULL, NULL, 1, '2016-12-29 05:28:42', '2016-12-29 05:28:42', '1292678c-51cd-4c94-8905-c8725724ec41'),
(7, 41, 'Feed', 3, NULL, '{"url":"https:\\/\\/craftcms.com\\/news.rss","title":"Craft News"}', 1, '2016-12-29 05:28:42', '2016-12-29 05:28:42', '4c214ad0-93e0-43b2-a39e-1d3a5a90c2e8');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_matrixcontent_address`
--
ALTER TABLE `craft_matrixcontent_address`
  ADD CONSTRAINT `craft_matrixcontent_address_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_address_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_matrixcontent_capability`
--
ALTER TABLE `craft_matrixcontent_capability`
  ADD CONSTRAINT `craft_matrixcontent_capability_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_capability_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_matrixcontent_portfolioitem`
--
ALTER TABLE `craft_matrixcontent_portfolioitem`
  ADD CONSTRAINT `craft_matrixcontent_portfolioitem_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_portfolioitem_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
