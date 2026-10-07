-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2026 at 01:05 AM
-- Server version: 8.0.46
-- PHP Version: 8.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpl_kantipur`
--

-- --------------------------------------------------------

--
-- Table structure for table `cl_adminmenu_user`
--

CREATE TABLE `cl_adminmenu_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `adminmenu_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_adminmenu_user`
--

INSERT INTO `cl_adminmenu_user` (`id`, `user_id`, `adminmenu_id`) VALUES
(1, 3, 1),
(11, 3, 2),
(12, 3, 4),
(13, 3, 5),
(14, 3, 12),
(25, 4, 1),
(26, 4, 2),
(27, 4, 12);

-- --------------------------------------------------------

--
-- Table structure for table `cl_admin_menu`
--

CREATE TABLE `cl_admin_menu` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_admin_menu`
--

INSERT INTO `cl_admin_menu` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Manage Banners', '2020-08-16 08:51:13', '2020-08-16 08:51:13'),
(2, 'Manage Posts', '2020-08-16 08:52:23', '2020-08-16 08:52:23'),
(4, 'Manage Photo Gallery', '2020-08-16 08:52:38', '2020-08-16 08:52:38'),
(5, 'Manage Video Gallery', '2020-08-16 08:53:15', '2020-08-16 08:53:15'),
(9, 'Manage Users', '2020-08-16 08:53:49', '2020-08-16 08:53:49'),
(12, 'Settings', '2020-08-16 08:54:22', '2020-08-16 08:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `cl_associated_posts`
--

CREATE TABLE `cl_associated_posts` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `composition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `purpose` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_associated_posts`
--

INSERT INTO `cl_associated_posts` (`id`, `post_id`, `title`, `sub_title`, `brief`, `composition`, `purpose`, `information`, `thumbnail`, `icon`, `ordering`, `uri`, `page_key`, `created_at`, `updated_at`) VALUES
(4, 17, 'Uncompromising Quality', NULL, '<p>Every product is designed to meet rigorous standards of efficacy, safety, and performance</p>', NULL, NULL, NULL, '', NULL, 4, 'Uncompromising-Quality', '1759993793216748065', '2025-10-09 01:24:53', '2025-10-09 01:24:53'),
(5, 17, 'Technical & Marketing Support', NULL, '<p>Our specialized teams ensure optimal solutions and education for our partners.</p>', NULL, NULL, NULL, '', NULL, 5, 'Technical-Marketing-Support', '1759993810908902208', '2025-10-09 01:25:10', '2025-10-09 01:25:10'),
(6, 17, 'Expert Team', NULL, '<p>We take pride in our highly skilled professionals with deep experience in veterinary medicine and feed supplements.</p>', NULL, NULL, NULL, '', NULL, 6, 'Expert-Team', '1759993829182330052', '2025-10-09 01:25:29', '2025-10-09 01:25:29'),
(7, 17, 'Robust Distribution Network', NULL, '<p>With a presence across Nepal, we deliver timely and reliable service through specialty distributors and authorized dealers.</p>', NULL, NULL, NULL, '', NULL, 7, 'Robust-Distribution-Network', '1759993885447315800', '2025-10-09 01:26:25', '2025-10-09 01:26:25'),
(12, 29, 'Determination Of Mycotoxin By LCMS', NULL, NULL, NULL, NULL, NULL, '', NULL, 12, 'Determination-Of-Mycotoxin-By-LCMS', '1760421366153944737', '2025-10-14 00:11:06', '2025-10-14 00:11:06'),
(13, 29, 'Determination Of Heavy Metal By Atomic Absorption Spectroscopy', NULL, NULL, NULL, NULL, NULL, '', NULL, 13, 'Determination-Of-Heavy-Metal-By-Atomic-Absorption-Spectroscopy', '176042137220646888', '2025-10-14 00:11:12', '2025-10-14 00:11:12'),
(14, 29, 'Well Equipped Microbiology Laboratory', NULL, NULL, NULL, NULL, NULL, '', NULL, 14, 'Well-Equipped-Microbiology-Laboratory', '1760421378616503153', '2025-10-14 00:11:18', '2025-10-14 00:11:18'),
(15, 29, 'Product Stability Testing', NULL, NULL, NULL, NULL, NULL, '', NULL, 15, '-Product-Stability-Testing', '176042138450080305', '2025-10-14 00:11:24', '2025-10-14 00:11:24'),
(16, 29, 'Wet Chemistry Lab', NULL, NULL, NULL, NULL, NULL, '', NULL, 16, 'Wet-Chemistry-Lab', '1760421388644000299', '2025-10-14 00:11:28', '2025-10-14 00:11:28'),
(17, 33, 'Clearcal-P-Oral', NULL, '<p>Optimum Nutrition for Egg-Cellent Flock</p>', '<p>Calcium from inorganic source<br>Calcium from organic source<br>Manganese<br>Phosphoric Acid<br>Vitamin D3<br>Sorbitol<br>Purified Water<br>Colorant</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>To increase the quality of eggs and eggshells.</li>\r\n<li>To support the mineralization of the bone.</li>\r\n<li>To get maximum egg production from chickens.</li>\r\n<li>To manage the deficiency of the Vitamin D3 and Manganese.</li>\r\n<li>For the proper treatment of the problems like myopathy and tenosynovitis.</li>\r\n<li>To maintain the ratio of Calcium and Phosphorous.</li>\r\n<li>To reduce the problem of egg defects.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 1 ml per liter of water continuously for 7-10 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">500 ml, 1 liter, 5 liters, 20 liters.</p>', 'btl-fXIC9cH6vciPqqS03hTSjKQcG4rBfmC0H9ZxkC3o.png', NULL, 17, 'Product-1-of-Child-1-of-Feed-Supplement', '1760516267915761677', '2025-10-15 02:32:47', '2025-10-15 02:58:54'),
(18, 33, 'Glycal Gold', NULL, '<p>Perfect Combination of Calcium, Phosphorous, Minerals, amino acids, Magnesium, Vitamins and Herbs for optimum milk production in Dairy Animals.</p>', '<p class=\"MsoNormal\">Each 100 ml contains:</p>\r\n<p class=\"MsoNormal\">Calcium.............................................................................3700 mg<br>Lysine................................................................................100 mg<br>Phosphorus.......................................................................1850 mg<br>Methionine........................................................................100 mg<br>Cobalt...............................................................................125 mg<br>Choline.............................................................................100 mg<br>Chromium.........................................................................80 mg<br>Vitamin A..........................................................................4000 IU<br>Copper.............................................................................10 mg<br>Vitamin D3........................................................................8000 IU<br>Iodine................................................................................60 mg<br>Vitamin B12.......................................................................100 mcg<br>Potassium..........................................................................18 mg<br>Manganese........................................................................50 mg<br>Asparagus racemosus (Shatavari)....................................250 mg<br>Leptadenia reticulata (Jivanti)..........................................4000 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>For high yield of milk by proper physical growth of cows and buffaloes.</li>\r\n<li>To protect the cows and buffaloes from milk fever.</li>\r\n<li>For the treatment of infertility and pregnancy related problems in cows and buffaloes.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, Buffalo<strong>: </strong>100 ml/day<br>Sheep, Goat<strong>: </strong>15 ml/day<br>Calves<strong>:</strong> 20 ml/day<br>Horse: 100 ml/day<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">500 ml, 1 liter, 2 liters, 5 liters, 10 liters.</p>', 'image-1741763308-8norowHOIfoZwrki1goApawY40xTp6dVTnBIshJs.png', NULL, 18, 'Product-2-of-Child-1-of-Feed-Supplement', '1760516294940987097', '2025-10-15 02:33:14', '2025-10-15 02:57:24'),
(21, 33, 'Glycal Suspension', NULL, '<p>Perfect combination of Calcium, Phosphorous &amp; Magnesium for Optimum milk production</p>', '<p class=\"MsoNormal\">Each 100 ml contains:</p>\r\n<p class=\"MsoNormal\">Calcium.........................................................1700 mg<br>Phosphorus...................................................850 mg<br>Vitamin D3.....................................................4000 IU<br>Vitamin B12...................................................100 mcg<br>Magnesium....................................................100 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>To produce maximum milk from cows and buffaloes.</li>\r\n<li>To prevent deficiency of calcium, phosphorus and magnesium in cows and buffaloes.</li>\r\n<li>For safe and healthy pregnancy.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, Buffalo: 100 ml/day<br>Sheep, Goat<strong>: </strong>20 ml/day<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">500 ml, 1 liter, 2 liters, 5 liters.</p>\r\n<p class=\"MsoNormal\">Glycal Plus also available with added Vitamins and Minerals.</p>', 'glycal-family-1744094737-1-GwOqAk6WwYJDGXzNDhhlGgDF9HQiwCdSOeK3nrPo.png', NULL, 21, 'Glycal-Suspension', '1760517813783078098', '2025-10-15 02:58:33', '2025-10-15 03:23:54'),
(22, 33, 'KB-Plex', NULL, '<p>Vitamin B Complex for Livestock &amp; Poultry</p>', '<p class=\"MsoNormal\">Each 5 ml contains:</p>\r\n<p class=\"MsoNormal\">Vitamin B1.....................................................10 mg<br>Vitamin B2.....................................................5 mg<br>Vitamin B3.....................................................150 mg<br>Vitamin B5.....................................................5 mg<br>Vitamin B6.....................................................2 mg<br>Vitamin B7.....................................................100 mcg<br>Vitamin B12...................................................15 mcg<br>Choline chloride...........................................20 mg<br>Methionine....................................................10 mg<br>Lysine............................................................20 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>For the treatment of vitamin B deficiencies problems in chickens.</li>\r\n<li>For the proper metabolism of carbohydrate, fat and protein.</li>\r\n<li>To improve feed conversion ratio in chickens.</li>\r\n<li>Treatment of conditions such as Star Glazing Posture, Curled Toe Paralysis in chickens.</li>\r\n<li>To increase egg production in layers chickens and meat in broiler chickens.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage</strong></p>\r\n<p class=\"MsoNormal\">Chicks<strong>: </strong>5 ml/100 chicks for 5-7 days.<br>Growers, Broilers<strong>: </strong>10 ml/100 chickens for 5-7 days.<br>Layers: 15 ml/100 chickens for 5-7 days.<br>Parent: 20 ml/100 chickens for 5-7 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability</strong></p>\r\n<p class=\"MsoNormal\">120 ml, 500 ml, 1 liter, 5 liters.</p>', 'kb-plex-fam-1744094959-1-Wj4xGOkhwMEewsA9lI0S8W7aKKZlkmp8EUGbdIC0.png', NULL, 22, 'KBPlex', '1760519139474884463', '2025-10-15 03:20:39', '2025-10-15 03:25:35'),
(23, 33, 'K-Vitol', NULL, '<p>Unique Combination of Vitamin A, B12, C, D3 &amp; E for Poultry &amp; Livestock</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Vitamin A..........................................................................12,000 IU<br>Vitamin D3........................................................................6,000 IU<br>Vitamin E..........................................................................50 mg<br>Vitamin B12.......................................................................20 mcg<br>Vitamin C..........................................................................100 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>Increases the immunity of livestock.</li>\r\n<li>For maximum milk production.</li>\r\n<li>Reduces stress on livestock.</li>\r\n<li>Maintains safe and healthy pregnancy.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, Buffalo<strong>: </strong>10 ml/day for 5-7 days.<br>Calves<strong>:</strong> 5 ml/day for 5-7 days.<br>Sheep, goat: 5 ml/day for 5-7 days.<br>Swine: 5 ml/day for 5-7 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">30 ml, 60 ml, 120 ml, 250 ml, 500 ml</p>', 'k-vitol-fam-1744095086-1-GviMNT1X5nfJgs0ADjjpBbd5g8Eyekcu3VM4X2Mz.png', NULL, 23, 'KVitol', '1760519231716045366', '2025-10-15 03:22:11', '2025-10-15 03:26:25'),
(24, 33, 'Malfe', NULL, '<p>New Generation Performance Enhancer</p>', '<p class=\"MsoNormal\">Each 20 gm contains:</p>\r\n<p class=\"MsoNormal\">Malt extract...................................................6 gm<br>Liquid glucose...............................................10 gm<br>Calcium gluconate........................................360 mg<br>Ferric ammonium citrate...............................300 mg<br>Copper sulphate...........................................100 mg<br>Cobalt chloride.............................................1.5 mg<br>Cholecalciferol (500 IU/mg) .............................7.2 mg<br>Niacinamide..................................................45 mg<br>Biotin.............................................................75 mcg<br>Folic acid.......................................................1.5 mg<br>Cyanocobalamin...........................................15 mcg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>For physical growth and development of livestock.</li>\r\n<li>For the treatment of Anemia, Rickets, weak bones in livestock.</li>\r\n<li>For maximum yield of the milk.</li>\r\n<li>For the supplement of iron in swine.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Sheep, Goat: 15 g per day for 5-7 days.<br>Cow, Buffalo: 50 g per day for 5-7 days.<br>Growing Swine: 5-10 g per day for 5-7 days.<br>Adult Swine: 25-30 g per day for 5-7 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">450 g, 1 kg, 2.5 kg.</p>', 'image-1741764797-Aht9mIHiziNAwyqTGmqb83MQuU6YscJqzrs4QwAq.png', NULL, 24, 'Malfe', '1760519731129563036', '2025-10-15 03:30:31', '2025-10-15 03:30:31'),
(25, 33, 'Malfe-P', NULL, '<p>New Generation Performance Enhancer</p>', '<p class=\"MsoNormal\">Each 20 gm contains:</p>\r\n<p class=\"MsoNormal\">Malt extract...................................................6 gm<br>Liquid glucose...............................................10 gm<br>Calcium gluconate........................................360 mg<br>Ferric ammonium citrate...............................300 mg<br>Copper sulphate...........................................100 mg<br>Cobalt chloride.............................................1.5 mg<br>Cholecalciferol (500 IU/mg) .............................7.2 mg<br>Niacinamide..................................................45 mg<br>Biotin.............................................................75 mcg<br>Folic acid.......................................................1.5 mg<br>Cyanocobalamin...........................................15 mcg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>For physical growth and development of livestock.</li>\r\n<li>For the treatment of Anemia, Rickets, weak bones in livestock.</li>\r\n<li>For maximum yield of the milk.</li>\r\n<li>For the supplement of iron in swine.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicks: 3-5 g per 100 chicks per day for 5-7 days.<br>Growers: 10 g per 100 chickens per day for 5-7 days.<br>Broilers<strong>, </strong>Layers: 10 g per 100 chickens per day for 5-7 days.<br>Parent: 30 g per 100 chickens per day for 5-7 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">450 g, 1 kg, 2.5 kg, 5 kg.</p>', 'malfe-p-1744095646-1-gZedQGk3hnlqidI4r7hH9j13trzyuvWeBkYXima4.png', NULL, 25, 'MalfeP', '1760519862908755589', '2025-10-15 03:32:42', '2025-10-15 03:32:42'),
(26, 33, 'Trustone', NULL, '<p>Unique Combination of Vitamin A, D3, E &amp; C for Poultry</p>', '<p class=\"MsoNormal\">Each 5 ml contains:</p>\r\n<p class=\"MsoNormal\">Vitamin A.......................................................2,50,000 IU<br>Vitamin D3.....................................................30,000 IU<br>Vitamin E.......................................................200 mg<br>Vitamin C......................................................500 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>To enhance the immunity in poultry.</li>\r\n<li>To reduce the stress caused by transportation and vaccination in poultry.</li>\r\n<li>For quality chicks’ production yield by developing the physical growth.</li>\r\n<li>To improve the feed conversion ratio of chickens.</li>\r\n<li>To compensate the deficiency of vitamin A, D3, E, C in chickens.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage</strong></p>\r\n<p class=\"MsoNormal\">Chicks: 5 ml/100 chicks per day for 5-7 days.<br>Growers: 7 ml/100 chickens per day for 5-7 days.<br>Broilers, Layers, Parent: 10 ml/100 chickens per day for 5-7 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability</strong></p>\r\n<p class=\"MsoNormal\">120 ml, 250 ml, 500 ml, 1 liter.</p>', 'trustone-1744095943-1-onD0yWvS5E6HzApYJmTD5Zxd8psOhCTk38BszCzO.png', NULL, 26, 'Trustone', '1760519950753010581', '2025-10-15 03:34:10', '2025-10-15 03:34:10'),
(27, 33, 'Vita-K', NULL, '<p>Water Soluble Vitamin K powder for Poultry</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Mendione Sodium Bisulphite (K3) .................125 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>To fulfill the Vitamin k3 deficiency in the poultry.</li>\r\n<li>To prevent the hemorrhage caused due to the infections in the poultry.</li>\r\n<li>To enhance the egg production rate in the poultry.</li>\r\n<li>To prevent the hemorrhage due to beak cutting in the poultry.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 10 g/200 liter of water continuously for 5-7 days.<br>Fish: 50 g/ton in grains<br>Other animals: 1 g per 30 kg body weight.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"> </p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 g.</p>', 'vita-k-1744096093-ZjnrWVF4Jk3c8ZJtZIK3UHu6ZZQchFCW9yI8Cqi4.png', NULL, 27, 'VitaK', '1760520010453655165', '2025-10-15 03:35:10', '2025-10-15 03:35:10'),
(28, 34, 'HeamX', NULL, '<p>A Unique Iron Tonic for Livestock &amp; Poultry</p>', '<p class=\"MsoNormal\">Each 10 ml contains:</p>\r\n<p class=\"MsoNormal\">Ferric ammonium citrate IP..........................2200 mg<br>Chelated Copper Glycinate..........................150 mg<br>Chelated Zinc Glycinate................................100 mg<br>Chelated Ferrous Glycinate...........................50 mg<br>Chelated Cobalt Glycinate............................30 mg<br>Cholecalciferol..............................................5000 I.U.<br>Nicotinamide.................................................50 mg<br>Folic acid.......................................................1 mg<br>Cynocobalamin.............................................200 mcg<br>Excipients.....................................................Q.S.</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>For physical growth of chickens.</li>\r\n<li>For the treatment of Anemia, Rickets, weak bones in chickens.</li>\r\n<li>Solves the problem of chicken eggshells turning.</li>\r\n<li>Improve feed conversion ratio in chickens.</li>\r\n<li>Increment in production of egg and meat.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage</strong></p>\r\n<p class=\"MsoNormal\">Chicks<strong>: </strong>3-5 ml per 100 chicks<br>Growers<strong>: </strong>10 ml per 100 chickens<br>Layers, Broilers: 20 ml per 100 chickens<br>Parent: 30 ml per 100 chickens<br>Cow, Buffalo: 5 ml per day.<br>Pig: 25 ml per day.<br>Sheep, Goat: 10 ml per day.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability</strong></p>\r\n<p class=\"MsoNormal\">500 ml, 1 liter, 5 liters.</p>', 'heamx-fam-1744097079-1-hdEsWQAPAo1YpiJwlkel3niiuLNSz6UER52WRPnR.png', NULL, 28, 'HeamX', '1760520158334991227', '2025-10-15 03:37:38', '2025-10-15 03:37:38'),
(29, 34, 'K-Esel', NULL, '<p>Liquid Formulation of Vitamin E, Organic Selenium and Biotin for Poultry</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Vitamin E (α - tocopherol) ............................100 mg<br>L - Selenomethionine.....................................1 mg<br>Biotin.............................................................0.02 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>Enhances the immunity in poultry.</li>\r\n<li>Prevents the embryo from dying inside the egg.</li>\r\n<li>Increases egg production thereby increasing chicks\' production rate.</li>\r\n<li>For the treatment of white muscle disease in chickens.</li>\r\n<li>For the treatment of crazy chick disease in chickens.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage</strong></p>\r\n<p class=\"MsoNormal\">Chicks<strong>: </strong>5 g/100 chicks once daily for 5-7 days.<br>Layers, Broilers, Parent<strong>: </strong>10-15 ml per 100 chickens once daily for 5-7 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability</strong></p>\r\n<p class=\"MsoNormal\">120 ml, 500 ml, 1 liter.</p>', 'k-ese-1744097492-1XVdw2k6WJAVgT4TVWMwm0Mr7LFiy1x2phenEpMo.png', NULL, 29, 'KEsel', '176052023255541022', '2025-10-15 03:38:52', '2025-10-15 03:38:52'),
(30, 34, 'K-Prolium', NULL, '<p>Amprolium Hydrochloride &amp; Vitamin K3 powder for Poultry</p>\r\n<p class=\"MsoNormal\">It inhibits the uptake of thiamine by coccidian. It acts chiefly upon 1st generation schizont preventing differentiation of merozoites.</p>\r\n<p class=\"MsoNormal\">It is used to treat coccidiosis in poultry.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Amprolium HCL.............................................200 mg<br>Vitamin K3.....................................................2 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<p class=\"MsoNormal\">Use against coccidiosis disease in chicken and fish.</p>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chickens</p>\r\n<p class=\"MsoNormal\">Prevention: 1 g per 2 liters of water continuously for 3-5 days.<br>Treatment: 1 g per 1 liter of water continuously for 3-5 days.</p>\r\n<p class=\"MsoNormal\">Fish</p>\r\n<p class=\"MsoNormal\">1 kg/ton flakes<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability</strong></p>\r\n<p class=\"MsoNormal\">30 g, 150 g, 500 g, 1 kg.</p>', 'k-prolium-1744281399-Kl2DRDDS3LoNM1zUogCt7beihpH5s7mWQnB3AOyr.png', NULL, 30, 'KProlium', '1760520308501407523', '2025-10-15 03:40:08', '2025-10-15 03:40:08'),
(31, 34, 'K Vit-A', NULL, '<p>Water Miscible Feed Supplement, Vitamin A Liquid Poultry &amp; Livestock</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Vitamin A (Palmitate)....................................1,00,000 IU<br>Excipients.....................................................Q.S.</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li class=\"MsoNormal\">Enhances immunity in chickens.</li>\r\n<li class=\"MsoNormal\">Increases fertility in chickens.</li>\r\n<li class=\"MsoNormal\">Enhances physical growth in feather quality / strength and prevents discoloration of comb and wattles.</li>\r\n<li class=\"MsoNormal\">Improves feed conversion ratio in chickens.</li>\r\n<li class=\"MsoNormal\">To overcome the deficiency of Vitamin A in chickens.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage</strong></p>\r\n<p class=\"MsoNormal\">Chicks<strong>: </strong>5 ml/100 chicks once daily for 5-7 days.<br>Layers, Broilers, Parent<strong>: </strong>10 ml/100 chicks once daily for 5-7 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability</strong></p>\r\n<p class=\"MsoNormal\">250 ml, 500 ml, 1 ltr.</p>', 'k-vit-a-1744281598-1-UopZ1swKJWZM4gK2YUjzBbJ5cWsGXzl17PJYR2lC.png', NULL, 31, 'K-VitA', '1760520417213725047', '2025-10-15 03:41:57', '2025-10-15 03:41:57'),
(32, 35, 'K-Lyte', NULL, '<p>A Complete Water-Soluble Electrolyte Powder for Poultry</p>', '<p class=\"MsoNormal\">Each 100 gram contains:</p>\r\n<p class=\"MsoNormal\">Potassium chloride........................................6 g<br>Sodium chloride............................................1 g<br>Magnesium chloride.....................................1.5 g<br>Calcium gluconate........................................1.7 g<br>Sodium bicarbonate......................................5 g<br>Dextrose........................................................Q.S.</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li class=\"MsoNormal\">For the protection of chickens from dehydration and hyperthermal stress.</li>\r\n<li class=\"MsoNormal\">To maintain the electrolytic balance in the body.</li>\r\n<li class=\"MsoNormal\">To protect the chickens from Tibial dyschondroplasia and Respiratory alkalosis.</li>\r\n<li class=\"MsoNormal\">To prevent the pecking problem of chickens.</li>\r\n<li class=\"MsoNormal\">To improve feed conversion ratio in chickens.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">1 g per 1- 2 liters of water<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">500 g, 1 kg</p>', 'k-lyte-1744281835-oRgTvD8SEbcAcaLRKmh5qzpJcxXCALZJVqc97G6i.png', NULL, 32, 'KLyte', '1760520501334411515', '2025-10-15 03:43:21', '2025-10-15 03:43:21'),
(33, 35, 'Stressnil', NULL, '<p>Stress Reliever Powder for Poultry</p>', '<p class=\"MsoNormal\">Vitamin C<br>Sodium chloride <br>Calcium gluconate <br>Magnesium chloride <br>Gallic Acid Extract<br>Potassium chloride <br>Sodium bicarbonate<br>Sodium citrate<br>Dextrose</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>Supportive to care the secondary bacterial infection after the incidence of viral disease outbreak.</li>\r\n<li>Contains ingredients which are proven antioxidant to protect from damaging effects of free radicals and helps in maintaining health livability.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Poultry: 1g/2 liter of drinking water.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 g, 500 g, 1 kg.</p>', 'stressnill2-1744281951-rOmhCVYmXgHjhd00Y2Ng3dHTNkghHDfwXLkvGUPE.png', NULL, 33, 'Stressnil', '176052060425805556', '2025-10-15 03:45:04', '2025-10-15 03:45:04'),
(34, 37, 'Rumenton Bolus', NULL, '<p>For Better Ruminal Activity</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Ferrous Sulphate...............................................................1 g<br>Cobalt Chloride................................................................200 mg<br>Copper Sulphate...............................................................50 mg<br>Rumen Stable Enzyme.......................................................1,000 mg<br>Dried Yeast........................................................................600 mg</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>To arouse hunger / appetite in livestock.</li>\r\n<li>For the proper absorption of nutrients available in the grains and grass into the body.</li>\r\n<li>For maximum production yield by proper physical growth.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage</strong></p>\r\n<p class=\"MsoNormal\">Cow, Buffalo: 2 boluses twice a day for 3-5 days.<br>Sheep, Goat: half bolus twice a day for 3-5 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability</strong></p>\r\n<p class=\"MsoNormal\">4 Bolus/Strip, 10 Strips/Box.</p>', 'rumenton-bolus-box-1744283749-1-L0oWKO8F9DWklXAVupA6Ijhjh60Glwdtf6WhlIPo.png', NULL, 34, 'Rumenton-Bolus', '1760520707657633700', '2025-10-15 03:46:47', '2025-10-15 03:46:47'),
(35, 38, 'Megamix Chelated', NULL, '<p>Mixture of Chelated Minerals, Vitamins fortified for better production of Livestock &amp; Fish</p>', '<div class=\"WordSection1\">\r\n<p class=\"MsoNormal\">Each kg contains:</p>\r\n<p class=\"MsoNormal\">Vitamin A.........................15,00,000 IU<br>Vitamin D3.......................1,50,000 IU<br>DL -Methionine.................1000 mg<br>Iodine...............................500 mg<br>Cobalt..............................300 mg<br>Potassium.........................150 mg<br>Chromium........................100 mg<br>Selenium..........................41 mg<br>Live Yeast Extract..............10 g<br>Calcium............................230 g<br>Phosphorous.......................115 g<br>Sulphur...............................9 g<br>Zinc.....................................9.6 g<br>Copper...............................4.5 g<br>Magnesium.........................6 g<br>Manganese.........................3.9 g<br>Iron.....................................2 g<br>Niacin.................................1 g<br>Chromium...........................100 mg<br>Boron..................................8 mcg </p>\r\n</div>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>Helps to increase milk production.</li>\r\n<li>Develops the physical growth of livestock.</li>\r\n<li>For the treatment of problems related to reproduction in cows and buffaloes.</li>\r\n<li>Helps to maintain a fertile period.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, Buffalo: 50 g/day for 10 days.<br>Sheep, Goat: 15 g/day for 10 days.<br>Swine: 25 g/day for 10 days.<br>Fish: 10 kg/ton flakes daily.<br>Cow, Buffalo grain: 10 kg/ton grains daily.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">250 g, 1 kg, 20 kg</p>', 'megamix-1744283855-ouvzHP0dOnfXkpwIa96bHqOK12Og6P3updGACfyL.png', NULL, 35, 'Megamix-Chelated', '1760520823362368659', '2025-10-15 03:48:43', '2025-10-15 03:48:43'),
(36, 38, 'Sutkeri Shakti', NULL, '<p>Energy Enhancer &amp; Immune Modulator for Optimum Production</p>', '<p>Active Phyto constituents for Physiological Restoration and Immunity Enhancement.</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li class=\"MsoNormal\">To prevent or to reduce the physical weakness of the livestock that occurs after giving birth.</li>\r\n<li class=\"MsoNormal\">It helps to maintain a healthy labor pain of the livestock.</li>\r\n<li class=\"MsoNormal\">Helps to maintain a fertile period.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Young animal: 25 g twice a day for 3 days. Then 25 g once a day for next 4 days.<br>Adult animal: 100 g twice a day for 3 days, Then 100 g once a day for next 4 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Warning: To be used only after the deliveryyy</strong></p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">450 g, 1 kg, 2.5 kg.</p>', 'sutkheri-shakti-1744284017-XCtxAxFarclt7YKk1gdcGkGCrvfIaV7r0Lg4uMj9.jpg', NULL, 36, 'Sutkeri-Shakti', '1760520957598272147', '2025-10-15 03:50:57', '2025-10-15 03:51:33'),
(37, 39, 'Precision Aqua', NULL, '<p>Powerful Water Sanitizer</p>', '<p class=\"MsoNormal\">Each 100 ml contains:</p>\r\n<p class=\"MsoNormal\">Didecyl Dimethyl Ammonium Chloride.........7 g</p>', '<p class=\"MsoNormal\"><strong>Benefits of Intake:</strong></p>\r\n<ol>\r\n<li>To maintain water quality by purifying the water for feeding the chickens.</li>\r\n<li>To control water borne diseases in poultry.</li>\r\n<li>To enhance the cleanliness &amp; quality of water at any environmental conditions.</li>\r\n</ol>', '<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">1 ml/10 liter of drinking water daily.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">500 ml, 1 liter, 5 liter.</p>', 'precision-aqua-1744282280-AqaV2SQbWmAJDSCUrK8KVFEDSlaL5WlcqRDQbpBd.jpg', NULL, 37, 'Precision-Aqua', '1760521085679269231', '2025-10-15 03:53:05', '2025-10-15 03:53:05'),
(38, 40, 'Cosomix 1500 Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Cosomix 1500 Bolus combines two synergistic antimicrobial agents (Sulphamethoxazole and Trimethoprim) to provide broad-spectrum antibacterial activity. Sulphamethoxazole, a bacteriostatic sulfonamide, inhibits the conversion of para-aminobenzoic acid (PABA) to dihydro folic acid (DFA) by competitively blocking the enzyme dihydropteroate synthase. Trimethoprim, a bactericidal agent, inhibits the enzyme dihydrofolate reductase, preventing the conversion of DFA to tetrahydro folic acid, an essential cofactor for bacterial DNA and protein synthesis. This sequential blockade of the folate pathway results in a potentiated and highly effective antibacterial action.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This combination is indicated for the treatment of:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Cattle: Gastrointestinal tract infections, Respiratory tract infections, Uterine tract infections.<br><br></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Poultry: Colibacillosis (<em>Escherichia coli</em>), Salmonellosis (<em>Salmonella spp.</em>), Infections caused by Haemophilus and Pasteurella spp., Coccidiosis (<em>Eimeria spp.</em>). Cosomix 1500 Bolus offers a reliable and effective solution for managing bacterial infections, ensuring improved health and productivity in livestock and poultry.</li>\r\n</ul>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Sulphamethoxazole IP.......................................................1250 mg<br>Trimethoprim IP................................................................250 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of Infections such as Gastrointestinal tract infections, Respiratory tract infections, Uterine tract infections etc.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time:</strong> For meat 8 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">1 Bolus per 50 kg bodyweight for 3-5 days.</p>\r\n<p class=\"MsoNormal\">Or as per the recommendation of a veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>', 'cosomix-1500-box-1744284477-OvOuoxMEsLGKCtxXIW5MxGqI7ubH6JLQK98ZiJrs.png', NULL, 38, 'Cosomix-1500-Bolus', '1760521408450459741', '2025-10-15 03:58:28', '2025-10-15 04:29:44'),
(39, 40, 'CRD-Clean Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Doxycycline Hyclate and Tylosin Tartrate Combination is a synergistic antimicrobial formulation that targets bacterial protein synthesis through dual mechanisms. Doxycycline Hyclate, a bacteriostatic tetracycline antibiotic, binds reversibly to the 30S ribosomal subunit of susceptible bacteria, preventing the attachment of aminoacyl-tRNA and inhibiting protein synthesis. Tylosin Tartrate, a macrolide antibiotic, binds to the 50S ribosomal subunit, further disrupting protein synthesis and exerting bacteriostatic effects. This combination is indicated for the treatment of:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) and Avian Airsacculitis caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens, Mycoplasma synoviae (MS) infections and EAAS in layers, Infectious Coryza (Avibacterium paragallinarum), Fowl Cholera (Pasteurella multocida), Infectious Synovitis (Mycoplasma synoviae).<br><br></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Gastrointestinal Tract Infections: Bacterial infections affecting the digestive system in poultry and enzootic pneumonia in swine.CRD-Clean Powder provides broad-spectrum efficacy, ensuring effective management of bacterial infections and promoting optimal health and productivity in poultry and swine.</li>\r\n</ul>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Doxycycline hyclate USP...............................200 mg<br>Tylosin tartrate IP..........................................200 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of Gastro-intestinal and Respiratory related diseases such as Coryza, CRD, CCRD etc.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 8 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chickens: 1 g per (1-2 liter) of water continuously for 5-7 days.</p>\r\n<p class=\"MsoNormal\">As per the recommendation of Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">50 g, 100 g, 500 g, 1 kg.</p>', 'crd-clean-1743937677-WPsQtyxWmKhkcZLuRAzQrb6NBzLTIYo0wCdFrx2h.png', NULL, 39, 'CRDClean-Powder', '1760521542166908055', '2025-10-15 04:00:42', '2025-10-15 04:29:32'),
(40, 40, 'Dizitrim Suspension', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Dizitrim suspension is a synergistic antimicrobial formulation combining two potent agents Sulphadiazine and Trimethoprim. Sulphadiazine, a bacteriostatic sulfonamide, inhibits the conversion of para-aminobenzoic acid (PABA) to dihydrofolic acid (DFA) by competitively blocking the enzyme dihydropteroate synthase. Trimethoprim, a bactericidal agent, inhibits the enzyme dihydrofolate reductase, preventing the conversion of DFA to tetrahydrofolic acid, a critical cofactor for bacterial DNA and protein synthesis. This dual blockade of the folate pathway results in enhanced antibacterial efficacy. This suspension is indicated for the treatment of gastrointestinal and respiratory tract infections in poultry, including:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial infections, Colibacillosis (Escherichia coli), Salmonellosis (Salmonella spp.), Infectious Coryza (IC) (Avibacterium paragallinarum), Fowl Cholera (FC) (Pasteurella multocida).<br><br></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Sulphadiazine and Trimethoprim Suspension provides a reliable and effective solution for managing bacterial infections, promoting poultry health and productivity.</li>\r\n</ul>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Sulphadiazine IP............................................400 mg<br>Trimethoprim IP............................................80 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated to work against the digestive and respiratory tract infections. Also used for the treatment of White Bacillary Diarrhea and Omphalitis.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 5 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chickens: 1 ml per 2 liters of water continuously for 4-7 days.<br>Or as per the recommendations of veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">250 ml, 500 ml, 1 liter</p>', 'dizitrim-2-1743938027-eTBDPVGxal3bGexuzEvdASJWwUPidcY2pvV4piw9.jpg', NULL, 40, 'Dizitrim-Suspension', '1760521646444774849', '2025-10-15 04:02:26', '2025-10-15 04:28:38'),
(41, 40, 'Doxy-K-500 Vet Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Doxycycline Hyclate is a bacteriostatic antibiotic belonging to the tetracycline class. It exerts its antimicrobial effect by reversibly binding to the 30S ribosomal subunit of susceptible bacteria, preventing the attachment of aminoacyl-tRNA to the mRNA-ribosome complex. This inhibition disrupts protein synthesis, effectively halting bacterial growth and replication. Doxy-K-500 Vet Powder is indicated for the treatment of:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens, Infectious Coryza (Avibacterium paragallinarum), Fowl Cholera (Pasteurella multocida), Infectious Synovitis (Mycoplasma synoviae).<br><br></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Gastrointestinal Tract Infections: Mycoplasma synoviae (MS) infections, Egg Apex Abnormality Syndrome (EAAS) associated with mycoplasmal infections.<br><br></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Swine: Respiratory and gastrointestinal tract infections caused by susceptible bacterial and mycoplasmal pathogens. Doxy-K-500 Vet Powder provides broad-spectrum efficacy, making it a reliable choice for managing bacterial and mycoplasmal infections in poultry and swine, ensuring improved health and productivity.</li>\r\n</ul>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Doxycycline hyclate USP...............................500 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of the gastro-intestinal, respiratory and urinary tract infection. Also used to treat the diseases such as CRD, CCRD etc.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat (Poultry) 7 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chickens: 1 g per (2-4) liter of water continuously for 3-5 days.<br>Note: The pH 5 of water enhances the activity, thus acidic water should be used.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 g, 500 g.</p>', 'doxy-k-500-vet-1743938217-bvSenhGIDRcLN7boeRd3XeWqpVbcZxK8KPkttfYV.png', NULL, 41, 'DoxyK500-Vet-Powder', '1760523048854470525', '2025-10-15 04:25:48', '2025-10-15 04:29:06'),
(42, 40, 'K-Cipro Solution', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Ciprofloxacin is a broad-spectrum fluoroquinolone antibiotic that exerts its bactericidal activity by inhibiting bacterial DNA gyrase (topoisomerase II) and topoisomerase IV enzymes. These enzymes are critical for introducing single strand breaks into bacterial chromosomes and resealing them during DNA supercoiling. By disrupting this process, ciprofloxacin effectively prevents bacterial DNA replication and transcription, leading to rapid cell death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">K-Cipro Solution is indicated for the treatment of a wide range of bacterial infections, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Gastrointestinal Tract Infections: Colibacillosis (Escherichia coli), Salmonellosis (Salmonella spp.), Fowl Typhoid (Salmonella gallinarum).<br><br></li>\r\n<li class=\"MsoNormal\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens, Infectious Coryza (IC) (Avibacterium paragallinarum), Fowl Cholera (FC) (Pasteurella multocida).<br><br></li>\r\n<li class=\"MsoNormal\">Urinary Tract Infections: Bacterial infections affecting the urinary system.<br><br></li>\r\n<li class=\"MsoNormal\">Other Infections: Additional bacterial infections responsive to fluoroquinolones.</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">K-Cipro Solution provides reliable, broad-spectrum efficacy, making it a trusted choice for managing bacterial infections and promoting animal health and productivity.</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Ciprofloxacin IP.............................................200 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of the gastro-intestinal, respiratory and urinary tract infection. Also used to treat against the Coryza, CRD, CCRD, E. coli, Campylobacter, Haemophilus mycoplasma, Pasteurella and Salmonella.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chickens: 1 ml per 1-2 liter of water continuously for 3-5 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 ml, 500 ml, 1 liter.</p>', 'k-cipro-1743938478-Qosy2QAiMqpFVBdp9IYNTuyxaRc8jks7ZhhW26sw.png', NULL, 42, 'KCipro-Solution', '176052315319899758', '2025-10-15 04:27:33', '2025-10-15 04:55:45'),
(43, 40, 'Kenoxin 50 Tablet', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Enrofloxacin is a broad-spectrum fluoroquinolone antibiotic with potent bactericidal activity against both Gram-positive and Gram-negative bacteria. Its mechanism of action involves the inhibition of bacterial</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">DNA-gyrase (a Type II topoisomerase), which is essential for DNA supercoiling and replication. By disrupting this critical process, enrofloxacin effectively prevents bacterial DNA synthesis, leading to rapid cell death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Clinically, Kenoxin is indicated for the treatment of a wide range of bacterial infections in dogs and cats, including gastrointestinal, respiratory, and urinary tract infections, as well as dermatological conditions associated with bacterial inflammation. Its targeted action and high bioavailability make it a reliable choice for managing bacterial pathogens and promoting optimal recovery in companion animals.</p>', '<p class=\"MsoNormal\">Each tablet contains:</p>\r\n<p class=\"MsoNormal\">Enrofloxacin IP..................................................................50 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal, respiratory, and urinary tract infections, as well as dermatological conditions associated with bacterial inflammation.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Dog and Cat:<br>1 tablet per 5 kg body weight for 3-5 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 tablets/strip, 12 strips/box</p>', 'kenoxin-50-1743938685-h9I4WFzPdar7kfycQJ5wzGWs2J0CP9Sk5tulHBjC.png', NULL, 43, 'Kenoxin-50-Tablet', '1760523462370378230', '2025-10-15 04:32:42', '2025-10-15 04:32:42'),
(44, 40, 'Kenoxin 150 Tablet', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Enrofloxacin is a broad-spectrum fluoroquinolone antibiotic with potent bactericidal activity against both Gram-positive and Gram-negative bacteria. Its mechanism of action involves the inhibition of bacterial.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">DNA-gyrase (a Type II topoisomerase), which is essential for DNA supercoiling and replication. By disrupting this critical process, enrofloxacin effectively prevents bacterial DNA synthesis, leading to rapid cell death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Clinically, Kenoxin is indicated for the treatment of a wide range of bacterial infections in dogs and cats, including gastrointestinal, respiratory, and urinary tract infections, as well as dermatological conditions associated with bacterial inflammation. Its targeted action and high bioavailability make it a reliable choice for managing bacterial pathogens and promoting optimal recovery in companion animals.</p>', '<p class=\"MsoNormal\">Each tablet contains:</p>\r\n<p class=\"MsoNormal\">Enrofloxacin IP..................................................................150 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal, respiratory, and urinary tract infections, as well as dermatological conditions associated with bacterial inflammation.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">1 tablet per 15 kg body weight for 3-5 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 tablets/strip, 12 strips/box</p>', 'kenoxin-150-1743938936-VcDjty02cgWRLvdb6F2eQuIfVNtHTTaF3tlSIL82.png', NULL, 44, 'Kenoxin-150-Tablet', '1760523523326410253', '2025-10-15 04:33:43', '2025-10-15 04:33:43');
INSERT INTO `cl_associated_posts` (`id`, `post_id`, `title`, `sub_title`, `brief`, `composition`, `purpose`, `information`, `thumbnail`, `icon`, `ordering`, `uri`, `page_key`, `created_at`, `updated_at`) VALUES
(45, 40, 'Kenoxin 10% Solution', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Enrofloxacin is a broad-spectrum fluoroquinolone antibiotic with potent bactericidal activity against both Gram-positive and Gram-negative bacteria. Its mechanism of action involves the inhibition of bacterial</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">DNA-gyrase, an enzyme essential for DNA supercoiling and replication. By disrupting this critical process, enrofloxacin effectively prevents bacterial DNA synthesis, leading to rapid cell death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Kenoxin solution is clinically indicated for the treatment of respiratory and gastrointestinal tract infections in poultry, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Colibacillosis (caused by Escherichia coli), Chronic Respiratory Disease (CRD) and Complex Chronic Respiratory Disease (CCRD) (caused by Mycoplasma gallisepticum and secondary bacterial infections), Salmonellosis (caused by Salmonella spp.), Infectious Coryza (IC) (caused by Avibacterium paragallinarum), Fowl Cholera (FC) (caused by Pasteurella multocida)<br><br></li>\r\n<li class=\"MsoNormal\">Other mixed bacterial infections.</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Its high bioavailability and targeted action make enrofloxacin a reliable choice for managing bacterial pathogens in poultry, ensuring improved health and productivity.</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Enrofloxacin IP..............................................100 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal, and respiratory tract infections.</p>\r\n<p class=\"MsoNormal\">Also used against the infection of the E.coli and the Salmonella species.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken:</p>\r\n<p class=\"MsoNormal\">For Prevention:  1 ml per 2 liters of water continuously for 3-5 days.<br>For Treatment: 1 ml per 1 liter of water continuously for 3-5 days.<br>Note: 10 mg per kg body weight given once a day for 3-5 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"> <strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 ml, 500 ml, 1 liter </p>', 'kenoxin-10-solution-1744012750-l7iRKAhner5hRpL5EcqkikwH2s2oABepHp6TipH4.jpg', NULL, 45, 'Kenoxin-10-Solution', '1760523633432872607', '2025-10-15 04:35:33', '2025-10-15 04:35:33'),
(46, 40, 'Kenoxin 20% Solution', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Enrofloxacin is a broad-spectrum fluoroquinolone antibiotic with potent bactericidal activity against both Gram-positive and Gram-negative bacteria. Its mechanism of action involves the inhibition of bacterial</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">DNA-gyrase, an enzyme essential for DNA supercoiling and replication. By disrupting this critical process, enrofloxacin effectively prevents bacterial DNA synthesis, leading to rapid cell death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Kenoxin solution is clinically indicated for the treatment of respiratory and gastrointestinal tract infections in poultry, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Colibacillosis (caused by Escherichia coli),</li>\r\n<li class=\"MsoNormal\">Chronic Respiratory Disease (CRD) and Complex Chronic Respiratory</li>\r\n<li class=\"MsoNormal\">Disease (CCRD) (caused by Mycoplasma gallisepticum and secondary bacterial infections),</li>\r\n<li class=\"MsoNormal\">Salmonellosis (caused by Salmonella spp.),</li>\r\n<li class=\"MsoNormal\">Infectious Coryza (IC) (caused by Avibacterium paragallinarum),</li>\r\n<li class=\"MsoNormal\">Fowl Cholera (FC) (caused by Pasteurella multocida),</li>\r\n<li class=\"MsoNormal\">Other mixed bacterial infections.</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Its high bioavailability and targeted action make enrofloxacin a reliable choice for managing bacterial pathogens in poultry, ensuring improved health and productivity.</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Enrofloxacin IP..............................................200 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It indicated for the treatment of respiratory and gastrointestinal tract infections in poultry.</p>\r\n<p class=\"MsoNormal\">Also used against the E. coli and Salmonella species.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken:</p>\r\n<p class=\"MsoNormal\">For Prevention:  1 ml per 4 liters of water continuously for 3-5 days.<br>For Treatment: 1 ml per 2 liters of water continuously for 3-5 days.<br>Note: 10 mg per kg body weight given once a day mixing with water for 3-5 days.<br>Or as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 ml, 500 ml, 1 liter </p>', 'kenoxin-20-solution-1744013018-EoNru8gGYyfG4MNKeufgdVPbVigjdsCE4HbxTvVR.jpg', NULL, 46, 'Kenoxin-20-Solution', '1760523902512982821', '2025-10-15 04:40:02', '2025-10-15 04:40:02'),
(47, 40, 'KPDox-N Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Doxycycline Hyclate and Neomycin Sulphate combination is a synergistic antimicrobial formulation designed to target bacterial infections through dual mechanisms of action. Doxycycline Hyclate, a bacteriostatic tetracycline antibiotic, reversibly binds to the 30S ribosomal subunit of susceptible bacteria, preventing the attachment of aminoacyl-tRNA to the mRNA-ribosome complex. This inhibition disrupts protein synthesis, effectively halting bacterial growth. Neomycin Sulphate, an aminoglycoside antibiotic, binds to the 30S ribosomal subunit and interferes with the initiation complex, causing misreading of the mRNA and leading to bactericidal effects.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">KPDox-N Powder is indicated for the treatment of:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens, Infectious Coryza (Avibacterium paragallinarum), Fowl Cholera (Pasteurella multocida).<br><br></li>\r\n<li class=\"MsoNormal\">Gastrointestinal Tract Infections: Mycoplasma synoviae (MS) infections, Egg Apex Abnormality Syndrome (EAAS) associated with mycoplasmal infections.<br><br></li>\r\n<li class=\"MsoNormal\">Other Infections: Infectious Synovitis (Mycoplasma synoviae).</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">KPDox-N Powder provides broad-spectrum efficacy, ensuring effective management of bacterial and mycoplasmal infections in poultry, supporting optimal health and productivity.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Doxycycline hyclate USP...................................................100 mg<br>Neomycin sulphate IP eq. to<br>Neomycin..........................................................................100 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated to use against the E. coli, Salmonella, CRD infections in poultry. Also helps to decrease the higher mortality rate of the chickens.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat (Poultry) 7 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 3 g per 20 liters of water continuously for 3-5 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 g, 50 g, 100 g, 500 g.</p>', 'kp-dox-n-1744013303-pNRQb6Bq7R78bDvwqeJXQYqkRTtFWeq9MuD3Ykui.png', NULL, 47, 'KPDoxN-Powder', '176052423726010195', '2025-10-15 04:45:37', '2025-10-15 04:56:06'),
(48, 40, 'KP Tylo-WS Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Tylosin Tartrate is a macrolide antibiotic that exerts its bacteriostatic effect by binding to the 50S ribosomal subunit of susceptible bacteria and mycoplasma. This binding inhibits the translocation step of protein synthesis by preventing the transfer of peptidyl-tRNA from the ribosomal A-site to the P-site, effectively halting the elongation of peptide chains. By disrupting protein synthesis, Tylosin tartrate suppresses bacterial and mycoplasmal growth, making it highly effective against a range of pathogens.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">KP Tylo-WS Powder is indicated for the treatment of:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Poultry<br><br></li>\r\n<li class=\"MsoNormal\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial infections, Infectious Coryza (Avibacterium paragallinarum), Fowl Cholera (Pasteurella multocida), Infectious Synovitis (Mycoplasma synoviae).<br><br></li>\r\n<li class=\"MsoNormal\">Gastrointestinal Tract Infections: Egg Apex Abnormality Syndrome (EAAS) associated with mycoplasmal infections.<br><br></li>\r\n<li class=\"MsoNormal\">Swine: Various bacterial and mycoplasmal infections responsive to Tylosin Tartrate, including respiratory and gastrointestinal tract infections.</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">KP Tylo-WS Powder is a trusted choice for managing bacterial and mycoplasmal infections in poultry and swine, ensuring improved health and productivity.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Tylosin Tartrate IP..........................................1000 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of gastrointestinal and respiratory tract infections (CRD) in poultry.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 5 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 1 g per 1-2 liters of water continuously for 3-5 days<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 g, 500 g, 1 kg.</p>', 'kp-tylo-ws-1744013500-PJjYxKWTDIb68SG6imzqIQcREefbn89Vv7XN1c2H.png', NULL, 48, 'KP-TyloWS-Powder', '1760524347992977596', '2025-10-15 04:47:27', '2025-10-15 04:47:27'),
(49, 40, 'KP-Levoflox Solution', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Levofloxacin is a potent fluoroquinolone antibiotic that exerts its bactericidal effect by inhibiting bacterial DNA gyrase (topoisomerase II) and topoisomerase IV enzymes. These enzymes are essential for introducing single-strand breaks into bacterial chromosomes and resealing them during DNA supercoiling. By disrupting this process, levofloxacin prevents bacterial DNA replication and transcription, leading to rapid cell death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">KP-Levoflox Solution is indicated for the treatment of a wide range of bacterial infections, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Gastrointestinal Tract Infections: Colibacillosis (Escherichia coli), Salmonellosis (Salmonella spp.).<br><br></li>\r\n<li class=\"MsoNormal\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens, Infectious Coryza (IC) (Avibacterium paragallinarum), Fowl Cholera (FC) (Pasteurella multocida).<br><br></li>\r\n<li class=\"MsoNormal\">Other Infections: Urinary tract infections, Infectious Synovitis (Mycoplasma synoviae).</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">KP-Levoflox Solution offers broad-spectrum efficacy, ensuring effective management of bacterial infections and supporting optimal animal health and productivity.</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Levofloxacin hemihydrate IP<br>eq. to Levofloxacin.........................................100 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal tract infections, respiratory tract infections. Also used against Coryza, CRD, CCRD, Salmonella etc.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 28 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 1 ml per 1 liter of water for 5-7 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 ml, 500 ml, 1 liter.</p>', 'kp-levoflox-1744013649-chQMimuECTYpEyXmUIXvKXJ5Et1O9OUwS33Whkhr.jpg', NULL, 49, 'KPLevoflox-Solution', '176052443173541733', '2025-10-15 04:48:51', '2025-10-15 04:48:51'),
(50, 40, 'Otcyclin 500 Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxytetracycline HCl Bolus is a bacteriostatic antibiotic that inhibits bacterial protein synthesis by reversibly binding to the 30S ribosomal subunit of susceptible organisms. This action prevents the attachment of aminoacyl-tRNA to the ribosome, effectively halting protein production and bacterial growth.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxytetracycline HCl Bolus is indicated for the treatment of a wide range of bacterial infections in livestock, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Cattle and Buffalo: Hemorrhagic septicemia (Pasteurella multocida), Black quarter (Clostridium chauvoei), Anthrax (Bacillus anthracis), Pneumonia, Brucellosis (Brucella spp.), Genito-urinary tract infections, Mastitis, Wound infections.</li>\r\n<li class=\"MsoNormal\">Sheep and Goat: Pneumonia, Enterotoxemia (Clostridium perfringens).</li>\r\n<li class=\"MsoNormal\">General Indications: Respiratory tract infections, Gastrointestinal tract infections, Uterine tract infections.</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxytetracycline HCl Bolus provides broad-spectrum efficacy, making it a reliable choice for managing bacterial infections and promoting animal health and productivity.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Oxytetracycline HCL USP..................................................500 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal, respiratory, and uterine tract infections.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 7 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">1 bolus per 50 kg body weight for 3-5 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>', 'otcyclin-500-fam-1744014100-gKSVoN5Cii7S0P1pBrfB1RA3ERGtYrPwTfrfWG4n.jpg', NULL, 50, 'Otcyclin-500-Bolus', '1760524520114224677', '2025-10-15 04:50:20', '2025-10-15 04:50:20'),
(51, 40, 'Otcyclin-WS 5% Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxytetracycline is a bacteriostatic antibiotic that inhibits bacterial protein synthesis by reversibly binding to the 30S ribosomal subunit of susceptible microorganisms. This mechanism prevents the attachment of aminoacyltRNA to the ribosome, effectively disrupting protein production and inhibiting bacterial growth.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Otcyclin-WS Powder is indicated for the treatment of a wide range of bacterial infections in poultry, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens.</li>\r\n<li class=\"MsoNormal\">Gastrointestinal Tract Infections: Colibacillosis (Escherichia coli), Salmonellosis (Salmonella spp.).</li>\r\n<li class=\"MsoNormal\">Other Infections: Infectious Coryza (Avibacterium paragallinarum), Fowl Cholera (Pasteurella multocida), Infectious Synovitis (Mycoplasma synoviae).</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This broad-spectrum antibiotic ensures effective management of bacterial infections, supporting poultry health and productivity.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Oxytetracycline HCI USP...............................50 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal, respiratory, CRD, Coryza, Fowl Cholera etc.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 7 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 4 g per 1 liter of water continuously for 3-5 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">50 g, 100 g, 1 kg.</p>', 'otcycline-5-1744014337-n1MPUTusWJ7MLSqdZVly5sjPDs3TzdZjosrEa2qg.jpg', NULL, 51, 'OtcyclinWS-5-Powder', '1760524604726588691', '2025-10-15 04:51:44', '2025-10-15 04:51:44'),
(52, 40, 'Otcyclin-WS 40% Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxytetracycline is a bacteriostatic antibiotic that inhibits bacterial protein synthesis by reversibly binding to the 30S ribosomal subunit of susceptible microorganisms. This mechanism prevents the attachment of aminoacyl-tRNA to the ribosome, effectively disrupting protein production and inhibiting bacterial growth.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Otcyclin-WS Powder is indicated for the treatment of a wide range of bacterial infections in poultry, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens.</li>\r\n<li class=\"MsoNormal\">Gastrointestinal Tract Infections: Colibacillosis (Escherichia coli), Salmonellosis (Salmonella spp.).</li>\r\n<li class=\"MsoNormal\">Other Infections: Infectious Coryza (Avibacterium paragallinarum), Fowl Cholera (Pasteurella multocida), Infectious Synovitis (Mycoplasma synoviae).</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This broad-spectrum antibiotic ensures effective management of bacterial infections, supporting poultry health and productivity.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Oxytetracycline HCI USP...............................400 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal, respiratory, CRD, Coryza, Fowl Cholera etc.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 7 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 1 g per 1-2 liter of water continuously for 3-5 days.<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 g, 500 g, 1 kg.</p>', 'otcyclin-1000-gm-40-1744014310-FYvVHnbtEL43CdYSFEy5cHuNrBXqdqu3zHO7Rmzc.png', NULL, 52, 'OtcyclinWS-40-Powder', '1760524691339155959', '2025-10-15 04:53:11', '2025-10-15 04:53:23'),
(53, 40, 'Utinil Solution', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Norfloxacin is a fluoroquinolone antibiotic that exerts its bactericidal effect by inhibiting bacterial DNA gyrase (topoisomerase II) and topoisomerase IV enzymes. These enzymes are essential for introducing single-strand breaks into bacterial chromosomes and resealing them during DNA supercoiling. By disrupting this process, norfloxacin effectively prevents bacterial DNA replication and transcription, leading to rapid cell death. Utinill Solution is indicated for the treatment of a wide range of bacterial infections, including:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li class=\"MsoNormal\">Gastrointestinal Tract Infections: Colibacillosis (Escherichia coli), Salmonellosis (Salmonella spp.), Fowl Typhoid (Salmonella gallinarum).<br><br></li>\r\n<li class=\"MsoNormal\">Respiratory Tract Infections: Chronic Respiratory Disease (CRD) caused by Mycoplasma gallisepticum, Complex Chronic Respiratory Disease (CCRD) involving secondary bacterial pathogens, Infectious Coryza (IC) (Avibacterium paragallinarum), Fowl Cholera (FC) (Pasteurella multocida).<br><br></li>\r\n<li class=\"MsoNormal\">Urinary Tract Infections: Bacterial infections affecting the urinary system.<br><br></li>\r\n<li class=\"MsoNormal\">Other Infections: Additional bacterial infections responsive to fluoroquinolones.</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Utinill Solution provides broad-spectrum efficacy, ensuring effective management of bacterial infections and supporting optimal animal health and productivity.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Norfloxacin IP................................................200 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of a wide range of bacterial infections, including gastrointestinal, respiratory, and urinary tract infections.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken: 1 ml per 1-2 liter of water continuously for 3-5 days<br>Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">500 ml, 1 liter.</p>', 'utinill-1744016896-HiZixTQQUuwZUjXUzIwUPiuI4lZQLhOHlXRoKlQO.png', NULL, 53, 'Utinil-Solution', '1760524794473926548', '2025-10-15 04:54:54', '2025-10-15 04:54:54'),
(54, 41, 'Ascarzin Solution', NULL, '<p style=\"text-align: justify;\">Piperazine hexahydrate exerts its anthelmintic effect by inducing neuromuscular hyperpolarization in susceptible nematodes, leading to reversible flaccid paralysis. This paralysis prevents the worms from maintaining their position within the host’s gastrointestinal tract, facilitating their expulsion through feces. The anthelmintic active piperazine base concentration varies among different piperazine salts, necessitating dosage adjustments based on the specific formulation used. Piperazine hexahydrate is indicated for the treatment of gastrointestinal nematode infections, particularly ascarids (roundworms) and other nematodes in livestock and companion animals.</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Piperazine Hexahydrate IP................................................563 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the treatment of gastrointestinal nematode infections, particularly ascarids (roundworms) and other nematodes in livestock and companion animals.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 2 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">4 to 6 weeks- 60 ml per 10 liters of water for 300 chickens.<br>Above 6 weeks- 60 ml per 13 liters of water for 150 chickens.<br>Above 12 weeks- 80 ml per 100 chickens.</p>\r\n<p class=\"MsoNormal\">Cow, Buffalo and Horse: 10-15 ml per 30 kg bodyweight.<br>Calves, and Pigs: 3-6 ml per 10 kg bodyweight.<br>Dog and Cat: 2 ml per 10 kg bodyweight.</p>\r\n<p class=\"MsoNormal\">Or as per the recommendation of veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">30 ml, 450 ml, 4.5 litre</p>', 'ascarzin-family-1744017114-1-Wg2j0kmRxfiAVxKO2TeiAdAziTVenuGIxyTpS3JX.jpg', NULL, 54, 'Ascarzin-Solution', '1760525532505990200', '2025-10-15 05:07:12', '2025-10-15 05:10:38'),
(55, 41, 'Fenavet 150 Tablet', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Fenbendazole is a benzimidazole-class anthelmintic with broad-spectrum efficacy against nematodes, cestodes, and trematodes in both adult and larval stages.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Inhibition of Microtubule Formation: Fenbendazole disrupts tubulin polymerization, impairing the structural integrity and function of microtubules within the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Glucose Uptake Blockade: It interferes with glucose metabolism, leading to depletion of energy reserves.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Inhibition of Fumarate Reductase: By disrupting this key enzyme in parasite metabolism, Fenbendazole reduces ATP production, ultimately causing paralysis and death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Fenbendazole exhibits wormicidal, larvicidal, and ovicidal properties, making it an effective treatment for a wide range of gastrointestinal and systemic helminth infections in farm animals.</p>', '<p class=\"MsoNormal\">Each tablet contains:</p>\r\n<p class=\"MsoNormal\">Fenbendazole IP................................................................150 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of a wide range of gastrointestinal and systemic helminth (threadworm, roundworm, tapeworm etc.) infections in farm animals.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm, threadworm, and roundworm</p>\r\n<p class=\"MsoNormal\">Dog and Cat: 1 tablet per 3 kg body weight for 3 days<br>Sheep, Goat and Pig: 1 tablet per 20-30 kg body weight for single time.</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 tablets/strip, 12 strips/box.</p>', 'fenavet-150-1-1744090507-pUOasUN1auAXppLkKUk8yYxpPUwzjD87HoiOTWG4.jpg', NULL, 55, 'Fenavet-150-Tablet', '1760525701738943306', '2025-10-15 05:10:01', '2025-10-15 05:10:01'),
(56, 41, 'Fenavet 1500 Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Fenbendazole is a benzimidazole-class anthelmintic with broad-spectrum efficacy against nematodes, cestodes, and trematodes in both adult and larval stages.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Inhibition of Microtubule Formation: Fenbendazole disrupts tubulin polymerization, impairing the structural integrity and function of microtubules within the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Glucose Uptake Blockade: It interferes with glucose metabolism, leading to depletion of energy reserves.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Inhibition of Fumarate Reductase: By disrupting this key enzyme in parasite metabolism, Fenbendazole reduces ATP production, ultimately causing paralysis and death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Fenbendazole exhibits wormicidal, larvicidal, and ovicidal properties, making it an effective treatment for a wide range of gastrointestinal and systemic helminth infections in farm animals.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Fenbendazole IP................................................................1500 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of a wide range of gastrointestinal and systemic helminth (threadworm, roundworm, tapeworm etc.) infections in farm animals.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm, threadworm, and roundworm</p>\r\n<p class=\"MsoNormal\">Cow, Buffalo: 1 Bolus per 200-300 kg body weight.</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>', 'fenavet-1500-1-1744090627-lHgJpSLWeWG66NRekTgJ3N1fxCW0AALFBKZEca2z.jpg', NULL, 56, 'Fenavet-1500-Bolus', '1760525877179536126', '2025-10-15 05:12:57', '2025-10-15 05:12:57'),
(57, 41, 'Fenavet 25% Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Fenbendazole is a benzimidazole-class anthelmintic with broad-spectrum efficacy against nematodes, cestodes, and trematodes in both adult and larval stages.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Inhibition of Microtubule Formation: Fenbendazole disrupts tubulin polymerization, impairing the structural integrity and function of microtubules within the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Glucose Uptake Blockade: It interferes with glucose metabolism, leading to depletion of energy reserves.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Inhibition of Fumarate Reductase: By disrupting this key enzyme in parasite metabolism, Fenbendazole reduces ATP production, ultimately causing paralysis and death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Fenbendazole exhibits wormicidal, larvicidal, and ovicidal properties, making it an effective treatment for a wide range of gastrointestinal and systemic helminth infections in farm animals.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Fenbendazole IP............................................250 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of a wide range of gastrointestinal and systemic helminth infections in farm animals.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm, threadworm, and roundworm</p>\r\n<p class=\"MsoNormal\">Chicken: 5-10 mg. per 1 kg body weight.</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">500 g.</p>', 'fenavet-powder-1-1744090744-wwBEFlSYL0Tni11JuHqtIEgZCR2YbiVq391l584e.jpg', NULL, 57, 'Fenavet-25-Powder', '1760525969380404421', '2025-10-15 05:14:29', '2025-10-15 05:14:29'),
(58, 41, 'Intrazin Suspension', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxyclozanide disrupts oxidative phosphorylation in parasite mitochondria, leading to energy depletion and death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Levamisole HCl acts as a ganglionic stimulant (cholinomimetic agent), interfering with parasite energy metabolism and causing neuromuscular paralysis. Additionally, it enhances cell-mediated immunity (CMI) in immunocompromised animals.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This combination is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Oxyclozanide IP................................................................34 mg<br>Levamisole HCI IP.............................................................25 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 14 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, buffalo, sheep, and goat: 10 ml per 25 kg body weight.</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">100 ml., 120 ml., 150 ml., 180 ml., 1 liter.</p>', 'intrazin-suspension-1744090830-Q6H9ORgQttsCJyztfB1aydNQZJbJq17AogNLB99P.jpg', NULL, 58, 'Intrazin-Suspension', '1760526042415580810', '2025-10-15 05:15:42', '2025-10-15 05:15:42'),
(59, 41, 'Intrazin-225 Tablet', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxyclozanide disrupts oxidative phosphorylation in parasite mitochondria, leading to energy depletion and death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Levamisole HCl acts as a ganglionic stimulant (cholinomimetic agent), interfering with parasite energy metabolism and causing neuromuscular paralysis. Additionally, it enhances cell-mediated immunity (CMI) in immunocompromised animals.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This combination is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\">Each tablet contains:</p>\r\n<p class=\"MsoNormal\">Oxyclozanide IP................................................................150 mg<br>Levamisole HCI IP.............................................................75 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 14 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Sheep, Pig and goat.</p>\r\n<p class=\"MsoNormal\">1 tablet per 10 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of Veterinarian</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 tablets/strip, 12 strips/box.</p>', 'intrazin-225-1744091122-YCpRJeNIGJSd1pv8aoq2zg0nqYGe6DDdzGxqbKJ7.png', NULL, 59, 'Intrazin225-Tablet', '176052614884224384', '2025-10-15 05:17:28', '2025-10-15 05:17:28'),
(60, 41, 'Intrazin-450 Tablet', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxyclozanide disrupts oxidative phosphorylation in parasite mitochondria, leading to energy depletion and death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Levamisole HCl acts as a ganglionic stimulant (cholinomimetic agent), interfering with parasite energy metabolism and causing neuromuscular paralysis. Additionally, it enhances cell-mediated immunity (CMI) in immunocompromised animals.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This combination is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\">Each tablet contains:</p>\r\n<p class=\"MsoNormal\">Oxyclozanide IP................................................................300 mg<br>Levamisole HCI IP.............................................................150 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 14 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Sheep and goat.</p>\r\n<p class=\"MsoNormal\">1 tablet per 20-25 kg body weight.</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 tablets/strip, 12 strips/box.</p>', 'intrazin-450-1744091318-8DpRQbQKkmJHKVE6V1D5QIi82mO2XroCO2U27Lwi.png', NULL, 60, 'Intrazin450-Tablet', '1760526201736501742', '2025-10-15 05:18:21', '2025-10-15 05:18:21'),
(61, 41, 'Intrazin-875 Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxyclozanide disrupts oxidative phosphorylation in parasite mitochondria, leading to energy depletion and death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Levamisole HCl acts as a ganglionic stimulant (cholinomimetic agent), interfering with parasite energy metabolism and causing neuromuscular paralysis. Additionally, it enhances cell-mediated immunity (CMI) in immunocompromised animals.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This combination is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Oxyclozanide IP................................................................500 mg<br>Levamisole HCI IP.............................................................375 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 14 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Sheep, goat, and calves</p>\r\n<p class=\"MsoNormal\">1 bolus per 35 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation by the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>', 'intrazin-850-1744091461-spftpvEhTKr7EEuQMRCaw7MgbdqCgquxA2X8eXv1.png', NULL, 61, 'Intrazin875-Bolus', '1760526252914528733', '2025-10-15 05:19:12', '2025-10-15 05:19:12'),
(62, 41, 'Intrazin-1750 Bolus', NULL, '<p class=\"MsoNormal\">Oxyclozanide disrupts oxidative phosphorylation in parasite mitochondria, leading to energy depletion and death.</p>\r\n<p class=\"MsoNormal\">Levamisole HCl acts as a ganglionic stimulant (cholinomimetic agent), interfering with parasite energy metabolism and causing neuromuscular paralysis. Additionally, it enhances cell-mediated immunity (CMI) in immunocompromised animals.</p>\r\n<p class=\"MsoNormal\">This combination is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Oxyclozanide IP................................................................1000 mg<br>Levamisole HCI IP.............................................................750 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<div class=\"product-page\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 14 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, buffalo.</p>\r\n<p class=\"MsoNormal\">1 bolus per 75 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation by the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"footer\">\r\n<div class=\"container\">\r\n<div class=\"footer-contact\">\r\n<div class=\"row\">\r\n<div class=\"col-md-9\"> </div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'intrazin-1750-1744091619-zh9sDKzzmukSvUnHolU8kGYLxyNiYY2f2RKQtPLk.png', NULL, 62, 'Intrazin1750-Bolus', '1760526304644243371', '2025-10-15 05:20:04', '2025-10-15 05:20:04'),
(63, 41, 'Intrazin-2050 Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Oxyclozanide disrupts oxidative phosphorylation in parasite mitochondria, leading to energy depletion and death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Levamisole HCl acts as a ganglionic stimulant (cholinomimetic agent), interfering with parasite energy metabolism and causing neuromuscular paralysis. Additionally, it enhances cell-mediated immunity (CMI) in immunocompromised animals.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">This combination is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Oxyclozanide IP................................................................1300 mg<br>Levamisole HCI IP.............................................................750 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is effective for the treatment and control of mixed infections caused by liver flukes, rumen flukes, tapeworms, and roundworms in ruminants.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 14 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, buffalo.</p>\r\n<p class=\"MsoNormal\">1 bolus per 100 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation by the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>', 'intrazin-2050-1744091704-JH0RNNLMu230e6mcC2hVRxE3gAn5AdEXWYc32pEB.png', NULL, 63, 'Intrazin2050-Bolus', '1760526347840089343', '2025-10-15 05:20:47', '2025-10-15 05:20:47'),
(64, 41, 'Levafix 30% Powder', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Levamisole hydrochloride is a cholinomimetic agent with broad-spectrum anthelmintic and immunomodulatory properties.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Neuromuscular Disruption: Levamisole acts as a ganglionic stimulant, mimicking acetylcholine activity at nicotinic receptors, leading to spastic paralysis of nematodes, which are then expelled from the host.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Metabolic Inhibition: It inhibits fumarate reductase, a key enzyme in the anaerobic metabolism of parasites, disrupting energy production and leading to worm death.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Immunostimulation: Levamisole enhances cell-mediated immunity (CMI) by stimulating T-lymphocytes, macrophages, and natural killer (NK) cells, improving immune response in immunocompromised animals.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Levamisole HCl is used for the treatment and prophylaxis of nematode infestations, including roundworms in both adult and larval stages. Additionally, it serves as an immune stimulant in animals with weakened immune function.</p>', '<p class=\"MsoNormal\">Each gram contains:</p>\r\n<p class=\"MsoNormal\">Levamisole HCl IP.........................................300 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is used for the treatment and prophylaxis of nematode infestations, including roundworms in both adult and larval stages. Additionally, it serves as an immune stimulant in animals with weakened immune function.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 10 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Chicken:</p>\r\n<p class=\"MsoNormal\">Against worms: 20-36 mg per 1 kg body weight.<br>As an immune stimulant: 7.5-15 mg per 1 kg body weight.</p>\r\n<p class=\"MsoNormal\">Or, as per recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 g, 100 g, 1 kg.</p>', 'levafix-30-powder-1744091868-gAO6LDRYcJd3h6gOoKL42Nx8RCZwW0mhRzXA6B2v.png', NULL, 64, 'Levafix-30-Powder', '176052641114882765', '2025-10-15 05:21:51', '2025-10-15 05:21:51'),
(65, 41, 'Valbazin Suspension', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole: A Broad-Spectrum Anthelmintic</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole is a broad-spectrum benzimidazole anthelmintic effective against a wide range of nematodes, cestodes, and trematodes, including, Fasciola hepatica (adult stage). Its mechanism of action involves inhibiting the polymerization of tubulin, thereby disrupting microtubule formation within the parasite. Additionally, it impairs glucose uptake and interferes with the enzyme fumarate reductase, leading to reduced energy production, paralysis, and eventual death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole exhibits wormicidal, larvicidal, and ovicidal properties, making it effective for both prophylaxis and treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\">Each ml contains:</p>\r\n<p class=\"MsoNormal\">Albendazole USP...............................................................25 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm and roundworm:<br>1-2 ml per 5 kg body weight</p>\r\n<p class=\"MsoNormal\">Against fluke:<br>Cow, Buffalo, Horse, Pig, and Goat: 1-2 ml per 5 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">30 ml, 60 ml, 120 ml, 500 ml, 1 liter, 5 liter.</p>', 'valbazin-suspension-1744092049-wwUpNdPN00oQn0FV9QkcW3DQsARG8XP3DKY19oaM.png', NULL, 65, 'Valbazin-Suspension', '1760526468595115634', '2025-10-15 05:22:48', '2025-10-15 05:22:48');
INSERT INTO `cl_associated_posts` (`id`, `post_id`, `title`, `sub_title`, `brief`, `composition`, `purpose`, `information`, `thumbnail`, `icon`, `ordering`, `uri`, `page_key`, `created_at`, `updated_at`) VALUES
(66, 41, 'Valbazin 200 Tablet', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole: A Broad-Spectrum Anthelmintic</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole is a broad-spectrum benzimidazole anthelmintic effective against a wide range of nematodes, cestodes, and trematodes, including, Fasciola hepatica (adult stage). Its mechanism of action involves inhibiting the polymerization of tubulin, thereby disrupting microtubule formation within the parasite. Additionally, it impairs glucose uptake and interferes with the enzyme fumarate reductase, leading to reduced energy production, paralysis, and eventual death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole exhibits wormicidal, larvicidal, and ovicidal properties, making it effective for both prophylaxis and treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\">Each tablet contains:</p>\r\n<p class=\"MsoNormal\">Albendazole USP...............................................................200 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm and roundworm:<br>Dog, Cat, Sheep, Pig, and Goat: 1 tablet per 20 kg body weight.</p>\r\n<p class=\"MsoNormal\">Against fluke:<br>Sheep, Pig, and Goat: 3.8- 15 mg per 1 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">10 tablets/strip, 12 strips/box.</p>', 'valbazin-200-1744092188-UpdpG62ememl4qsBZkgWOJGKcOf5UxgCnWPQi3Vn.png', NULL, 66, 'Valbazin-200-Tablet', '176052652293268352', '2025-10-15 05:23:42', '2025-10-15 05:23:42'),
(67, 41, 'Valbazin 600 Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole: A Broad-Spectrum Anthelmintic</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole is a broad-spectrum benzimidazole anthelmintic effective against a wide range of nematodes, cestodes, and trematodes, including, Fasciola hepatica (adult stage). Its mechanism of action involves inhibiting the polymerization of tubulin, thereby disrupting microtubule formation within the parasite. Additionally, it impairs glucose uptake and interferes with the enzyme fumarate reductase, leading to reduced energy production, paralysis, and eventual death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole exhibits wormicidal, larvicidal, and ovicidal properties, making it effective for both prophylaxis and treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Albendazole USP...............................................................600 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm and roundworm:<br>Cow, Buffalo, Sheep, Pig and Goat: 1 bolus per 60 kg body weight.</p>\r\n<p class=\"MsoNormal\">Against fluke:<br>Cow, Buffalo, Sheep, Pig, and Goat: 1 bolus per 60 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>', 'valbazin-600-1744092294-cDsGLxVjC7d6cXReS68ERVfKy2oBIjB0v5wbXy97.png', NULL, 67, 'Valbazin-600-Bolus', '1760526580988206550', '2025-10-15 05:24:40', '2025-10-15 05:24:40'),
(68, 41, 'Valbazin 1500 Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole: A Broad-Spectrum Anthelmintic</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole is a broad-spectrum benzimidazole anthelmintic effective against a wide range of nematodes, cestodes, and trematodes, including, Fasciola hepatica (adult stage). Its mechanism of action involves inhibiting the polymerization of tubulin, thereby disrupting microtubule formation within the parasite. Additionally, it impairs glucose uptake and interferes with the enzyme fumarate reductase, leading to reduced energy production, paralysis, and eventual death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole exhibits wormicidal, larvicidal, and ovicidal properties, making it effective for both prophylaxis and treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Albendazole USP...............................................................1500 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm and roundworm:<br>Cow and Buffalo: 1 bolus per 150 kg body weight.</p>\r\n<p class=\"MsoNormal\">Against fluke:<br>Cow and Buffalo: 1 bolus per 150 kg body weight</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">Bolus: 4 bolus/strip, 12 strips/box.</p>', 'valbazin-1500-1744097697-FjtP1BerqRUnfq1h9eRF7YYqUxfFzTujiOfmAVPq.png', NULL, 68, 'Valbazin-1500-Bolus', '1760526728314845166', '2025-10-15 05:27:08', '2025-10-15 05:27:08'),
(69, 41, 'Valbazin-P Tablet', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">This combination of Albendazole and Praziquantel offers broad-spectrum efficacy against a wide range of nematodes, cestodes, and trematodes, including Fasciola hepatica (adult stage).</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Albendazole, a benzimidazole anthelmintic, inhibits tubulin polymerization, disrupting microtubule formation within the parasite. It also impairs glucose uptake and interferes with fumarate reductase, leading to reduced energy production, progressive depletion of energy reserves, and eventual parasite death. Albendazole exhibits wormicidal, larvicidal, and ovicidal properties. Praziquantel, a pyrazinoisoquinoline derivative from the thioxantone group, acts by disrupting calcium ion homeostasis within the parasite. It is believed to antagonize voltage-gated calcium channels, leading to uncontrolled calcium influx, sustained muscle contraction, paralysis, and eventual death of the parasite.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">The Albendazole-Praziquantel combination is indicated for both prophylaxis and treatment of infections caused by tapeworms, roundworms, and flukes, targeting both adult and larval stages effectively.</p>', '<p class=\"MsoNormal\">Each tablet contains:</p>\r\n<p class=\"MsoNormal\">Albendazole USP...........................................300 mg<br>Paraziquantel IP.............................................50 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is indicated for the effective treatment of infections caused by tapeworms, roundworms, and flukes in their adult and larval stages.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 12 days and for milk 4 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Against tapeworm and roundworm:</p>\r\n<p class=\"MsoNormal\">Dog, Cat, Sheep, Pig and Goat: 1 tablet per 30 kg body weight.</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 tablets/strip, 15 strips/box.</p>', 'valbazin-p-1744093628-oX2CYV1zgKnRXkBvLsLq5quEaSEbe3w2Wb7OT4Zq.png', NULL, 69, 'ValbazinP-Tablet', '1760526783140719211', '2025-10-15 05:28:03', '2025-10-15 05:28:03'),
(70, 42, 'Melopara Bolus', NULL, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Paracetamol (acetaminophen) exhibits potent analgesic and antipyretic properties through its selective inhibition of prostaglandin biosynthesis, primarily targeting the cyclooxygenase (COX) isoenzyme within the central nervous system (CNS). This mechanism results in effective pain relief and fever reduction with minimal peripheral anti-inflammatory activity.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Meloxicam, a non-steroidal anti-inflammatory drug (NSAID), demonstrates anti-inflammatory, analgesic, and antipyretic effects by selectively inhibiting cyclooxygenase-2 (COX-2), phospholipase A2, and prostaglandin synthesis. While meloxicam is COX-2 preferential at therapeutic doses, its selectivity diminishes at higher concentrations.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">The combination of paracetamol and meloxicam provides a synergistic therapeutic approach for managing inflammatory, analgesic, and antipyretic conditions associated with a range of veterinary disorders, including pneumonia, pleuritis, mastitis, uterine prolapse, laminitis, myositis, arthritis, otitis, and post-surgical pain. This dual-action formulation ensures comprehensive relief, supporting improved clinical outcomes and enhanced animal welfare.</p>', '<p class=\"MsoNormal\">Each bolus contains:</p>\r\n<p class=\"MsoNormal\">Paracetamol IP..................................................................1500 mg<br>Meloxicam IP.....................................................................100 mg</p>', '<p class=\"MsoNormal\"><strong>Purpose and Conditions of Use:</strong></p>\r\n<p class=\"MsoNormal\">It is used to manage inflammatory, analgesic, and antipyretic conditions associated with a range of veterinary disorders, including pneumonia, pleuritis, mastitis, uterine prolapse, laminitis, myositis, arthritis, otitis, and post-surgical pain.</p>', '<p class=\"MsoNormal\"><strong>Withdrawal time: </strong>For meat 14 days</p>\r\n<p class=\"MsoNormal\"><strong>Dosage:</strong></p>\r\n<p class=\"MsoNormal\">Cow, Buffalo: 1-2 bolus once per day.<br>Sheep, Pig and Goat: 1 per 1-2 bolus once per day.</p>\r\n<p class=\"MsoNormal\">Or, as per the recommendation of the Veterinarian.</p>\r\n<p class=\"MsoNormal\"><strong>Availability:</strong></p>\r\n<p class=\"MsoNormal\">4 bolus/strip, 12 strips/box.</p>', 'melopara-1744093730-kLyGhDJehMHNHrtBLv0mrFIsWZUW8at6OZbpa3D7.jpg', NULL, 70, 'Melopara-Bolus', '176052687277693315', '2025-10-15 05:29:32', '2025-10-15 05:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `cl_banner`
--

CREATE TABLE `cl_banner` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Learn More',
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_banner`
--

