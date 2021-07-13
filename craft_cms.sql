-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 05:09 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craft_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 1, 1, 1, 'cropped-1920-1080-1151696.jpg', 'image', 1920, 1080, 1567623, NULL, NULL, NULL, '2021-07-12 01:50:49', '2021-07-12 00:55:58', '2021-07-12 01:50:49', '0b940d1f-d950-48b7-b9f1-7d43485af077'),
(10, 2, 4, 1, '1153577.jpg', 'image', 3840, 2160, 4957125, NULL, 0, 0, '2021-07-12 01:51:12', '2021-07-12 01:51:13', '2021-07-12 01:51:13', '2ef19f1d-d8da-4624-89df-73dbc6423e11'),
(11, 2, 4, 1, '1150841.jpg', 'image', 2810, 1616, 1307396, NULL, 0, 0, '2021-07-12 01:51:15', '2021-07-12 01:51:15', '2021-07-12 01:51:15', 'db6807e3-6277-4ea5-ba91-14cdf63d452a'),
(13, 2, 4, 1, '1153577.jpg', 'image', 3840, 2160, 4957125, NULL, NULL, NULL, '2021-07-12 01:53:45', '2021-07-12 01:53:45', '2021-07-12 01:53:45', '002b1380-256d-4206-a309-415b77bf3476'),
(17, 2, 4, 1, '1150841.jpg', 'image', 2810, 1616, 1307396, NULL, NULL, NULL, '2021-07-12 01:54:31', '2021-07-12 01:54:32', '2021-07-12 01:54:32', '2684b816-0988-4712-88ed-1a0eca438323'),
(20, 2, 4, 1, '1146736.jpg', 'image', 3840, 2160, 7068239, NULL, NULL, NULL, '2021-07-12 01:55:07', '2021-07-12 01:55:07', '2021-07-12 01:55:07', '79846a84-ad77-4a1b-8710-4c780184f5cf'),
(21, 2, 4, 1, '1156786.jpg', 'image', 7376, 4696, 7705987, NULL, NULL, NULL, '2021-07-12 01:56:29', '2021-07-12 01:56:30', '2021-07-12 01:56:30', 'ca645ca8-89be-4e2c-9516-aea8ef38bdcb'),
(22, 2, 4, 1, '1155414.jpg', 'image', 3840, 2160, 855625, NULL, NULL, NULL, '2021-07-12 01:56:34', '2021-07-12 01:56:34', '2021-07-12 01:56:34', '8baf2e94-327b-437d-a666-72f9efe2a1b8');

-- --------------------------------------------------------

--
-- Table structure for table `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_sldier` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_sldier`) VALUES
(1, 1, 1, NULL, '2021-07-12 00:09:16', '2021-07-12 00:09:16', '29ca7a32-c69c-408a-864c-4e2ab2bb730d', NULL),
(2, 2, 1, 'Home', '2021-07-12 00:36:28', '2021-07-12 00:36:28', 'b1b847ee-419b-45b7-a0b4-27de85c1e79c', NULL),
(3, 3, 1, 'Home', '2021-07-12 00:36:28', '2021-07-12 00:36:28', 'dd1723b2-5c94-4d50-b0c8-93b58017eee7', NULL),
(4, 4, 1, 'Hero image', '2021-07-12 00:55:57', '2021-07-12 01:50:53', 'ee646cf4-5b95-4c6b-8c02-a49ce73dbcd7', NULL),
(5, 5, 1, NULL, '2021-07-12 01:12:05', '2021-07-12 01:12:05', '8434caba-64a6-44b8-97a7-91484dcaee58', NULL),
(6, 6, 1, NULL, '2021-07-12 01:24:56', '2021-07-12 01:24:56', 'a2815672-085a-4b46-80df-2b60400c183b', NULL),
(7, 7, 1, NULL, '2021-07-12 01:25:37', '2021-07-12 01:25:37', '6da2c269-94b8-4cdd-9215-a4cf95eee37f', NULL),
(8, 8, 1, 'Homepage', '2021-07-12 01:33:03', '2021-07-12 01:33:03', '5db8ef88-6075-4450-bdac-17ed9ea5bebc', NULL),
(9, 9, 1, 'Homepage', '2021-07-12 01:33:03', '2021-07-12 01:33:03', 'c6128feb-ebd8-42f3-9240-638b94ce2575', NULL),
(10, 10, 1, '1153577', '2021-07-12 01:51:11', '2021-07-12 01:51:11', '6ac18ada-58e2-42c8-b699-1150c8f3d064', NULL),
(11, 11, 1, '1150841', '2021-07-12 01:51:13', '2021-07-12 01:51:13', '79bb6a2b-8bf5-46e5-a4c4-fd8528fef03f', NULL),
(13, 13, 1, '1153577', '2021-07-12 01:53:43', '2021-07-12 01:53:43', 'ff487b50-e78b-4b57-8fb9-a4a3b1c254e1', NULL),
(14, 14, 1, 'First', '2021-07-12 01:54:00', '2021-07-12 01:54:00', '41064638-1f05-49ae-9349-25e255f5852b', NULL),
(15, 15, 1, 'First', '2021-07-12 01:54:00', '2021-07-12 01:54:00', 'a709ab0a-0f58-40a9-9e15-c69d49e32270', NULL),
(17, 17, 1, '1150841', '2021-07-12 01:54:30', '2021-07-12 01:54:30', '8a234219-6d5c-43bf-acdb-98534211326a', NULL),
(18, 18, 1, 'Second', '2021-07-12 01:54:49', '2021-07-12 01:54:49', '1568d0a0-c5ea-42d3-81f2-de55dc36d73d', NULL),
(19, 19, 1, 'Second', '2021-07-12 01:54:50', '2021-07-12 01:54:50', '055a0dc9-dd70-4da1-b1e6-e4445fe0bb7d', NULL),
(20, 20, 1, '1146736', '2021-07-12 01:55:05', '2021-07-12 01:55:05', 'aae56263-d811-4088-8559-f9ab96027164', NULL),
(21, 21, 1, '1156786', '2021-07-12 01:56:11', '2021-07-12 01:56:11', '645a390b-b4b3-4cd7-bd1a-8c6cc288b8ef', NULL),
(22, 22, 1, '1155414', '2021-07-12 01:56:31', '2021-07-12 01:56:31', 'f62f328f-34ec-45ce-be44-1b4c41241f44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deprecationerrors`
--

INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'includeCssFile', 'C:\\xampp\\htdocs\\SinglePage\\craft\\vendor\\twig\\twig\\src\\Parser.php:185', '2021-07-12 01:37:52', 'C:\\xampp\\htdocs\\SinglePage\\craft\\vendor\\twig\\twig\\src\\Parser.php', 185, '`{% includeCssFile` %} is now deprecated. Use `{% css \"/url/to/file.css\" %}` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\twig\\\\tokenparsers\\\\RegisterResourceTokenParser.php\",\"line\":89,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"includeCssFile\\\", \\\"`{% includeCssFile` %} is now deprecated. Use `{% css \\\"/url/to/f...\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\tokenparsers\\\\RegisterResourceTokenParser\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Parser.php\",\"line\":185,\"class\":\"craft\\\\web\\\\twig\\\\tokenparsers\\\\RegisterResourceTokenParser\",\"method\":\"parse\",\"args\":\"Twig\\\\Token\"},{\"objectClass\":\"Twig\\\\Parser\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Parser.php\",\"line\":98,\"class\":\"Twig\\\\Parser\",\"method\":\"subparse\",\"args\":\"null, false\"},{\"objectClass\":\"Twig\\\\Parser\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":563,\"class\":\"Twig\\\\Parser\",\"method\":\"parse\",\"args\":\"Twig\\\\TokenStream\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":595,\"class\":\"Twig\\\\Environment\",\"method\":\"parse\",\"args\":\"Twig\\\\TokenStream\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\twig\\\\Environment.php\",\"line\":60,\"class\":\"Twig\\\\Environment\",\"method\":\"compileSource\",\"args\":\"Twig\\\\Source\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":408,\"class\":\"craft\\\\web\\\\twig\\\\Environment\",\"method\":\"compileSource\",\"args\":\"Twig\\\\Source\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":381,\"class\":\"Twig\\\\Environment\",\"method\":\"loadClass\",\"args\":\"\\\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c85...\\\", \\\"\\\", null\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\twig\\\\Environment.php\",\"line\":41,\"class\":\"Twig\\\\Environment\",\"method\":\"loadTemplate\",\"args\":\"\\\"\\\", null\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":359,\"class\":\"craft\\\\web\\\\twig\\\\Environment\",\"method\":\"loadTemplate\",\"args\":\"\\\"\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\Environment\",\"method\":\"load\",\"args\":\"\\\"\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 01:37:52', '2021-07-12 01:37:52', '83136301-04a9-4998-823c-b39504aaf561'),
(2, 'includeJsFile', 'C:\\xampp\\htdocs\\SinglePage\\craft\\vendor\\twig\\twig\\src\\Parser.php:185', '2021-07-12 03:08:57', 'C:\\xampp\\htdocs\\SinglePage\\craft\\vendor\\twig\\twig\\src\\Parser.php', 185, '`{% includeJsFile` %} is now deprecated. Use `{% js \"/url/to/file.js\" %}` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\twig\\\\tokenparsers\\\\RegisterResourceTokenParser.php\",\"line\":89,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"includeJsFile\\\", \\\"`{% includeJsFile` %} is now deprecated. Use `{% js \\\"/url/to/fil...\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\tokenparsers\\\\RegisterResourceTokenParser\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Parser.php\",\"line\":185,\"class\":\"craft\\\\web\\\\twig\\\\tokenparsers\\\\RegisterResourceTokenParser\",\"method\":\"parse\",\"args\":\"Twig\\\\Token\"},{\"objectClass\":\"Twig\\\\Parser\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Parser.php\",\"line\":98,\"class\":\"Twig\\\\Parser\",\"method\":\"subparse\",\"args\":\"null, false\"},{\"objectClass\":\"Twig\\\\Parser\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":563,\"class\":\"Twig\\\\Parser\",\"method\":\"parse\",\"args\":\"Twig\\\\TokenStream\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":595,\"class\":\"Twig\\\\Environment\",\"method\":\"parse\",\"args\":\"Twig\\\\TokenStream\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\twig\\\\Environment.php\",\"line\":60,\"class\":\"Twig\\\\Environment\",\"method\":\"compileSource\",\"args\":\"Twig\\\\Source\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":408,\"class\":\"craft\\\\web\\\\twig\\\\Environment\",\"method\":\"compileSource\",\"args\":\"Twig\\\\Source\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":381,\"class\":\"Twig\\\\Environment\",\"method\":\"loadClass\",\"args\":\"\\\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c85...\\\", \\\"\\\", null\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\twig\\\\Environment.php\",\"line\":41,\"class\":\"Twig\\\\Environment\",\"method\":\"loadTemplate\",\"args\":\"\\\"\\\", null\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":359,\"class\":\"craft\\\\web\\\\twig\\\\Environment\",\"method\":\"loadTemplate\",\"args\":\"\\\"\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\Environment\",\"method\":\"load\",\"args\":\"\\\"\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 03:08:57', '2021-07-12 03:08:57', '66859ce8-7e38-47f3-a9dd-adcff4ab67bd'),
(20, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:17', '2021-07-12 02:09:08', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 17, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":62,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:09:08', '2021-07-12 02:09:08', '6f75a2ef-740e-462c-90d3-2e8b40f52d17'),
(22, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:16', '2021-07-12 02:30:13', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 16, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":64,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:30:13', '2021-07-12 02:30:13', '41a87bb7-36c4-4170-a373-7ab200c58a8f'),
(25, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:21', '2021-07-12 02:17:53', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 21, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":66,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:17:53', '2021-07-12 02:17:53', '0d2bd029-b552-45ea-adbe-f1e988050560'),
(27, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:24', '2021-07-12 02:21:42', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 24, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":69,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:21:42', '2021-07-12 02:21:42', '97dd4257-88a8-464b-a047-73c5d5e85d8b');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(29, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:31', '2021-07-12 02:24:34', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 31, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":76,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:24:34', '2021-07-12 02:24:34', '50d60e1c-e935-46cc-85f0-01bd6870fbc9'),
(35, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:32', '2021-07-12 02:33:09', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 32, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":77,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:33:09', '2021-07-12 02:33:09', '2e370c38-dbc2-4642-8300-d3325a419469'),
(38, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:33', '2021-07-12 02:40:53', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 33, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":78,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:40:53', '2021-07-12 02:40:53', 'e92a4897-4208-4543-a34a-69989b71531d'),
(42, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:34', '2021-07-12 02:50:44', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 34, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":82,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 02:50:44', '2021-07-12 02:50:44', '8bea00ca-02af-4cc7-b533-a2c523754995'),
(50, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:333', '2021-07-12 03:12:59', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 333, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":381,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 03:12:59', '2021-07-12 03:12:59', '2a63f931-b2c2-41a9-8795-2f899df44a0d'),
(54, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:334', '2021-07-12 03:24:39', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 334, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":382,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 03:24:39', '2021-07-12 03:24:39', 'fda2efd0-2659-48fc-999a-08faf5fd1fbf');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(55, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:96', '2021-07-12 03:42:47', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 96, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":144,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 03:42:47', '2021-07-12 03:42:47', '08628eb5-a880-43d2-8d6b-b241ea5d9034'),
(60, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:99', '2021-07-12 03:50:38', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 99, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":147,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 03:50:38', '2021-07-12 03:50:38', 'a3a94d22-6af0-4dc4-9978-c383db7be440'),
(63, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:98', '2021-07-12 04:08:30', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 98, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":146,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 04:08:30', '2021-07-12 04:08:30', '297feb8a-6093-404b-9e11-80784a4190e1'),
(75, 'ElementQuery::first()', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig:36', '2021-07-12 04:11:12', 'C:\\xampp\\htdocs\\SinglePage\\craft\\templates\\index.twig', 36, 'The `first()` function used to query for elements is now deprecated. Use `one()` instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1947,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::first()\\\", \\\"The `first()` function used to query for elements is now depreca...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1511,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"first\",\"args\":null},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e5\\\\e59a36eca765a6cecbd3e149335deecc216cf75a5c5b4bd667ec6b69bd813a14.php\",\"line\":84,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\AssetQuery, \\\"first\\\", ...\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_fa4d597ff2128270b0299d30d7a4a3e9f39f4452f25e20c853b38363c0b97956\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":263,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\SinglePage\\\\craft\\\\index.php\",\"line\":26,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-07-12 04:11:12', '2021-07-12 04:11:12', 'f2e88b00-5eba-4029-96af-6a4adcc92c35');

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(1, NULL, 1, 'First draft', NULL, 0, NULL, 0),
(2, NULL, 1, 'First draft', NULL, 0, NULL, 0),
(3, NULL, 1, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2021-07-12 00:09:16', '2021-07-12 00:09:16', NULL, 'ece3b8fb-15c2-4f0a-a802-fe5f2adb9767'),
(2, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2021-07-12 00:36:28', '2021-07-12 00:36:28', '2021-07-12 01:21:23', '76bce554-5c4d-421d-863f-7a3706187f54'),
(3, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2021-07-12 00:36:28', '2021-07-12 00:36:28', '2021-07-12 01:21:23', '17b7ecd1-fcf6-4bb7-91b9-ad4dd98363bb'),
(4, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-07-12 00:55:57', '2021-07-12 01:50:53', NULL, 'fb3bfc6e-6239-4a1e-be7a-abbcac50f2e5'),
(5, 1, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:12:05', '2021-07-12 01:12:05', NULL, 'cc8eae57-89f7-44b5-b858-0c5b3d85001e'),
(6, 2, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:24:56', '2021-07-12 01:24:56', NULL, '86bf9e52-bb47-4e50-9789-16fdb09fec11'),
(7, 3, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:25:37', '2021-07-12 01:25:37', NULL, 'b3e2232d-15ee-4d0c-be8a-8a62ab081f0f'),
(8, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:33:03', '2021-07-12 01:33:03', NULL, '4ee1db06-f8b7-467f-8942-04bdad2d7739'),
(9, NULL, 2, 5, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:33:03', '2021-07-12 01:33:03', NULL, '485fb90b-bab9-4bd9-a8e9-1609edb79daa'),
(10, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2021-07-12 01:51:11', '2021-07-12 01:51:11', '2021-07-12 01:52:33', 'b54826e6-3e1b-45ff-ac94-fa0942e139d7'),
(11, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2021-07-12 01:51:13', '2021-07-12 01:51:13', '2021-07-12 01:52:24', '6139c141-fbcc-4e17-a6d3-6917cc7d3c9a'),
(13, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2021-07-12 01:53:43', '2021-07-12 01:53:43', NULL, '5a822172-a1bd-4c04-895a-aab50e216845'),
(14, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:54:00', '2021-07-12 01:54:00', NULL, '1ea8941b-8999-4d62-8104-d17d232ceb50'),
(15, NULL, 3, 3, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:54:00', '2021-07-12 01:54:00', NULL, '48a71e47-ca19-459e-ac1d-90b354248922'),
(17, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2021-07-12 01:54:30', '2021-07-12 01:54:30', NULL, '812b5a12-daa9-401d-b88c-16e26d3cfcd7'),
(18, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:54:49', '2021-07-12 01:54:49', NULL, '48d42b29-c665-4fdb-9818-51582c50a06b'),
(19, NULL, 4, 3, 'craft\\elements\\Entry', 1, 0, '2021-07-12 01:54:49', '2021-07-12 01:54:49', NULL, '72c9b7b9-e51e-43bf-ad9c-26eb049c32f5'),
(20, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2021-07-12 01:55:05', '2021-07-12 01:55:05', NULL, '6be0b942-feb3-428d-9f54-ad3c58855377'),
(21, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2021-07-12 01:56:11', '2021-07-12 01:56:11', NULL, '7e21e70d-903e-44c8-ba14-96373dffa152'),
(22, NULL, NULL, 4, 'craft\\elements\\Asset', 1, 0, '2021-07-12 01:56:31', '2021-07-12 01:56:31', NULL, '6f0b9649-0d8e-48e9-95ef-c42ab25a7c82');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2021-07-12 00:09:16', '2021-07-12 00:09:16', '3e94a3da-2e0f-46a4-b600-9800174932c1'),
(2, 2, 1, 'home', 'home', 1, '2021-07-12 00:36:28', '2021-07-12 00:36:28', 'faeaff21-7016-4944-ba1a-824d5156b047'),
(3, 3, 1, 'home', 'home', 1, '2021-07-12 00:36:28', '2021-07-12 00:36:28', '44213125-1ada-40c9-9ddd-2893db4f112d'),
(4, 4, 1, NULL, NULL, 1, '2021-07-12 00:55:57', '2021-07-12 00:55:57', 'f2b28a24-860b-4c41-9e37-9806350f1252'),
(5, 5, 1, '__temp_pyvktkrzvzzvhcbudkeuvausldlpjkztlezz', 'slider/__temp_pyvktkrzvzzvhcbudkeuvausldlpjkztlezz', 1, '2021-07-12 01:12:05', '2021-07-12 01:12:05', '75e4ee48-92f8-4083-a123-871a5542e7b3'),
(6, 6, 1, '__temp_gjcpsydmjupibhnzhntffpefmrzzjvbvkzkk', NULL, 1, '2021-07-12 01:24:56', '2021-07-12 01:24:56', 'c9bf7653-16d6-4897-bf6e-d6f4a8643004'),
(7, 7, 1, '__temp_elzuvwplfoqaxbknjglhazqneyuldkxeccub', NULL, 1, '2021-07-12 01:25:37', '2021-07-12 01:25:37', 'c67ecfdf-1554-40c2-bbc1-5243bc0d1d1a'),
(8, 8, 1, 'homepage', 'homepage', 1, '2021-07-12 01:33:03', '2021-07-12 01:33:03', '0c668143-eadb-445d-96f7-32cd11d0c899'),
(9, 9, 1, 'homepage', 'homepage', 1, '2021-07-12 01:33:03', '2021-07-12 01:33:03', 'e329704a-dfb3-40e2-880b-48926526f4a7'),
(10, 10, 1, NULL, NULL, 1, '2021-07-12 01:51:11', '2021-07-12 01:51:11', '086259b0-0a23-40fa-8536-e7ef11c4002c'),
(11, 11, 1, NULL, NULL, 1, '2021-07-12 01:51:13', '2021-07-12 01:51:13', 'd84b2032-7861-493b-8b67-9507a85db98d'),
(13, 13, 1, NULL, NULL, 1, '2021-07-12 01:53:43', '2021-07-12 01:53:43', '7eb5e2c3-6308-40cf-8435-f0ac5996615a'),
(14, 14, 1, 'first', NULL, 1, '2021-07-12 01:54:00', '2021-07-12 01:54:00', '3f6ae751-4365-4b72-88d7-9757ad0cc2bb'),
(15, 15, 1, 'first', NULL, 1, '2021-07-12 01:54:00', '2021-07-12 01:54:00', '7fc3b3d8-e7e0-4270-b9fc-f2144ee040db'),
(17, 17, 1, NULL, NULL, 1, '2021-07-12 01:54:30', '2021-07-12 01:54:30', '994de665-e1c2-45c6-ae6a-fea097a6288b'),
(18, 18, 1, 'second', NULL, 1, '2021-07-12 01:54:49', '2021-07-12 01:54:49', '836fa8a7-9752-46ed-b3f0-b1d918f5739a'),
(19, 19, 1, 'second', NULL, 1, '2021-07-12 01:54:50', '2021-07-12 01:54:50', 'b3dc076f-6f04-4fe2-a838-f1fe18587eed'),
(20, 20, 1, NULL, NULL, 1, '2021-07-12 01:55:05', '2021-07-12 01:55:05', 'b78ae86d-5245-428a-bf80-b7638debff9f'),
(21, 21, 1, NULL, NULL, 1, '2021-07-12 01:56:11', '2021-07-12 01:56:11', '03d2e07b-4d77-4a9c-a7f5-19fde7a4d1f2'),
(22, 22, 1, NULL, NULL, 1, '2021-07-12 01:56:31', '2021-07-12 01:56:31', '32cc5f78-ba13-4ec1-97a2-6ab41ab9f643');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, NULL, '2021-07-12 00:36:00', NULL, 1, '2021-07-12 00:36:28', '2021-07-12 00:36:28', 'd28a6e9f-2754-4cbd-a0b9-9c820976d9d1'),
(3, 1, NULL, 1, NULL, '2021-07-12 00:36:00', NULL, NULL, '2021-07-12 00:36:28', '2021-07-12 00:36:28', 'c2e02406-1f2b-4e64-ba42-3461dc340c43'),
(5, 2, NULL, 2, 1, '2021-07-12 01:12:00', NULL, NULL, '2021-07-12 01:12:05', '2021-07-12 01:12:05', '3e783e5c-5d8f-4dce-974d-b9956992be4f'),
(6, 2, NULL, 2, 1, '2021-07-12 01:24:00', NULL, NULL, '2021-07-12 01:24:56', '2021-07-12 01:24:56', '4b14b38e-0b3c-4074-8589-912de6826f3f'),
(7, 2, NULL, 2, 1, '2021-07-12 01:25:00', NULL, NULL, '2021-07-12 01:25:37', '2021-07-12 01:25:37', 'd263ad9c-b911-4071-8367-f34c785eb393'),
(8, 3, NULL, 3, NULL, '2021-07-12 01:33:00', NULL, NULL, '2021-07-12 01:33:03', '2021-07-12 01:33:03', '0582b198-c768-46f6-b4ce-5f6d2dce881e'),
(9, 3, NULL, 3, NULL, '2021-07-12 01:33:00', NULL, NULL, '2021-07-12 01:33:03', '2021-07-12 01:33:03', 'eb8f0e16-8ea6-4678-a117-bd2f731e7125'),
(14, 2, NULL, 2, 1, '2021-07-12 01:53:00', NULL, NULL, '2021-07-12 01:54:00', '2021-07-12 01:54:00', '4545803e-bf71-48db-9021-408efff54d34'),
(15, 2, NULL, 2, 1, '2021-07-12 01:53:00', NULL, NULL, '2021-07-12 01:54:00', '2021-07-12 01:54:00', 'e7629f3a-23e4-4a42-9891-a077dbad6cb2'),
(18, 2, NULL, 2, 1, '2021-07-12 01:54:00', NULL, NULL, '2021-07-12 01:54:49', '2021-07-12 01:54:49', 'e3f573b0-7df3-44b5-8a00-bf37ad56d997'),
(19, 2, NULL, 2, 1, '2021-07-12 01:54:00', NULL, NULL, '2021-07-12 01:54:50', '2021-07-12 01:54:50', '85d5c9c7-d7a3-4160-b7b4-d8b1aa8b43fa');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 1, '2021-07-12 00:36:27', '2021-07-12 00:36:27', '2021-07-12 01:21:23', '3b22da47-1948-4c55-a8a4-b9fa089b978e'),
(2, 2, 3, 'Slider', 'slider', 1, 'site', NULL, NULL, 1, '2021-07-12 01:08:54', '2021-07-12 01:08:54', NULL, 'adf4bcf5-8465-48a1-9c2a-5c49fa19fb42'),
(3, 3, 5, 'Homepage', 'homepage', 0, 'site', NULL, '{section.name|raw}', 1, '2021-07-12 01:33:03', '2021-07-12 01:33:03', NULL, 'aa6a622a-f867-4f2e-b574-4bfa59338490');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2021-07-12 00:09:16', '2021-07-12 00:09:16', NULL, '7a240f6a-3092-4d8c-aa7b-58bab91547a1'),
(2, 'Slider', '2021-07-12 00:50:17', '2021-07-12 00:50:17', NULL, '199d737e-21bf-422e-ac1d-f73765594ce5');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 6, 2, 0, 2, '2021-07-12 01:25:32', '2021-07-12 01:25:32', '77a41ab4-5ea2-4f9e-aa36-2d7b25c1b650');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2021-07-12 00:36:27', '2021-07-12 00:36:27', '2021-07-12 01:21:23', 'b6e65ea1-3e18-489d-89ac-0b481870c7db'),
(2, 'craft\\elements\\Asset', '2021-07-12 00:52:23', '2021-07-12 00:52:23', NULL, '7c72f7cb-a76e-4049-b518-b5184478b7a8'),
(3, 'craft\\elements\\Entry', '2021-07-12 01:08:54', '2021-07-12 01:08:54', NULL, '38f46630-9604-4805-960d-3430c714504c'),
(4, 'craft\\elements\\Asset', '2021-07-12 01:26:45', '2021-07-12 01:26:45', NULL, '88d3421e-d810-4928-9fed-6ed5f3ee99c2'),
(5, 'craft\\elements\\Entry', '2021-07-12 01:33:03', '2021-07-12 01:33:03', NULL, '161eb133-c7e8-4f7e-b231-9d856e56b52f');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-07-12 00:36:27', '2021-07-12 00:36:27', 'd9dfe169-657a-4dc9-8091-3175475660f8'),
(6, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"339bd95a-4858-4b01-8e58-1c22ed3c9946\"}]', 1, '2021-07-12 01:25:32', '2021-07-12 01:25:32', 'cf8ce34b-d042-438c-8d88-6b4c2ff5fc2a'),
(9, 5, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-07-12 01:33:03', '2021-07-12 01:33:03', '71a09db9-ce9f-443a-accb-fecb7466fbdf'),
(10, 2, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-07-12 01:48:54', '2021-07-12 01:48:54', '1945340b-ea08-45df-b5b9-9c67e1a64ab9'),
(11, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-07-12 01:49:31', '2021-07-12 01:49:31', '3bcc1246-1a16-480c-9dc0-ba861b8af7d6');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `translationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'Sldier', 'sldier', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-12 00:50:44', '2021-07-12 00:50:44', '9093d76a-7f5c-4c3f-b04d-67dbff7c1caa'),
(2, 2, 'Image', 'image', 'global', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:317da1dc-d106-42ac-9000-4bad75f62328\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:42b37826-85e3-446f-abf7-6537b6c0da5a\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:317da1dc-d106-42ac-9000-4bad75f62328\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2021-07-12 01:24:47', '2021-07-12 01:53:19', '339bd95a-4858-4b01-8e58-1c22ed3c9946');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.6.17', '3.6.8', 0, 'zddjewaqabct', 'kpimticdqpkh', '2021-07-12 00:09:16', '2021-07-12 01:53:19', '354fc1a5-9595-453a-9746-25c17d929852');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2021-07-12 00:09:16', '2021-07-12 00:09:16', '2021-07-12 00:09:16', 'e306f3f7-26a5-4d42-9607-8c13dcc72a63'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '54b33d98-860f-4907-b84f-d0bfa3703612'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '928a5b46-be44-400e-8e81-a405a9ea7031'),
(4, 'craft', 'm150403_184533_field_version', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2d92bd7d-0d5e-4ac7-a923-e19cc54c49c2'),
(5, 'craft', 'm150403_184729_type_columns', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6ec2d7c0-c92c-4392-a05e-e5bff605e769'),
(6, 'craft', 'm150403_185142_volumes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'dcfeb2ab-84a7-4ea3-ada2-b770365739d3'),
(7, 'craft', 'm150428_231346_userpreferences', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '87beeac9-2c55-448e-b5c7-39d23b534050'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e4f6f476-f391-4ea1-8728-4b0d993d956a'),
(9, 'craft', 'm150617_213829_update_email_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '016c294c-3133-4cc7-a406-dec541d1b233'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e811ff48-1e1f-4851-83e7-9dd4a14ed7e9'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2a7cf5c2-f2af-4d60-8e43-341e942518bc'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '7d953818-c835-4aa2-9bb2-f19b77451365'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '933801c0-3c18-4e94-b2a0-ec6f80646c18'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '41444fb2-a7b7-4961-9d5d-599d6508b4b9'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '51cd8089-34c8-48fc-9a00-b9a4cdc683e7'),
(16, 'craft', 'm151209_000000_move_logo', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '940f0d1e-08cc-477d-8318-6d4fd1d99265'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'c4a37ec0-1e7f-4537-8ad2-952fb1bcbb0d'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '63b1b343-a150-46da-8b29-51579a0429ab'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'b17697b2-b495-4f24-99e8-9c0ccc6995c8'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '276740a7-07c2-498c-9aac-259f2693486f'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '15e73e9f-eccc-442b-b04e-45806758d0ce'),
(22, 'craft', 'm160727_194637_column_cleanup', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'b23f360c-dff5-4d51-b659-b4f12d3c8ecf'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e28d8a0d-3298-4d5d-b7da-b95af413139a'),
(24, 'craft', 'm160807_144858_sites', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'c3a0217d-5efc-4ab2-91e0-133b08cc39ea'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'cd1c22e6-cf9f-42f1-9bd1-08a0773eaff9'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '3458d4f0-4174-4506-9080-503b61462173'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd0ce0523-903c-4bfe-a9a9-c0e5326fba0a'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'ebff159b-ff3a-4862-8730-23ec7e06ed7c'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '85ee7862-8ee5-4a32-98f1-f63001979417'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '9024f1f5-1829-47a5-ae9a-737497816883'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '95d55c72-8f74-428e-801a-ba129ff556a7'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0529059a-c171-465b-a473-6b4a1a79b04c'),
(33, 'craft', 'm161007_130653_update_email_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '1f5de4bc-70c5-4708-8c4e-52628a6675c9'),
(34, 'craft', 'm161013_175052_newParentId', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '58707db9-d2a8-4f59-b53b-e7b367f2d38f'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '06e4b187-ba59-4683-8a01-ea4c82928e72'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'fbfffda5-a18b-414a-8450-2507bcd2665e'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '3af8f3c8-19fc-47df-9da9-8f29a3285069'),
(38, 'craft', 'm161029_124145_email_message_languages', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '96c88595-5550-47ed-adc8-ccd2e899ce26'),
(39, 'craft', 'm161108_000000_new_version_format', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '030fe063-891f-4773-a693-3f3734dc1815'),
(40, 'craft', 'm161109_000000_index_shuffle', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '1359413d-4ebe-4547-b0b4-f9b804ea2dba'),
(41, 'craft', 'm161122_185500_no_craft_app', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '818d74ee-e47b-40dd-9acf-7c6ad64488a9'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'eabe112d-881d-4d08-ba74-5c82d1cd0327'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '98bbb847-f10b-4e7e-a05d-fa50df1cbaa8'),
(44, 'craft', 'm170114_161144_udates_permission', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '8f237703-994f-4f8e-9d55-b193b2f10ca4'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '9dfc105b-8754-4f05-a745-adb4e1ecaf4d'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '5310d215-8abb-4706-b203-975b48a36034'),
(47, 'craft', 'm170206_142126_system_name', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'eb155fb8-86e8-4654-aef0-f97434f4aa4b'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd598c987-50bd-48b2-adf8-ec72d14d0c5c'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '81a2360e-1cc2-4141-b135-e84fa9277031'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '30764dcf-85f4-42b1-ac72-d608c1a8f2c8'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '8d6edd8e-b29e-4db9-80e6-3729503ba490'),
(52, 'craft', 'm170228_171113_system_messages', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e648cf93-abc1-4736-af64-adfbd8b39737'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'cf0138d0-f71e-4ec4-9568-c0418de9fb80'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'c69d1d48-7fe8-4c66-8be5-8a426eb3b049'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e129b2b9-5305-4804-9975-e88b68c4f65b'),
(56, 'craft', 'm170621_195237_format_plugin_handles', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'ca52ecb0-9a64-4f27-9db4-65f72066ec24'),
(57, 'craft', 'm170630_161027_deprecation_line_nullable', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0bf2d662-5f4f-4eba-8ae1-f13cee59969a'),
(58, 'craft', 'm170630_161028_deprecation_changes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '25690753-7a7e-4c83-a4c1-02eb2e9517cb'),
(59, 'craft', 'm170703_181539_plugins_table_tweaks', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'dcbf6d20-2b25-4a0d-9a8b-2b97786762ef'),
(60, 'craft', 'm170704_134916_sites_tables', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'f04684a4-bb9d-446d-b2a5-8d7a1665d2c9'),
(61, 'craft', 'm170706_183216_rename_sequences', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '34ddc7df-ba60-4f4d-a7c7-8d3d809185a4'),
(62, 'craft', 'm170707_094758_delete_compiled_traits', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '774f670f-93f3-413b-afd4-5e784bcb7eac'),
(63, 'craft', 'm170731_190138_drop_asset_packagist', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'b76677d5-cb95-4f0e-9b96-27ba0812dc4c'),
(64, 'craft', 'm170810_201318_create_queue_table', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0f9256f5-062c-49c3-a140-726622e2c986'),
(65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '116206e9-a999-4c2c-a214-2c940c2e5e8b'),
(66, 'craft', 'm170914_204621_asset_cache_shuffle', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '4a9840d0-c07a-48b0-b723-d6a7aab14428'),
(67, 'craft', 'm171011_214115_site_groups', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6e7cb4b0-85e1-444e-8bd9-ca3e84a30206'),
(68, 'craft', 'm171012_151440_primary_site', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'ef3c0aa1-0316-440a-b1f6-d2c5603f0a02'),
(69, 'craft', 'm171013_142500_transform_interlace', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'a1fb1d3e-08ac-42ff-8c7e-39e923d2610a'),
(70, 'craft', 'm171016_092553_drop_position_select', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '27d2d34e-860c-495c-92c4-48aff2ee539f'),
(71, 'craft', 'm171016_221244_less_strict_translation_method', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'cdb10687-0830-4f36-814a-069b5ec743a3'),
(72, 'craft', 'm171107_000000_assign_group_permissions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e96f44b9-eeaa-40e1-83b2-944d5d0d3a6c'),
(73, 'craft', 'm171117_000001_templatecache_index_tune', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'a30c43b8-6dd6-4b12-bf0d-e3dadda3149d'),
(74, 'craft', 'm171126_105927_disabled_plugins', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'de1e096e-0cb3-492e-baf3-12605e8d7939'),
(75, 'craft', 'm171130_214407_craftidtokens_table', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6437955d-22bf-4d3d-be26-107018f5157a'),
(76, 'craft', 'm171202_004225_update_email_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2137301d-b7e8-4849-bdf2-5997b604b55f'),
(77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'f01d1823-5b4b-43d6-9a92-6bcdaa890403'),
(78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '91f98334-da26-4cee-b369-b4c3448c53f9'),
(79, 'craft', 'm171218_143135_longtext_query_column', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'b2a68216-b7b1-4afb-ade0-93c4225f7ee2'),
(80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0a88f178-720d-4cd1-a7ba-a03efdd9911a'),
(81, 'craft', 'm180113_153740_drop_users_archived_column', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '4db4f593-d618-419a-b3ff-25973442c79b'),
(82, 'craft', 'm180122_213433_propagate_entries_setting', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0e47192f-54ef-4327-8c10-e8c5567850cb'),
(83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '5e0bdbf6-76f8-4274-b9e6-7b7ab3ff8420'),
(84, 'craft', 'm180128_235202_set_tag_slugs', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'cf1fbcd3-df87-4f78-b7f3-657482d3adcd'),
(85, 'craft', 'm180202_185551_fix_focal_points', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6f4b4b12-e3cc-48ff-9892-cef8dc102a5e'),
(86, 'craft', 'm180217_172123_tiny_ints', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0597b80e-511f-4745-951e-ed352753bb0c'),
(87, 'craft', 'm180321_233505_small_ints', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0dbbfacd-8cc6-49d4-857e-355025667994'),
(88, 'craft', 'm180404_182320_edition_changes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '7005582f-62ca-4285-ab02-f6b0c35a285a'),
(89, 'craft', 'm180411_102218_fix_db_routes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '37db6e8a-b65c-4950-b83d-f2a3cf0e9537'),
(90, 'craft', 'm180416_205628_resourcepaths_table', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '95c87a44-e9c7-4975-ad79-45bd7f06f768'),
(91, 'craft', 'm180418_205713_widget_cleanup', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6ae459c1-b926-4019-83ac-f31a53eb2bbd'),
(92, 'craft', 'm180425_203349_searchable_fields', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2466f54e-9f7d-4bb2-bb2e-72bbc7e497f4'),
(93, 'craft', 'm180516_153000_uids_in_field_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '391fa1cc-4c4a-4786-9b3b-6645792760be'),
(94, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '527bee3f-2d9d-4fc5-b06d-2639bb34362f'),
(95, 'craft', 'm180518_173000_permissions_to_uid', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '74a9a1ca-684c-4edf-bf3e-3f3ca394eb94'),
(96, 'craft', 'm180520_173000_matrix_context_to_uids', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e3501140-677f-4866-aade-a7d1469198fb'),
(97, 'craft', 'm180521_172900_project_config_table', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '08e3933e-8a64-4c31-bc28-351b1ecf1f5f'),
(98, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '9ca377d9-4808-4d0c-9671-d380db8bbaa5'),
(99, 'craft', 'm180731_162030_soft_delete_sites', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd90446ed-034a-4552-8bc7-8c0ea76ddf1d'),
(100, 'craft', 'm180810_214427_soft_delete_field_layouts', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '7ceb2ae9-b948-498c-abfc-f26b8fc19c33'),
(101, 'craft', 'm180810_214439_soft_delete_elements', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '58d0b79b-6a3a-4653-b134-cee7ea3fbe5d'),
(102, 'craft', 'm180824_193422_case_sensitivity_fixes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e0240cd1-46db-4638-b94a-d84edb1724fe'),
(103, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '4947eb29-70f7-4a3c-bf8f-5fddc4e527c9'),
(104, 'craft', 'm180904_112109_permission_changes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '900e25b5-d0ad-4d0b-b6ba-ed40d5aded24'),
(105, 'craft', 'm180910_142030_soft_delete_sitegroups', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e8d7c5a8-4897-417d-a056-49e7518fe459'),
(106, 'craft', 'm181011_160000_soft_delete_asset_support', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '9223d1c4-6f28-4bf2-b6f5-f2d2e7f57b01'),
(107, 'craft', 'm181016_183648_set_default_user_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '7aed1115-8649-4407-9b40-f001fe10e741'),
(108, 'craft', 'm181017_225222_system_config_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '5b9cfcf5-77e9-4acd-bda8-d2f94f31ad5b'),
(109, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '94ceaa44-af6e-4369-b3b3-8ceab4e72062'),
(110, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '832bf8f7-661a-44f8-a196-4973204b1232'),
(111, 'craft', 'm181112_203955_sequences_table', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '5615e2ef-4a7a-4c95-9954-8aa9d825e14a'),
(112, 'craft', 'm181121_001712_cleanup_field_configs', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2e440e8e-e541-4ee3-b363-852bd0ae9224'),
(113, 'craft', 'm181128_193942_fix_project_config', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '05f6e70a-be7d-4044-9497-529c9a039ed9'),
(114, 'craft', 'm181130_143040_fix_schema_version', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '58baa407-6402-4162-8fab-7dfb74850d95'),
(115, 'craft', 'm181211_143040_fix_entry_type_uids', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2937b579-4d54-4591-ba61-3dd5b1ccc1af'),
(116, 'craft', 'm181217_153000_fix_structure_uids', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'aa7cd5f0-9cac-47f2-92c4-cc4627c283c3'),
(117, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '61e620b9-81b2-4ed5-9007-84ef72bcfab7'),
(118, 'craft', 'm190108_110000_cleanup_project_config', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd29dd86f-c3e8-419f-b50b-153ff51d08e7'),
(119, 'craft', 'm190108_113000_asset_field_setting_change', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'dddae918-61c6-4c8a-8392-d9246852f5ee'),
(120, 'craft', 'm190109_172845_fix_colspan', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '63e7d7d5-9712-4e8b-8d12-169ac8a92ee1'),
(121, 'craft', 'm190110_150000_prune_nonexisting_sites', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '1fbd5b75-4ad1-4b24-95bf-1f15ddfdf7e7'),
(122, 'craft', 'm190110_214819_soft_delete_volumes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '207dfbb5-1706-4f66-ac0b-87b8eade6148'),
(123, 'craft', 'm190112_124737_fix_user_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0d6b5700-b80c-44cd-9993-fa49f4a8a07b'),
(124, 'craft', 'm190112_131225_fix_field_layouts', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '36a84044-304f-4cb7-87a4-2db07cbaacca'),
(125, 'craft', 'm190112_201010_more_soft_deletes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '788e19b6-1ca3-453b-b7c3-ebd6bbe2bc00'),
(126, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6855dbb6-6418-4069-936a-f5fb4e107631'),
(127, 'craft', 'm190121_120000_rich_text_config_setting', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '836bd0d3-5e28-40b9-ac02-3ea53ef274e8'),
(128, 'craft', 'm190125_191628_fix_email_transport_password', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '1e782603-d2bd-4d36-9e14-ca59449de24c'),
(129, 'craft', 'm190128_181422_cleanup_volume_folders', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'c1edfe3e-bd77-4de6-8f78-ca23e273db0f'),
(130, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '4e3a56d1-0f24-4105-a9ef-39fb2ebb0b4b'),
(131, 'craft', 'm190218_143000_element_index_settings_uid', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'cbc85fb3-0768-4232-bca1-2ef027ef136e'),
(132, 'craft', 'm190312_152740_element_revisions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd221d451-5e26-4bf5-9fc8-ca100d52f39b'),
(133, 'craft', 'm190327_235137_propagation_method', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'c580f8d0-e322-4322-a5b7-fe0fae1a3ed6'),
(134, 'craft', 'm190401_223843_drop_old_indexes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd3c73207-062f-4c96-a0f5-a31cfa6291e4'),
(135, 'craft', 'm190416_014525_drop_unique_global_indexes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6c691820-f92b-4487-a8af-b7ac7aec3a91'),
(136, 'craft', 'm190417_085010_add_image_editor_permissions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '768eb174-04d7-40db-893d-fbec8ceea50f'),
(137, 'craft', 'm190502_122019_store_default_user_group_uid', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd01fa60f-a85b-4c06-ae65-3cd48d9016f6'),
(138, 'craft', 'm190504_150349_preview_targets', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'ffe1a76a-59ab-409e-b439-a60c7d038a83'),
(139, 'craft', 'm190516_184711_job_progress_label', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '8f59e34b-f9c8-4e66-954d-088ad6ee7c8a'),
(140, 'craft', 'm190523_190303_optional_revision_creators', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e8804d45-002e-434a-9cd9-2dde2e08e342'),
(141, 'craft', 'm190529_204501_fix_duplicate_uids', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '0a53872f-6b29-43dd-8af7-976380487d44'),
(142, 'craft', 'm190605_223807_unsaved_drafts', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '761e9968-57ad-44d1-946a-82e2dfb4dfdc'),
(143, 'craft', 'm190607_230042_entry_revision_error_tables', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'af005752-a5c5-432b-bd5f-04634376439b'),
(144, 'craft', 'm190608_033429_drop_elements_uid_idx', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '1ddc152e-1a31-4156-bd5a-4e5d7f198aae'),
(145, 'craft', 'm190617_164400_add_gqlschemas_table', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '40eb03ec-bcee-4d67-8ef2-7345d579adec'),
(146, 'craft', 'm190624_234204_matrix_propagation_method', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '4e20e816-92a0-41c2-9d8f-07d587d11913'),
(147, 'craft', 'm190711_153020_drop_snapshots', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '5c187c57-34d5-4687-89b8-65c94d7c6f94'),
(148, 'craft', 'm190712_195914_no_draft_revisions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '1f36b5d9-8d94-4d88-bef7-b419ff99b67a'),
(149, 'craft', 'm190723_140314_fix_preview_targets_column', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'a7be1bbb-569d-4d67-a0db-b5a2e8a3c699'),
(150, 'craft', 'm190820_003519_flush_compiled_templates', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '3b7ed740-fc7e-489d-86a1-3d3dd1a28069'),
(151, 'craft', 'm190823_020339_optional_draft_creators', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '432fa1eb-8616-40fd-9c1d-32724e644906'),
(152, 'craft', 'm190913_152146_update_preview_targets', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '04cf9e9d-e812-45d9-ab22-4f2f93cc0f91'),
(153, 'craft', 'm191107_122000_add_gql_project_config_support', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '08fed346-b022-42f9-98d2-fa7c80a6ab95'),
(154, 'craft', 'm191204_085100_pack_savable_component_settings', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'b6a2c089-e356-4a25-8206-cb336be13acb'),
(155, 'craft', 'm191206_001148_change_tracking', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '6d91feea-9c43-4ad4-b674-25b3d06fa369'),
(156, 'craft', 'm191216_191635_asset_upload_tracking', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '5cb08d36-da3b-40ef-b697-25494bb3d4dd'),
(157, 'craft', 'm191222_002848_peer_asset_permissions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '9c539601-49d1-43b1-8e02-b5fab5114805'),
(158, 'craft', 'm200127_172522_queue_channels', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'f0a7254e-d1f9-41f5-a0f2-a09a92596e64'),
(159, 'craft', 'm200211_175048_truncate_element_query_cache', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'ffbf108d-97f2-441b-bd2a-42eb6381e25a'),
(160, 'craft', 'm200213_172522_new_elements_index', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'c80fc867-e9ed-429d-b12c-98622a5746a8'),
(161, 'craft', 'm200228_195211_long_deprecation_messages', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'fac19524-fc7b-432c-8cda-1088738000d5'),
(162, 'craft', 'm200306_054652_disabled_sites', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '856bd599-75fb-43b2-9fb9-b31c95e5bf42'),
(163, 'craft', 'm200522_191453_clear_template_caches', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '79889c5e-b097-43ba-9a19-418dcc8a5dc3'),
(164, 'craft', 'm200606_231117_migration_tracks', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'f8aeb6c7-3020-4756-aaca-c96ad2a731b4'),
(165, 'craft', 'm200619_215137_title_translation_method', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '8502adc1-287e-467f-8ba3-2b41a6d9baed'),
(166, 'craft', 'm200620_005028_user_group_descriptions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '58b21a81-f018-41b1-abc4-df1aa4e72be7'),
(167, 'craft', 'm200620_230205_field_layout_changes', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '000365a5-3621-48cc-86d2-34bbac5ebfec'),
(168, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '503acdd1-48d8-4a7a-83be-b295dedab59f'),
(169, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'a7ea41c6-7a4c-4f49-a896-38a573f0f400'),
(170, 'craft', 'm200630_183000_drop_configmap', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'a78d51bb-05d2-4dfc-ae8c-c11e8eb57ada'),
(171, 'craft', 'm200715_113400_transform_index_error_flag', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '7490cebc-cc90-499d-bff2-9ab216d3abfd'),
(172, 'craft', 'm200716_110900_replace_file_asset_permissions', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '585a4726-b8a1-4a47-96a4-4f6157ca361a'),
(173, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2387f56e-4284-473f-8756-1d96a8c99b8f'),
(174, 'craft', 'm200720_175543_drop_unique_constraints', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd4698b10-d2ea-4b1b-8648-675b846a832f'),
(175, 'craft', 'm200825_051217_project_config_version', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'd5581e8a-54c4-48f4-94c2-035e5311607b'),
(176, 'craft', 'm201116_190500_asset_title_translation_method', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'ca218dec-07d9-4882-a5d9-accff7c8b1fe'),
(177, 'craft', 'm201124_003555_plugin_trials', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '5488051e-a9b7-44e8-b475-940c20988c42'),
(178, 'craft', 'm210209_135503_soft_delete_field_groups', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'e0d58ac3-03e5-4b38-a550-7bce3a24bc79'),
(179, 'craft', 'm210212_223539_delete_invalid_drafts', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '4db208ca-33e3-44c9-9f79-7a522e7be2bc'),
(180, 'craft', 'm210214_202731_track_saved_drafts', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '7649051b-dd13-44d8-ae80-c19529b823c6'),
(181, 'craft', 'm210223_150900_add_new_element_gql_schema_components', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '975a28ae-27fd-4b71-bacc-1d3a4113f4db'),
(182, 'craft', 'm210224_162000_add_projectconfignames_table', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '54e4ccfe-77a7-4bd9-bc10-76f8d9c67427'),
(183, 'craft', 'm210326_132000_invalidate_projectconfig_cache', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '7d8f9d7d-bd2b-4b52-8909-3eaa0d9b125e'),
(184, 'craft', 'm210331_220322_null_author', '2021-07-12 00:09:17', '2021-07-12 00:09:17', '2021-07-12 00:09:17', 'a5c13f20-c49f-42be-8b72-bd416a25b782');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('dateModified', '1626054799'),
('email.fromEmail', '\"manishtwayana@gmail.com\"'),
('email.fromName', '\"Single Page\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.class', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.disabled', 'false'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.id', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.instructions', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.label', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.max', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.min', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.name', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.orientation', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.readonly', 'false'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.requirable', 'false'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.size', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.step', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.tip', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.title', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.warning', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.elements.0.width', '100'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.name', '\"Content\"'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.fieldLayouts.161eb133-c7e8-4f7e-b231-9d856e56b52f.tabs.0.sortOrder', '1'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.handle', '\"homepage\"'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.hasTitleField', 'false'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.name', '\"Homepage\"'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.section', '\"9fba8fc4-9627-4a69-87cf-01661e60715b\"'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.sortOrder', '1'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.titleTranslationKeyFormat', 'null'),
('entryTypes.aa6a622a-f867-4f2e-b574-4bfa59338490.titleTranslationMethod', '\"site\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.class', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.disabled', 'false'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.id', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.instructions', '\"\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.label', '\"\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.max', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.min', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.name', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.orientation', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.readonly', 'false'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.requirable', 'false'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.size', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.step', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.tip', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.title', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.warning', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.0.width', '100'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.fieldUid', '\"339bd95a-4858-4b01-8e58-1c22ed3c9946\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.instructions', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.label', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.required', 'false'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.tip', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.warning', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.elements.2.width', '100'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.name', '\"Content\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.fieldLayouts.38f46630-9604-4805-960d-3430c714504c.tabs.0.sortOrder', '1'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.handle', '\"slider\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.hasTitleField', 'true'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.name', '\"Slider\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.section', '\"c0cebe8c-a63f-433d-a981-c81227e1b438\"'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.sortOrder', '1'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.titleFormat', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.titleTranslationKeyFormat', 'null'),
('entryTypes.adf4bcf5-8465-48a1-9c2a-5c49fa19fb42.titleTranslationMethod', '\"site\"'),
('fieldGroups.199d737e-21bf-422e-ac1d-f73765594ce5.name', '\"Slider\"'),
('fieldGroups.7a240f6a-3092-4d8c-aa7b-58bab91547a1.name', '\"Common\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.contentColumnType', '\"string\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.fieldGroup', '\"199d737e-21bf-422e-ac1d-f73765594ce5\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.handle', '\"image\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.instructions', '\"\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.name', '\"Image\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.searchable', 'false'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.allowedKinds', 'null'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.allowSelfRelations', 'false'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.allowUploads', 'true'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.defaultUploadLocationSource', '\"volume:317da1dc-d106-42ac-9000-4bad75f62328\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.limit', '\"\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.localizeRelations', 'false'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.previewMode', '\"full\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.restrictFiles', '\"\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.selectionLabel', '\"\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.showSiteMenu', 'true'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.showUnpermittedFiles', 'false'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.showUnpermittedVolumes', 'false'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.singleUploadLocationSource', '\"volume:42b37826-85e3-446f-abf7-6537b6c0da5a\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.singleUploadLocationSubpath', '\"\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.source', 'null'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.sources.0', '\"volume:317da1dc-d106-42ac-9000-4bad75f62328\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.targetSiteId', 'null'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.useSingleFolder', 'false'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.validateRelatedElements', 'false'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.settings.viewMode', '\"list\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.translationKeyFormat', 'null'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.translationMethod', '\"site\"'),
('fields.339bd95a-4858-4b01-8e58-1c22ed3c9946.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.contentColumnType', '\"text\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.fieldGroup', '\"199d737e-21bf-422e-ac1d-f73765594ce5\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.handle', '\"sldier\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.instructions', '\"\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.name', '\"Sldier\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.searchable', 'false'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.byteLimit', 'null'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.charLimit', 'null'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.code', '\"\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.columnType', 'null'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.initialRows', '\"4\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.multiline', '\"\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.placeholder', 'null'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.settings.uiMode', '\"normal\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.translationKeyFormat', 'null'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.translationMethod', '\"none\"'),
('fields.9093d76a-7f5c-4c3f-b04d-67dbff7c1caa.type', '\"craft\\\\fields\\\\PlainText\"'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.enableVersioning', 'true'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.handle', '\"homepage\"'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.name', '\"Homepage\"'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.propagationMethod', '\"all\"'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.enabledByDefault', 'true'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.hasUrls', 'true'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.template', '\"index\"'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.uriFormat', '\"homepage\"'),
('sections.9fba8fc4-9627-4a69-87cf-01661e60715b.type', '\"single\"'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.enableVersioning', 'true'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.handle', '\"slider\"'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.name', '\"Slider\"'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.propagationMethod', '\"all\"'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.enabledByDefault', 'true'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.hasUrls', 'false'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.template', 'null'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.siteSettings.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.uriFormat', 'null'),
('sections.c0cebe8c-a63f-433d-a981-c81227e1b438.type', '\"channel\"'),
('siteGroups.e50fdc8a-8516-4fe9-96e5-a97edfbdaac8.name', '\"Single Page\"'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.handle', '\"default\"'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.hasUrls', 'true'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.language', '\"en-US\"'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.name', '\"Single Page\"'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.primary', 'true'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.siteGroup', '\"e50fdc8a-8516-4fe9-96e5-a97edfbdaac8\"'),
('sites.a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Single Page\"'),
('system.schemaVersion', '\"3.6.8\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.autocomplete', 'false'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.autocorrect', 'true'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.class', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.disabled', 'false'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.id', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.instructions', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.label', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.max', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.min', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.name', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.orientation', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.placeholder', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.readonly', 'false'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.requirable', 'false'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.size', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.step', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.tip', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.title', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.warning', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.elements.0.width', '100'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.name', '\"Content\"'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.fieldLayouts.88d3421e-d810-4928-9fed-6ed5f3ee99c2.tabs.0.sortOrder', '1'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.handle', '\"slider\"'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.hasUrls', 'true'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.name', '\"Slider\"'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.settings.path', '\"@webroot/images/slider\"'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.sortOrder', '2'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.titleTranslationKeyFormat', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.titleTranslationMethod', 'null'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.317da1dc-d106-42ac-9000-4bad75f62328.url', '\"@web/images/slider\"'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.autocomplete', 'false'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.autocorrect', 'true'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.class', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.disabled', 'false'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.id', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.instructions', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.label', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.max', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.min', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.name', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.orientation', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.placeholder', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.readonly', 'false'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.requirable', 'false'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.size', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.step', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.tip', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.title', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.warning', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.elements.0.width', '100'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.name', '\"Content\"'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.fieldLayouts.7c72f7cb-a76e-4049-b518-b5184478b7a8.tabs.0.sortOrder', '1'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.handle', '\"images\"'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.hasUrls', 'true'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.name', '\"Images\"'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.settings.path', '\"@webroot/images/\"'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.sortOrder', '1'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.titleTranslationKeyFormat', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.titleTranslationMethod', 'null'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.42b37826-85e3-446f-abf7-6537b6c0da5a.url', '\"@web/images/\"');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfignames`
--

CREATE TABLE `projectconfignames` (
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projectconfignames`
--

INSERT INTO `projectconfignames` (`uid`, `name`) VALUES
('199d737e-21bf-422e-ac1d-f73765594ce5', 'Slider'),
('317da1dc-d106-42ac-9000-4bad75f62328', 'Slider'),
('339bd95a-4858-4b01-8e58-1c22ed3c9946', 'Image'),
('42b37826-85e3-446f-abf7-6537b6c0da5a', 'Images'),
('7a240f6a-3092-4d8c-aa7b-58bab91547a1', 'Common'),
('9093d76a-7f5c-4c3f-b04d-67dbff7c1caa', 'Sldier'),
('9fba8fc4-9627-4a69-87cf-01661e60715b', 'Homepage'),
('a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08', 'Single Page'),
('aa6a622a-f867-4f2e-b574-4bfa59338490', 'Homepage'),
('adf4bcf5-8465-48a1-9c2a-5c49fa19fb42', 'Slider'),
('c0cebe8c-a63f-433d-a981-c81227e1b438', 'Slider'),
('e50fdc8a-8516-4fe9-96e5-a97edfbdaac8', 'Single Page');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 14, NULL, 13, 1, '2021-07-12 01:54:00', '2021-07-12 01:54:00', '04727d30-280e-4c05-b132-987c6211bebb'),
(3, 2, 15, NULL, 13, 1, '2021-07-12 01:54:00', '2021-07-12 01:54:00', '3bdf6095-a87a-479b-84e0-eba62dc73863'),
(5, 2, 18, NULL, 17, 1, '2021-07-12 01:54:49', '2021-07-12 01:54:49', '66da80bb-7c41-4a7a-bd64-c2ba14d83a82'),
(6, 2, 19, NULL, 17, 1, '2021-07-12 01:54:50', '2021-07-12 01:54:50', '19363e3d-16ba-4286-9da6-69e2ca6e8378');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('13cc5358', '@app/web/assets/login/dist'),
('17f24626', '@app/web/assets/cp/dist'),
('220767ab', '@app/web/assets/installer/dist'),
('2688a050', '@lib/axios'),
('2c5fe019', '@lib/jquery-ui'),
('340523c5', '@app/web/assets/updateswidget/dist'),
('3946009c', '@app/web/assets/fieldsettings/dist'),
('3a978f04', '@app/web/assets/craftsupport/dist'),
('5ce92734', '@lib/element-resize-detector'),
('62f67bbc', '@lib/velocity'),
('6ee90d98', '@app/web/assets/feed/dist'),
('73798cc1', '@bower/jquery/dist'),
('758904b7', '@app/web/assets/utilities/dist'),
('7ed1d454', '@lib/jquery.payment'),
('8a3acc3a', '@app/web/assets/admintable/dist'),
('9c0b8e41', '@app/web/assets/editsection/dist'),
('9e3e813d', '@lib/timepicker'),
('a1c1d948', '@lib/xregexp'),
('abad9dc2', '@lib/selectize'),
('abf61ab', '@app/web/assets/recententries/dist'),
('acb30b33', '@app/web/assets/edittransform/dist'),
('b630325', '@lib/vue'),
('c2cb8791', '@lib/garnishjs'),
('cca0b0d', '@app/web/assets/pluginstore/dist'),
('d3982624', '@app/web/assets/fields/dist'),
('d4ff086a', '@app/web/assets/dashboard/dist'),
('d5631a6f', '@app/web/assets/deprecationerrors/dist'),
('d78d53af', '@lib/fabric'),
('e23261e4', '@app/web/assets/sites/dist'),
('e73bb1b8', '@lib/fileupload'),
('eb988eaf', '@lib/iframe-resizer'),
('f1769017', '@lib/d3'),
('f459ca6a', '@app/web/assets/editentry/dist'),
('f8778c84', '@lib/jquery-touch-events'),
('faf1860d', '@lib/prismjs'),
('ffd3b046', '@lib/picturefill');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 8, 1, 1, NULL),
(3, 14, 1, 1, ''),
(4, 18, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' dev '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' manishtwayana gmail com '),
(1, 'slug', 0, 1, ''),
(2, 'title', 0, 1, ' home '),
(2, 'slug', 0, 1, ' home '),
(4, 'slug', 0, 1, ''),
(4, 'title', 0, 1, ' hero image '),
(4, 'kind', 0, 1, ' image '),
(4, 'extension', 0, 1, ' jpg '),
(5, 'slug', 0, 1, ' temp pyvktkrzvzzvhcbudkeuvausldlpjkztlezz '),
(5, 'title', 0, 1, ''),
(6, 'slug', 0, 1, ' temp gjcpsydmjupibhnzhntffpefmrzzjvbvkzkk '),
(6, 'title', 0, 1, ''),
(7, 'slug', 0, 1, ' temp elzuvwplfoqaxbknjglhazqneyuldkxeccub '),
(7, 'title', 0, 1, ''),
(8, 'title', 0, 1, ' homepage '),
(8, 'slug', 0, 1, ' homepage '),
(4, 'filename', 0, 1, ' cropped 1920 1080 1151696 jpg '),
(10, 'filename', 0, 1, ' 1153577 jpg '),
(10, 'extension', 0, 1, ' jpg '),
(10, 'kind', 0, 1, ' image '),
(10, 'slug', 0, 1, ''),
(10, 'title', 0, 1, ' 1153577 '),
(11, 'filename', 0, 1, ' 1150841 jpg '),
(11, 'extension', 0, 1, ' jpg '),
(11, 'kind', 0, 1, ' image '),
(11, 'slug', 0, 1, ''),
(11, 'title', 0, 1, ' 1150841 '),
(14, 'slug', 0, 1, ' first '),
(13, 'filename', 0, 1, ' 1153577 jpg '),
(14, 'title', 0, 1, ' first '),
(13, 'extension', 0, 1, ' jpg '),
(13, 'kind', 0, 1, ' image '),
(13, 'slug', 0, 1, ''),
(13, 'title', 0, 1, ' 1153577 '),
(18, 'slug', 0, 1, ' second '),
(18, 'title', 0, 1, ' second '),
(17, 'filename', 0, 1, ' 1150841 jpg '),
(17, 'extension', 0, 1, ' jpg '),
(17, 'kind', 0, 1, ' image '),
(17, 'slug', 0, 1, ''),
(17, 'title', 0, 1, ' 1150841 '),
(20, 'filename', 0, 1, ' 1146736 jpg '),
(20, 'extension', 0, 1, ' jpg '),
(20, 'kind', 0, 1, ' image '),
(20, 'slug', 0, 1, ''),
(20, 'title', 0, 1, ' 1146736 '),
(21, 'filename', 0, 1, ' 1156786 jpg '),
(21, 'extension', 0, 1, ' jpg '),
(21, 'kind', 0, 1, ' image '),
(21, 'slug', 0, 1, ''),
(21, 'title', 0, 1, ' 1156786 '),
(22, 'filename', 0, 1, ' 1155414 jpg '),
(22, 'extension', 0, 1, ' jpg '),
(22, 'kind', 0, 1, ' image '),
(22, 'slug', 0, 1, ''),
(22, 'title', 0, 1, ' 1155414 ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `previewTargets` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home', 'home', 'single', 1, 'all', NULL, '2021-07-12 00:36:27', '2021-07-12 00:36:27', '2021-07-12 01:21:23', '11390be7-cb79-4f6f-8602-75e7eae17c0c'),
(2, NULL, 'Slider', 'slider', 'channel', 1, 'all', NULL, '2021-07-12 01:08:54', '2021-07-12 01:08:54', NULL, 'c0cebe8c-a63f-433d-a981-c81227e1b438'),
(3, NULL, 'Homepage', 'homepage', 'single', 1, 'all', NULL, '2021-07-12 01:33:03', '2021-07-12 01:33:03', NULL, '9fba8fc4-9627-4a69-87cf-01661e60715b');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'home', 'index', 1, '2021-07-12 00:36:27', '2021-07-12 00:36:27', 'd4ee2484-76a8-4656-bc4e-02f50bba44e7'),
(2, 2, 1, 0, NULL, NULL, 1, '2021-07-12 01:08:54', '2021-07-12 01:21:13', '82867fe4-5e78-4ad6-a099-09a4a2965394'),
(3, 3, 1, 1, 'homepage', 'index', 1, '2021-07-12 01:33:03', '2021-07-12 01:33:03', '460c5a42-743a-4878-8d49-27bb6a8733e3');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Single Page', '2021-07-12 00:09:16', '2021-07-12 00:09:16', NULL, 'e50fdc8a-8516-4fe9-96e5-a97edfbdaac8');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'Single Page', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2021-07-12 00:09:16', '2021-07-12 00:09:16', NULL, 'a63c4fac-53e5-4a0c-b37a-d2eb3a5c1f08');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecachequeries`
--

CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'dev', NULL, NULL, NULL, 'manishtwayana@gmail.com', '$2y$13$OixzgIpwLSdEc5fN7T/xXuZ9OUwZrfDHl9MMiUNbYsW9hP2Aat1we', 1, 0, 0, 0, '2021-07-12 00:12:48', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2021-07-12 00:09:16', '2021-07-12 00:09:16', '2021-07-12 00:12:49', '7d34ca71-92c2-4604-b940-1852fca9aff1');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2021-07-12 00:52:24', '2021-07-12 00:52:24', '6d7fd2d4-0477-425b-97cd-b5dab89e09a9'),
(2, NULL, NULL, 'Temporary source', NULL, '2021-07-12 00:52:30', '2021-07-12 00:52:30', '34732642-b172-4da2-9f07-54fce8c34b19'),
(3, 2, NULL, 'user_1', 'user_1/', '2021-07-12 00:52:30', '2021-07-12 00:52:30', 'b34f125d-ff2b-4ddb-ab89-ac40708a799f'),
(4, NULL, 2, 'Slider', '', '2021-07-12 01:26:45', '2021-07-12 01:26:45', '7c72cbce-6a25-449c-9996-136e4db3f083');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, 'Images', 'images', 'craft\\volumes\\Local', 1, '@web/images/', 'site', NULL, '{\"path\":\"@webroot/images/\"}', 1, '2021-07-12 00:52:24', '2021-07-12 01:48:54', NULL, '42b37826-85e3-446f-abf7-6537b6c0da5a'),
(2, 4, 'Slider', 'slider', 'craft\\volumes\\Local', 1, '@web/images/slider', 'site', NULL, '{\"path\":\"@webroot/images/slider\"}', 2, '2021-07-12 01:26:45', '2021-07-12 01:49:31', NULL, '317da1dc-d106-42ac-9000-4bad75f62328');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2021-07-12 00:12:49', '2021-07-12 00:12:49', '29822861-8df3-4318-baa2-f5662410b847'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2021-07-12 00:12:49', '2021-07-12 00:12:49', 'f3321873-af1d-4787-952b-dd37d5500fcc'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2021-07-12 00:12:49', '2021-07-12 00:12:49', '5185f67b-57f0-4a04-b8b4-15e6fcbfe833'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2021-07-12 00:12:49', '2021-07-12 00:12:49', '6601da6d-0c32-4f1d-a68c-afc99c86a3bd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jyzaplwjsupiladlwvzshvkzxywzkfzzolnm` (`sessionId`,`volumeId`),
  ADD KEY `idx_gqclvkibpjksxxpgdunacepnlkxrqqotnpbr` (`volumeId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yqammagnfkejgvoxidghigneidfkxkfkkycr` (`filename`,`folderId`),
  ADD KEY `idx_wibspaeeboqahswwhkjfushgjhaashgvztsa` (`folderId`),
  ADD KEY `idx_aztudnttbluiumcqwpilrrvxvvxvakicipqr` (`volumeId`),
  ADD KEY `fk_ksfmdkyuwimetnlfmxneqtlzkydshdwjsmns` (`uploaderId`);

--
-- Indexes for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mqkwoefjvbxrwdsbjzvvopqvubjyytjwfoyy` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_curfiyqkmewvfsogaaualfayvlutqsnvwyfn` (`name`),
  ADD KEY `idx_gbdsjbzkhgakwtmccvyzoapjtvdzuamtcosw` (`handle`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mblriehsbigijjyuljazcicldsctkqgchfop` (`groupId`),
  ADD KEY `fk_sqxhwhnnrgmnpoyfoiklbujbunwmbmpqxjku` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_npiiqecmqlgggaxqdaogbdqjkbzwfyhfulcb` (`name`),
  ADD KEY `idx_rtjzpuckiqtdpuxxrhrmfhivpvjigjtssenl` (`handle`),
  ADD KEY `idx_ygncmwcvvpqaforqjyestzhqmigqgyfbuyde` (`structureId`),
  ADD KEY `idx_oppxjqspeshfokqrihwejdlzvwsacsiymbnj` (`fieldLayoutId`),
  ADD KEY `idx_wryimpcgolmkeqvooxxhxjdevsmtqocrjepm` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_bshovhkabmgaiwzbusbnjftndtbjwazxajhr` (`groupId`,`siteId`),
  ADD KEY `idx_nfznnustxsgfupbyaqmquifycetostjaufzg` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_evndtjdqtfbkichujzaywwmvpijetfclbwxv` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_oguvvvjbtjhijikrwjrsuhjtyzqnasdljoxd` (`siteId`),
  ADD KEY `fk_rjohzrirkxywvrxtaxvmfjltxzfyoqhshzfi` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `idx_igmhiufjuylsmiepyxagekopocisknjipwjy` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_ybobzyjwiycbkdoktpzyxammibyfpfqhoczy` (`siteId`),
  ADD KEY `fk_eafkchnetofhyllpytqtmxxbipxruozckear` (`fieldId`),
  ADD KEY `fk_dnhswlmobabezgleybyuggjzibjktevcaedm` (`userId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ohseyllrcvfziekhimitybiicprqaodtvmvc` (`elementId`,`siteId`),
  ADD KEY `idx_hpnqzmzqgkgfjyxskroywntegznmuxipzrjr` (`siteId`),
  ADD KEY `idx_ahgeeghpusxtalpedobevclccgjkdmguqzzz` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_iogzovqxhtjgywfhspuomjsmrdxrmctdajym` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_eykpcreevopznsdpwlwcglbssxrdkfpxubne` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uywwjuhboguupynauvkydcxskrukbpdgkdla` (`saved`),
  ADD KEY `fk_ygutpqhjepkzvacdwjvptkzlilmhfkbtuqiw` (`creatorId`),
  ADD KEY `fk_aqrirwarwxykseatxmdoyhbjisccdzexvvxh` (`sourceId`);

--
-- Indexes for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ddftwbdvnvwqqheoowkconzglfcvyqscixhn` (`type`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jsqtsyxaevzpkljypwhcrdvuzrpbytgabvrf` (`dateDeleted`),
  ADD KEY `idx_aopjkwrpklwjdtkgxxzbvveifeuzrvmlfazr` (`fieldLayoutId`),
  ADD KEY `idx_roouqtdnlbuoymmeyyqllcjcocptmmrzbhgi` (`type`),
  ADD KEY `idx_htmersiccxvoyizctymkpkwwtvxteshlqcmj` (`enabled`),
  ADD KEY `idx_moyixvygcguylibfheleacffvmpdnquwrsls` (`archived`,`dateCreated`),
  ADD KEY `idx_ixilvbfaawnwzkhrpyplfwqpggchmcqbvjbr` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  ADD KEY `fk_qdaffdfzqpqqkbhxdhidcmwajlykuhdcxbky` (`draftId`),
  ADD KEY `fk_xepzjdtjizhjrhuzbsyhlddypobamueajenb` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_giixezbimrfzupagxsdkxotvauteflmbfcxy` (`elementId`,`siteId`),
  ADD KEY `idx_antcspuvdpffagbtemiowugvofwtejgbhoin` (`siteId`),
  ADD KEY `idx_ldsolpazubuxibswcquoycwpyaoticnpwrqr` (`slug`,`siteId`),
  ADD KEY `idx_tbrtlihkivshzxvmhpgwtytngrkklhukqkqk` (`enabled`),
  ADD KEY `idx_gwgbmsyuukgoaxbknhfeilmfrokpzmidqemh` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rsjxzsxaalaenasekmftixhvfjaxuospvhtl` (`postDate`),
  ADD KEY `idx_qrqflgkuswladtgzcsdfwyzlxkhzhdweqrit` (`expiryDate`),
  ADD KEY `idx_lowccasfekwvumadokoifesamdorccynmqui` (`authorId`),
  ADD KEY `idx_npldqicjkqlbzxpyyqkdrvmgapewfaprwwkk` (`sectionId`),
  ADD KEY `idx_xntzggkkniffigfbemmhgckryzldqdbobpco` (`typeId`),
  ADD KEY `fk_cvoktwzkxuofmthltzpeabtyqzysmfjxgrmj` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sjticyywgbgvxhyzkcqamylecocngmeljmbo` (`name`,`sectionId`),
  ADD KEY `idx_zerlocsdhriqmnozoogiztkszamkmaydxowb` (`handle`,`sectionId`),
  ADD KEY `idx_wwybnlnitzmcsyvqapvwjubertfimtkggrub` (`sectionId`),
  ADD KEY `idx_enqwqspcxihyimcrxstanvprpcifqnvptnbx` (`fieldLayoutId`),
  ADD KEY `idx_uuejaiqlikdgbspfyvziglxsdhwvbcdxeatd` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mscmposibnohsuljwcdixiiaoustdsckeosx` (`name`),
  ADD KEY `idx_lvopzyggjfflcgifuvlrhpgzjgedvzmsobkl` (`dateDeleted`,`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mvmwrwuajusasddsqndxkpbdtpnvmylxiwlp` (`layoutId`,`fieldId`),
  ADD KEY `idx_tvsrmbhjcwvmrwoswkanytsqgcigwgejkrpo` (`sortOrder`),
  ADD KEY `idx_qqhgqycklvcgslbaeorhkuzmqcanbkvfodif` (`tabId`),
  ADD KEY `idx_kzcfwizpbksmyjfunwkssfsvhslouvrmzdpe` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_devbulbnghzvodplvqksneynncdblwrelaok` (`dateDeleted`),
  ADD KEY `idx_bgnbpzmpskwwcxhgnkkrqqhrkrzdoqfzmjrg` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lnensqaolxbgljwlumoqgfjspgnxuklxccoc` (`sortOrder`),
  ADD KEY `idx_yvlflszkofhxwidljdgkpnzwrncrjglsuoad` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vgbbrsbgamfnvyrjmceguuozntpckhxwzrzx` (`handle`,`context`),
  ADD KEY `idx_jdemnzxqvpteoxhpaxhqwiptkbncecwepwyr` (`groupId`),
  ADD KEY `idx_gxozmxxxmytpcnsctkpevjqxpahceboexsvf` (`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qjxscescysavvfmeidwrjdukexxphzeelgkl` (`name`),
  ADD KEY `idx_mypmtjgffjhvwoxhoxfpdhvcvcdqsigwuuwa` (`handle`),
  ADD KEY `idx_vjhakuhfkuueylybsezpvtixtopmslrkottz` (`fieldLayoutId`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vlnaweexxfdsivbyltxnszqcoahzuluohnbv` (`accessToken`),
  ADD UNIQUE KEY `idx_lurrxdhdybbbrahuuxqpmvhnbdpccigwrbqt` (`name`),
  ADD KEY `fk_xnrwrtjwulclffgwvbvbnnsetmvgbnbrrsny` (`schemaId`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_oujowmysolhsfrlofpqmhtfwnxjmcqpotlwu` (`ownerId`),
  ADD KEY `idx_twgtudmwrnhkaawgnraavmwvyuaptftbkcyy` (`fieldId`),
  ADD KEY `idx_moizjqufqgvhlceqrktmwegerhqapixnpffm` (`typeId`),
  ADD KEY `idx_mazyyivdpwajjzqukranxgkfujxbbtbqhcvs` (`sortOrder`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fuqsomdfuxaktkzoxtojrwkgwdrpfeyviygu` (`name`,`fieldId`),
  ADD KEY `idx_lgngeluswepzcvgjsecoxnolahbwsgzbwlaw` (`handle`,`fieldId`),
  ADD KEY `idx_kgrstzoysapdbassqqxcmdjafbtmhvmiskme` (`fieldId`),
  ADD KEY `idx_xgyxhaundcftgcscvchyoobgedbenbskbjrj` (`fieldLayoutId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_horevelbbxevayewewipsmrmnourazjrdqeq` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hoqpjjanxyvhovqokhibixxylvklhiqenmoe` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `projectconfignames`
--
ALTER TABLE `projectconfignames`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pepffbuicmhqrjopuiuxcfzyuduvzqrktgsd` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_nsihzrilkmekimsfskrkmwaosrezngvhodrp` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_oxkxfsrwljvvepdcajdycunazqvrjwpeoyoa` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_nipxvnwezdbxomnxyyksabcpjsfjdoxewmfh` (`sourceId`),
  ADD KEY `idx_rjpgeaqwydrpnushefezvokdvceuqvohuqha` (`targetId`),
  ADD KEY `idx_kgopkqhsfxffrrxduenfnnndfloieuexxznj` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_xdrjkjjtkepkptjbqpsngtqdffihfbousjmh` (`sourceId`,`num`),
  ADD KEY `fk_qiwzhlmrthohkhkokcwoulmxrlrgczpndeqj` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_odgumqpslssttstliczcvqozmdxboljkyveb` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lhqfiutswxojmyvvixpoihkqcpwzvagnwmub` (`handle`),
  ADD KEY `idx_wishubesfcfacysuiovilvtpawrnyeechhiq` (`name`),
  ADD KEY `idx_qlxfsdqmssrferkvbwsbziburipejntzpyky` (`structureId`),
  ADD KEY `idx_ymbnqoqkvgrdqiyfgphafjhigehqevihyvds` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uwuuzdlfzvzdigsiaknptkpuntrzkdnlhija` (`sectionId`,`siteId`),
  ADD KEY `idx_sgwetdjtxtrkexonlugzdotldetzyvdtawks` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vvchypcnttrpgqxkqdjjurklrdajacrwkqyd` (`uid`),
  ADD KEY `idx_uglyxfzdfuynubnnoxcfeutqnerpysrjuozh` (`token`),
  ADD KEY `idx_mglogweygrokuccwtjufrbvsqszxmmdoksvf` (`dateUpdated`),
  ADD KEY `idx_pponkohelgbtrvdvnddchgcbaauawujesiwk` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_xzrunaadkysenkzonhobdvadsawhavsqgqqp` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aqllfuhpmudkznjajmgbunwqmogtumsbwclg` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wucytyvftgvelsuxtdjfpkvjpymkzaptgtnv` (`dateDeleted`),
  ADD KEY `idx_lvbtiyitsjhscckdkklstbwaqjwggzvlzssp` (`handle`),
  ADD KEY `idx_zhknplpitfcrplexlxjdzufqkkxkzjammhbe` (`sortOrder`),
  ADD KEY `fk_dtdccnrmdwayvpvxscvshvdngwhhejprpeza` (`groupId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ydslsvyoduouwghzcxpwiysrsqogiookytih` (`structureId`,`elementId`),
  ADD KEY `idx_ancewgkycnenajpthhkxwxphmwcxhllivjzf` (`root`),
  ADD KEY `idx_rumlwwrkxkohyeottzygfnsrdmynuixykjuj` (`lft`),
  ADD KEY `idx_jtkhttwadhujaqcadpsvvvrzpzscwjuzthbd` (`rgt`),
  ADD KEY `idx_sqxkrhwcqukwcsjxbopuqnoevpcdrzqkaynv` (`level`),
  ADD KEY `idx_rqjfvgskcaxyytzukaeosojqkfzjspvfajby` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ekhywnribganxyfbgthnxjxgccxdgbyllmuo` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_nrrbdodjtpgeaszdhsxodfxzhmuxbloomwqk` (`key`,`language`),
  ADD KEY `idx_nmebfeujerrjmditmickcxosytgzquybrtvs` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mssanveocvoyarnmixrlksmoshwrcghuhsel` (`name`),
  ADD KEY `idx_aqauwnqzfaxvxhzvlwrwidvvuhzxzbwqwvmk` (`handle`),
  ADD KEY `idx_erevodhvulcsxbxbdlfafpvtkqsuqxzhgzjf` (`dateDeleted`),
  ADD KEY `fk_vhvqhdkqhphroybaaqjzmaaogqhqrrrtgrkp` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xyidxcfjlauzpdbadcsdnywsfpqsegpvsuiz` (`groupId`);

--
-- Indexes for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rvqyxrjspelmxjuggnpcgkqcjhlkmomohxkg` (`cacheId`),
  ADD KEY `idx_cfcbukfqeafypggfjttxvbyvekkofurmbzic` (`elementId`);

--
-- Indexes for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ochfsaslysnajmvsrfrkklwsqngmibwfdezr` (`cacheId`),
  ADD KEY `idx_rrreiuvwsywptldzhwoylwyvfggltmdmyjvj` (`type`);

--
-- Indexes for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_palfnmyegasymjbbqapuugtakgubfwlrrdqs` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `idx_mafnnvldiozcvgqibkhgikidoncwgywkbpaq` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `idx_mtqpazjyixwqiqqqclljcrfzbryaiizxaoar` (`siteId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_nwksjgjlxqgaeofzyehkirilmotqdbieawwh` (`token`),
  ADD KEY `idx_sjszajnmicwhjxqxoczxplhzfirxlcaukokz` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bduouyrbtxjcaaelmrlcmlnggkqrdxxcnzkn` (`handle`),
  ADD KEY `idx_tzgpsizunsehqbvmjursohbsbwmasbnvvvfr` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sgxaabyuqrypgbzudonjxfvnlunegzfmbmtz` (`groupId`,`userId`),
  ADD KEY `idx_cxbpazhpmfekxfomydbxksrmcixsbiojfpwm` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hqomqmqszkwcahlbrokpvienlhsofgalztlq` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_fpmhkipehownudnwsjnbpveiqnrukdqcogkg` (`permissionId`,`groupId`),
  ADD KEY `idx_byteynxezkpmattzhittwbpjgfvvpvgkuixk` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_jdxmpeekrdrmozecblqrxzzgedxqccjteqzr` (`permissionId`,`userId`),
  ADD KEY `idx_devrbjpjnenifxgcqhgrjgmmfvywqgzhwvzf` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rqjhcwdkhteyqqcgpbxnadttaoveqiwxvxkz` (`uid`),
  ADD KEY `idx_mzccgbemxafakrwnuidypxpyensadypcyeuh` (`verificationCode`),
  ADD KEY `idx_efluumparufkdsoftimoymsojyobiiwfczpo` (`email`),
  ADD KEY `idx_fsjztfakfexpfyykednkrykbrtymrfgunaaq` (`username`),
  ADD KEY `fk_tuyvjpkdfupqrxeaublsrohgkfkcudiqmyrx` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_aevamoawxbhslzcnupqzmweazdbgktstjyfy` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_mdctzgrcixrvkytvjolexgwdsfpngbmwgkaf` (`parentId`),
  ADD KEY `idx_rvgwhsjulmcoftntrypdnpqdjdmikoxtyigc` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zgsigfhabtnxrxytzvuvqsksupqkfrznxlbz` (`name`),
  ADD KEY `idx_liqsynjdbatcnktddyxlzfvmezfqbkyvodaf` (`handle`),
  ADD KEY `idx_jgrxzdqoobbmnqzmvsyyegvsqjofaogxixqg` (`fieldLayoutId`),
  ADD KEY `idx_klpljziszgpawpqnvusqqexiwragujroknbe` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gvinkubrnkngszdlgglshntwfvyofokwibwe` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecaches`
--
ALTER TABLE `templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_jryjbzqrmudxslmlbgqzzdjgdmmvzznlzvwv` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_ksfmdkyuwimetnlfmxneqtlzkydshdwjsmns` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vnftlbeltsnzybxysfthgqtpzrcmcpyranhv` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wlbujymofsglgonggwvpxzknytgmgarmfcyk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yapbwzisfhkcszqcinpvqtofsmxxlqinbean` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_bdjjsrypwvqoachtkrajrbnukgmmbjbychko` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_gehvhpdzircrotumubbbftraqdxtlohiuxmh` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sqxhwhnnrgmnpoyfoiklbujbunwmbmpqxjku` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_cuamipwkbvmhhricxkpjmhjqkutenddujicq` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mugvudcwprbyyvfjhaetamhscjlwkyuseswv` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_gwzpatuxwxpqjudmrdazqtqcordxffwfxwdp` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tuutolmzyjcmfsomjctslpamuoxkjtirawix` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_oguvvvjbtjhijikrwjrsuhjtyzqnasdljoxd` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_qutuyutmbxdgonmecpbkzmxwglukynojdirv` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rjohzrirkxywvrxtaxvmfjltxzfyoqhshzfi` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_dnhswlmobabezgleybyuggjzibjktevcaedm` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_eafkchnetofhyllpytqtmxxbipxruozckear` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kblwvyqogpbykqspocoeqpwtrowtaysznlap` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ybobzyjwiycbkdoktpzyxammibyfpfqhoczy` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_fvjcyxdtavfdivksstkcuskxikpjzapnsxhv` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_upthkkfkgrqvxfsbudikpayfkpbxvsxwmsjg` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_iogzovqxhtjgywfhspuomjsmrdxrmctdajym` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_aqrirwarwxykseatxmdoyhbjisccdzexvvxh` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ygutpqhjepkzvacdwjvptkzlilmhfkbtuqiw` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_jjljdblkfagpnvsfuehyfxifrsvafjwnpukr` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_qdaffdfzqpqqkbhxdhidcmwajlykuhdcxbky` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xepzjdtjizhjrhuzbsyhlddypobamueajenb` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_pupvaflipvotwoplrehmjtsmlatymmrlthdu` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pziyqsdqiwrlbmxmwoqmtgljzxtissegaouf` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_cvoktwzkxuofmthltzpeabtyqzysmfjxgrmj` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_eqpjpgslxjlpcnkwpzsjqkhjbwbowjsjinax` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hanohoekrzsebjxrecdoovqaprhfjgihbcks` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hqqengczquokhupbilfcuqpcxdnstdwuvnyr` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vdqwhlswniqepgpfdlwgmmqwrtaxvpgbdiex` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_xxpynrpnauoqfithlsxohxzjlvqvfibmoojf` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ynskxxdlcfydzslvxwftipnlldslyltekuvj` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fk_bjquzvipqngwknuaddabbgitbgnboceftqjr` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pvlkjvztjsivzhapesysdeplabcgppnfmpqj` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rjwagutvsmvrwvhjoahoqltbextmsmgvuobc` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fk_rejzjzzcxaxdkviyyaivwgmlfvybdgeflgbt` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fk_sprnxzsxcyorodjompthampzmujnfelnvjlo` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_tbjnsutziuursbtkusszhxqoayemuqmihpjp` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_wrdjcvjfkhdzuoefglzcihinddxilzlpetal` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_xnrwrtjwulclffgwvbvbnnsetmvgbnbrrsny` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `fk_gyewlotpabmgydkcndgumckfrivzhjoqrmhv` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_omgilfrmnyahfhuezorigagcwxrdazabncch` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uwilwghiljwikdpjazfwdvsjfoxpbxabnsnb` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zpygihktirfuvfddpwqxmnpvbaktxqahtekw` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `fk_eutiqxcakmwsrbslvprcbeccbbrrnwhcckcq` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_znklraussdbwfofwdhqnnmuinfbpednmfwms` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_jaxmwcuioemiqvghxptqvwvefijtxidjfrne` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lzzvftognkmrfzmzzkvgolwrnbpjzjiazkiz` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pvinstbwuuypavtwluyrxyktndiddsgyxiwr` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rcvkanfgzfyphavuilumffekmlljxdkbtwaf` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_fpdhpixfiqxgmoiipyohybumpebtgciwhzqq` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qiwzhlmrthohkhkokcwoulmxrlrgczpndeqj` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_qwhpjkvvlammieeztdryadujpcgdcciipnum` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_hsfrsxjjmlxguczhgixnctswpqncpwvhfnxe` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kopmxbnadxxbrmnxrkzhiwhblbofhwwuanml` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_qjlofuqlinwsjnpvwnakxtxcciybposzzlxg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_bpfjitgzswarzezmhaujszwpedbcefitbndz` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_dtdccnrmdwayvpvxscvshvdngwhhejprpeza` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_emflvjzmprgzxjescgypjrcryqybmwfwipfj` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mjwczbdaojlwbezgedfzuhzeflwfqzoxqvlb` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_vhvqhdkqhphroybaaqjzmaaogqhqrrrtgrkp` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_idcfirrqdhudgyrueixqpepivnxdfxkyptlg` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jndxrywvemdbfwqnfnykojzgjbopxryvtkjp` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `fk_bazabkxoqhgpxnwdpgxosxfrmdqadvmbnuzh` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_flscdipnrfdonmzgssuzhgonxhsbzshqdvzr` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `fk_gwhoryluktbhwqlfemwlnecsoucmxaeqljtm` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `fk_vatnuipaxkmxxiexsuzpmwzdgxoulufenjaf` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_alwzrmfvcmnkkstsfcvrnyfmpfwesuhsclbh` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fejzmecfneiaslscduisigfocicoipingpli` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_axkeqiwjdqxrdkbonzctwuehngrkgyuzbdea` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_bqsakeorbusdjbefdzlolyuqsdjnnmoitkjx` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_sbouiolievlqwnyioheezsjvtfdwmbhlhvep` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yciqweeazzzizyjvsxsynxedddghuqkppiot` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_yjfhhleymmqymobwttnsoqzbsgmavgxiebix` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_rejedlupbrbdbsjhkysejqkkigqkctwxdaiw` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tuyvjpkdfupqrxeaublsrohgkfkcudiqmyrx` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_hqtoryrjpiairpqbekaqfbzysrvezeldtkpj` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kwyiuznnrzrobllzavwgbdbosffrusetdsmv` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_xqjalgprvngwtasivyjceneidvsmtxibydaw` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_lsxfqfitkfcojwicjpksdvhqtdhceidysaqu` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