INSERT INTO `cl_banner` (`id`, `title`, `caption`, `content`, `picture`, `video`, `link_title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Human and animal compassion', NULL, 'The bond between humans and animals is a deep, unspoken connection rooted in trust, love, and mutual understanding.', NULL, NULL, NULL, 'https://youtu.be/nPZ39Z6QFLA', '1', '2021-05-21 00:48:41', '2026-09-02 10:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `cl_career`
--

CREATE TABLE `cl_career` (
  `id` bigint UNSIGNED NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `country` varchar(100) DEFAULT NULL,
  `position` varchar(150) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `cover` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_career`
--

INSERT INTO `cl_career` (`id`, `fname`, `lname`, `email`, `number`, `subject`, `message`, `country`, `position`, `cv`, `cover`, `created_at`, `updated_at`) VALUES
(3, 'Irma Hall', NULL, 'zyfonu@mailinator.com', '55', 'Animi quia sed quid', '1981', 'Colon and White Associates', '18', '1760246751-1mb.pdf', '1760246751-1mb.pdf', '2025-10-11 23:40:51', '2025-10-11 23:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `cl_country`
--

CREATE TABLE `cl_country` (
  `id` int NOT NULL,
  `country` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cl_country`
--

INSERT INTO `cl_country` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Nepal', NULL, NULL),
(3, 'Aland Islands', NULL, NULL),
(4, 'Albania', NULL, NULL),
(5, 'Algeria', NULL, NULL),
(6, 'American Samoa', NULL, NULL),
(7, 'Andorra', NULL, NULL),
(8, 'Angola', NULL, NULL),
(9, 'Anguilla', NULL, NULL),
(10, 'Antarctica', NULL, NULL),
(11, 'Antigua ', NULL, NULL),
(12, 'Argentina ', NULL, NULL),
(13, 'Armenia ', NULL, NULL),
(14, 'Aruba ', NULL, NULL),
(15, 'Australia', NULL, NULL),
(16, 'Austria ', NULL, NULL),
(17, 'Azerbaijan', NULL, NULL),
(18, 'Bahamas', NULL, NULL),
(19, 'Bahrain ', NULL, NULL),
(20, 'Bangladesh', NULL, NULL),
(21, 'Barbados', NULL, NULL),
(22, 'Barbuda ', NULL, NULL),
(23, 'Belarus ', NULL, NULL),
(24, 'Belgium ', NULL, NULL),
(25, 'Belize', NULL, NULL),
(26, 'Benin ', NULL, NULL),
(27, 'Bermuda ', NULL, NULL),
(28, 'Bhutan ', NULL, NULL),
(29, 'Bolivia', NULL, NULL),
(30, 'Bosnia ', NULL, NULL),
(31, 'Botswana', NULL, NULL),
(32, 'Bouvet Island', NULL, NULL),
(33, 'Brazil', NULL, NULL),
(34, 'British Indian Ocean Territory', NULL, NULL),
(35, 'Brunei Darussalam ', NULL, NULL),
(36, 'Bulgaria ', NULL, NULL),
(37, 'Burkina Faso ', NULL, NULL),
(38, 'Burundi ', NULL, NULL),
(39, 'Caicos Islands', NULL, NULL),
(40, 'Cambodia ', NULL, NULL),
(41, 'Cameroon ', NULL, NULL),
(42, 'Canada ', NULL, NULL),
(43, 'Cape Verde', NULL, NULL),
(44, 'Cayman Islands', NULL, NULL),
(45, 'Central African Republic ', NULL, NULL),
(46, 'Chad ', NULL, NULL),
(47, 'Chile ', NULL, NULL),
(48, 'China ', NULL, NULL),
(49, 'Christmas Island', NULL, NULL),
(50, 'Cocos (Keeling) Islands ', NULL, NULL),
(51, 'Colombia', NULL, NULL),
(52, 'Comoros', NULL, NULL),
(53, 'Republic of Congo ', NULL, NULL),
(54, 'Democratic Republic of the congo', NULL, NULL),
(55, 'Cook Islands ', NULL, NULL),
(56, 'Costa Rica ', NULL, NULL),
(57, 'Cote d\'Ivoire', NULL, NULL),
(58, 'Croatia ', NULL, NULL),
(59, 'Cuba ', NULL, NULL),
(60, 'Cyprus', NULL, NULL),
(61, 'Czech Republic', NULL, NULL),
(62, 'Denmark ', NULL, NULL),
(63, 'Djibouti ', NULL, NULL),
(64, 'Dominica ', NULL, NULL),
(65, ' Dominican Republic', NULL, NULL),
(66, 'Ecuador ', NULL, NULL),
(67, 'Egypt', NULL, NULL),
(68, 'El Salvador', NULL, NULL),
(69, 'Equatorial Guinea', NULL, NULL),
(70, 'Eritrea', NULL, NULL),
(71, 'Estonia ', NULL, NULL),
(72, 'Ethiopia ', NULL, NULL),
(73, 'Falkland Islands (Malvinas)', NULL, NULL),
(74, 'Faroe Islands  ', NULL, NULL),
(75, 'Fiji', NULL, NULL),
(76, 'Finland ', NULL, NULL),
(77, 'France ', NULL, NULL),
(78, 'French Guiana', NULL, NULL),
(79, 'French Polynesia', NULL, NULL),
(80, 'French Southern Territories ', NULL, NULL),
(81, 'Futuna Islands', NULL, NULL),
(82, 'Gabon  ', NULL, NULL),
(83, 'Gambia ', NULL, NULL),
(84, 'Georgia ', NULL, NULL),
(85, 'Germany ', NULL, NULL),
(86, 'Ghana ', NULL, NULL),
(87, 'Gibraltar ', NULL, NULL),
(88, 'Greece ', NULL, NULL),
(89, 'Greenland', NULL, NULL),
(90, 'Grenada ', NULL, NULL),
(91, 'Guadeloupe', NULL, NULL),
(92, 'Guam ', NULL, NULL),
(93, 'Guatemala', NULL, NULL),
(94, 'Guernsey', NULL, NULL),
(95, 'Guinea ', NULL, NULL),
(96, 'Guinea-Bissau', NULL, NULL),
(97, 'Guyana ', NULL, NULL),
(98, 'Haiti ', NULL, NULL),
(99, 'Heard', NULL, NULL),
(100, 'Herzegovina ', NULL, NULL),
(101, 'Holy See ', NULL, NULL),
(102, 'Honduras', NULL, NULL),
(103, 'Hong Kong', NULL, NULL),
(104, 'Hungary', NULL, NULL),
(105, 'Iceland ', NULL, NULL),
(106, 'India ', NULL, NULL),
(107, 'Indonesia ', NULL, NULL),
(108, 'Iran (Islamic Republic of)', NULL, NULL),
(109, 'Iraq', NULL, NULL),
(110, 'Ireland', NULL, NULL),
(111, 'Isle of Man', NULL, NULL),
(112, 'Israel ', NULL, NULL),
(113, 'Italy', NULL, NULL),
(114, 'Jamaica', NULL, NULL),
(115, 'Jan Mayen Islands', NULL, NULL),
(116, 'Japan ', NULL, NULL),
(117, 'Jersey', NULL, NULL),
(118, 'Jordan ', NULL, NULL),
(119, 'Kazakhstan', NULL, NULL),
(120, 'Kenya', NULL, NULL),
(121, 'Kiribati ', NULL, NULL),
(122, 'Korea ', NULL, NULL),
(123, 'Korea (Democratic)', NULL, NULL),
(124, 'Kuwait ', NULL, NULL),
(125, 'Kyrgyzstan', NULL, NULL),
(126, 'Lao ', NULL, NULL),
(127, 'Latvia', NULL, NULL),
(128, 'Lebanon ', NULL, NULL),
(129, 'Lesotho ', NULL, NULL),
(130, 'Liberia', NULL, NULL),
(131, 'Libyan Arab Jamahiriya', NULL, NULL),
(132, 'Liechtenstein', NULL, NULL),
(133, 'Lithuania ', NULL, NULL),
(134, 'Luxembourg ', NULL, NULL),
(135, 'Macao', NULL, NULL),
(136, 'Macedonia ', NULL, NULL),
(137, 'Madagascar ', NULL, NULL),
(138, 'Malawi ', NULL, NULL),
(139, 'Malaysia ', NULL, NULL),
(140, 'Maldives ', NULL, NULL),
(141, 'Mali', NULL, NULL),
(142, 'Malta ', NULL, NULL),
(143, 'Marshall Islands', NULL, NULL),
(144, 'Martinique ', NULL, NULL),
(145, 'Mauritania ', NULL, NULL),
(146, 'Mauritius', NULL, NULL),
(147, 'Mayotte', NULL, NULL),
(148, 'McDonald Islands', NULL, NULL),
(149, 'Mexico ', NULL, NULL),
(150, 'Micronesia ', NULL, NULL),
(151, 'Miquelon', NULL, NULL),
(152, 'Moldova ', NULL, NULL),
(153, 'Monaco ', NULL, NULL),
(154, 'Mongolia ', NULL, NULL),
(155, 'Montenegro ', NULL, NULL),
(156, 'Montserrat', NULL, NULL),
(157, 'Morocco ', NULL, NULL),
(158, 'Mozambique', NULL, NULL),
(159, 'Myanmar ', NULL, NULL),
(160, 'Namibia ', NULL, NULL),
(161, 'Nauru', NULL, NULL),
(162, 'United States', NULL, NULL),
(163, 'Netherlands', NULL, NULL),
(164, 'Netherlands Antilles ', NULL, NULL),
(165, 'Nevis ', NULL, NULL),
(166, 'New Caledonia', NULL, NULL),
(167, 'New Zealand ', NULL, NULL),
(168, 'Nicaragua', NULL, NULL),
(169, 'Niger ', NULL, NULL),
(170, 'Nigeria', NULL, NULL),
(171, 'Niue', NULL, NULL),
(172, 'Norfolk Island ', NULL, NULL),
(173, 'Northern Mariana Islands ', NULL, NULL),
(174, 'Norway ', NULL, NULL),
(175, 'Oman ', NULL, NULL),
(176, 'Pakistan', NULL, NULL),
(177, 'Palau ', NULL, NULL),
(178, 'Palestinian Territory Occupied', NULL, NULL),
(179, 'Panama ', NULL, NULL),
(180, 'Papua New Guinea', NULL, NULL),
(181, 'Paraguay ', NULL, NULL),
(182, 'Peru ', NULL, NULL),
(183, 'Philippines ', NULL, NULL),
(184, 'Pitcairn ', NULL, NULL),
(185, 'Poland', NULL, NULL),
(186, 'Portugal', NULL, NULL),
(187, 'Principe ', NULL, NULL),
(188, 'Puerto Rico ', NULL, NULL),
(189, 'Qatar ', NULL, NULL),
(190, 'Reunion ', NULL, NULL),
(191, 'Romania ', NULL, NULL),
(192, 'Russian Federation', NULL, NULL),
(193, 'Rwanda ', NULL, NULL),
(194, 'Saint Barthelemy', NULL, NULL),
(195, 'Saint Helena', NULL, NULL),
(196, 'Saint Kitts ', NULL, NULL),
(197, 'Saint Lucia ', NULL, NULL),
(198, 'Saint Martin (French part)', NULL, NULL),
(199, 'Saint Pierre ', NULL, NULL),
(200, 'Saint Vincent ', NULL, NULL),
(201, 'Samoa', NULL, NULL),
(202, 'San Marino ', NULL, NULL),
(203, 'Sao Tome ', NULL, NULL),
(204, 'Saudi Arabia', NULL, NULL),
(205, 'Senegal ', NULL, NULL),
(206, 'Serbia ', NULL, NULL),
(207, 'Seychelles ', NULL, NULL),
(208, 'Sierra Leone', NULL, NULL),
(209, 'Singapore', NULL, NULL),
(210, 'Slovakia', NULL, NULL),
(211, 'Slovenia ', NULL, NULL),
(212, 'Solomon Islands', NULL, NULL),
(213, 'Somalia ', NULL, NULL),
(214, 'South Africa', NULL, NULL),
(215, 'South Georgia ', NULL, NULL),
(216, 'South Sandwich Islands', NULL, NULL),
(217, 'Spain', NULL, NULL),
(218, 'Sri Lanka', NULL, NULL),
(219, 'Sudan', NULL, NULL),
(220, 'Suriname', NULL, NULL),
(221, 'Svalbard ', NULL, NULL),
(222, 'Swaziland ', NULL, NULL),
(223, 'Sweden ', NULL, NULL),
(224, 'Switzerland', NULL, NULL),
(225, 'Syrian Arab Republic', NULL, NULL),
(226, 'Taiwan ', NULL, NULL),
(227, 'Tajikistan ', NULL, NULL),
(228, 'Tanzania ', NULL, NULL),
(229, 'Thailand ', NULL, NULL),
(230, 'The Grenadines ', NULL, NULL),
(231, 'Timor-Leste', NULL, NULL),
(232, 'Tobago', NULL, NULL),
(233, 'Togo ', NULL, NULL),
(234, 'Tokelau', NULL, NULL),
(235, 'Tonga ', NULL, NULL),
(236, 'Trinidad ', NULL, NULL),
(237, 'Tunisia ', NULL, NULL),
(238, 'Turkey ', NULL, NULL),
(239, 'Turkmenistan ', NULL, NULL),
(240, 'Turks Islands ', NULL, NULL),
(241, 'Tuvalu', NULL, NULL),
(242, 'Uganda ', NULL, NULL),
(243, 'Ukraine ', NULL, NULL),
(244, 'United Arab Emirates', NULL, NULL),
(245, 'United Kingdom', NULL, NULL),
(246, 'Afghanistan', NULL, NULL),
(247, 'Uruguay ', NULL, NULL),
(248, 'US Minor Outlying Islands ', NULL, NULL),
(249, 'Uzbekistan ', NULL, NULL),
(250, 'Vanuatu ', NULL, NULL),
(251, 'Vatican City State ', NULL, NULL),
(252, 'Venezuela Vietnam ', NULL, NULL),
(253, 'Virgin Islands (British) ', NULL, NULL),
(254, 'Virgin Islands (US)', NULL, NULL),
(255, 'Wallis ', NULL, NULL),
(256, 'Western Sahara', NULL, NULL),
(257, 'Yemen', NULL, NULL),
(258, 'Zambia', NULL, NULL),
(259, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_images`
--

CREATE TABLE `cl_gallery_images` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_image_categories`
--

CREATE TABLE `cl_gallery_image_categories` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_videos`
--

CREATE TABLE `cl_gallery_videos` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_video_categories`
--

CREATE TABLE `cl_gallery_video_categories` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_gallery_video_categories`
--

INSERT INTO `cl_gallery_video_categories` (`id`, `category`, `video`, `caption`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video Category1', 'Video Category1', 'Video Category1', '1', '2018-10-09 00:17:42', '2018-10-09 00:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `cl_init`
--

CREATE TABLE `cl_init` (
  `id` int NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cl_init`
--

INSERT INTO `cl_init` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, '123', 1, '2018-12-10 04:48:12', '2018-12-11 01:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `cl_inquiry`
--

CREATE TABLE `cl_inquiry` (
  `id` bigint NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_inquiry`
--

INSERT INTO `cl_inquiry` (`id`, `full_name`, `email`, `number`, `subject`, `message`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Achyut', 'achyut.yadav991@gmail.com', '9847135836', NULL, 'i want to know if there is any vacancy for M pharm? currently i am employed in curex pharmaceuticals.', 'Yadav', '2026-05-05 11:08:32', '2026-05-05 11:08:32'),
(2, 'LfhGybqPhRmvSPLKA', 'aw.ev.ik.epip40@gmail.com', '7055607240', NULL, 'RDTEOnRSaMEgnrLWut', 'xLHpgDORQuyUppxzpaVPBqF', '2026-05-11 12:57:30', '2026-05-11 12:57:30'),
(3, 'PHNxWFaXeKQdJisWbLvik', 'uq.ama.k.u.ri.3.0@gmail.com', '7145228945', NULL, 'PfRrIKOFJZMSNKjpf', 'ZRGMyJVkJcwbMtpLzjNvLFI', '2026-05-12 10:14:02', '2026-05-12 10:14:02'),
(4, 'yfiTvkPFNDOlLhNpYhYoJFCd', 'aze.xuy.o.t.u.p.e.00.0@gmail.com', '4243169741', NULL, 'jQOzTfaIcfVjVeIAhcsp', 'QqqpNUeWdtETAsFDBjqT', '2026-05-14 12:48:30', '2026-05-14 12:48:30'),
(5, 'nVykuACOQBeRAvdSlY', 'hi.xatohav.40@gmail.com', '6200387524', NULL, 'hUjrblsqcHsQpzOBg', 'YtQjOLNexrEbsvPgWMIjfwu', '2026-05-17 10:50:28', '2026-05-17 10:50:28'),
(6, 'dMatLZwQlhMCkjBtIRvpipkf', 'ah.aji.pabiw8.1.1@gmail.com', '3477406348', NULL, 'nUfQhjZPxiEmlfRyqIuCEr', 'TylxEJvhTcwJVhbfXxWe', '2026-05-27 12:49:11', '2026-05-27 12:49:11'),
(7, 'xrkFfEBRvCoVnbjJBQEmM', 'xa.lu.fu.so.yu0.1@gmail.com', '3937570129', NULL, 'vnPWmpBmQzOxHRcxjRAqa', 'OYlwrXHoGfJpDNpQAiZ', '2026-07-02 15:14:08', '2026-07-02 15:14:08'),
(8, 'Alisa', 'halecicin@mailinator.com', '43', NULL, 'Molestiae omnis nece', 'Langley', '2026-07-03 10:54:21', '2026-07-03 10:54:21'),
(9, 'JosephPhary', 'fvzvzwxqkiimepoezl@yandeex.com', '83479459221', NULL, 'Tomorrow morning may reveal a fresh way to earn. \r\n \r\n→   [url=https://u.to/kCyUIg]Bitcoin trading signals[/url] \r\n \r\n--->   https://u.to/iiyUIg', 'JosephPhary', '2026-07-18 23:38:22', '2026-07-18 23:38:22'),
(10, 'lDPNLpCphCTLWtGTpXbdW', 'uc.u.noqo.s28@gmail.com', '5442490139', NULL, 'qCDTrKvjHPjZDqAbJkUslN', 'HHNrzxywtHGlweKYwHMaYyG', '2026-07-19 15:37:17', '2026-07-19 15:37:17'),
(11, 'Dcrfwhck', 'nutibe.yo.ci.32@gmail.com', '8067613388', NULL, 'ZwgFSPNkYQsRqAxX', 'Vrstddv', '2026-08-06 07:59:51', '2026-08-06 07:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `cl_log`
--

CREATE TABLE `cl_log` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_banner`
--

CREATE TABLE `cl_multiple_banner` (
  `id` int UNSIGNED NOT NULL,
  `banner_id` int DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_document`
--

CREATE TABLE `cl_multiple_document` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL DEFAULT '0',
  `key_string` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_image`
--

CREATE TABLE `cl_multiple_image` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_multiple_image`
--

INSERT INTO `cl_multiple_image` (`id`, `post_id`, `title`, `file_name`, `created_at`, `updated_at`) VALUES
(2, 10, 'cons22', 'team-ESJFkS61trROCQCoU0zve0k5mpDRMi6GUBisu3NJ.jpeg', '2025-04-15 02:15:34', '2025-04-15 02:21:24'),
(3, 20, NULL, 'client-1-7sAP4Wpm9RykgMyQUVYiE0CJTDeCuvezszIH07Dc.png', '2025-04-17 23:14:51', '2025-04-17 23:14:51'),
(4, 20, NULL, 'client-2-rsVtuComxVQ9ENdBo3EURabRySJDA6mTGiHC8hN0.png', '2025-04-17 23:15:35', '2025-04-17 23:15:35'),
(5, 20, NULL, 'client-4-yFfHF6yQ4OppWwQfjRJ8vLBiERLkg1DT9rVefxeD.png', '2025-04-17 23:15:42', '2025-04-17 23:15:42'),
(6, 20, NULL, 'client-5-SkuH9wkpy0iZpsrs2noqKjXw6qfDqhj2PJ67mVYy.png', '2025-04-17 23:15:48', '2025-04-17 23:15:48'),
(7, 20, NULL, 'client-6-2qU1Dr1VqPOFWsojqDbXPV5Yyt8HG7IQ8wT9GgcG.png', '2025-04-17 23:15:56', '2025-04-17 23:15:56'),
(8, 20, NULL, 'client-4-lPpqIFcWZWmEJZ9YUOz7zPvreTIOhrnA6oZFXHgI.png', '2025-04-17 23:42:42', '2025-04-17 23:42:42'),
(9, 28, 'Poultry', 'chick-fAMOWGGS4bfW5iwKsImyLd6B2dfMiyF3mlGuZpqW.jpg', '2025-10-14 00:09:46', '2025-10-14 00:09:46'),
(10, 28, 'Equines', 'goda-CwUGm75WciO1Yz0bAF96WCWk4Fhg4WzSLzZ21tKU.jpg', '2025-10-14 00:09:59', '2025-10-14 00:09:59'),
(11, 28, 'dairy cattle', 'cow-e81nZnMWKXSTwPRYgoSmJpchFksqgOj5BbfAbq67.jpg', '2025-10-14 00:10:10', '2025-10-14 00:10:10'),
(12, 28, 'Swines', 'pig-OjOyrJqkNvhkHpgSc3l33I6AnfBFDr9mrdcwJDWE.jpg', '2025-10-14 00:10:26', '2025-10-14 00:10:26'),
(13, 28, 'Dairy', 'cow-UMQrD0l0BNTSyPkeJJJuCBXIN5waBts4iflW81Uw.jpg', '2025-10-14 00:29:27', '2025-10-14 00:29:27'),
(14, 28, 'Horse', 'goda-hBufQnYU3pwSkdF92kf3WmWUvAWH0RPRt2Zh9uF3.jpg', '2025-10-14 00:30:07', '2025-10-14 00:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_video`
--

CREATE TABLE `cl_multiple_video` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_posts`
--

CREATE TABLE `cl_posts` (
  `id` int UNSIGNED NOT NULL,
  `uid` int DEFAULT '0',
  `visiter` int DEFAULT '0',
  `post_date` datetime DEFAULT NULL,
  `publish_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_author` int NOT NULL DEFAULT '1',
  `template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_child` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `post_type` int DEFAULT '0',
  `post_category` int DEFAULT '0',
  `post_parent` int DEFAULT '0',
  `post_order` int DEFAULT '0',
  `home_order` int DEFAULT '0',
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_pdf` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_video` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `associated_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` tinyint(1) DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `global_post` tinyint DEFAULT '0',
  `published` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_active` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_draft` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_trashed` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `show_in_home` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_password_protected` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `comment` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` enum('en','np') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_posts`
--

INSERT INTO `cl_posts` (`id`, `uid`, `visiter`, `post_date`, `publish_date`, `post_author`, `template`, `template_child`, `post_title`, `sub_title`, `post_content`, `post_excerpt`, `uri`, `page_key`, `post_type`, `post_category`, `post_parent`, `post_order`, `home_order`, `banner`, `page_thumbnail`, `post_pdf`, `thumbnail`, `icon`, `page_video`, `meta_keyword`, `meta_description`, `associated_title`, `external_link`, `price`, `post_tags`, `project_status`, `status`, `global_post`, `published`, `is_active`, `is_draft`, `is_trashed`, `show_in_home`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(1, NULL, 6881, '2025-10-12 07:29:12', NULL, 1, 'template-product', NULL, 'Feed Supplement', NULL, '<p>We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combined. Our range of swine feed additives and care products are made with herbal ingredients harnessed by advanced medical technology.We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combinedy.</p>', NULL, 'feed-supplement', '162151995619458006', 2, NULL, 0, 1, NULL, 'pdtt-FrHvKMxiAEMOTBkrSKVYCyhiP9Scm6WqZVx9WxHG.jpg', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2021-05-20 08:27:36', '2026-10-07 07:53:55'),
(2, NULL, 7308, '2025-10-12 10:44:36', NULL, 1, 'template-product', NULL, 'Allopathic', NULL, '<p>Our range of swine feed additives and care products are made with herbal ingredients harnessed by advanced medical technology.We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combinedy.</p>', NULL, 'allopathic', '1621520533431688350', 2, NULL, 0, 2, NULL, 'pdtt-rJz9wiBGiQ8MDO8wgipiOdamczQ6TqPaCrPhkayf.jpg', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2021-05-20 08:37:13', '2026-10-07 06:02:35'),
(6, NULL, 0, '2026-07-06 08:54:00', NULL, 1, 'single', NULL, 'What Do We Do?', NULL, '<p>At Kantipur Pharmaceuticals Lab, we don’t just manufacture products—we build trust through quality, innovation, and responsibility.</p>\r\n<p><strong>Uncompromising Quality Standards</strong><br>We follow globally aligned Quality Assurance systems, reinforced by regular internal and third-party external audits. Our commitment to quality, safety, and reliability ensures that every product meets stringent standards before reaching the market.</p>\r\n<p><strong>Regulatory Excellence &amp; Proven Compliance</strong><br>From GLP audits to final marketing authorization approvals, our processes are consistently validated by national regulatory bodies. This demonstrates our credibility and readiness to meet both domestic and international benchmarks.</p>\r\n<p><strong>Strong Technical Expertise</strong><br>Our experienced and dedicated technical team drives continuous improvement across all operations—from formulation to final delivery—ensuring precision, consistency, and innovation in every product.</p>\r\n<p><strong>Diverse &amp; Specialized Product Portfolio</strong><br>With a wide range of allopathic and feed division products, we cater to varied veterinary and livestock needs, offering effective and reliable healthcare solutions under one roof.</p>\r\n<p><strong>Customer-Centric Approach</strong><br>We prioritize understanding customer needs and delivering products on time, without compromising quality. Our focus is on building long-term relationships through trust and performance.</p>\r\n<p><strong>Continuous Improvement Culture</strong><br>We believe growth comes from learning. Through ongoing training, seminars, audits, and affiliations, we constantly refine our processes and systems to stay ahead in the industry.</p>\r\n<p><strong>Ethical &amp; Respectful Work Environment</strong><br>We foster a culture of respect, collaboration, and learning—because we know that empowered people create exceptional outcomes.</p>\r\n<p><em>In essence, quality is not just a standard for us—it is the foundation of everything we do.</em></p>', NULL, 'what-do-we-do', '1744347242959437692', 1, NULL, 0, 3, NULL, 'wdww-fkkiAkyaZKCmNvROcxzMYKQp7yPbf4ubLefokD34.webp', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-10 23:09:02', '2026-07-06 12:55:20'),
(7, NULL, 0, '2026-06-26 09:14:16', NULL, 1, 'single', NULL, 'Our Product Portfolio', NULL, '<p class=\"uk-margin-remove\">Kantipur Pharmaceuticals Lab Limited offers veterinary solutions of \"Gold Standard\" &amp; \"Need Based innovations\".</p>\r\n<p class=\"uk-margin-remove\">We offer comprehensive, innovative, high quality and safe feed supplements, feed nutrition premixes, advanced and fine-tuned Phytochemical Products along with the Allopathic Medicines for Dairy Cattle, Equines, Poultry, Swine &amp; Pets for Enhanced Productivity and Better Healthcare.</p>', 'Kantipur Pharmaceuticals Lab Limited offers veterinary solutions of \"Gold Standard\" & \"Need Based innovations\".', 'our-product-portfolio', '1744347394160352190', 1, NULL, 0, 4, NULL, 'poultry-cropped-gWr38quEz2eJnIb7LQi0cgrsUD9ubLKHbvIqlLwf.png', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-10 23:11:34', '2026-06-26 13:46:33'),
(8, NULL, 994, '2026-07-09 06:32:23', NULL, 1, 'template-blog', NULL, 'Technical Collaboration and Signing Ceremony Between KPL & KBNP.INC ( कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड र केबीएनपी कोरियाबीच सम्झौता)', NULL, '<p><span style=\"color: #000000;\">नेपालको अग्रणी पशु औषधि उत्पादक कम्पनी, कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड (केपीएल) र दक्षिण कोरियाको प्रतिष्ठित बहुराष्ट्रिय कम्पनी के.बी.एन.पी कोरियाबीच नेपालमा पशु औषधि उत्पादनका लागि एक महत्वपूर्ण प्राविधिक सम्झौता (Technical Collaboration) मा हस्ताक्षर भएको छ । </span></p>\r\n<p><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\">नयाँ बानेश्वरस्थित होटल एभरेष्टमा आयोजित कार्यक्रममा औषधि व्यवस्था विभागका महानिर्देशक नारायण प्रसाद ढकाल र पशु सेवा विभागका स. सचिब डा सलिना मानन्धर को उपस्थितिमा कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडका तर्फबाट अध्यक्ष श्री हेमराज बडाल तथा केबिएनपी का तर्फबाट श्री हानी स्वङगबीच सम्झौता पत्रमा हस्ताक्षर भएको छ ।  </font></span></p>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\">यस ऐतिहासिक सम्झौतासँगै कान्तिपुर फर्मास्युटिकल्सले के.बी.एन.पी कोरियाको अत्याधुनिक प्रविधि र विशेषज्ञता प्रयोग गरी नेपालमै उच्च गुणस्तरको पशु औषधि उत्पादन गर्नेछ । यो सहकार्यले नेपाली पशुपालन क्षेत्रको विकासमा महत्वपूर्ण योगदान पुर्याउने, मुख्यतया आयात प्रतिस्थापन गर्ने र नेपाली किसानहरूलाई सुलभ मूल्यमा गुणस्तरीय औषधि उपलब्ध गराउने अपेक्षा गरिएको छ ।  </font></span></div>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\"><br>कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडलाई केबिएनपिले लामो समयदेखि अनुसन्धानात्मक (Research and Development) कार्यहरूमा सहयोग गर्दै आइरहेको थियो । केबिएनपि कोरियाका दक्ष प्रबिधिकहरुबाट सन् २०२५ जनवरी ८ मा केपिएल को क्वालिटी अडिट सफल भएको थियो । सो अडिटको आधारमा कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडसंग केबिएनपीले सहकार्य गरेको कम्पनीका प्राविधिक प्रमुख विवेक सिंह महतले जानकारी दिनुभयो । </font></span></div>\r\n<div>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\">कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडका अध्यक्ष हेमराज बडालले केबीएनपी कोरिया जस्तो बहुराष्ट्रिय कम्पनीसँगको यो सहकार्य हाम्रो लागि गौरवको विषय उल्लेख गर्दै यसले नेपालमै अन्तर्राष्ट्रिय स्तरको पशु औषधि उत्पादन गर्ने हाम्रो क्षमतालाई अभिवृद्धि गर्नेछ र नेपाली पशुधनको स्वास्थ्य सुधारमा ठोस टेवा पुग्ने बताउनुभयो ।  </font></span></div>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\">“यो प्राविधिक सहकार्यले नेपालको पशु औषधि उत्पादन क्षेत्रमा नयाँ आयाम थप्ने र देशलाई यस क्षेत्रमा आत्मनिर्भर गराई निर्यात तर्फ उन्मुख गराउन मद्दत पुग्ने विश्वास लिइएका छौ ।” </font></span></div>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\">त्यसैगरी, केबीएनपी कोरियाका हानी स्वङगले भन्नुभयो “कान्तिपुर फर्मास्युटिकल्ससँग सहकार्य गर्न  हामी उत्साहित र खुसी छौं। नेपालको पशु औषधि बजारमा प्रचुर सम्भावना देखेका छौं र हाम्रो प्राविधिक ज्ञान र कान्तिपुर फर्मास्युटिकल्स ल्याबको गुणस्तरिय उत्पादन प्लान्ट तथा बजार व्यबस्थापन विशेषज्ञताको संयोजनले यहाँ उत्कृष्ट नतिजा दिनेमा विश्वस्त छौं ।” </font></span></div>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\">काभ्रेस्थित पाँचखाल नगरपालिका–७ संचालनमा रहेको कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड नेपालको एक अग्रणी पशु औषधि तथा पशु आहार पूरक उत्पादक कम्पनी हो । हालसम्म यस कम्पनिमार्फत बिभिन्न २६ वटा आहारपुरक पदार्थहरुको विभिन्न नाम तथा ब्रान्डहरुको Supplements हरु बजारमा बिक्री बितरण भई रहेको छ तथा एलोपेथिक औषधि तर्फ ७० वटा बिभिन्न औषधिको बजारीकरण अनुज्ञापत्रहरु तथा ४० वटा औषधिको उत्पादन अनुज्ञा पत्रहरु नियमक औषधि व्यबस्था विभाग मार्फत प्राप्त भइ सकेको छ ।  </font></span></div>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\"><br>गुणस्तर, नवीनता र ग्राहक सन्तुष्टिलाई मुल मन्त्र मान्दै कम्पनीले नेपाली पशुपालन क्षेत्रको वृद्धि र आधुनिकीकरणका लागि निरन्तर काम गरिरहेको छ ।  कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड हालै सर्वसाधारणका लागि प्राथमिक शेयर निष्कासन (आईपीओ) जारी गर्ने घोषणा पनि गरिसकेको छ । स्थापनाकालदेखि नै पशु स्वास्थ्य सेवामा समर्पित  कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडले गुणस्तरिय उत्पादन मार्फत नेपाली बजारमा आफ्नो छुट्टै पहिचान बनाएको छ । हाल कम्पनीको दुईवटा अत्याधुनिक उत्पादन प्लान्ट सञ्चालनमा रहेको छः जसमा पशु औषधिको व्यावसायिक उत्पादन प्लान्ट (सन् २०२४ अगस्टदेखि व्यावसायिक उत्पादन तथा बितरण सुरुभएको हो भने पशु आहार पूरक (एनिमल फिड सप्लिमेन्ट) उत्पादन प्लान्ट (सन् २०२१ नोभेम्बरदेखि व्यावसायिक उत्पादन गर्दै आएको छ ।  </font></span></div>\r\n<div><span style=\"color: #000000;\"><font color=\"#000000\" face=\"Times New Roman, serif\"><br>केबिएनपी दक्षिण कोरियाको एक प्रतिष्ठित वहुराष्ट्रिय पशु स्वास्थ्य उत्पादन कम्पनी हो ।  जसले भेटेरिनरी खोप, औषधि, पोषण पूरक र कीटाणुनाशकहरू उत्पादन गर्छ । सन् १९८८ मा स्थापना भएको यो कम्पनीले Bayer Korea बाट पशु खोप इकाई अधिग्रहण गरी अत्याधुनिक जैविक उत्पादन सुविधा स्थापना गरेको छ । केबिएनपीले पाकिस्तान, इन्डोनेसिया, भारत, भियतनाम, अमेरिका लगायत ३९ देशहरूमा आफ्ना उत्पादनहरू निर्यात गर्दै विश्वव्यापी बजार उपस्थिति बनाएको छ । कम्पनीले अत्याधुनिक प्रविधिको प्रयोग गरी उच्च गुणस्तरका खोप विकास गर्छ, जुन पशु स्वास्थ्य व्यवस्थापनमा उपयोगी छन् । साथै, यसले वातावरणमैत्री दृष्टिकोण अपनाउँदै ग्राहक, कर्मचारी र शेयरधारकहरूको समुन्नत विकासमा लगानी केन्द्रीत गरेको छ ।</font></span></div>\r\n<div> </div>\r\n</div>', 'नेपालको अग्रणी पशु औषधि उत्पादक कम्पनी, कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड (केपीएल) र दक्षिण कोरियाको प्रतिष्ठित बहुराष्ट्रिय कम्पनी के.बी.एन.पी कोरियाबीच नेपालमा पशु औषधि उत्पादनका लागि एक महत्वपूर्ण प्राविधिक सम्झौता (Technical Collaboration) मा हस्ताक्षर भएको छ ।', 'technical-collaboration-and-signing-ceremony-between-kpl-kbnpinc', '1744350486245165655', 3, NULL, 0, 8, NULL, NULL, 'dsc-3230-1747375706-1749326659-1-81ofQU4Pv5EHjexxPgGuN6umQWMOk97ZiceXMsFi.jpg', NULL, '', '', NULL, NULL, NULL, 'Admin', NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-11 00:03:06', '2026-10-07 04:34:18'),
(16, NULL, 0, '2025-10-09 07:42:38', NULL, 1, 'single', NULL, 'Future-Forward Vision', NULL, '<p class=\"uk-margin-remove\">We are on a strategic path toward achieving internationally recognized certifications:</p>\r\n<ol>\r\n<li>ISO 9001 – Quality Management System (QMS)</li>\r\n<li>ISO 14001 – Environmental Management System (EMS)</li>\r\n<li>FAMI-QS – Feed Additive and Pre-Mixture Ingredients Quality System</li>\r\n<li>WHO-GMP – Allopathic Division Certification</li>\r\n</ol>\r\n<p class=\"uk-margin-remove\">These milestones will further strengthen our commitment to global standards and sustainable growth.</p>', NULL, 'futureforward-vision', '1744786999788262686', 1, NULL, 0, 2, NULL, 'ffn-D44aHikc6Vy2RSPuVnvyZ5doKQGMxardEqbvAQwZ.jpg', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-16 01:18:19', '2025-10-09 01:58:32'),
(17, NULL, 0, '2025-10-09 07:06:15', NULL, 1, 'single', NULL, 'About Associate Posts', NULL, NULL, NULL, 'about-associate-posts', '1744787025840814990', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-04-16 01:18:45', '2025-10-09 01:23:06'),
(21, NULL, 0, '2025-10-14 06:19:17', NULL, 1, 'single', NULL, 'Our Commitment', NULL, '<p>With a heartfelt promise of “Caring and Curing Animal Health with Passion and Quality”, we continue to serve farmers, integrators, and veterinarians across Nepal—ensuring healthier animals and a stronger agricultural future.</p>\r\n<h4 class=\"uk-margin-remove-bottom uk-margin-small-top uk-text-bold uk-text-primary\">Our Core Beliefs</h4>\r\n<p>We at KPL are united by a deep commitment to caring—for animals, for our customers, and for the communities we serve. These values guide our everyday actions and shape the future we are building.</p>', NULL, 'our-commitment', '175999430922192713', 1, NULL, 0, 19, NULL, 'cmt-H0na33EMLjnnAbEH5TI33ZZ05cJEEGE0Geth6BPi.jpg', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 01:33:29', '2025-10-14 00:34:23'),
(22, NULL, 0, '2026-06-26 07:38:49', NULL, 1, 'single', NULL, 'Our Mission', NULL, '<p>Our mission is to support the growth and development of the animal and poultry industries in Nepal, aiming to be a reliable and trusted partner for our customers and animal healthcare providers.</p>', 'Our mission is to support the growth and development of the animal and poultry industries in Nepal', 'our-mission', '1760072223583814561', 9, NULL, 0, 20, NULL, 'msnn-ovyePJEVyC7n2KkGNqFuszVdT40jfVG8SsOcHzkW.jpg', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 23:12:03', '2026-06-26 11:40:31'),
(23, NULL, 0, '2026-06-26 07:41:25', NULL, 1, 'single', NULL, 'OUR VISION', NULL, '<p>We aspire to be acknowledged as an industry leader, both nationally and internationally, with the goal of contributing to the overall advancement of the animal and poultry sectors in Nepal through our dedicated products and services.</p>', 'We aspire to be acknowledged as an industry leader, both nationally and internationally,', 'our-vision', '1760072309916762979', 9, NULL, 0, 22, NULL, 'vsn-eISe3jllCcWeeLk3EyfMv3Zv3Yw6Ut0F0JCdxwCc.jpg', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 23:13:29', '2026-06-26 11:43:20'),
(24, NULL, 0, '2025-10-14 10:59:53', NULL, 1, 'single', NULL, 'OUR GOALS', NULL, '<p>Our goal is to become the leading veterinary industry in Nepal in the field of Animal Feed Supplements and Quality Medicines and to expand our distribution network to reach more customers across the Globe.</p>', 'To become the leading veterinary industry in Nepal in the field of Animal Feed Supplements.', 'our-goals', '1760072337494537759', 9, NULL, 0, 21, NULL, 'gl-HmK11QDKVO8fnlkrTGbQVji7fond0sIkEjGtQmze.jpg', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-09 23:13:57', '2025-10-14 05:15:06'),
(28, NULL, 0, '2025-10-14 06:19:34', NULL, 1, 'single', NULL, 'Commitment', NULL, NULL, 'The Commitment We Made For', 'commitment', '1760420709633190321', 10, NULL, 0, 25, NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-14 00:00:09', '2025-10-14 00:34:39'),
(29, 0, 0, '2025-10-14 05:49:39', NULL, 1, 'single', NULL, 'R&D and Quality Strength', NULL, NULL, 'This Defines Our Quality of Research & Development', 'rd-and-quality-strength', '1760421018477370523', 10, 0, 0, 26, 0, 'career-V2Z7COGNpO1WMPGd18dx7u3rBSMsIeW7CRPo32nw.jpg', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-14 00:05:18', '2025-10-14 00:05:18'),
(30, NULL, 0, '2025-10-14 05:52:08', NULL, 1, 'single', NULL, 'Our strength', NULL, '<p>KPL and Team are inspired by the purpose: “Caring and Curing Animal Health with passion and Quality”.This care is essential to enhance the quality of life for animals while also safeguarding human health by preventing the spread of zoonotic diseases and cordially believe this work is core to our responsibilities as team and a business.Our goal is to become the leading veterinary industry in Nepal in the field of Animal Feed Supplements and Quality Medicines and to expand our distribution network to reach more customers across the Globe.We aspire to be acknowledged as an industry leader, both nationally and internationally, with the goal of contributing to the overall advancement of the animal and poultry sectors in Nepal through our dedicated products and services.We aspire to be acknowledged as an industry leader, both nationally and internationallys.</p>', 'Quality Assurance / Quality Management', 'our-strength', '1760421109565184889', 10, NULL, 0, 27, NULL, 'pet-5RHu17BAvDTisJ8dyKhzNIxBFsvF0NOB503mcc17.jpg', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-14 00:06:49', '2025-10-14 00:07:14'),
(31, 0, 0, '2025-10-14 05:52:29', NULL, 1, 'single', NULL, 'Teams', NULL, '<h2 class=\"f-20 uk-margin-remove uk-text-white\">a visionary team empowering animal health in nepal</h2>\r\n<p class=\"uk-margin-small-top uk-text-white\">KPL is driven by a singular purpose: “Caring and Curing Animal Health with passion and Quality”. At KPL, we are more than just a leader in veterinary pharmaceuticals—we are a dedicated partner in the health and well-being of animals. KPL and Team aim to provide innovative, high-quality solutions that support the care of pets, livestock, and wildlife, ensuring they live healthier, happier lives. With a commitment to sustainability,</p>', 'Our Visionary Team', 'teams', '1760421180665875454', 10, 0, 0, 28, 0, 'team-A1cxsPahqGECs9y7EvakPprd50XDCknuCprlgJtO.png', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-14 00:08:00', '2025-10-14 00:08:00'),
(32, NULL, 849, '2025-10-14 11:56:53', NULL, 1, 'single', NULL, 'Kantipur Pharmaceuticals Lab is going to issue an IPO', NULL, '<p style=\"text-align: justify;\"><strong>Kantipur Pharmaceuticals Lab</strong> has decided to issue ordinary shares (IPO) to the public. To proceed with the share issuance process, the company has appointed <strong>Muktinath Capital</strong> as the Issue Manager.</p>\r\n<p style=\"text-align: justify;\">In a program held at the company’s corporate office in Bal Kumari, Lalitpur, Nawraj Paudyal, MD of Kantipur Pharmaceuticals Lab, and Kabindra Dhwaj Joshi, CEO of Muktinath Capital, signed the agreement. The company is planning to sell 14.86% of its issued capital, equivalent to <strong>1.1 million ordinary shares</strong>, to the public.</p>\r\n<p style=\"text-align: justify;\">Established in 2018, this company has obtained a production and marketing registration certificate from the Department of Drug Administration and has been engaged in the research, production, and distribution of veterinary medicines and nutritional supplements. The company is in the process of being certified with GMP, FAMIQS, and other similar certifications. Currently, the company has received approval to produce 61 different types of medicines from the Department of Drug Administration, out of which 13 are already being sold and distributed in the Nepali market with necessary sales and distribution certificates. The company is in the process of obtaining distribution certificates for the remaining medicines.</p>\r\n<p style=\"text-align: justify;\">In addition, the company is producing and distributing 21 other nutritional supplements. With the primary objective of contributing to animal health in Nepal and international markets, this company is the first in the veterinary pharmaceutical industry to issue shares to the general public.</p>', 'Kantipur Pharmaceuticals Lab has decided to issue ordinary shares (IPO) to the public. To proceed with the share issuance process, the company has appointed Muktinath Capital as the Issue Manager.', 'kantipur-pharmaceuticals-lab-is-going-to-issue-an-ipo', '176044240628918162', 3, NULL, 0, 29, NULL, '', '458291018-8281386525248078-2824566578117814911-n-original-043228-qMFr6hwzjulqDSD826qJefXeXOnVzUnYTAu1hed3.jpg', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-14 06:01:46', '2026-10-07 04:46:47'),
(33, NULL, 1006, '2025-10-15 08:27:30', NULL, 1, 'template-product', NULL, 'Nutritional Suppliment', NULL, NULL, NULL, 'nutritional-suppliment', '1760516188628824212', 2, NULL, 1, 30, NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:31:28', '2026-10-07 08:12:55'),
(34, NULL, 452, '2025-10-15 08:29:09', NULL, 1, 'template-product', NULL, 'Immuno-Supportive Supplement', NULL, NULL, NULL, 'immunosupportive-supplement', '1760516214562343331', 2, NULL, 1, 31, NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:31:54', '2026-10-06 03:00:07'),
(35, 0, 501, '2025-10-15 08:29:48', NULL, 1, 'template-product', NULL, 'Calming and Stress Relief Supplement', NULL, NULL, NULL, 'calming-and-stress-relief-supplement', '1760517011339239670', 2, 0, 1, 32, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:45:11', '2026-10-06 23:29:36'),
(36, 0, 504, '2025-10-15 08:30:17', NULL, 1, 'template-product', NULL, 'Liver and Detoxification Supplement', NULL, NULL, NULL, 'liver-and-detoxification-supplement', '1760517036871054522', 2, 0, 1, 33, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:45:36', '2026-10-07 07:56:04'),
(37, 0, 483, '2025-10-15 08:30:43', NULL, 1, 'template-product', NULL, 'Weight Management and Metabolic Support', NULL, NULL, NULL, 'weight-management-and-metabolic-support', '1760517070125931797', 2, 0, 1, 34, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:46:10', '2026-10-07 08:42:54'),
(38, 0, 454, '2025-10-15 08:31:14', NULL, 1, 'template-product', NULL, 'Reproductive Health Supplement', NULL, NULL, NULL, 'reproductive-health-supplement', '1760517092390986104', 2, 0, 1, 35, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:46:32', '2026-10-07 06:07:55'),
(39, 0, 461, '2025-10-15 08:31:37', NULL, 1, 'template-product', NULL, 'Antiseptic / Disinfecrant', NULL, NULL, NULL, 'antiseptic-disinfecrant', '1760517115615026774', 2, 0, 1, 36, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:46:55', '2026-10-06 12:59:35'),
(40, 0, 1106, '2025-10-15 08:32:27', NULL, 1, 'template-product', NULL, 'Antibiotic', NULL, NULL, NULL, 'antibiotic', '176051718095897987', 2, 0, 2, 37, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:48:00', '2026-10-07 05:48:19'),
(41, 0, 1090, '2025-10-15 08:33:10', NULL, 1, 'template-product', NULL, 'Anthelmintic', NULL, NULL, NULL, 'anthelmintic', '1760517203934973511', 2, 0, 2, 38, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:48:23', '2026-10-06 22:41:12'),
(42, 0, 451, '2025-10-15 08:33:28', NULL, 1, 'template-product', NULL, 'Analgesic and Antipyretic', NULL, NULL, NULL, 'analgesic-and-antipyretic', '1760517231358912639', 2, 0, 2, 39, 0, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2025-10-15 02:48:51', '2026-10-07 07:53:55'),
(45, NULL, 355, '2026-07-08 05:01:47', NULL, 1, 'single', NULL, 'कान्तिपुर फार्मास्युटिकल्स ल्याब लिमिटेडको प्रथम वार्षिक साधारण सभा सम्बन्धी सूचना', NULL, '<p class=\"PDq2pG_selectionAnchorContainer\" data-start=\"88\" data-end=\"299\">ललितपुरस्थित कान्तिपुर फार्मास्युटिकल्स ल्याब लिमिटेडले आफ्नो प्रथम वार्षिक साधारण सभा आयोजना गर्ने भएको छ। कम्पनीको सञ्चालक समितिको निर्णयअनुसार उक्त सभा आगामी पौष १ गते सम्पन्न हुने जानकारी गराइएको छ।</p>\r\n<p data-start=\"301\" data-end=\"464\">सभा दिउँसो २:३० बजे धुलिखेलस्थित होटल सारथीमा आयोजना गरिनेछ। उक्त सभामा कम्पनीका शेयरधनीहरुलाई उपस्थित भई महत्वपूर्ण निर्णय प्रक्रियामा सहभागी हुन अनुरोध गरिएको छ।</p>\r\n<p data-start=\"466\" data-end=\"685\">सभामा प्रस्तुत गरिने एजेण्डाअन्तर्गत आर्थिक वर्ष २०८०/८१ को वार्षिक प्रतिवेदन पारित गर्ने, लेखापरीक्षक नियुक्ति गर्ने तथा पारिश्रमिक निर्धारण गर्ने, सञ्चालक समितिको निर्वाचन गर्ने लगायतका सामान्य प्रस्तावहरु समावेश छन्।</p>\r\n<p data-start=\"687\" data-end=\"919\">त्यसैगरी, विशेष प्रस्तावअन्तर्गत कम्पनीको प्रबन्धपत्र तथा नियमावलीमा आवश्यक संशोधन गर्ने, सञ्चालक समितिलाई आवश्यक अधिकार प्रत्यायोजन गर्ने, आर्थिक वर्ष २०८०/८१ का लागि खर्च अनुमोदन गर्ने लगायतका विषयहरुमा पनि छलफल तथा निर्णय गरिनेछ।</p>\r\n<p data-start=\"921\" data-end=\"1033\" data-is-last-node=\"\" data-is-only-node=\"\">कम्पनीले सम्पूर्ण शेयरधनीहरुलाई सभामा उपस्थित भई आफ्नो महत्वपूर्ण सुझाव र सहभागिता जनाउन हार्दिक अनुरोध गरेको छ।</p>', 'ललितपुरस्थित कान्तिपुर फार्मास्युटिकल्स ल्याब लिमिटेडले आफ्नो प्रथम वार्षिक साधारण सभा आयोजना गर्ने भएको छ। कम्पनीको सञ्चालक समितिको निर्णयअनुसार उक्त सभा आगामी असोज १५ गते शनिबार सम्पन्न हुने जानकारी गराइएको छ।', '', '1783447816501903139', 3, NULL, 0, 40, NULL, 'kpl-1st-general-meeting-tdYpSOD36QIWEwWpwgGxXpsKPMt5L3sofaBEwdBd.png', 'kpl-1st-general-meeting-d2sX1CduuyooQ6lWTzKjGy2wn50f5c3hSljPArdB.png', NULL, '', '', NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-07 22:10:16', '2026-10-06 16:43:31'),
(46, 0, 359, '2026-07-07 06:38:40', NULL, 1, 'single', NULL, 'कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडको प्रथम वार्षिक साधारणसभाले चुन्यो पाँच सञ्चालक सदस्य', NULL, '<p>कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडको प्रथम वार्षिक साधारणसभा सम्पन्न भएको छ। कम्पनीका सेयरधनीहरूको प्रथम वार्षिक साधारणसभा अध्यक्ष हेमराज बडालको अध्यक्षतामा धुलिखेलमा सम्पन्न भएको हो।</p>\r\n<p>सभाले लेखापरीक्षकको प्रतिवेदनसहितको २०८१ असार मसान्तको वासलात र सोही मितिमा समाप्त आव २०८०/०८१ को नाफा नोक्सान हिसाब तथा नगद प्रवाह विवरण र सम्बन्धित अनुसूचीहरू छलफल गरी पारित गरेको कम्पनीले जनाएको छ।</p>\r\n<p>सञ्चालक समिति सदस्यहरूका रूपमा सुना सुवेदी, नवराज पौड्याल, अनिश बडाल, दिवेश थापा निर्विरोध निर्वाचित गरेको छ भने स्वतन्त्र सञ्चालकका हकमा निरज कार्की नियुक्त भएका छन्। नवनिर्वाचित सञ्चालकलाई निर्वाचन अधिकृत अधिवक्ता गणेश सिग्देलले पद तथा गोपनीयताको शपथ ग्रहण गराएका थिए।</p>\r\n<div id=\"newsbodylateradd\">\r\n<p>कम्पनीको कुल चुक्ता पुँजीको १४.८६ प्रतिशत सर्वसाधारणका लागि साधारण सेयर निष्कासन गर्ने प्रस्ताव पारित भएको छ।  </p>\r\n</div>\r\n<div class=\"shareFlex\">\r\n<div class=\"shareThis\">\r\n<div class=\"share__count\"> </div>\r\n<div class=\"shareThis__widget\">\r\n<div id=\"st-3\" class=\"sharethis-inline-share-buttons st-right  st-inline-share-buttons st-animated\" data-url=\"https://ukeraa.com/news/detail/156170/ \">\r\n<div class=\"st-total \"> </div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडको प्रथम वार्षिक साधारणसभा सम्पन्न भएको छ। कम्पनीका सेयरधनीहरूको प्रथम वार्षिक साधारणसभा अध्यक्ष हेमराज बडालको अध्यक्षतामा धुलिखेलमा सम्पन्न भएको हो।', '', '1783449792239557659', 3, 0, 0, 41, 0, 'kpl-grwdoipwf5-wBPqjNcscKxINUjoUEK9Aryl4R4k0iEXYm31i2oV.jpg', '', NULL, '', '', NULL, NULL, NULL, 'admin', NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-07 22:43:12', '2026-10-07 04:31:23'),
(47, 0, 382, '2026-07-07 06:45:31', NULL, 1, 'single', NULL, 'कान्तिपुर फार्मास्युटिकल्स ल्याब लिमिटेडको दोस्रो वार्षिक साधारण सभा सम्बन्धी सूचना', NULL, '<p>ललितपुरस्थित कान्तिपुर फार्मास्युटिकल्स ल्याब लिमिटेडको मिति २०८२/०९/२७ मा बसेको सञ्चालक समितिको बैठकको निर्णयबाट यस कम्पनीको द्वितीय वार्षिक साधारण सभा निम्न लिखित मिति, समय र स्थानमा निम्न लिखित विषयहरू उपर छलफल गर्नकालागि बस्ने निर्णय भएको हुँदा सम्पूर्ण शेयरधनी महानुभावहरूलाई उपस्थितीको लागि हार्दिक अनुरोध गर्दछौँ ।</p>\r\n<p>सभा हुने मिति, समय र स्थान<br>मिति:- २०८२ / १० / २१ गते<br>समय:- दिउँसो ११ बजे ।<br>स्थान:- स्क्वायर होटल, पुल्चोक ललितपुर ।<br><br>छलफलका विषयहरू :-<br>(क) साधारण प्रस्ताव<br>सञ्चालक समितिको तर्फबाट अध्यक्षज्यूबाट पेश हुने आ.व. ०८१/०८२ को वार्षिक<br>प्रगति प्रतिवेदन प्रस्तुत गरी पारित गर्ने सम्बन्धमा ।<br>लेखापरीक्षकको प्रतिवेदन सहित कम्पनीको आ.व. २०८१/८२ को वासलात, नाफा नोक्सान<br>हिसाब तथा नगद प्रवाह विवरण र सोसँग सम्बन्धित अनुसूचीहरू सहितको वित्तीय विवरण<br>उपर छलफल गरी पारित गर्ने सम्बन्धमा ।<br>कम्पनी ऐन, २०६३ को दफा १११ बमोजिम कम्पनीको आ.व. २०८२/८३ को बाह्य लेखा<br>परिक्षक नियुक्ति गर्ने र निजको पारिश्रमिक निर्धारण गर्ने सम्बन्धमा ।</p>', 'ललितपुरस्थित कान्तिपुर फार्मास्युटिकल्स ल्याब लिमिटेडले आफ्नो दोस्रो वार्षिक साधारण सभा आयोजना गर्ने भएको छ।', '', '1783450718318178794', 3, 0, 0, 42, 0, 'kpl-2nd-general-meeting-9gfC3txbcVPRzfygJOCQn9XuXcVXO0ciPAUEPXBb.png', '', NULL, '', '', NULL, NULL, NULL, 'admin', NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-07 22:58:38', '2026-10-07 07:12:19'),
(48, NULL, 294, '2026-07-15 05:14:08', NULL, 1, 'template-blog', NULL, 'कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडको दोस्रो वार्षिक प्रतिवेदन (आ.व. २०८१/०८२): पशु स्वास्थ्य क्षेत्रमा उल्लेखनीय फड्को', NULL, '<p class=\"font-claude-response-body break-words whitespace-normal\"><strong>\"Together for Livestock Health\"</strong> भन्ने नाराका साथ अघि बढिरहेको कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड (KPL) ले आफ्नो दोस्रो वार्षिक साधारण सभा मिति २०८२/१०/२१ गते ललितपुरस्थित स्क्वायर होटलमा सम्पन्न गर्ने तयारी गरेको छ। यस अवसरमा कम्पनीले आर्थिक वर्ष २०८१/८२ को वार्षिक प्रगति प्रतिवेदन सार्वजनिक गरेको छ, जसले कम्पनीको व्यवसायिक विस्तार, वित्तीय उपलब्धि र भविष्यको दिशालाई प्रस्ट पार्छ।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">कम्पनीको संक्षिप्त परिचय</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड कम्पनी ऐन, २०६३ अन्तर्गत स्थापित एक पशु स्वास्थ्य र पोषण उत्पादन कम्पनी हो, जसको रजिस्टर्ड कार्यालय ललितपुर महानगरपालिका वडा नं. ८, बालकुमारीमा रहेको छ भने उत्पादन कारखाना पाँचखाल नगरपालिका, होक्से-७, काभ्रेपलाञ्चोक जिल्लामा अवस्थित छ। सुरुमा प्राइभेट लिमिटेडको रूपमा स्थापित यस कम्पनीलाई मिति २०८१/०३/२४ को विशेष साधारण सभाको निर्णयबाट पब्लिक लिमिटेडमा परिणत गरिएको थियो, जसले कम्पनीको सार्वजनिक निष्कासन (IPO) मार्फत सर्वसाधारण लगानीकर्तासम्म पहुँच पुर्‍याउने बाटो खोलेको छ।</p>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कम्पनीले हाल एलोपैथिक औषधि (Treatment) र फिड सप्लिमेन्ट (Nutrition) गरी दुवै क्षेत्रमा आफ्नो उपस्थिति विस्तार गरिरहेको छ, जसले पशु रोग उपचार र पोषण सुधार दुवै आवश्यकतालाई एकैसाथ सम्बोधन गर्दछ।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">वर्षभरिको प्रमुख उपलब्धिहरू</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">आर्थिक मन्दी, बढ्दो वैदेशिक मुद्रा दर र राजनीतिक अस्थिरता जस्ता चुनौतीहरूका बाबजुद पनि कम्पनीले उल्लेखनीय उपलब्धिहरू हासिल गरेको छ:</p>\r\n<ul class=\"[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3\">\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\"><strong>फिड सप्लिमेन्ट तर्फ:</strong> हाल १३५ वटा उत्पादनहरू बजारमा बिक्री वितरण भइरहेका छन्।</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\"><strong>एलोपैथिक औषधि तर्फ:</strong> संचालनमा आएको पहिलो वर्षमै ५९ वटा उत्पादनहरूको बजार बिक्री अनुमति पत्र प्राप्त गरी बजारमा उतारिएको छ, भने थप १०७ वटा उत्पादनहरूले उत्पादन अनुमति पत्र प्राप्त गरिसकेका छन्।</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\"><strong>अनुसन्धान तथा विकास:</strong> थप ५० वटा उत्पादनहरू हाल R&amp;D (अनुसन्धान तथा विकास) चरणमा रहेका छन्, जसले कम्पनीको उत्पादन विस्तारको गतिलाई प्रस्ट देखाउँछ।</li>\r\n</ul>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कम्पनीले बजारमा हिसाबले पहिलो वर्षमै दोस्रो ठूलो भेटेरिनरी औषधि कारोबार गर्ने उद्योगको स्थानमा आफूलाई पुर्‍याएको छ, जुन बजार प्रतिनिधि, वितरक र व्यवस्थापनको उच्च दक्षताको प्रतिफल हो।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">वितरण सञ्जाल: सातै प्रदेशमा उपस्थिति</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कम्पनीले विराटनगर, चितवन, जनकपुर, वीरगन्ज, बुटवल, नेपालगन्ज, धनगढी, पोखरा, र काठमाडौं लगायतका प्रमुख शहरहरूमा हेडक्वाटर स्थापना गरी वितरण कार्य सञ्चालन गरिरहेको छ। हाल कम्पनीका उत्पादनहरू देशका सातै प्रदेशका सतहत्तरै जिल्लामा पुगिरहेका छन्। साथै, WHO-GMP प्रमाणपत्र प्राप्त भएसँगै नेपाल सरकारका पशु सेवा कार्यालय तथा स्थानीय निकायहरूमा सिधै टेन्डर मार्फत बिक्री वितरण गर्ने तयारी पनि भइरहेको छ।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">गुणस्तर र प्रविधिमा लगानी</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कान्तिपुर फर्मास्युटिकल्स ल्याबले आफ्ना उत्पादनहरूको गुणस्तर विश्वव्यापी स्तरमा पुर्‍याउन विभिन्न आधुनिक प्रविधिहरू अवलम्बन गरेको छ:</p>\r\n<ul class=\"[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3\">\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\"><strong>स्वच्छ कक्ष प्रविधि (Clean Room Technology)</strong> — HEPA फिल्टर र लामिनार एयर फ्लो प्रणालीसहित</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\"><strong>HPLC (High-Performance Liquid Chromatography)</strong> — औषधीय गुणस्तर परीक्षणका लागि</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\"><strong>पास बक्स प्रविधि</strong> — क्रस-कन्टामिनेशन रोक्नका लागि</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\"><strong>HVAC प्रणाली, पानी प्रशोधन प्रणाली, र स्वचालित प्याकेजिङ प्रविधि</strong></li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\">भविष्यमा <strong>आर्टिफिसियल इन्टेलिजेन्स (AI) र मेसिन लर्निङ (ML)</strong> समेत औषधि विकास र गुणस्तर आश्वासनमा प्रयोग गर्ने योजना</li>\r\n</ul>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कम्पनीको उत्पादन प्रक्रिया WHO-GMP मापदण्ड अनुसार सञ्चालित छ भने फिड सप्लिमेन्ट इकाइले FAMIQS प्रमाणीकरणको मापदण्ड पूरा गरेको छ, जसले अन्तर्राष्ट्रिय बजारमा नियात विस्तार गर्ने बाटो खोल्छ।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">वित्तीय विवरणको झलक (आ.व. २०८१/८२)</h3>\r\n<div class=\"overflow-x-auto w-full px-2 mb-6\">\r\n<table class=\"min-w-full border-collapse text-sm leading-[1.7] whitespace-normal\">\r\n<thead class=\"text-left\">\r\n<tr>\r\n<th class=\"text-text-100 border-b-0.5 border-[hsl(var(--border-300)/0.6)] py-2 pr-4 align-top font-bold\" scope=\"col\">विवरण</th>\r\n<th class=\"text-text-100 border-b-0.5 border-[hsl(var(--border-300)/0.6)] py-2 pr-4 align-top font-bold\" scope=\"col\">रकम</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">बिक्री रकम</td>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">रु. ४०,८७,६०,६४०</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">खुद मुनाफा</td>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">रु. २,५६,८६,५३०</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">कुल नेटवर्थ</td>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">रु. ७७,४५,१२,३५७</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">प्रति शेयर आम्दानी (EPS)</td>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">रु. ४.०८</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">प्रति शेयर नेटवर्थ</td>\r\n<td class=\"border-b-0.5 border-[hsl(var(--border-300)/0.3)] py-2 pr-4 align-top\">रु. १२२.९</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">गत आर्थिक वर्षको तुलनामा बिक्री रकम करिब दोब्बर बढेको देखिन्छ (रु. २२.६५ करोडबाट रु. ४०.८७ करोडमा), जसले कम्पनीको व्यवसायिक विस्तारको गतिलाई पुष्टि गर्छ। यद्यपि, बढ्दो लगानी र सञ्चालन खर्चका कारण खुद मुनाफा अघिल्लो वर्षको तुलनामा घटेको छ। यस वर्ष कम्पनीले भविष्यको विस्तार योजना, कार्यशील पुँजीको आवश्यकता र दीर्घकालीन वित्तीय स्थायित्वलाई मध्यनजर गर्दै लाभांश वितरण नगर्ने निर्णय गरेको छ।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">संस्थागत सुशासन र सामाजिक उत्तरदायित्व</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कम्पनीले कम्पनी ऐन, २०६३ र सार्वजनिक लिमिटेड कम्पनीको सुशासन मार्गदर्शनको पूर्ण पालना गर्दै पारदर्शिता, उत्तरदायित्व र नैतिक व्यवसायिक अभ्यासलाई संस्थागत गरेको छ। साथै, कम्पनीले संस्थागत सामाजिक उत्तरदायित्व (CSR) अन्तर्गत पशुपालक किसानहरूलाई सचेतना, प्राविधिक जानकारी र उत्तरदायी औषधि प्रयोगसम्बन्धी मार्गदर्शन प्रदान गर्दै आएको छ।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">मानव संशाधन र संगठनात्मक क्षमता</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">हाल कम्पनीमा उत्पादन विभागमा विज्ञ, प्राविधिक, अप्राविधिक तथा सहायक गरी कुल <strong>७८ जना कर्मचारी</strong> कार्यरत छन् भने देशव्यापी बजार विस्तारका लागि <strong>२८ जना बजार प्रतिनिधि</strong> सक्रिय रूपमा काम गरिरहेका छन्।</p>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">आगामी दिशा</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">संचालक समितिको धारणा अनुसार, आगामी दिनहरूमा कम्पनीले निम्न क्षेत्रमा जोड दिने लक्ष्य लिएको छ:</p>\r\n<ol class=\"[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-decimal flex flex-col gap-1 pl-8 mb-3\">\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\">उत्पादन क्षमता अभिवृद्धि</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\">नयाँ उत्पादनहरूको दर्ता तथा बजारीकरण</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\">बिक्री सञ्जाल विस्तार</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\">प्रविधि आधुनिकीकरण</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\">मानव संशाधन विकास</li>\r\n<li class=\"font-claude-response-body whitespace-normal break-words pl-2\">SAARC र अफ्रिकी बजारमा निर्यात विस्तार</li>\r\n</ol>\r\n<h3 class=\"text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold\">निष्कर्ष</h3>\r\n<p class=\"font-claude-response-body break-words whitespace-normal\">कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेडको दोस्रो वार्षिक प्रतिवेदनले कम्पनीले छोटो समयमै नेपालको पशु स्वास्थ्य तथा पोषण उद्योगमा आफ्नो ठोस स्थान बनाइसकेको देखाउँछ। गुणस्तरीय उत्पादन, आधुनिक प्रविधि, र सुदृढ वितरण सञ्जालको संयोजनबाट कम्पनी \"राष्ट्रिय तथा अन्तर्राष्ट्रिय स्तरमा गर्विलो, दिगो र विश्वसनीलो औषधि तथा पोषण कम्पनी\" बन्ने आफ्नो लक्ष्यतर्फ स्पष्ट रूपमा अघि बढिरहेको छ।</p>', '\"Together for Livestock Health\" भन्ने नाराका साथ अघि बढिरहेको कान्तिपुर फर्मास्युटिकल्स ल्याब लिमिटेड (KPL) ले आफ्नो दोस्रो वार्षिक साधारण सभा मिति २०८२/१०/२१ गते ल्विोक, ललितपुरस्थित स्क्वायर होटलमा सम्पन्न गर्ने तयारी गरेको छ। यस अवसरमा कम्पनीले आर्थिक वर्ष २०८१/८२ को वार्षिक प्रगति प्रतिवेदन सार्वजनिक गरेको छ, जसले कम्पनीको व्यवसायिक विस्तार, वित्तीय उपलब्धि र भविष्यको दिशालाई प्रस्ट पार्छ।', '', '178345178284599643', 3, NULL, 0, 43, NULL, 'kpl-2nd-meeting-banner-b7Du8QK6jGumOo0lpxSZmOj6QfYdfBOTiAlHrKLK.png', '', 'full-final-JTXbg.pdf', '', '', NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-07-07 23:16:22', '2026-10-07 04:39:47'),
(51, NULL, 0, '2026-08-31 12:00:59', NULL, 1, 'single', NULL, 'Sales Executive', 'Full-Time', '<p>Career Opportunity at Kantipur Pharmaceuticals Lab Limited</p>\r\n<p>Kantipur Pharmaceuticals Lab Limited (KPL) is looking for a motivated and result-oriented Sales Executive to join our Poultry Division at Butwal HQ.</p>\r\n<p><strong>Position:</strong> Sales Executive<br><strong>Division:</strong> Poultry Division<br><strong>Location:</strong> Butwal HQ<br><strong>Qualification:</strong> Bachelor’s Degree or equivalent<br>Requirement: Own two-wheeler with a valid driving license</p>\r\n<p>If you are passionate about sales, have strong communication skills, and are eager to build your career in the pharmaceutical and poultry industry, we encourage you to apply.</p>\r\n<p>Send your CV &amp; portfolio to: <strong><a href=\"mailto:humanresource@kantipurpharma.com\">humanresource@kantipurpharma.com</a></strong><br>Application Deadline: <strong>11 September 2026</strong></p>\r\n<p>Join KPL and grow with us!</p>', 'Kantipur Pharmaceuticals Lab Limited is hiring a motivated Sales Executive for its Poultry Division at Butwal HQ. Bachelor’s Degree or equivalent and a two-wheeler with a valid driving license are required.', 'sales-executive', '1788175546209004916', 7, NULL, 0, 46, NULL, NULL, 'whatsapp-image-2026-08-31-at-11-p02DUI3ucTrV9SAcCONODWYPecxYP5a0qTHNvh6J.jpeg', NULL, '', '', NULL, NULL, 'Kantipur Pharmaceuticals Lab Limited is hiring a Sales Executive for its Poultry Division at Butwal HQ. Apply with your CV and portfolio by 11 September 2026.', NULL, NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-08-31 15:25:46', '2026-08-31 16:01:22'),
(52, NULL, 100, '2026-09-03 11:17:55', NULL, 1, 'template-blog', NULL, 'भोटेकोशी बाढी प्रभावित नागरिकको राहत तथा पुनःस्थापनाका लागि केभीडी ग्रुपद्वारा रु. २७.७७ लाख सहयोग', NULL, '<p class=\"PDq2pG_selectionAnchorContainer\" data-start=\"346\" data-end=\"662\">भोटेकोशी क्षेत्रमा आएको विनाशकारी बाढीबाट भएको जनधनको क्षतिप्रति <strong data-start=\"433\" data-end=\"449\">केभीडी ग्रुप</strong> गहिरो दुःख व्यक्त गर्दछ। बाढीबाट प्रभावित नागरिकहरूको राहत, उद्धार तथा पुनःस्थापनामा सहयोग पुर्‍याउने उद्देश्यले केभीडी ग्रुपले <strong data-start=\"578\" data-end=\"636\">प्रधानमन्त्री दैवी प्रकोप उद्धार कोषमा रु. २७,७७,७७७/-</strong> सहयोग रकम प्रदान गरेको छ।</p>\r\n<p data-start=\"664\" data-end=\"858\">विपद्को यस कठिन घडीमा प्रभावित नागरिकहरूलाई राहत तथा पुनःस्थापनामा सहयोग पुर्‍याउने उद्देश्यले <strong data-start=\"759\" data-end=\"825\">केभीडी ग्रुपका तर्फबाट अध्यक्ष श्रीमती सुना सुवेदीज्यूको पहलमा</strong> उक्त सहयोग रकम प्रदान गरिएको हो।</p>\r\n<p data-start=\"860\" data-end=\"1119\">राष्ट्रिय विपत्तिको समयमा निजी क्षेत्रको सामाजिक उत्तरदायित्व तथा मानवीय भावनालाई आत्मसात गर्दै प्रदान गरिएको यस सहयोगले <strong data-start=\"981\" data-end=\"1087\">भोटेकोशी बाढीबाट प्रभावित नागरिकहरूको राहत, उद्धार तथा पुनःस्थापनाका कार्यमा केही भए पनि योगदान पुग्ने</strong> विश्वास केभीडी ग्रुपले लिएको छ।</p>\r\n<p data-start=\"1121\" data-end=\"1357\">केभीडी ग्रुपले बाढीबाट प्रभावित नागरिकहरूको हितमा उक्त रकम प्रभावकारी रूपमा सदुपयोग हुने विश्वास व्यक्त गर्दै <strong data-start=\"1231\" data-end=\"1343\">नेपाल सरकार तथा सम्बन्धित सम्पूर्ण निकायहरूले सञ्चालन गरिरहेका राहत तथा उद्धार कार्यप्रति हार्दिक ऐक्यबद्धता</strong> व्यक्त गर्दछ।</p>\r\n<p data-start=\"1359\" data-end=\"1415\" data-is-last-node=\"\" data-is-only-node=\"\"><strong data-start=\"1359\" data-end=\"1375\">केभीडी ग्रुप</strong><br data-start=\"1375\" data-end=\"1378\"><em data-start=\"1378\" data-end=\"1415\" data-is-last-node=\"\">सामाजिक उत्तरदायित्वप्रति प्रतिबद्ध</em></p>\r\n<p data-start=\"1359\" data-end=\"1415\" data-is-last-node=\"\" data-is-only-node=\"\"><em data-start=\"1378\" data-end=\"1415\" data-is-last-node=\"\"><img src=\"/storage/photos/4/WhatsApp Image 2026-09-03 at 4.21.35 PM.jpeg\" alt=\"\" width=\"538\" height=\"701\"></em></p>', 'प्राकृतिक विपत्तिबाट प्रभावित नागरिकहरूको राहत, उद्धार तथा पुनःस्थापनामा सहयोग पुर्‍याउने उद्देश्यले केभीडी (KVD) ग्रुपले प्रधानमन्त्री दैवी प्रकोप उद्धार कोषमा रु. २७ लाख ७७ हजार ७७७ सहयोग प्रदान गरेको छ।', '', '1788433853109307975', 3, NULL, 0, 47, NULL, '', 'chatgpt-image-sep-3-2026-05-08-11-pm-Xv75apNKlfEwXkMuy7zUvKeSNPngmms26SpPJr9D.png', NULL, '', '', NULL, 'Bhotekoshi Flood KVD Group Disaster Relief Prime Minister Disaster Relief Fund', 'KVD Group provides Rs. 27.77 lakh to the Prime Minister Disaster Relief Fund to support relief, rescue and rehabilitation of Bhotekoshi flood victims.', 'admin', NULL, NULL, NULL, NULL, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2026-09-03 15:10:53', '2026-10-06 15:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_categories`
--

CREATE TABLE `cl_post_categories` (
  `id` int UNSIGNED NOT NULL,
  `post_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int DEFAULT '0',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_post_categories`
--

INSERT INTO `cl_post_categories` (`id`, `post_type`, `category`, `category_caption`, `category_content`, `uri`, `ordering`, `thumbnail`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Footer', 'Footer', 'Footer', 'footer', NULL, NULL, NULL, '1', '2021-05-21 01:59:47', '2021-05-21 01:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_featured_images`
--

CREATE TABLE `cl_post_featured_images` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `featured_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_type`
--

CREATE TABLE `cl_post_type` (
  `id` int UNSIGNED NOT NULL,
  `uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `post_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `is_menu` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_footer_menu` tinyint(1) DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_post_type`
--

INSERT INTO `cl_post_type` (`id`, `uid`, `post_type`, `uri`, `caption`, `content`, `meta_keyword`, `meta_description`, `template`, `banner`, `ordering`, `is_menu`, `is_footer_menu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ABOUT US', 'About', 'about', '<div>\r\n<div>Welcome to Kantipur Pharmaceuticals Lab Limited.</div>\r\n</div>', '<p style=\"text-align: justify;\">KPL is driven by a singular purpose: “Caring and Curing Animal Health with passion and Quality”. At KPL, we are more than just a leader in veterinary pharmaceuticals—we are a dedicated partner in the health and well-being of animals. KPL and Team aim to provide innovative, high-quality solutions that support the care of pets, livestock, and wildlife, ensuring they live healthier, happier lives. With a commitment to sustainability, ethical practices, and continuous improvement, we strive to make a positive impact on both the animals we care for and the communities we serve. Thank you for choosing KPL—we look forward to being a trusted part of your journey to better animal health.</p>\r\n<p class=\"MsoNormal\"> </p>', 'About Us', 'ABOUT US', 'posttypeTemplate-about', 'about-jJSqZbMaubYLZuKA47srApDEsCaqKWUmLeRXxoWn.jpg', 1, '1', 1, '1', '2021-05-20 08:13:06', '2025-10-14 05:11:10'),
(2, 'Feed Supplement', 'Product', 'product', NULL, '<p>We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combined. Our range of swine feed additives and care products are made with herbal ingredients harnessed by advanced medical technology.We provide a holistic range of products available from gut health to immunity, respiratory and liver health to growth. We curate nutritional solutions for the poultry industry’s evolving needs by making use of natural ingredients which are homogeneously combinedy.</p>', NULL, NULL, 'page', 'pdtt-mnXOWtkUW3H6nl0y7VzsrGRTMPdwNGNXSZyGWFV0.jpg', 3, '1', 0, '1', '2021-05-20 08:13:57', '2025-10-12 01:31:38'),
(3, 'News & Articles', 'News / Blogs', 'blog', '<p>CAREER</p>', '<p>For any job opportunity, please send us your CV to info@respecttrading.com</p>', NULL, NULL, 'posttypeTemplate-blog', 'blg-Yv2enTTXdZYwfzpS2tT7dy3VsdXOi6r3op2iZMNz.jpg', 4, '1', 1, '1', '2021-05-20 08:14:13', '2025-10-12 23:44:33'),
(4, 'CONTACT US', 'Contact', 'contact', '<h2>Contact with us</h2>', '<p>euismod eu augue. Etiam vel dui arcu. Cras varius mieros pharetra, id aliquam metus venenatis. Donec sollicit</p>', NULL, NULL, 'posttypeTemplate-contact', 'blg-ORGuLNqbHxOqEXqLrmKX9hsO0qKBlcjBiELAxXkc.jpg', 7, '1', 1, '1', '2021-05-20 08:14:35', '2025-10-12 23:45:05'),
(7, NULL, 'Career', 'career', '<h3 class=\"PDq2pG_selectionAnchorContainer\" data-section-id=\"6o02ll\" data-start=\"0\" data-end=\"62\"> </h3>\r\n<p data-start=\"732\" data-end=\"762\" data-is-last-node=\"\" data-is-only-node=\"\"> </p>', NULL, NULL, NULL, 'posttypeTemplate-carrer', 'kpl-banner-for-career-page-mB5hI0gPJgwS7f3MYHvduaZf8qlW9AzUkYVeO14E.jpeg', 5, '1', 1, '1', '2025-04-16 01:55:42', '2026-09-01 12:33:49'),
(9, 'Mission and vision', 'Mission', 'mission', '<h2 class=\"uk-margin-remove-top uk-text-primary\">About Kantipur Pharmaceuticals Lab Limited.</h2>', '<p>Kantipur Pharmaceuticals Lab Limited (KPL) is a Nepal based company established in 2073 B.S. It is a leading animal healthcare company creating a healthier world for animals. Our veterinary solutions are \"Gold Standard\" &amp; \"Need Based Innovations\". We Offer Comprehensive, Innovative, High Quality and Safe Feed Supplements, Feed Nutrition Premixes, advanced and fine-tuned Phytochemical Products along with Allopathic Medicines for Dairy Cattle, Equines, Poultry, Swine &amp; Pets for Enhanced Productivity and Better Healthcare.<br><br>KPL continuously strives to attract highly efficient and experienced staff in the veterinary medicines and pharmaceutical industries to ensure the quality of our products. With a strong and professional Technical and Marketing teams and an efficient distribution network, KPL ensures Safety, Efficacy and Quality with prompt delivery of its products across Nepal through specialty distributors and authorized local dealers. KPL is aiming to be certified for ISO-9001 QMS, ISO-14001 EMS and FAMI-QS certification for Feed Division and WHO-GMP for its Allopathic Division in near future.</p>', NULL, NULL, 'posttypeTemplate-mission', 'mb-bJdtl4XSeKCttJVaNZaRrFojUDtr3IS0LQmT1nXs.jpg', 2, '1', 1, '1', '2025-10-08 01:16:12', '2025-10-12 23:44:17'),
(10, NULL, 'Frontpage', 'frontpage', NULL, NULL, NULL, NULL, NULL, '', 8, '0', 0, '1', '2025-10-13 23:33:48', '2025-10-13 23:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_videos`
--

CREATE TABLE `cl_post_videos` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `featured_video` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video_caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video_status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_roles`
--

CREATE TABLE `cl_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_roles`
--

INSERT INTO `cl_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', '2018-07-01 09:56:16', '2020-08-16 14:47:31'),
(2, 'Admin', '2018-07-01 09:56:34', '2020-08-16 14:47:43'),
(3, 'General', '2020-08-16 14:47:05', '2020-08-16 14:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `cl_settings`
--

CREATE TABLE `cl_settings` (
  `id` int UNSIGNED NOT NULL,
  `num_of_inquiries` int DEFAULT '0',
  `site_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_primary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_secondary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_settings`
--

INSERT INTO `cl_settings` (`id`, `num_of_inquiries`, `site_name`, `phone`, `phone2`, `email_primary`, `email_secondary`, `website`, `address`, `address2`, `facebook_link`, `linkedin_link`, `youtube_link`, `twitter_link`, `google_plus`, `instagram_link`, `meta_key`, `meta_description`, `google_map`, `welcome_title`, `welcome_text`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 0, 'Kantipur Pharmaceuticals Lab Ltd', '9802001223, 9802001391, 9802346823', '+977-01-5186602', 'admin@kantipurpharma.com', 'factory@kantipurpharma.com, humanresource@kantipurpharma.com', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/watch?v=sb8MYy832bw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'Corporate Office: KVD Complex 5th Floor, Balkumari, Ward no.8, Lalitpur, Nepal, PIN 44700', 'Factory: Panchkhal - 07, Hokshe, Kavre', 'https://facebook.com/', NULL, 'https://www.youtube.com', 'https://twitter.com/?lang=en', NULL, 'https://www.instagram.com/', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5587.017491661533!2d85.627995!3d27.641364!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eba7e5da251f8b%3A0x94616c285a8191b6!2sKantipur%20Pharmaceuticals%20Lab%20Pvt.%20Ltd.!5e1!3m2!1sen!2snp!4v1758607652267!5m2!1sen!2snp\" width=\"100%\" height=\"350\" style=\"border-radius:15px;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'KPL is highly dedicated to research, production and planned marketing of veterinary allopathic medicines, animal nutrition, animal feed additives.', NULL, 'Copyright © 2026, Kantipur Pharmaceuticals Lab.', NULL, '2026-09-03 11:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_03_28_114354_create_cl_post_metas_table', 1),
(5, '2018_03_28_114442_create_cl_post_featured_images_table', 1),
(6, '2018_03_28_114755_create_cl_post_attachments_table', 1),
(7, '2018_03_28_114834_create_cl_post_videos_table', 1),
(9, '2018_03_28_115212_create_cl_post_comments_table', 1),
(10, '2018_03_28_115358_create_cl_categories_table', 1),
(11, '2018_03_28_115432_create_cl_category_metas_table', 1),
(12, '2018_03_29_064328_create_cl_log_table', 1),
(13, '2018_05_08_114118_create_cl_userroles_table', 1),
(14, '2018_05_20_062425_create_cl_members_table', 1),
(15, '2018_06_04_092530_create_cl_roles_table', 1),
(16, '2018_06_06_123826_create_product_category_table', 1),
(17, '2018_06_07_093316_create_post_type_table', 1),
(18, '2018_06_13_071711_create_cl_post_category_table', 1),
(19, '2018_06_21_080700_create_cl_banner_table', 1),
(20, '2018_06_27_053620_create_cl_product_type_table', 2),
(21, '2018_06_28_061103_create_cl_product_brand_table', 3),
(22, '2018_06_28_061256_create_cl_currency_table', 3),
(23, '2018_06_28_061707_create_cl_product_unit_table', 3),
(26, '2018_06_29_051629_create_cl_products_table', 1),
(31, '2018_07_03_014755_create_cl_gallery_image_categories_table', 4),
(32, '2018_07_03_014814_create_cl_gallery_images_table', 4),
(35, '2018_07_03_104330_create_cl_gallery_videos_table', 6),
(37, '2018_07_03_103721_create_cl_gallery_video_categories_table', 7),
(38, '2018_07_04_061117_create_cl_post_type_table', 7),
(39, '2018_03_28_113701_create_cl_posts_table', 8),
(41, '2018_08_06_085514_create_cl_product_tag_table', 9),
(42, '2018_09_20_120321_create_cl_customer_billing_address_table', 10),
(43, '2018_09_20_120340_create_cl_customer_shipping_address_table', 10),
(44, '2018_09_24_094921_create_cl_orders_table', 11),
(45, '2018_09_25_061818_create_cl_country_table', 12),
(46, '2018_09_25_092853_create_order_product_table', 13),
(47, '2018_09_25_100703_create_cl_order_product_table', 14),
(48, '2018_10_02_031657_create_cl_settings_table', 15),
(49, '2018_11_14_092229_create_cl_tender_table', 16),
(51, '2018_11_19_042417_create_cl_tender_category', 18),
(52, '2018_11_19_075448_create_cl_tender_document_table', 19),
(53, '2018_11_16_111624_create_cl_venderdetail_table', 20),
(54, '2018_11_25_060813_create_cl_multiple_video_table', 21),
(55, '2018_11_29_065424_create_cl_multiple_document_table', 22),
(56, '2019_03_13_082841_create_newsletter_signup_table', 23),
(59, '2019_03_14_052123_create_cl_associated_posts_table', 24),
(61, '2019_03_15_090749_create_cl_dwninfo_table', 25),
(62, '2020_08_06_095339_create_cl_multiple_banner_table', 26),
(63, '2020_08_06_120936_add_banner_id_column_at_cl_multiple_banner_table', 26),
(64, '2020_08_07_084648_add_visitor_column_at_posts_table', 26),
(66, '2020_08_11_180220_create_role_user_table', 27),
(67, '2020_08_12_061740_create_foreign_keys_for_role_user_table', 27),
(68, '2020_08_16_130049_crate_admin_menu_table', 28),
(74, '2020_08_16_162623_create_adminmenu_user_table', 29),
(75, '2020_08_16_205219_crate_foreign_keys_for_adminmenu_user_table', 29),
(79, '2020_08_17_062614_add_global_post_cl_posts_table', 30),
(80, '2020_12_10_131852_create_cl_portfolio_table', 31),
(81, '2020_12_10_132930_create_cl_associated_portfolios_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 3, 4, NULL, NULL),
(16, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` int NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'root@admin.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 1100, 'QEPQNbPhTIgDwnMWv5F4mbXJeoDwdcBWoMcCsyx6z7LmOk9V5nYDoleVrNN1', '2018-06-24 04:33:34', '2018-06-24 04:33:34'),
(3, 'Cyberlink', 'cyberlink@admin.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'HIkZJXV8D2vLsWpW6xHFAUOQ6Pe4LsFJw6ywP5RbgEGu1hqIz6wyyNrS5RWi', '2020-08-16 10:32:43', '2020-08-16 11:21:35'),
(4, 'User', 'user@kantipurpl.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'mLNQk3oQHDxZnwq0qjJgI1BsdfMFXnVYAknbIvZ4GYT15K7y39GISWt5CPqt', '2020-08-16 11:22:14', '2021-05-21 02:20:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_adminmenu_user_user_id_foreign` (`user_id`),
  ADD KEY `cl_adminmenu_user_adminmenu_id_foreign` (`adminmenu_id`);

--
-- Indexes for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_banner`
--
ALTER TABLE `cl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_career`
--
ALTER TABLE `cl_career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_country`
--
ALTER TABLE `cl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_init`
--
ALTER TABLE `cl_init`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_inquiry`
--
ALTER TABLE `cl_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_log`
--
ALTER TABLE `cl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_posts`
--
ALTER TABLE `cl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_roles`
--
ALTER TABLE `cl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_settings`
--
ALTER TABLE `cl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `cl_banner`
--
ALTER TABLE `cl_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cl_career`
--
ALTER TABLE `cl_career`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cl_country`
--
ALTER TABLE `cl_country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_init`
--
ALTER TABLE `cl_init`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_inquiry`
--
ALTER TABLE `cl_inquiry`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cl_log`
--
ALTER TABLE `cl_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_posts`
--
ALTER TABLE `cl_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_roles`
--
ALTER TABLE `cl_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cl_settings`
--
ALTER TABLE `cl_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD CONSTRAINT `cl_adminmenu_user_adminmenu_id_foreign` FOREIGN KEY (`adminmenu_id`) REFERENCES `cl_admin_menu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cl_adminmenu_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `cl_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
