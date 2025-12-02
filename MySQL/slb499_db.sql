-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2025 at 05:44 AM
-- Server version: 10.6.22-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slb499_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `item` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `recipe_id`, `amount`, `unit`, `item`) VALUES
(1, 1, '1', '', 'pie crust'),
(2, 1, '3', 'cups', 'chopped kale'),
(3, 1, '2', 'cloves', 'garlic, minced'),
(4, 1, '4', '', 'large eggs'),
(5, 1, '1', 'cup', 'milk'),
(6, 1, '1/2', 'cup', 'ricotta cheese'),
(7, 1, '1/2', 'cup', 'shredded cheddar'),
(8, 1, '', '', 'salt & pepper to taste'),
(9, 2, '21', 'oz', 'Wild Alaskan Pollock Fillets'),
(10, 2, '2', '', 'Cage-Free Farm Eggs'),
(11, 2, '2', 'Tbsps', 'Sweet Pickle Relish'),
(12, 2, '1', '', 'Romaine Lettuce Heart'),
(13, 2, '1', 'Tbsp', 'Weeknight Hero Spice Blend (Garlic Powder, Onion Powder, Smoked Paprika, & Whole Dried Parsley)'),
(14, 2, '1¼', 'cups', 'Panko Breadcrumbs'),
(15, 2, '¼', 'cup', 'Creamy Mustard Sauce'),
(16, 16, '1½', 'lbs', 'Pizza Dough'),
(17, 16, '3', 'cloves', 'Garlic'),
(18, 16, '1', 'head', 'Romaine Lettuce Heart'),
(19, 16, '1', 'lb', 'Broccoli'),
(20, 16, '1', 'cup', 'Part-skim ricotta cheese'),
(21, 16, '1', '8-oz can', 'Tomato sauce'),
(22, 16, '½', 'lb', 'Fresh mozzarella cheese'),
(23, 16, '¼', 'cup', 'Grated Parmesan cheese'),
(24, 16, '2', 'oz', 'Black Cerignola olives'),
(25, 16, '1', 'Tbsp', 'Italian seasoning (basil, sage, oregano, savory, rosemary, thyme, marjoram)'),
(26, 16, '1', '', 'Lemon'),
(27, 17, '1', '', 'Piece Focaccia Bread'),
(28, 17, '1', '8-oz can', 'Tomato Sauce'),
(29, 17, '1', 'lb', 'Broccoli'),
(30, 17, '½', 'lb', 'Fresh mozzarella cheese'),
(31, 17, '2', '', 'Clementines'),
(32, 17, '2', 'cloves', 'Garlic'),
(33, 17, '2', '', 'Romaine Lettuce Hearts'),
(34, 17, '1', 'oz', 'Golden or Red Sweet Piquante Peppers'),
(35, 17, '2', 'Tbsps', 'Crème Fraîche'),
(36, 17, '1', 'Tbsp', 'Dijon Mustard'),
(37, 17, '½', 'cup', 'Basil & Cashew Pesto (Contains Pine Nuts)'),
(38, 17, '½', 'cup', 'Shaved Parmesan Cheese '),
(39, 17, '1', 'Tbsp', 'Italian Seasoning (Whole Dried Basil, Sage,\r\nOregano, Savory, Rosemary, Thyme, & Marjoram)'),
(46, 20, '1', '', 'Box of Spaghetti'),
(47, 20, '2', 'cups', 'Chopped Broccoli'),
(48, 20, '2', 'Tbsps', 'Crème Fraîche'),
(49, 20, '¼', 'tsp', 'Crushed Red Pepper Flakes'),
(50, 20, '3', 'Tbsps', 'All-Purpose Flour'),
(51, 20, '¼', 'cup', 'Grated Pecorino Cheese'),
(72, 25, '6', 'oz', 'Bucatini Pasta'),
(73, 25, '1', '14-oz can', 'Datterini Tomatoes'),
(74, 25, '2', 'cloves', 'Garlic'),
(75, 25, '2', 'Tbsps', 'Butter'),
(76, 25, '1', 'Ib', 'Broccoli'),
(77, 25, '1', 'Tbsp', 'Capers'),
(78, 25, '¾', 'oz', 'Grana Padano Cheese'),
(79, 25, '1', 'oz', 'Kalamata Olives'),
(80, 25, '¼', 'tsp', 'Crushed Red Pepper Flakes'),
(81, 25, '1', 'Tbsp', 'Italian Seasoning (Whole Dried Basil, Sage,\r\nOregano, Savory, Rosemary, Thyme, & Marjoram)'),
(82, 26, '2', '', 'Cage-Free Farm Eggs'),
(83, 26, '2', 'cloves', 'Garlic'),
(84, 26, '1', 'head', 'Cauliflower'),
(85, 26, '1', '', 'Lemon'),
(86, 26, '2', 'Tbsps', 'Butter'),
(87, 26, '¼', 'cup', 'Grated Parmesan Cheese'),
(88, 26, '1', '', 'Shallot'),
(89, 26, '1', 'Tbsp', 'Capers'),
(90, 26, '3', 'Tbsps', 'Panko Breadcrumbs'),
(97, 30, '2', '', 'Boneless, Skinless Chicken Breasts'),
(98, 30, '¾', 'lb', 'Yukon Gold Potatoes'),
(99, 30, '2', 'Tbsps', 'Crème Fraîche'),
(100, 30, '1', 'Tbsp', 'Sherry Vinegar'),
(101, 30, '1', 'cup', 'Carrots'),
(102, 30, '½', 'cup', 'Maple Syrup'),
(103, 31, '4', '', 'Boneless, Skinless Chicken Breasts'),
(104, 31, '¾', 'lb', 'Sweet Potatoes'),
(105, 31, '¼', 'cup', 'All Purpose Flour'),
(106, 31, '1', '', 'Lemon'),
(107, 31, '1', 'Tbsp', 'Weeknight Hero Spice Blend (Garlic Powder,\r\nOnion Powder, Smoked Paprika, & Whole Dried\r\nParsley)'),
(108, 31, '½', 'cup', 'Garlic Aioli'),
(109, 31, '½', 'cup', 'Grated Parmesan Cheese'),
(110, 32, '8', '', 'Flour Tortillas'),
(111, 32, '¾', 'cup', 'Jasmine Rice'),
(112, 32, '1', '28-Ounce', 'Can Whole Peeled Tomatoes'),
(113, 32, '4', 'oz', 'Cremini Mushrooms'),
(114, 32, '3', 'cloves', 'Garlic'),
(115, 32, '1', '', 'Yellow Onion'),
(116, 32, '1', 'bunch', 'Chives'),
(117, 32, '2', 'Tbsps', 'Ancho Chile Paste'),
(118, 32, '1', 'Tbsp', 'Mexican Spice Blend (Ancho Chile Powder,\r\nSweet Paprika, Garlic Powder, Ground Cumin, &\r\nWhole Mexican Oregano)'),
(119, 32, '½', 'cup', 'Sour Cream'),
(120, 32, '½', 'lb', 'White Cheddar Cheese'),
(121, 33, '1', 'lb', 'Chicken'),
(122, 33, '1', 'lb', 'Sweet Potatoes'),
(123, 33, '4', 'oz', 'Cranberries'),
(124, 33, '½', 'lb', 'Brussels Sprouts'),
(125, 33, '2', 'Tbsps', 'Apple Cider Vinegar'),
(126, 33, '2', 'Tbsps', 'Sugar'),
(127, 33, '1', '1-Inch Piece', 'Ginger'),
(128, 33, '¼', 'cup', 'Roasted Walnuts'),
(129, 33, '1', 'Tbsp', 'Weeknight Hero Spice Blend (Garlic Powder, Onion Powder, Smoked Paprika, & Whole Dried Parsley)'),
(130, 34, '⅔', 'cup', 'Cracked Freekeh'),
(131, 34, '½', 'cup', 'Sheep\'s Milk Yogurt'),
(132, 34, '2', '', 'Carrots'),
(133, 34, '2', 'cloves', 'Garlic'),
(134, 34, '1', '', 'Lemon'),
(135, 34, '1', 'bunch', 'Mint'),
(136, 34, '2', '', 'Dried Medjool Dates'),
(137, 34, '2', 'Tbsps', 'Pickled Peruvian Peppers'),
(138, 34, '1¾', 'oz', 'Barrel-Aged Feta Cheese'),
(139, 34, '2', 'Tbsps', 'Roasted Almonds'),
(140, 34, '¼', 'tsp', 'Crushed Red Pepper Flakes'),
(141, 34, '¾', 'lb', 'Brussels Sprouts'),
(142, 35, '2', '', 'Cage-Free Farm Eggs'),
(143, 35, '½', 'cup', 'Fregola Sarda Pasta'),
(144, 35, '1', 'clove', 'Garlic'),
(145, 35, '1', 'lb', 'Broccoli'),
(146, 35, '1', '', 'Red Onion'),
(147, 35, '1', 'bunch', 'Mint'),
(148, 35, '2', 'Tbsps', 'Tahini'),
(149, 35, '1', 'oz', 'Pecorino Romano Cheese'),
(150, 35, '1', 'Tbsp', 'Za\'atar Seasoning (Ground Sumac, Sesame Seeds, Salt, Ground Thyme, Whole Dried Oregano, & Crushed Aleppo Pepper)'),
(151, 35, '3', 'Tbsps', 'Roasted Almonds'),
(152, 35, '1', '', 'Lemon'),
(153, 36, '20', 'oz', 'Steak'),
(154, 36, '2', 'cloves', 'Garlic'),
(155, 36, '2', '', 'Russet Potatoes'),
(156, 36, '1', 'bunch', 'Chives'),
(157, 36, '3', 'Tbsps', 'Creamy Mustard Sauce'),
(158, 36, '2', 'Tbsps', 'Butter'),
(159, 36, '1', 'Tbsp', 'Red Wine Vinegar'),
(160, 37, '10', 'oz', 'Chopped Chicken Breast'),
(161, 37, '1', 'head', 'Baby Bok Choy'),
(162, 37, '¾', 'cup', 'Jasmine Rice'),
(163, 37, '2', 'cloves', 'Garlic'),
(164, 37, '1', 'Tbsp', 'Rice Vinegar'),
(165, 37, '1', '1-Inch Piece', 'Ginger'),
(166, 37, '1', 'tsp', 'Sriracha'),
(167, 37, '1', 'Tbsp', 'Honey'),
(168, 37, '1', 'Tbsp', 'Sesame Oil'),
(169, 37, '¼', 'cup', 'Cornstarch'),
(170, 37, '2', 'Tbsps', 'Hoisin Sauce'),
(171, 38, '4', '', 'Boneless, Center-Cut Pork Chops'),
(172, 38, '2', '', 'Carrots'),
(173, 38, '1', 'bunch', 'Chives'),
(174, 38, '2', 'Tbsps', 'Tahini'),
(175, 38, '2', 'Tbsps', 'Soy Sauce'),
(176, 38, '¾', 'lb', 'Fresh Wonton Noodles'),
(177, 38, '2', 'tsps', 'Sambal Oelek'),
(178, 38, '1', '1-Inch Piece', 'Ginger'),
(179, 38, '¼', 'cup', 'Hoisin Sauce'),
(180, 39, '4', '', 'Skin-On Barramundi Fillets'),
(181, 39, '½', 'cup', 'Plain Greek Yogurt'),
(182, 39, '1⅛', 'lbs', 'Yukon Gold Potatoes'),
(183, 39, '1', 'Tbsp', 'Za\'atar Seasoning (Ground Sumac, Sesame Seeds, Salt, Ground Thyme, Whole Dried Oregano, & Crushed Aleppo Pepper)'),
(184, 40, '1', '', 'Endive'),
(185, 40, '2', 'cloves', 'Garlic'),
(186, 40, '2', 'oz', 'Smoked Gouda Cheese'),
(187, 40, '2', 'oz', 'Fontina Or Aged Alpine Cheese'),
(188, 40, '1', '', 'Red Onion'),
(189, 40, '¾', 'lb', 'Pizza Dough'),
(190, 40, '4', 'oz', 'Cremini Mushrooms'),
(191, 40, '1', '', 'Apple'),
(192, 40, '1', 'Tbsp', 'Honey'),
(193, 40, '1', 'Tbsp', 'Apple Cider Vinegar'),
(194, 41, '4', '', 'Flour Tortillas'),
(195, 41, '3', 'oz', 'Radishes'),
(196, 41, '1', '', 'Orange'),
(197, 41, '¾', 'lb', 'Yukon Gold Potatoes'),
(198, 41, '6', 'oz', 'Cremini Mushrooms'),
(199, 41, '1', '', 'Shallot'),
(200, 41, '3', 'Tbsps', 'Roasted Peanuts'),
(201, 41, '¼', 'cup', 'Sour Cream'),
(202, 41, '1', 'oz', 'Sliced Pickled Jalapeño Pepper'),
(203, 41, '1', 'oz', 'Golden Or Red Sweet Piquante Peppers'),
(204, 41, '1', 'Tbsp', 'Spanish Spice Blend (Smoked Paprika, Ground Cumin, Ground Coriander, Dried Mexican Oregano, Cayenne Pepper, & Ground Cinnamon)'),
(205, 41, '1', '', 'Romaine Lettuce Heart'),
(206, 41, '2', 'Tbsps', 'Rice Vinegar'),
(211, 44, '¾', 'lb', 'Yukon Gold Potatoes'),
(212, 44, '10', 'oz', 'Ground Pork Chorizo'),
(213, 44, '2', 'Tbsps', 'Crème Fraîche'),
(214, 44, '2', 'Tbsps', 'Grated Cotija Cheese'),
(215, 45, '6', 'oz', 'Whole Grain Pipe Rigate Pasta'),
(216, 45, '2', 'oz', 'Roasted Piquillo Peppers'),
(217, 45, '2', 'Tbsps', 'Grated Parmesan Cheese'),
(218, 45, '2', 'Tbsps', 'Sliced Roasted Almonds'),
(219, 45, '1½', 'tsps', 'Calabrian Chile Paste'),
(220, 46, '3', 'Tbsps', 'Panko Breadcrumbs'),
(221, 46, '2', 'Tbsps', 'All-Purpose Flour'),
(222, 46, '1', 'Tbsp', 'Apple Cider Vinegar'),
(223, 46, '1', 'Tbsp', 'Southern Spice Blend (Onion Powder, Garlic Powder, Ground Yellow Mustard, Smoked Paprika, & Cayenne Pepper)'),
(224, 47, '2', '', 'Skin-On Salmon Fillets'),
(225, 47, '2', 'cloves', 'Garlic'),
(226, 47, '6', 'oz', 'Carrots'),
(227, 47, '1', '', 'Lemon'),
(228, 47, '¾', 'lb', 'Yukon Gold Potatoes'),
(229, 47, '1', 'Pinch', 'Saffron'),
(230, 47, '1', 'Tbsp', 'Honey'),
(231, 47, '½', 'cup', 'Plain Greek Yogurt'),
(232, 47, '½', 'tsp', 'Crushed Aleppo Pepper'),
(233, 47, '½', 'tsp', 'Ground Cumin'),
(234, 48, '4', '', 'Potato Buns'),
(235, 48, '2', 'cloves', 'Garlic'),
(236, 48, '2', '', 'Scallions'),
(237, 48, '2', '', 'Sweet Potatoes'),
(238, 48, '½', 'lb', 'Baby Bok Choy'),
(239, 48, '2', 'Tbsps', 'Hoisin Sauce'),
(240, 48, '2', 'Tbsps', 'Sweet White Miso Paste'),
(241, 48, '½', 'oz', 'Dried Shiitake Mushrooms'),
(242, 48, '¼', 'cup', 'Mayonnaise'),
(243, 49, '6', 'oz', 'Lumaca Rigata Pasta'),
(244, 49, '2', 'cloves', 'Garlic'),
(245, 49, '1', '8-Ounce Can', 'Tomato Sauce'),
(246, 49, '1½', 'tsps', 'Calabrian Chile Paste'),
(247, 49, '2', 'Tbsps', 'Crème Fraîche'),
(248, 49, '2', 'Tbsps', 'Sliced Roasted Almonds'),
(249, 49, '2', 'Tbsps', 'Verjus Blanc'),
(250, 50, '4', '', 'Flour Tortillas'),
(251, 50, '2', '', 'Scallions'),
(252, 50, '6', 'oz', 'Chioggia Beet'),
(253, 50, '1', '', 'Jalapeño Pepper'),
(254, 50, '1', '', 'Lime'),
(255, 50, '1', '', 'Navel Orange'),
(256, 50, '3', 'Tbsps', 'Roasted Peanuts'),
(257, 50, '2', 'oz', 'White Cheddar Cheese'),
(258, 50, '¼', 'cup', 'Mexican Crema'),
(259, 50, '1', 'Tbsp', 'Mexican Spice Blend (Ancho Chile Powder, Smoked Paprika, Garlic Powder, Ground Cumin, & Dried Mexican Oregano)'),
(260, 51, '1', 'lb', 'Korean Rice Cakes'),
(261, 51, '2', 'cloves', 'Garlic'),
(262, 51, '2', 'heads', 'Baby Bok Choy'),
(263, 51, '2', 'Tbsps', 'Soy Glaze'),
(264, 51, '1½', 'Tbsps', 'Gochujang'),
(265, 51, '1', '1-Inch Piece', 'Ginger'),
(266, 51, '¼', 'cup', 'Black Bean Sauce'),
(267, 51, '¼', 'cup', 'Crème Fraîche'),
(268, 51, '1', 'bunch', 'Chives'),
(269, 52, '½', 'cup', 'Jasmine Rice'),
(270, 52, '1¾', 'cups', 'Light Coconut Milk'),
(271, 52, '1', '', 'Lime'),
(272, 52, '1', '', 'Yellow Onion'),
(273, 52, '1', 'bunch', 'Mint'),
(274, 52, '2', 'Tbsps', 'Dried Mung Beans'),
(275, 52, '1½', 'Tbsps', 'Yellow Curry Paste'),
(276, 52, '1', '1-Inch Piece', 'Ginger'),
(277, 52, '1', 'Tbsp', 'Sugar'),
(278, 52, '½', 'lb', 'Baby Bok Choy'),
(279, 53, '2', '', 'Cage-Free Farm Eggs'),
(280, 53, '1', '1-Inch Piece', 'Ginger'),
(281, 53, '1½', 'Tbsps', 'Soy Marinade'),
(282, 53, '2', 'Tbsps', 'Roasted Peanuts'),
(283, 54, '10', 'oz', 'Chopped Chicken Breast'),
(284, 54, '1¾', 'cups', 'Light Coconut Milk'),
(285, 54, '3', '', 'Carrots'),
(286, 54, '1', '', 'Lime'),
(287, 54, '1', 'head', 'Baby Bok Choy'),
(288, 54, '½', 'cup', 'Dried Shiitake Mushrooms'),
(289, 54, '2', 'tsps', 'Golden Mountain Sauce'),
(290, 54, '1½', 'Tbsps', 'Yellow Curry Paste'),
(291, 55, '½', 'cup', 'Black Beluga Lentils'),
(292, 55, '2', 'cloves', 'Garlic'),
(293, 55, '1', '', 'Lemon'),
(294, 55, '½', 'lb', 'Broccoli'),
(295, 55, '1', 'bunch', 'Parsley'),
(296, 55, '2', 'Tbsps', 'Butter'),
(297, 55, '1', 'oz', 'Golden Or Red Sweet Piquante Peppers'),
(298, 55, '1', 'Tbsp', 'Capers'),
(299, 56, '2', '', 'Grassfed Strip Steaks'),
(300, 56, '4', 'oz', 'Cremini Mushrooms'),
(301, 56, '1', '1-Inch Piece', 'Ginger'),
(302, 56, '2', 'Tbsps', 'Sweet Chili Sauce'),
(303, 57, '1', '', 'Turkey Breast Roast'),
(304, 57, '⅔', 'cup', 'Semi-Pearled Farro'),
(305, 57, '1', '', 'Apple'),
(306, 57, '1', '', 'Lemon'),
(307, 57, '1', '', 'Endive'),
(308, 57, '1', 'bunch', 'Chives'),
(309, 57, '2', 'Tbsps', 'Butter'),
(310, 57, '1', '', 'Shallot'),
(311, 57, '1', 'Tbsp', 'Honey'),
(312, 57, '1', 'Tbsp', 'Whole Grain Dijon Mustard'),
(313, 58, '2', '', 'Boneless, Skinless Chicken Breasts'),
(314, 58, '2', '', 'Carrots'),
(315, 58, '1', '', 'Red Onion'),
(316, 58, '2', 'cloves', 'Garlic'),
(317, 58, '½', 'cup', 'French Green Lentils'),
(318, 58, '1', 'bunch', 'Collard Greens'),
(319, 58, '2', 'Tbsps', 'Tomato Paste'),
(320, 58, '¼', 'tsp', 'Crushed Red Pepper Flakes'),
(321, 58, '1', 'Tbsp', 'Capers'),
(322, 58, '1', 'Tbsp', 'Apple Cider Vinegar'),
(323, 58, '2', 'Tbsps', 'Crumbled Goat Cheese'),
(324, 58, '1', 'Tbsp', 'Tuscan Spice Blend (Ground Fennel Seeds, Whole Fennel Seeds, Ground Rosemary, & Ground Sage)');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `prep_time` int(11) DEFAULT NULL,
  `cook_time` int(11) DEFAULT NULL,
  `servings` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `instructions` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `category` varchar(50) NOT NULL DEFAULT 'Other',
  `vegetarian` tinyint(1) NOT NULL DEFAULT 0,
  `nut_free` tinyint(1) NOT NULL DEFAULT 0,
  `dairy_free` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `subtitle`, `slug`, `description`, `prep_time`, `cook_time`, `servings`, `image_url`, `instructions`, `created_at`, `category`, `vegetarian`, `nut_free`, `dairy_free`) VALUES
(1, 'Kale & Ricotta Quiche', 'with Romaine, Apple, & Almond Salad', 'kale-ricotta-quiche', 'This savory quiche combines sautéed kale, creamy ricotta, and fresh eggs in a flaky crust—paired with a crisp salad of romaine and apple.', 15, 25, 4, 'foodimages/Quiche/Q1.jpg', '', '2025-11-16 21:02:13', 'Breakfast', 1, 0, 0),
(2, 'Crispy Fish Sandwiches', 'with Tartar Sauce & Roasted Sweet Potato Wedges', 'crispy-fish-sandwiches', 'These sandwiches highlight wild Alaskan pollock—flavored with aromatic seasonings, coated with panko breadcrumbs, and pan-fried for a golden-brown crust. In classic fashion, a tangy, mayo-based tartar sauce perfectly balances the fish.', 15, 15, NULL, 'foodimages/FishSandwiches/FS1.jpg', NULL, '2025-11-17 15:23:50', 'Other', 0, 1, 1),
(16, 'Broccoli & Mozzarella Calzones', 'with Caesar Salad', 'broccoli-mozzarella-calzones', 'These calzones are loaded with melty fresh mozzarella, creamy ricotta, and tender broccoli—balanced by a tangy tomato dipping sauce. For a refreshing side, we’re tossing crunchy romaine and briny black olives in our take on Caesar dressing.', 15, 30, NULL, 'foodimages/BroccCalzones/BC1.jpg', NULL, '2025-11-17 16:06:36', 'Other', 1, 1, 0),
(17, 'Broccoli & Basil Pesto Sandwiches', 'with Romaine & Citrus Salad', 'broccoli-basil-pesto-sandwiches', 'These Italian focaccia sandwiches are layered with broccoli, three cheeses, and a\r\nsavory basil, cashew, and pine nut pesto, then baked in the oven to meld all the bright,\r\naromatic flavors. On the side, weʼre serving a refreshing salad of romaine and seasonal\r\nclementine, dressed in a creamy dressing made with fresh clementine juice.', 20, 25, NULL, 'foodimages/BroccPestoSandwich/BPS1.jpg', NULL, '2025-11-17 17:30:46', 'Other', 1, 0, 0),
(20, 'Bucatini Alfredo', 'with Broccoli', 'bucantini-alfredo', 'This quick-cooking recipe captures all the deliciously creamy, rich flavor of the classic Italian-American sauce—with the welcome addition of quick-braised broccoli. A dusting\r\nof pecorino cheese completes each bowl with a touch of sharpness.', 10, 15, NULL, 'foodimages/BucantiniAlf/BA1.jpg', NULL, '2025-11-17 18:26:56', 'Other', 1, 1, 0),
(25, 'Bucatini with Tomato Sauce', 'with Roasted Broccoli', 'bucatini-with-tomatoez', 'Made with petite datterini tomatoes, the sauce for tonightʼs bucatini highlights briny\r\nolives and capers, hot red pepper flakes, and savory Grana Padano cheese. Weʼre\r\nmixing in roasted broccoli for contrasting texture and nutty-sweet flavor..', 15, 25, NULL, 'foodimages/BucantiniTom/BT1.jpg', NULL, '2025-11-17 18:50:34', 'Other', 0, 0, 0),
(26, 'Roasted Cauliflower Salad', 'with Caper Brown Butter & Parmesan Breadcrumbs', 'cauliflower-salad', 'Seasonal salads donʼt get much more satisfying than this. Weʼre bringing roasted\r\ncauliflower and sautéed kale together with cheesy toasted breadcrumbs and a briny\r\ncaper-studded dressing. Served on top, soft-boiled eggs add extra richness.', 10, 15, NULL, 'foodimages/CauliflowerSalad/CS1.jpg', NULL, '2025-11-17 19:10:27', 'Lunch', 0, 0, 0),
(30, 'Seared Chicken & Mashed Potatoes', 'with Maple-Glazed Carrots', 'chicken-and-mashed', 'Weʼre giving seared chicken a lift with a rich pan sauce, made with sweet maple syrup\r\nand tangy sherry vinegar. Itʼs the perfect accompaniment for creamy mashed potatoes\r\nand roasted carrots, dressed with a bit more maple syrup.', 20, 35, NULL, 'foodimages/ChickenMashedPotatoes/CMP1.jpg', NULL, '2025-11-17 23:45:52', 'Dinner', 0, 1, 0),
(31, 'Parmesan-Crusted Chicken', 'with Mashed Sweet Potatoes & Roasted Broccoli', 'chicken-and-mash', 'In this simple, seasonal recipe, youʼll coat chicken in a combination of flour, parmesan cheese, and savory spices before pan-searing it. Weʼre adding more of the same spices to a bright, creamy sauce, perfect for spooning over the chicken and broccoli.', 15, 20, NULL, 'foodimages/CrustedChicken/CC1.jpg', NULL, '2025-11-18 00:09:46', 'Dinner', 0, 1, 0),
(32, 'Cheesy Enchilada Rojas', 'with Mushrooms & Kale', 'enchiladas', 'Our hearty vegetarian enchiladas are filled with a combination of fragrant, Mexican-spiced rice and sautéed mushrooms and kale. For even more flavor, weʼre baking them under a smoky-sweet tomato sauce flavored with ancho chile paste and a layer of melty white cheddar. A dollop of lime-seasoned sour cream adds creamy, cooling balance. (You may receive green curly, dark green lacinato, or red kale.)', 15, 20, NULL, 'foodimages/Enchiladas/E1.jpg', NULL, '2025-11-18 00:29:12', 'Other', 0, 0, 0),
(33, 'Roasted Chicken and Fall Vegetables', 'with Cranberry & Ginger Compote', 'roasted-chicken-fall-vegetables', 'For this comforting autumn dinner, weʼre seasoning half chickens with the classic flavors of garlic, onion, and smoked paprika, then roasting them along with sweet potatoes and Brussels sprouts. The rich chicken finds delicious contrast in a tart-sweet compote, made simply by cooking fresh cranberries and ginger with a bit of sugar and water.', 15, 25, NULL, 'foodimages/FallChicken/FC1.jpg', NULL, '2025-11-23 17:01:32', 'Dinner', 0, 0, 1),
(34, 'Freekeh Salad & Brussel Sprouts', 'with Lemon Yogurt & Barrel-Aged Feta', 'freekeh-salad-brussels-sprouts', 'This Mediterranean-inspired grain salad is brimming with varied, vibrant flavors. Nutty freekeh and roasted Brussels sprouts get pops of sweetness from pickled peppers and dates, balanced by briny crumbled Feta. To dollop on top, weʼre serving lemon-seasoned yogurt for extra brightness.', 20, 20, NULL, 'foodimages/FreekehSalad/FrS1.jpg', NULL, '2025-11-23 17:05:22', 'Lunch', 0, 0, 0),
(35, 'Fregola Sarda Salad & Roast Broccoli', 'with Hard-Boiled Eggs & Tahini Dressing', 'fregola-sarda-salad-broccoli', 'This Middle Eastern-inspired recipe is brimming with varied flavors and textures. Toasty pearls of pasta, roasted vegetables (seasoned with savory, herby zaʼatar), crumbled cheese, and chopped almonds all come together in a smooth, nutty dressing.', 15, 10, NULL, 'foodimages/FregolaSardaSalad/FSS1.jpg', NULL, '2025-11-23 17:10:55', 'Lunch', 1, 0, 0),
(36, 'Seared Steaks & Garlic Butter', 'with Oven Fries', 'seared-steaks-garlic-butter', '“Steak frites,” or steak with french fries, is classic French bistro fare. Tonightʼs steaks get another layer of rich flavor from garlic butter, spooned over them as they cook. Creamy mustard sauce is a perfect match for the rich steaks and hearty oven-roasted fries, while a simple salad adds refreshing contrast. (You may receive crisp romaine or tender butter lettuce.)', 10, 15, NULL, 'foodimages/GarlicButterSteak/GBS1.jpg', NULL, '2025-11-23 17:17:52', 'Dinner', 0, 1, 0),
(37, 'General Tso\'s Chicken', 'with Bok Choy & Jasmine Rice', 'general-tsos-chicken', 'In this quick-cooking spin on a takeout favorite, hoisin sauce, honey, sriracha, and sesame oil lend our chicken the sweet, spicy, and nutty flavors General Tsoʼs is known for. A light dusting of cornstarch on the chicken just before it hits the pan creates a delicately crispy exterior (and helps it soak up the irresistible sauce later).', 15, 10, NULL, 'foodimages/GeneralTsos/GT1.jpg', NULL, '2025-11-23 17:20:57', 'Dinner', 0, 1, 1),
(38, 'Hoisin-Glazed Pork Chops', 'with Stir-Fried Vegetables & Wonton Noodles', 'hoisin-glazed-pork-chops', 'Delightfully chewy wonton noodles tossed in a nutty, savory sauce are a delicious accompaniment to these pork chops. For depth of flavor, weʼre pan-searing the pork chops, then glazing them with barbecue-like hoisin, whose sweetness perfectly matches bites of sautéed carrots in the noodles.', 20, 15, NULL, 'foodimages/HoisinGlazedPorkChops/HGPC1.jpg', NULL, '2025-11-23 17:28:54', 'Other', 0, 1, 1),
(39, 'Honey-Butter Barramundi', 'with Za\'atar Roasted Vegetables', 'honey-butter-barramundi', 'This Middle Eastern recipe pairs crispy barramundi—served in a family-friendly pan sauce of honey and butter—with a medley of winter vegetables. For savory, herby flavor, weʼre seasoning the vegetables with zaʼatar before roasting them.', 25, 10, NULL, 'foodimages/HoneyButterBarramundi/HBB1.jpg', NULL, '2025-11-23 17:34:15', 'Other', 0, 1, 0),
(40, 'Smoked Gouda & Mushroom Flatbread', 'with Endive & Apple Salad', 'smoked-gouda-mushroom-flatbread', 'For this rustic seasonal meal, weʼre topping flatbread—made by rolling out pizza dough until extra-thin—with two kinds of cheeses, including nutty smoked Gouda. Cremini mushrooms add even more irresistibly savory flavor to the flatbread, balanced by a bright, crisp endive and apple salad.', 10, 30, NULL, 'foodimages/MushroomFlatbread/MF1.jpg', NULL, '2025-11-23 17:37:02', 'Appetizer', 1, 1, 0),
(41, 'Mushroom & Potato Tacos', 'with Romaine & Orange Salad', 'mushroom-potato-tacos', 'For this hearty vegetarian meal, weʼre filling soft flour tortillas with mushrooms and potato—seasoned with a zesty, chorizo-inspired blend, then roasted. A pickled pepper relish lends bright flavor to the tacos, all tied together with a creamy sauce seasoned with the same spices. Our side salad of juicy orange and crunchy romaine rounds out the dish.', 15, 10, NULL, 'foodimages/MushroomPotatoTacos/MPT1.jpg', NULL, '2025-11-23 17:39:25', 'Appetizer', 1, 0, 0),
(44, 'Pork Chorizo Tacos', 'with Cheesy Roasted Potatoes', 'pork-chorizo-tacos', 'These tacos get plenty of bold flavor from ground chorizo (a type of spiced pork sausage), cooked into a delightfully saucy filling with cabbage and fresh citrus juices. On the side, weʼre livening up roasted potatoes with garlic and Cotija cheese.', 15, 20, NULL, 'foodimages/PorkChorizoTacos/PCT1.jpg', NULL, '2025-11-23 18:05:07', 'Appetizer', 0, 1, 0),
(45, 'Roasted Red Pepper Pasta', 'with Lemon-Parmesan Broccoli', 'roasted-red-pepper-pasta', 'In this quick-cooking recipe, whole grain pipe rigate gets pops of flavor from sweet roasted piquillo peppers and briny capers—plus a layer of exciting crunch from almonds. It all comes together in a creamy, mildly spicy sauce.', 10, 10, NULL, 'foodimages/RedPepperPasta/RPP1.jpg', NULL, '2025-11-23 18:08:39', 'Lunch', 1, 0, 0),
(46, 'Roasted Pork & Broccoli', 'with Apple, Cheese Sauce, & Garlic Breadcrumbs', 'roasted-pork-broccoli', 'To elevate the classic savory-sweet pairing, weʼre topping roasted pork with sautéed apple in this crowd-pleasing recipe. The pork and a side of broccoli, roasted on the same sheet pan, come together with a rich, warming fontina cheese sauce.', 15, 25, NULL, 'foodimages/RoastedPorkRecipe/RP1.jpg', NULL, '2025-11-23 18:14:01', 'Other', 0, 1, 0),
(47, 'Salmon & Honey Glazed Carrots', 'with Lemon-Saffron Yogurt Sauce', 'salmon-honey-glazed-carrots', 'This elegant dish gets unique flavor from a prized spice, saffron, used two ways: added to the water used to boil the potatoes and stirred into a creamy yogurt sauce. The bright sauce is delicious spooned over rich salmon, potatoes, and carrots—which get another flavor-packed lift from a glaze of honey and fragrant cumin. Aleppo pepper adds just a hint of spice throughout the dish, balanced by cooling fresh mint.', 15, 20, NULL, 'foodimages/SalmonCarrots/SC1.jpg', NULL, '2025-11-23 18:23:58', 'Other', 0, 1, 0),
(48, 'Shiitake & Hoisin Beef Burgers', 'with Miso Mayonnaise & Roasted Sweet Potatoes', 'shiitake-hoisin-beef-burgers', 'These Asian-inspired burgers get their irresistible umami flavor from chopped shiitake mushrooms (mixed right into the beef) and a miso-mayo spread. Piled on top, crisp ribbons of bok choy round out the burgers, served with a side of roasted sweet potato wedges.', 20, 25, NULL, 'foodimages/ShiitakeBeefBurgers/SBB1.jpg', NULL, '2025-11-23 18:26:53', 'Other', 0, 1, 1),
(49, 'Shrimp Fra Diavolo', 'with Lumaca Rigata Pasta', 'shrimp-fra-diavolo', 'Tonightʼs variation on the beloved Italian-American dish gets its “devilish” heat from Calabrian chile paste, mixed into a tangy-sweet tomato sauce. It perfectly coats shrimp, cabbage, and lumaca rigata pasta. A garnish of sliced almonds finishes the dish with contrasting crunch.', 15, 20, NULL, 'foodimages/ShrimpPasta/SP1.jpg', NULL, '2025-11-23 18:30:04', 'Other', 0, 1, 0),
(50, 'Spicy Chicken Quesadillas', 'with Beet & Orange Salad', 'spicy-chicken-quesadillas', 'A seasonal salad of striped Chioggia beet, juicy orange, and peanuts is a fresh pairing for these zesty quesadillas. Weʼre seasoning the chicken filling with both jalapeño pepper and Mexican spices—balanced by a layer of melty white cheddar. Mexican crema brightened up with lime juice is perfect for dipping.', 15, 15, NULL, 'foodimages/SpicyChickenQuesadilla/SCQ1.jpg', NULL, '2025-11-23 18:37:57', 'Dinner', 0, 0, 0),
(51, 'Spicy Pork & Korean Rice Cakes', 'with Bok Choy', 'spicy-pork-korean-rice-cakes', 'In this crowd-pleasing recipe, a savory and spicy sauce (balanced by a touch of cooling crème fraîche) brings together ground pork, bok choy, and aromatics. Weʼre mixing in delightfully chewy tteok, or rice cakes—a staple of Korean cuisine.', 20, 25, NULL, 'foodimages/SpicyKoreanRiceCakes/SKRC1.jpg', NULL, '2025-11-23 18:43:34', 'Dinner', 0, 1, 0),
(52, 'Roasted Squash Curry', 'with Crispy Mung Beans & Jasmine Rice', 'roasted-squash-curry', 'In this recipe, veggie curry gets a unique lift from spaghetti squash—oven-roasted, then broken into pasta-like strands with a fork. Weʼre finishing our squash and bok choy in a sauce made with fresh aromatics and two well-balanced pantry ingredients: spicy yellow curry paste and cooling coconut milk. A garnish of dried mung beans brings it all together with exciting crunch.', 30, 30, NULL, 'foodimages/SquashCurry/SqC1.jpg', NULL, '2025-11-23 18:50:59', 'Other', 1, 1, 1),
(53, 'Sweet & Sour Vegetable Stir-Fry', 'with Fried Eggs & Peanuts', 'sweet-sour-vegetable-stir-fry', 'Two kinds of citrus—seasonal orange and lemon—give the sauce for our stir-fried vegetables its irresistible sweet-sour balance. The carrots, celery, and bok choy perfectly contrast a rich fried egg and fluffy, radish-studded white rice.', 20, 15, NULL, 'foodimages/SweetSourStirFry/SSS1.jpg', NULL, '2025-11-23 18:54:34', 'Other', 1, 0, 1),
(54, 'Thai Curry Chicken', 'with Carrots and Bok Choy', 'thai-curry-chicken', 'In tonightʼs dish, the spicy and aromatic flavors of yellow curry paste—a Thai staple—shine through a lightly sweet coconut milk broth. Sautéed chicken, carrots, and bok choy give the curry plenty of hearty texture, while fluffy rice eagerly soaks up all the complex flavors. (Chefs, this curry paste packs a punch of heat, so be sure to use only as much as youʼd like!)', 30, 30, NULL, 'foodimages/ThaiCurryChicken/TCC1.jpg', NULL, '2025-11-23 18:57:56', 'Dinner', 0, 1, 1),
(55, 'Tilapia & Black Lentil Salad', 'with Lemon Pan Sauce', 'tilapia-black-lentil-salad', 'In this dish, weʼre putting a twist on Italian gremolata: adding pickled peppers to the classic parsley, garlic, and lemon condiment. The bright, tangy flavors perk up a hearty salad of black lentils and roasted broccoli. Weʼre also using lemon juice as the base for an easy pan sauce to serve over our seared tilapia.', 20, 20, NULL, 'foodimages/Tilapia/T1.jpg', NULL, '2025-11-23 19:02:16', 'Lunch', 0, 1, 0),
(56, 'Top Chef Seared Steaks', 'with Sweet Chili-Glazed Vegetables', 'top-chef-seared-steaks', 'In this recipe, inspired by our Quickfire Challenge from Top Chef Season 15 on Bravo, simple grassfed steaks and rice get a sweet, tart, and spicy lift from glazed mushrooms and bok choy. Sliced radishes, softened a bit with lime juice, finish the dish off with subtle crunch.', 15, 20, NULL, 'foodimages/TopChefSteak/TCS1.jpg', NULL, '2025-11-23 19:06:42', 'Dinner', 0, 1, 1),
(57, 'Roasted Turkey Breast & Farro-Endive Salad', 'with Brown Butter Apple Compote', 'roasted-turkey-breast-farro-endive-salad', 'Fall comfort food gets a delicious lift in this recipe. A sweet, toasty compote (simply apple and shallot cooked in brown butter) balances our savory roasted turkey breast. On the side, weʼre tossing warm grains with endive—first cooked with a bit of honey and lemon to brighten its mildly bitter flavor.', 20, 30, NULL, 'foodimages/TurkeyFarroEndiveSalad/TFES1.jpg', NULL, '2025-11-23 19:09:20', 'Lunch', 0, 1, 0),
(58, 'Tuscan Chicken & Green Lentil Stew', 'with Goat Cheese', 'tuscan-chicken-green-lentil-stew', 'In this comforting cold-weather recipe, weʼre serving Tuscan-spiced chicken over tender green lentils and vegetables cooked in a light, savory tomato broth. Capers and crushed red pepper add briny flavor and a touch of heat to cut through the rich, earthy stew. (Chefs, rinsing the lentils after cooking removes excess starch, resulting in a more delicate flavor.)', 20, 25, NULL, 'foodimages/TuscanChicken/TC1.jpg', NULL, '2025-11-23 19:11:43', 'Dinner', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_images`
--

CREATE TABLE `recipe_images` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_images`
--

INSERT INTO `recipe_images` (`id`, `recipe_id`, `image_url`, `caption`) VALUES
(1, 1, 'foodimages/Quiche/Q1.jpg', NULL),
(2, 1, 'foodimages/Quiche/Q2.jpg', NULL),
(3, 1, 'foodimages/Quiche/Q3.jpg', NULL),
(4, 1, 'foodimages/Quiche/Q4.jpg', NULL),
(5, 1, 'foodimages/Quiche/Q5.jpg', NULL),
(6, 1, 'foodimages/Quiche/Q6.jpg', NULL),
(7, 1, 'foodimages/Quiche/Q7.jpg', NULL),
(8, 1, 'foodimages/Quiche/Q8.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_steps`
--

CREATE TABLE `recipe_steps` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `step_number` int(11) NOT NULL,
  `step_text` text NOT NULL,
  `step_image` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_steps`
--

INSERT INTO `recipe_steps` (`id`, `recipe_id`, `step_number`, `step_text`, `step_image`, `image_url`) VALUES
(1, 1, 1, 'Preheat the oven to 375°F. Wash and dry the fresh produce. Peel and roughly chop the garlic. Thinly slice the apple. Coarsely chop the almonds (or leave whole). Chop the kale; discard stems.', 'foodimages/Quiche/Q2.jpg', NULL),
(2, 1, 2, 'Heat olive oil in a skillet over medium heat. Add garlic and cook 30 seconds. Add kale, salt, and pepper; sauté 3–4 minutes until wilted and tender. Remove from heat and cool slightly.', 'foodimages/Quiche/Q3.jpg', NULL),
(3, 1, 3, 'In a bowl, whisk eggs. Stir in ricotta, mustard, nutmeg, paprika, and a pinch of salt and pepper. Fold in the cooled kale until just combined.', 'foodimages/Quiche/Q4.jpg', NULL),
(4, 1, 4, 'Place the pie crust on a sheet pan. Pour in the filling. Bake at 375°F for 25–30 minutes, until the center is just set and the top is lightly browned. Cool 5 minutes before slicing.', 'foodimages/Quiche/Q5.jpg', NULL),
(5, 1, 5, 'Toss romaine, apple, and almonds with olive oil, lemon, salt, and pepper. Adjust to taste.', 'foodimages/Quiche/Q6.jpg', NULL),
(6, 1, 6, 'Slice the quiche and serve warm with the crisp salad. Enjoy!', 'foodimages/Quiche/Q7.jpg', NULL),
(8, 2, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Wash and dry the fresh produce. Cut the sweet potatoes lengthwise into 1-inch-wide wedges. Place on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer, skin side down. Roast 27 to 29 minutes, or until browned and tender when pierced with a fork. Reserving the sheet pan, transfer to a plate and set aside in a warm place.', 'foodimages/FishSandwiches/FS2.png', NULL),
(9, 2, 2, 'While the sweet potatoes roast, cut off and discard the root end of the lettuce; thinly slice the leaves. Halve the rolls. In a bowl, combine the mayonnaise, creamy mustard sauce, and sweet pickle relish. Season with salt and pepper to taste. Pat the fish fillets dry with paper towels. Halve crosswise.', 'foodimages/FishSandwiches/FS4.jpg', NULL),
(10, 2, 3, 'While the sweet potatoes continue to roast, season the halved fish fillets on both sides with salt, pepper, and the spice blend. Crack the eggs into a bowl; season with salt and pepper. Beat until smooth. Place the breadcrumbs on a plate; season with salt and pepper. Working one piece at a time, thoroughly coat the seasoned fillets in the beaten eggs (letting any excess drip off), then in the breadcrumbs (pressing to adhere). Transfer to a separate plate.', 'foodimages/FishSandwiches/FS5.jpg', NULL),
(11, 2, 4, 'While the sweet potatoes continue to roast, in a large pan (nonstick, if you have one), heat a thin layer of oil on medium-high until hot. Once the oil is hot enough that a pinch of breadcrumbs sizzles immediately when added, working in batches if necessary, add the breaded fish fillets. Cook 2 to 3 minutes per side, or until browned and cooked through. (If the pan seems dry, add 1 teaspoon of olive oil before flipping.) Transfer to a paper towel-lined plate; immediately season with salt and pepper.', 'foodimages/FishSandwiches/FS6.jpg', NULL),
(12, 2, 5, 'While the fish cooks, place the rolls on the same sheet pan, cut side up. Drizzle with olive oil. Toast in the oven 4 to 5 minutes, or until lightly browned. Transfer to a clean work surface.', 'foodimages/FishSandwiches/FS7.jpg', NULL),
(13, 2, 6, 'Divide the sauce, cooked fish fillets, and sliced lettuce among the toasted rolls. Serve the sandwiches with the roasted sweet potatoes on the side. Enjoy!', 'foodimages/FishSandwiches/FS8.jpg', NULL),
(14, 16, 1, 'Remove the dough from the refrigerator to bring to room temperature. Place an oven rack in the center of the oven, then preheat to 475°F. Wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem, then roughly chop the broccoli. Peel and roughly chop the garlic. Tear the mozzarella cheese into small pieces. Quarter and deseed the lemon.', 'foodimages/BroccCalzones/BC2.png', NULL),
(15, 16, 2, 'In a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the chopped broccoli; season with salt and pepper. Cook, stirring occasionally, 4 to 6 minutes, or until lightly browned. Add 2/3 of the chopped garlic. Cook, stirring constantly, 30 seconds to 1 minute, or until fragrant. Add 1/4 cup of water; season with salt and pepper. Cook, stirring occasionally, 2 to 3 minutes, or until the broccoli has softened and the water has cooked off. Transfer to a large bowl. Add the mozzarella cheese, ricotta cheese, half the Italian seasoning, and the juice of 1 lemon wedge; stir to combine. Season with salt and pepper. Wipe out the pan.', 'foodimages/BroccCalzones/BC3.jpg', NULL),
(16, 16, 3, 'Lightly oil a sheet pan. Divide the dough into 2 equal-sized portions; using your hands and a rolling pin (or wine bottle), gently stretch and roll the portions into 1/4-inch-thick rounds. (If the dough is resistant, let rest for 5 minutes.) Divide the filling between the centers of the rounds; fold each round in half over the filling. Using a fork, crimp the edges of the dough to seal. Transfer to the sheet pan. Using a fork, poke a few holes across the tops of the calzones to vent. Lightly drizzle the calzones with olive oil. Bake 16 to 18 minutes, or until golden brown. Transfer to a cutting board and let stand for at least 2 minutes.', 'foodimages/BroccCalzones/BC4.jpg', NULL),
(17, 16, 4, 'While the calzones bake, using the flat side of your knife, smash the olives; remove and discard the pits, then roughly chop. Cut off and discard the root end of the lettuce; roughly chop the leaves. To make the dressing, in a large bowl, combine the mayonnaise, half the parmesan cheese, the juice of the remaining lemon wedges, and a drizzle of olive oil. Season with salt and pepper to taste.', 'foodimages/BroccCalzones/BC5.jpg', NULL),
(18, 16, 5, 'While the calzones continue to bake, in the pan used to cook the broccoli, heat 2 teaspoons of olive oil on medium-high until hot. Add the remaining chopped garlic; cook, stirring constantly, 30 seconds to 1 minute, or until fragrant. Add the tomato sauce and remaining Italian seasoning. Cook, stirring frequently, 2 to 3 minutes, or until slightly thickened. Turn off the heat and season with salt and pepper to taste.', 'foodimages/BroccCalzones/BC6.jpg', NULL),
(19, 16, 6, 'Just before serving, add the chopped olives and lettuce to the bowl of dressing. Toss to coat; season with salt and pepper to taste. Cut the baked calzones in half. Serve with the sauce and salad on the side. Garnish with the remaining parmesan cheese. Enjoy!', 'foodimages/BroccCalzones/BC7.jpg', NULL),
(20, 17, 1, 'Place an oven rack in the center of the oven, then preheat to 475°F. Wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into small pieces, keeping the florets intact. Peel and roughly chop the garlic. Halve the focaccia. Grate the asiago cheese on the large side of a box grater. Tear the mozzarella cheese into small pieces. In a bowl, combine the tomato sauce and Italian seasoning; season with salt and pepper to taste.', 'foodimages/BroccPestoSandwich/BPS2.png', NULL),
(21, 17, 2, 'In a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the broccoli pieces; season with salt and pepper. Cook, stirring occasionally, 3 to 4 minutes, or until slightly softened. Add the chopped garlic; cook, stirring frequently, 1 to 2 minutes, or until slightly softened and fragrant. Add 1/2 cup of water; season with salt and pepper. Cook, stirring occasionally, 4 to 5 minutes, or until the broccoli has softened and the water has cooked off. Turn off the heat.', 'foodimages/BroccPestoSandwich/BPS3.jpg', NULL),
(22, 17, 3, 'Line a sheet pan with foil. Place the halved focaccia on the foil, cut side up; drizzle with olive oil. Top with the seasoned tomato sauce. Top the focaccia bottom with the grated asiago cheese, half the mozzarella cheese, and the cooked broccoli. Evenly top the broccoli with the remaining mozzarella cheese and pesto (stirring before adding). Season both focaccia halves with salt and pepper. Bake, rotating the sheet pan halfway through, 11 to 13 minutes, or until lightly browned and the cheese has melted. Remove from the oven; let stand for at least 2 minutes. Transfer to a cutting board.', 'foodimages/BroccPestoSandwich/BPS4.jpg', NULL),
(23, 17, 4, 'While the focaccia bakes, cut off and discard the root end of the lettuce; roughly chop the leaves. Place in a large bowl. Roughly chop the peppers. Halve 1 clementine crosswise; squeeze the juice into a bowl, straining out any seeds. Peel the remaining clementine; separate into segments. To make the dressing, add the crème fraîche, mustard, and 1 tablespoon of water to the bowl of clementine juice. Slowly whisk in a drizzle of olive oil until combined; season with salt and pepper to taste.', 'foodimages/BroccPestoSandwich/BPS5.jpg', NULL),
(24, 17, 5, 'Just before serving, add the clementine segments, chopped peppers, and dressing to the bowl of chopped lettuce. Toss to thoroughly coat. Season with salt and pepper to taste.', 'foodimages/BroccPestoSandwich/BPS6.jpg', NULL),
(25, 17, 6, 'Evenly top the baked focaccia bottom with the parmesan cheese. Complete with the focaccia top. Using a serrated knife, cut the finished sandwich into 4 equal-sized pieces. Serve with the salad on the side. Enjoy!', 'foodimages/BroccPestoSandwich/BPS7.jpg', NULL),
(26, 20, 1, 'Heat a large pot of salted water to a boil on high. Wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into small pieces, keeping the florets intact. Peel and finely chop the garlic.', 'foodimages/BucantiniAlf/BA2.png', NULL),
(27, 20, 2, 'In a large pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the broccoli pieces; season with salt and pepper. Cook, stirring occasionally, 4 to 5 minutes, or until slightly softened. Add 1/2 cup of water; season with salt and pepper. Cover the pan with aluminum foil and cook for 3 to 4 minutes, or until the broccoli has softened and the water has cooked off. Transfer to a bowl. Wipe out the pan.', 'foodimages/BucantiniAlf/BA3.jpg', NULL),
(28, 20, 3, 'While the broccoli cooks, add the pasta to the pot of boiling water and cook 8 to 10 minutes, or until al dente (still slightly firm to the bite). Reserving ½ cup of the pasta cooking water, drain thoroughly.', 'foodimages/BucantiniAlf/BA4.jpg', NULL),
(29, 20, 4, 'In the same pan, heat 1 1/2 tablespoons of olive oil on medium-high until hot. Add the chopped garlic; season with salt and pepper. Cook, stirring constantly, 30 seconds to 1 minute, or until fragrant. Add the flour and as much of the red pepper flakes as you’d like, depending on how spicy you’d like the dish to be. Cook, stirring constantly, 30 seconds to 1 minute, or until thoroughly combined. Add the heavy cream (shaking the bottle just before opening), verjus, and 1 1/4 cups of water; season with salt and pepper. Cook, whisking frequently, 2 to 3 minutes, or until thickened; season with salt and pepper to taste.', 'foodimages/BucantiniAlf/BA5.jpg', NULL),
(30, 20, 5, 'Add the cooked pasta, cooked broccoli, crème fraîche, and half the reserved pasta cooking water to the pan. Cook, stirring vigorously, 30 seconds to 1 minute, or until the pasta is thoroughly coated. (If the sauce seems dry, gradually add the remaining pasta cooking water to achieve your desired consistency.) Turn off the heat and season with salt and pepper to taste. Garnish the finished pasta with the cheese; season with pepper. Enjoy!', 'foodimages/BucantiniAlf/BA6.jpg', NULL),
(39, 25, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a large pot of salted water to boiling on high. Wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into small pieces. Place on a sheet pan. Drizzle with olive oil and season with salt, pepper, and up to half the Italian seasoning (you will have extra); toss to coat. Arrange in an even layer. Roast 22 to 24 minutes, or until browned and tender when pierced with a fork. Remove from the oven.', 'foodimages/BucantiniTom/BT2.png', NULL),
(40, 25, 2, 'While the broccoli roasts, peel and roughly chop the garlic. Using the flat side of your knife, smash the olives; remove and discard the pits, then roughly chop. Grate the cheese on the small side of a box grater.', 'foodimages/BucantiniTom/BT5.jpg', NULL),
(41, 25, 3, 'While the pasta cooks, in a medium pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the chopped garlic, capers, and as much of the red pepper flakes as you’d like, depending on how spicy you’d like the dish to be; season with salt and pepper. Cook, stirring constantly, 30 seconds to 1 minute, or until fragrant. Add the tomatoes and chopped olives; season with salt and pepper. Cook, stirring occasionally and gently crushing the tomatoes with the back of a spoon, 6 to 7 minutes, or until thickened. Turn off the heat and season with salt and pepper to taste.', 'foodimages/BucantiniTom/BT7.jpg', NULL),
(42, 25, 4, 'To the pot of cooked pasta, add the roasted broccoli, sauce, butter, half the grated cheese, and half the reserved pasta cooking water; season with salt and pepper. Cook on medium-high, stirring vigorously, 1 to 2 minutes, or until the pasta is thoroughly coated. (If the sauce seems dry, gradually add the remaining pasta cooking water to achieve your desired consistency.) Turn off the heat and season with salt and pepper to taste. Garnish the finished pasta with the remaining grated cheese. Enjoy!', 'foodimages/BucantiniTom/BT8.jpg', NULL),
(43, 26, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a small pot of water to boiling on high. Wash and dry the fresh produce. Cut out and discard the core of the cauliflower; cut into small pieces. Place on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast 22 to 24 minutes, or until lightly browned and tender when pierced with a fork. Carefully transfer to a large bowl.', 'foodimages/CauliflowerSalad/CS2.png', NULL),
(44, 26, 2, 'While the cauliflower roasts, peel and thinly slice the shallot. Peel and roughly chop the garlic. Remove and discard the stems of the kale; roughly chop. Using a peeler, remove the yellow rind of the lemon, avoiding the white pith; mince the rind to get 2 teaspoons of zest (or use a zester). Quarter and deseed the lemon.', 'foodimages/CauliflowerSalad/CS4.jpg', NULL),
(45, 26, 3, 'While the cauliflower continues to roast, carefully add the eggs to the pot of boiling water and cook for exactly 7 minutes. Drain and rinse under cold water for 30 seconds to 1 minute to stop the cooking process. When cool enough to handle, carefully peel the cooked eggs.', 'foodimages/CauliflowerSalad/CS5.jpg', NULL),
(46, 26, 4, 'While the eggs cook, in a medium pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the breadcrumbs;season with salt and pepper. Toast, stirring frequently, 2 to 4 minutes, or until lightly browned. Transfer to a bowl and stir in the cheese; season with salt and pepper to taste. Wipe out the pan.', 'foodimages/CauliflowerSalad/CS6.jpg', NULL),
(47, 26, 5, 'In the same pan, heat 1 tablespoon of olive oil on medium-high until hot. Add the sliced shallot and chopped garlic; season with salt and pepper. Cook, stirring frequently, 1 to 2 minutes, or until softened. Add the chopped kale and ¼ cup of water; season with salt and pepper. Cook, stirring occasionally, 3 to 4 minutes, or until the kale has wilted and the water has cooked off. Turn off the heat. Stir in the lemon zest. Transfer to the bowl of roasted cauliflower. Gently stir to combine; season with salt and pepper to taste. Wipe out the pan.', 'foodimages/CauliflowerSalad/CS7.jpg', NULL),
(48, 26, 6, 'In the same pan, heat the butter on medium-high until melted. Cook, stirring frequently and swirling the pan, 1 to 2 minutes, or until browned and nuttily fragrant. (Be careful not to overcook, as the butter can burn easily.) Turn off the heat. Stir in the capers and the juice of all 4 lemon wedges; season with salt and pepper to taste. Top the finished cauliflower and kale with the brown butter, parmesan breadcrumbs, and peeled eggs; season the eggs with salt and pepper. Enjoy!', 'foodimages/CauliflowerSalad/CS8.jpg', NULL),
(49, 30, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a medium pot of salted water to boiling on high. Wash and dry the fresh produce. Peel the carrots; quarter lengthwise, then halve crosswise. Large dice the potatoes.', 'foodimages/ChickenMashedPotatoes/CMP2.jpg.png', NULL),
(50, 30, 2, 'Place the sliced carrots on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast 15 to 17 minutes, or until lightly browned and tender when pierced with a fork. Carefully transfer to a large bowl. Add half the maple syrup; stir to coat. Season with salt and pepper to taste. Loosely cover with aluminum foil to keep warm.', 'foodimages/ChickenMashedPotatoes/CMP3.jpg', NULL),
(51, 30, 3, 'While the carrots roast, add the diced potatoes to the pot of boiling water; cook for 14 to 16 minutes, or until tender when pierced with a fork. Turn off the heat. Drain thoroughly and return to the pot. Add the crème fraîche and 1 tablespoon of olive oil. Using a fork, mash to your desired consistency. Season with salt and pepper to taste. Cover to keep warm.', 'foodimages/ChickenMashedPotatoes/CMP4.jpg', NULL),
(52, 30, 4, 'While the potatoes cook, pat the chicken dry with paper towels; season with salt and pepper on both sides. In a medium pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the seasoned chicken and cook 5 to 7 minutes per side, or until browned and cooked through. Leaving any browned bits (or fond) in the pan, transfer to a cutting board.', 'foodimages/ChickenMashedPotatoes/CMP5.jpg', NULL),
(53, 30, 5, 'Step 5: Add the vinegar and remaining maple syrup to the pan of reserved fond (be careful, as the liquid may splatter). Cook on medium-high, stirring constantly and scraping up any fond, 30 seconds to 1 minute, or until thoroughly combined. Turn off the heat. Stir in the butter until thoroughly combined. Season with salt and pepper to taste.', 'foodimages/ChickenMashedPotatoes/CMP6.jpg', NULL),
(54, 30, 6, 'Slice the cooked chicken crosswise. Serve the sliced chicken with the mashed potatoes and glazed carrots. Top the chicken with the pan sauce. Enjoy!', 'foodimages/ChickenMashedPotatoes/CMP7.jpg', NULL),
(55, 31, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a medium pot of salted water to boiling on high. Wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into small pieces, keeping the florets intact. Quarter and deseed the lemon. Peel and medium dice the sweet potatoes.', 'foodimages/CrustedChicken/CC2.png', NULL),
(56, 31, 2, 'Place the broccoli pieces on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast 16 to 18 minutes, or until browned and tender when pierced with a fork. Remove from the oven. Evenly top with the juice of 2 lemon wedges.', 'foodimages/CrustedChicken/CC3.png.jpg', NULL),
(57, 31, 3, 'While the broccoli roasts, add the diced sweet potatoes to the pot of boiling water. Cook 14 to 16 minutes, or until tender when pierced with a fork. Turn off the heat. Drain thoroughly and return to the pot. Add the butter and a drizzle of olive oil. Using a fork, mash to your desired consistency; season with salt and pepper to taste. Cover to keep warm.', 'foodimages/CrustedChicken/CC4.jpg', NULL),
(58, 31, 4, 'While the sweet potatoes cook, on a large plate, combine the flour, half the cheese, and all but a pinch of the spice blend; season with salt and pepper. Pat the chicken dry with paper towels; season with salt and pepper on both sides. Working one piece at a time, thoroughly coat the seasoned chicken in the flour mixture (tapping off any excess). Transfer to a separate plate.', 'foodimages/CrustedChicken/CC5.jpg', NULL),
(59, 31, 5, 'While the sweet potatoes continue to cook, in a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the coated chicken and cook for 5 to 7 minutes per side, or until golden brown and cooked through. Turn off the heat.', 'foodimages/CrustedChicken/CC6.jpg', NULL),
(60, 31, 6, 'While the chicken cooks, in a bowl, combine the mayonnaise, remaining spice blend, and the juice of the remaining lemon wedges. Season with salt and pepper to taste. Serve the cooked chicken, roasted broccoli, and mashed sweet potatoes with the sauce on the side. Garnish the chicken with the remaining cheese. Enjoy!', 'foodimages/CrustedChicken/CC7.jpg', NULL),
(61, 32, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. In a medium pot, combine the rice, half the spice blend, a big pinch of salt, and 1 1/2 cups of water. Heat to boiling on high. Once boiling, cover and reduce the heat to low. Cook 12 to 14 minutes, or until the water has been absorbed and the rice is tender. Turn off the heat and fluff with a fork. Transfer to a large bowl and set aside in a warm place.', 'foodimages/Enchiladas/E2.png', NULL),
(62, 32, 2, 'While the rice cooks, wash and dry the fresh produce. Thinly slice the mushrooms. Remove and discard the stems of the kale; roughly chop the leaves. Peel and roughly chop the garlic. Peel and thinly slice the onion. Place the tomatoes in a bowl; gently break apart with your hands. Grate the cheese on the large side of a box grater. Thinly slice the chives. Halve the lime crosswise. In a bowl, combine the sour cream, the juice of 1 lime half, and a drizzle of olive oil; season with salt and pepper to taste.', 'foodimages/Enchiladas/E5.jpg', NULL),
(63, 32, 3, 'In a large pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the sliced mushrooms in an even layer. Cook, without stirring, 2 to 3 minutes, or until lightly browned. Add the chopped kale and 1/2 cup of water; season with salt and pepper. Cook, stirring frequently, 4 to 5 minutes, or until the kale has wilted and the water has cooked off. Transfer to the bowl of cooked rice; stir to combine. Wipe out the pan.', 'foodimages/Enchiladas/E6.jpg', NULL),
(64, 32, 4, 'In the same pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the chopped garlic and sliced onion; season with salt and pepper. Cook, stirring frequently, 4 to 5 minutes, or until softened. Add the chile paste and remaining spice blend; cook, stirring constantly, 30 seconds to 1 minute, or until dark red and fragrant. Add the tomatoes; season with salt and pepper. Cook, stirring frequently, 6 to 7 minutes, or until thickened. Turn off the heat. Season with salt and pepper to taste.', 'foodimages/Enchiladas/E7.jpg', NULL),
(65, 32, 5, 'Add half the cheese and the juice of the remaining lime half to the bowl of filling. Stir to combine; season with salt and pepper to taste. Place the tortillas on a work surface. Spread about half the sauce into the bottom of a baking dish. Divide the finished filling among the tortillas; tightly roll up each tortilla around the filling. Transfer to the baking dish in a single layer, seam side down. Evenly top with the remaining sauce and remaining cheese.', 'foodimages/Enchiladas/E8.jpg', NULL),
(66, 32, 6, 'Bake the enchiladas 10 to 12 minutes, or until the cheese has melted. Remove from the oven and let stand for at least 2 minutes. Garnish with the sliced chives. Serve with the lime sour cream. Enjoy!', 'foodimages/Enchiladas/E9.jpg', NULL),
(67, 33, 1, 'Preheat the oven to 450°F. Line a sheet pan with aluminum foil. Pat the chicken dry with paper towels and place on the foil. Season on both sides with salt, pepper, and the spice blend. Drizzle with olive oil and turn to coat; arrange skin side up. Roast 36 to 38 minutes, or until browned and cooked through. (An instant-read thermometer inserted into the thickest part of the thigh should register 165ºF.) Reserving any drippings on the sheet pan, transfer to a cutting board and let rest for at least 5 minutes.', 'foodimages/FallChicken/FC2.jpg.png', NULL),
(68, 33, 2, 'While the chicken roasts, wash and dry the fresh produce. Medium dice the sweet potatoes. Cut off and discard the ends of the Brussels sprouts; halve lengthwise.', 'foodimages/FallChicken/FC4.jpg', NULL),
(69, 33, 3, 'While the chicken continues to roast, place the sweet potatoes and Brussels sprouts on a separate sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast, stirring halfway through, 24 to 26 minutes, or until lightly browned and tender when pierced with a fork. Remove from the oven and top with the vinegar; carefully stir to coat. Set aside in a warm place.', 'foodimages/FallChicken/FC5.jpg', NULL),
(70, 33, 4, 'While the vegetables roast, peel and finely chop the ginger. Roughly chop the walnuts.', 'foodimages/FallChicken/FC6.jpg', NULL),
(71, 33, 5, 'While the vegetables continue to roast, in a small saucepan, combine the cranberries, sugar, ginger, and 1/4 cup of water; season with salt and pepper. Heat to boiling on high. Once boiling, reduce the heat to medium-high. Cook, stirring occasionally, 4 to 6 minutes, or until thickened and the cranberries are mostly broken down; season with salt and pepper to taste. Transfer to a serving dish.', 'foodimages/FallChicken/FC7.jpg', NULL),
(72, 33, 6, 'While the vegetables continue to roast, in a small saucepan, combine the cranberries, sugar, ginger, and 1/4 cup of water; season with salt and pepper. Heat to boiling on high. Once boiling, reduce the heat to medium-high. Cook, stirring occasionally, 4 to 6 minutes, or until thickened and the cranberries are mostly broken down; season with salt and pepper to taste. Transfer to a serving dish.', 'foodimages/FallChicken/FC8.jpg', NULL),
(73, 34, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a medium pot of salted water to boiling on high. Line a sheet pan with aluminum foil. Wash and dry the fresh produce. Cut off and discard the stem ends of the Brussels sprouts; halve lengthwise. Peel the carrots; halve lengthwise, then cut crosswise into 1-inch pieces. Place the vegetables on the sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast 14 to 16 minutes, or until browned and tender when pierced with a fork. Remove from the oven.', 'foodimages/FreekehSalad/FrS2.png', NULL),
(74, 34, 2, 'While the vegetables roast, peel 1 garlic clove; using the flat side of your knife, gently smash to flatten. Add the smashed garlic and freekeh to the pot of boiling water. Cook, uncovered, 20 to 22 minutes, or until tender. Turn off the heat. Drain thoroughly and return to the pot.', 'foodimages/FreekehSalad/FrS4.jpg', NULL),
(75, 34, 3, 'While the freekeh cooks, using a peeler, remove the yellow rind of the lemon, avoiding the white pith; mince the rind to get 2 teaspoons of zest (or use a zester). Quarter and deseed the lemon. Peel and finely chop the remaining garlic clove; using the flat side of your knife, smash until it resembles a paste (or use a zester). Roughly chop the almonds. Pit and roughly chop the dates. Pick the mint leaves off the stems; discard the stems.', 'foodimages/FreekehSalad/FrS5.jpg', NULL),
(76, 34, 4, 'While the freekeh continues to cook, in a bowl, combine the yogurt, lemon zest, the juice of 1 lemon wedge, and as much of the garlic paste as you’d like. Drizzle with olive oil and season with salt and pepper to taste.', 'foodimages/FreekehSalad/FrS6.jpg', NULL),
(77, 34, 5, 'To the pot of cooked freekeh, add the peppers, chopped almonds and dates, roasted vegetables, the juice of the remaining lemon wedges, half the mint leaves (tearing just before adding), and as much of the red pepper flakes as you’d like, depending on how spicy you’d like the dish to be. Drizzle with olive oil and stir to combine. Season with salt and pepper to taste.', 'foodimages/FreekehSalad/FrS7.jpg', NULL),
(78, 34, 6, 'Serve the finished salad with the lemon yogurt on the side. Garnish the salad with the cheese (crumbling before adding), remaining mint leaves (tearing just before adding), and a drizzle of olive oil. Enjoy!', 'foodimages/FreekehSalad/FrS8.jpg', NULL),
(79, 35, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a medium pot of salted water to boiling on high. Heat a small pot of water to boiling on high. Wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into small pieces, keeping the florets intact. Peel and thinly slice the onion. Place the vegetables on a sheet pan. Drizzle with olive oil and season with salt, pepper, and the za’atar seasoning; toss to coat. Arrange in an even layer. Roast 20 to 22 minutes, or until browned and tender when pierced with a fork. Remove from the oven.', 'foodimages/FregolaSardaSalad/FSS2.png', NULL),
(80, 35, 2, 'While the vegetables roast, quarter and deseed the lemon. Peel and finely chop the garlic; using the flat side of your knife, smash until it resembles a paste (or use a zester). Roughly chop the almonds. Using a fork, crumble the cheese into small pieces. Pick the mint leaves off the stems; discard the stems.', 'foodimages/FregolaSardaSalad/FSS3.jpg', NULL),
(81, 35, 3, 'While the vegetables continue to roast, add the pasta to the medium pot of boiling water and cook 14 to 16 minutes, or until tender. Turn off the heat. Drain thoroughly and return to the pot.', 'foodimages/FregolaSardaSalad/FSS4.jpg', NULL),
(82, 35, 4, 'While the pasta cooks, carefully add the eggs to the small pot of boiling water and cook for exactly 9 minutes. Drain and rinse under cold water for 30 seconds to 1 minute to stop the cooking process. When cool enough to handle, carefully peel the cooked eggs. Transfer to a cutting board and thinly slice into rounds; season with salt and pepper.', 'foodimages/FregolaSardaSalad/FSS5.jpg', NULL),
(83, 35, 5, 'While the eggs cook, in a bowl, whisk together the tahini, the juice of all 4 lemon wedges, 2 tablespoons of water, and as much of the garlic paste as you’d like. Slowly whisk in 2 tablespoons of olive oil until well combined; season with salt and pepper to taste.', 'foodimages/FregolaSardaSalad/FSS6.jpg', NULL),
(84, 35, 6, 'Add the roasted vegetables, chopped almonds, crumbled cheese, dressing, and a drizzle of olive oil to the pot of cooked pasta. Stir to combine; season with salt and pepper to taste. Serve the finished salad topped with the seasoned eggs and a drizzle of olive oil. Garnish with the mint leaves (tearing just before adding). Enjoy!', 'foodimages/FregolaSardaSalad/FSS8.jpg', NULL),
(85, 36, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Wash and dry the fresh produce. Cut the potatoes lengthwise into 1/2-inch-thick sticks. Place on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast, flipping halfway through, 22 to 24 minutes, or until lightly browned and tender when pierced with a fork. Remove from the oven.', 'foodimages/GarlicButterSteak/GBS2.png', NULL),
(86, 36, 2, 'While the potatoes roast, peel and finely chop the garlic. Cut off and discard the root end of the lettuce; roughly chop the leaves. Thinly slice the chives.', 'foodimages/GarlicButterSteak/GBS3.jpg', NULL),
(87, 36, 3, 'While the potatoes continue to roast, in a bowl, combine the vinegar and 1/4 of the creamy mustard sauce. Slowly whisk in 2 teaspoons of olive oil until well combined. Season with salt and pepper to taste.', 'foodimages/GarlicButterSteak/GBS4.jpg', NULL),
(88, 36, 4, 'While the potatoes continue to roast, pat the steaks dry with paper towels. Season with salt and pepper on both sides. In a large pan, heat 1 tablespoon of olive oil on medium-high until hot. Add the seasoned steaks and cook 4 to 5 minutes on the first side, or until lightly browned. Flip and cook 2 to 3 minutes, or until lightly browned. Add the chopped garlic and butter. Cook, frequently spooning the butter over the steaks, 1 to 2 minutes for medium-rare, or until the steaks are browned and cooked to your desired degree of doneness. Transfer the cooked steaks to a cutting board. Let rest for at least 5 minutes. Transfer the garlic butter to a bowl.', 'foodimages/GarlicButterSteak/GBS6.jpg', NULL),
(89, 36, 5, 'While the steaks rest, place the chopped lettuce in a large bowl. Add enough of the vinaigrette to coat the lettuce (you may have extra vinaigrette). Toss to coat; season with salt and pepper to taste.', 'foodimages/GarlicButterSteak/GBS7.jpg', NULL),
(90, 36, 6, 'Find the lines of muscle (or grain) on the rested steaks; thinly slice crosswise against the grain. Serve the sliced steaks with the roasted potatoes and salad. Drizzle the steaks and potatoes with the garlic butter. Garnish the salad with the sliced chives. Serve with the remaining creamy mustard sauce on the side. Enjoy!', 'foodimages/GarlicButterSteak/GBS8.jpg', NULL),
(91, 37, 1, 'Remove the honey from the refrigerator to bring to room temperature. In a medium saucepan, combine the rice, a big pinch of salt, and 1 1/2 cups of water; heat to boiling on high. Once boiling, cover and reduce the heat to low. Cook 12 to 14 minutes, or until the water has been absorbed and the rice is tender. Turn off the heat and fluff with a fork. Cover to keep warm.', 'foodimages/GeneralTsos/GT2.png', NULL),
(92, 37, 2, 'While the rice cooks, pat the chicken dry with paper towels. Place in a large bowl and season with salt and pepper. Add the cornstarch; toss to thoroughly coat. In a medium pan, heat a thin layer of oil on medium-high until hot. Once the oil is hot enough that a piece of chicken sizzles immediately when added, add the coated chicken in an even layer (tapping off any excess cornstarch before adding). Cook, without stirring, 3 to 4 minutes, or until lightly browned. Continue to cook, stirring occasionally, 3 to 4 minutes, or until browned and cooked through. Leaving any browned bits (or fond) in the pan, transfer to a plate. Set aside in a warm place.', 'foodimages/GeneralTsos/GT3.jpg', NULL),
(93, 37, 3, 'While the chicken cooks, wash and dry the fresh produce. Cut off and discard the root end of the bok choy; roughly chop. Peel and finely chop the ginger. Peel and roughly chop the garlic. In a bowl, combine the hoisin sauce, vinegar, honey (kneading the packet before opening), sesame oil, 1 tablespoon of water, and as much of the sriracha as you’d like, depending on how spicy you’d like the dish to be.', 'foodimages/GeneralTsos/GT4.jpg', NULL),
(94, 37, 4, 'Add the chopped bok choy, ginger, and garlic to the pan of reserved fond; season with salt and pepper. (If the pan seems dry, add 1 tablespoon of olive oil.) Cook on medium-high, stirring frequently, 2 to 3 minutes, or until softened and fragrant. Add the sauce and cook, stirring constantly and scraping up any fond, 30 seconds to 1 minute, or until thoroughly combined.', 'foodimages/GeneralTsos/GT5.jpg', NULL),
(95, 37, 5, 'Turn off the heat and add the cooked chicken to the pan; stir to thoroughly coat. Season with salt and pepper to taste. Serve the finished chicken and bok choy with the cooked rice. Enjoy!', 'foodimages/GeneralTsos/GT6.jpg', NULL),
(96, 38, 1, 'Fill a medium pot with water; add a pinch of salt. Heat to boiling on high. Wash and dry the fresh produce. Peel and finely chop the ginger. Cut out and discard the core of the cabbage; thinly slice the leaves. Peel the carrots and thinly slice into rounds. Thinly slice the chives.', 'foodimages/HoisinGlazedPorkChops/HGPC2.png', NULL),
(97, 38, 2, 'In a large pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the chopped ginger, sliced cabbage, and sliced carrots; season with salt and pepper. Cook, stirring occasionally, 4 to 5 minutes, or until softened and fragrant. Transfer to a bowl and cover with aluminum foil to keep warm. Rinse and wipe out the pan.', 'foodimages/HoisinGlazedPorkChops/HGPC3.jpg', NULL),
(98, 38, 3, 'Pat the pork chops dry with paper towels; season with salt and pepper on both sides. In the same pan, heat 1 tablespoon of olive oil on medium-high until hot. Add the seasoned pork chops and cook 3 to 5 minutes on the first side, or until browned. Flip and cook 2 to 3 minutes, or until lightly browned. Add the hoisin sauce and 1/4 cup of water. Cook, frequently spooning the glaze over the pork, 2 to 3 minutes, or until the pork chops are coated and cooked through. Turn off the heat.', 'foodimages/HoisinGlazedPorkChops/HGPC4.jpg', NULL),
(99, 38, 4, 'While the pork chops cook, in a bowl, whisk together the soy sauce, tahini, vinegar, and as much of the sambal oelek as you’d like, depending on how spicy you’d like the dish to be. Season with salt and pepper to taste.', 'foodimages/HoisinGlazedPorkChops/HGPC5.jpg', NULL),
(100, 38, 5, 'While the pork chops continue to cook, using your hands, carefully separate the noodles and add to the pot of boiling water; cook, stirring occasionally, 2 to 4 minutes, or until tender. Turn off the heat. Drain thoroughly and return to the pot.', 'foodimages/HoisinGlazedPorkChops/HGPC6.jpg', NULL),
(101, 38, 6, 'Add the cooked vegetables, sauce, and ¼ cup of water to the pot of cooked noodles. Cook on medium-high, stirring constantly, 30 seconds to 1 minute, or until thoroughly combined. Turn off the heat. Season with salt and pepper to taste. Serve the finished noodles topped with the glazed pork chops (including any glaze from the pan). Garnish with the sliced chives. Enjoy!', 'foodimages/HoisinGlazedPorkChops/HGPC8.jpg', NULL),
(102, 39, 1, 'Remove the honey from the refrigerator to bring to room temperature. Place an oven rack in the center of the oven, then preheat to 450°F. Wash and dry the fresh produce. Halve the potatoes lengthwise; cut crosswise into 1/4-inch pieces. Peel the carrots; halve lengthwise, then cut crosswise into 1/2-inch pieces. Cut off and discard the ends of the radishes; quarter lengthwise, then halve crosswise. Quarter and deseed the lemon. Peel and finely chop the garlic; using the flat side of your knife, smash until it resembles a paste (or use a zester). Roughly chop the parsley leaves and stems.', 'foodimages/HoneyButterBarramundi/HBB2.png', NULL),
(103, 39, 2, 'Place the sliced potatoes and carrot pieces on a sheet pan. Drizzle with 1 tablespoon of olive oil; season with salt, pepper, and the za’atar seasoning. Toss to coat. Arrange in an even layer on one side of the sheet pan. Roast 12 to 14 minutes, or until lightly browned. Leaving the oven on, remove from the oven. Place the radish pieces in a bowl. Drizzle with olive oil and season with salt and pepper; toss to coat. Carefully arrange on the other side of the sheet pan. Roast 10 to 12 minutes, or until tender when pierced with a fork. Remove from the oven. Evenly top with the juice of 2 lemon wedges.', 'foodimages/HoneyButterBarramundi/HBB3.jpg', NULL),
(104, 39, 3, 'While the vegetables roast, in a bowl, combine the yogurt, the juice of the remaining lemon wedges, 1 tablespoon of olive oil, and as much of the garlic paste as you’d like. Drizzle with olive oil and season with salt and pepper to taste.', 'foodimages/HoneyButterBarramundi/HBB4.jpg', NULL),
(105, 39, 4, 'Once the vegetables have roasted for about 10 minutes, pat the fish fillets dry with paper towels; season with salt and pepper on both sides. In a large pan (nonstick, if you have one), heat 1 tablespoon of olive oil on medium-high until hot. Add the seasoned fillets, skin side down. Cook 4 to 6 minutes on the first side, or until lightly browned. Flip and add the butter. Cook, frequently spooning the butter over the fillets, 2 to 3 minutes, or until the fish is cooked through. Leaving the melted butter and any browned bits (or fond) in the pan, transfer the cooked fillets to a plate.', 'foodimages/HoneyButterBarramundi/HBB5.jpg', NULL),
(106, 39, 5, 'Add the honey (kneading the packet before opening) and 2 tablespoons of water to the pan of melted butter (be careful, as the liquid may splatter). Cook on medium-high, stirring frequently and scraping up any fond, 30 seconds to 1 minute, or until slightly thickened. Turn off the heat and season with salt and pepper to taste.', 'foodimages/HoneyButterBarramundi/HBB6.jpg', NULL),
(107, 39, 6, 'Serve the cooked fish fillets and roasted vegetables with the yogurt sauce on the side. Top the fish with the pan sauce. Garnish with the chopped parsley. Enjoy!', 'foodimages/HoneyButterBarramundi/HBB8.jpg', NULL),
(108, 40, 1, 'Remove the dough and honey from the refrigerator to bring to room temperature. Place an oven rack in the center of the oven, then preheat to 475°F. Wash and dry the fresh produce. Thinly slice the mushrooms. Peel and roughly chop the garlic. Peel and thinly slice the onion. Remove and discard the stems of the kale; roughly chop the leaves. Grate both cheeses on the large side of a box grater (discarding any rind). Combine in a bowl.', 'foodimages/MushroomFlatbread/MF2.png', NULL),
(109, 40, 2, 'In a large pan (nonstick, if you have one), heat a drizzle of olive oil on medium-high until hot. Add the sliced mushrooms in an even layer. Cook, without stirring, 2 to 3 minutes, or until lightly browned. Add the chopped garlic and sliced onion; season with salt and pepper. Cook, stirring occasionally, 2 to 3 minutes, or until lightly browned and fragrant.', 'foodimages/MushroomFlatbread/MF3.jpg', NULL),
(110, 40, 3, 'Add the chopped kale to the pan; season with salt and pepper. Cook, stirring frequently, 1 to 2 minutes, or until slightly wilted. Add 1/4 cup of water; season with salt and pepper. Cook, stirring occasionally, 3 to 4 minutes, or until the kale has wilted and the water has cooked off. Turn off the heat. Season with salt and pepper to taste.', 'foodimages/MushroomFlatbread/MF4.jpg', NULL),
(111, 40, 4, 'Lightly oil a sheet pan. On a work surface, using your hands and a rolling pin (or a wine bottle), gently stretch and roll the dough to a 1/8-inch thickness. (If the dough is resistant, let rest for 5 minutes.) Carefully transfer the dough to the sheet pan; rub the dough into the pan to coat the bottom in oil. Leaving a 1-inch border around the edges, evenly top the prepared dough with the finished vegetables, grated cheeses, and a drizzle of olive oil. Season with salt and pepper. Bake, rotating the sheet pan halfway through, 14 to 16 minutes, or until the crust has browned and the cheese has melted. Remove from the oven and let stand for at least 2 minutes.', 'foodimages/MushroomFlatbread/MF5.jpg', NULL),
(112, 40, 5, 'While the flatbread bakes, cut off and discard the root end of the endive; roughly chop the leaves. Core, quarter, and thinly slice the apple. To make the dressing, in a large bowl, whisk together the vinegar, honey (kneading the packet before opening), and 1 tablespoon of olive oil until thoroughly combined. Season with salt and pepper to taste.', 'foodimages/MushroomFlatbread/MF6.jpg', NULL),
(113, 40, 6, 'Just before serving, add the chopped endive and sliced apple to the bowl of dressing. Toss to combine; season with salt and pepper to taste. Serve the baked flatbread with the salad on the side. Enjoy!', 'foodimages/MushroomFlatbread/MF8.jpg', NULL),
(114, 41, 1, 'Preheat the oven to 450°F. Wash and dry the fresh produce. Quarter the mushrooms. Quarter the potatoes lengthwise, then cut crosswise into 1/2-inch pieces. Place the vegetables on a sheet pan. Drizzle with olive oil and season with salt, pepper, and 3/4 of the spice blend; toss to coat. Arrange in an even layer. Roast 21 to 23 minutes, or until browned and tender when pierced with a fork. Remove from the oven.', 'foodimages/MushroomPotatoTacos/MPT2.png', NULL),
(115, 41, 2, 'While the vegetables roast, roughly chop the piquante peppers. Peel and small dice the shallot. Cut off and discard the root end of the lettuce; roughly chop the leaves. Peel and medium dice the orange. Cut off and discard the ends of the radishes; halve lengthwise, then thinly slice crosswise. Roughly chop the jalapeño pepper; thoroughly wash your hands and cutting board immediately after handling. In a bowl, combine the sour cream, a drizzle of olive oil, and as much of the remaining spice blend as you’d like (you may have extra). Season with salt and pepper to taste.', 'foodimages/MushroomPotatoTacos/MPT3.jpg', NULL),
(116, 41, 3, 'While the vegetables continue to roast, place the tortillas on a large piece of aluminum foil. Tightly wrap to seal. Place directly onto the oven rack and warm 5 to 7 minutes, or until heated through and pliable. Transfer to a work surface and carefully unwrap.', 'foodimages/MushroomPotatoTacos/MPT4.jpg', NULL),
(117, 41, 4, 'While the tortillas warm, in a medium bowl, combine the chopped piquante peppers, diced shallot, half the vinegar, and as much of the chopped jalapeño pepper as you’d like, depending on how spicy you’d like the dish to be. Drizzle with olive oil and season with salt and pepper to taste.', 'foodimages/MushroomPotatoTacos/MPT5.jpg', NULL),
(118, 41, 5, 'While the tortillas continue to warm, in a medium bowl, combine the chopped lettuce, diced orange, sliced radishes, peanuts, and remaining vinegar. Drizzle with olive oil and season with salt and pepper to taste.', 'foodimages/MushroomPotatoTacos/MPT6.jpg', NULL),
(119, 41, 6, 'Spread a layer of the seasoned sour cream onto the warmed tortillas. Top with the roasted vegetables and pepper relish. Serve the tacos with the salad on the side. Enjoy!', 'foodimages/MushroomPotatoTacos/MPT8.jpg', NULL),
(126, 44, 1, 'Preheat the oven to 450°F. Wash and dry the fresh produce. Halve the potatoes lengthwise, then cut crosswise into 1/4-inch pieces. Place on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast 22 to 24 minutes, or until browned and tender when pierced with a fork. Carefully transfer to a large bowl.', 'foodimages/PorkChorizoTacos/PCT2.png', NULL),
(127, 44, 2, 'While the potatoes roast, cut out and discard the core of the cabbage; thinly slice the leaves. Halve the orange; squeeze the juice into a bowl, straining out any seeds. Cut off and discard the ends of the radishes; halve lengthwise, then thinly slice crosswise. Peel and finely chop the garlic; using the flat side of your knife, smash until it resembles a paste (or use a zester). Quarter the lime. In a bowl, combine the crème fraîche and the juice of 1 lime wedge. Drizzle with olive oil and season with salt and pepper to taste.', 'foodimages/PorkChorizoTacos/PCT3.jpg', NULL),
(128, 44, 3, 'While the potatoes continue to roast, in a medium pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the ground chorizo; season with salt and pepper. Cook, frequently breaking the meat apart with a spoon, 3 to 5 minutes, or until browned. Add the sliced cabbage; season with salt and pepper. Cook, stirring occasionally, 2 to 3 minutes, or until slightly softened. Add the orange juice and 1/2 cup of water; season with salt and pepper. Cook, stirring occasionally, 6 to 7 minutes, or until the cabbage has softened and the chorizo is cooked through. Turn off the heat and stir in the juice of 2 lime wedges; season with salt and pepper to taste.', 'foodimages/PorkChorizoTacos/PCT4.jpg', NULL),
(129, 44, 4, 'While the filling cooks, place the tortillas on a large piece of aluminum foil and tightly wrap to seal. Place directly onto the oven rack and warm 5 to 7 minutes, or until heated through and pliable. Transfer to a work surface and carefully unwrap. While the tortillas warm, in a bowl, combine the sliced radishes and the juice of the remaining lime wedge. Drizzle with olive oil and season with salt and pepper.', 'foodimages/PorkChorizoTacos/PCT5.jpg', NULL),
(130, 44, 5, 'While the tortillas continue to warm, add the cheese and as much of the garlic paste as you’d like to the bowl of roasted potatoes. Stir to coat; season with salt and pepper to taste.', 'foodimages/PorkChorizoTacos/PCT6.jpg', NULL),
(131, 44, 6, 'Divide the filling, seasoned radishes, and lime crème fraîche among the warmed tortillas. Serve the tacos with the finished potatoes on the side. Enjoy!', 'foodimages/PorkChorizoTacos/PCT8.jpg', NULL),
(132, 45, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a large pot of salted water to boiling on high. Wash and dry the fresh produce. Quarter and deseed the lemon. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into small pieces, keeping the florets intact. Place on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast 16 to 18 minutes, or until browned and tender when pierced with a fork. Remove from the oven. Evenly top with the juice of 2 lemon wedges.', 'foodimages/RedPepperPasta/RPP2.png', NULL),
(133, 45, 2, 'While the broccoli roasts, add the pasta to the pot of boiling water and cook 8 to 10 minutes, or until al dente (still slightly firm to the bite). Reserving 1/2 cup of the pasta cooking water, drain thoroughly.', 'foodimages/RedPepperPasta/RPP3.jpg', NULL),
(134, 45, 3, 'While the pasta cooks, peel and roughly chop the garlic. Finely chop the peppers.', 'foodimages/RedPepperPasta/RPP4.jpg', NULL);
INSERT INTO `recipe_steps` (`id`, `recipe_id`, `step_number`, `step_text`, `step_image`, `image_url`) VALUES
(135, 45, 4, 'While the pasta continues to cook, in a medium pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the capers and chopped garlic and peppers; season with salt and pepper. Cook, stirring frequently, 2 to 3 minutes, or until lightly browned. Add the tomato paste and as much of the chile paste as you’d like, depending on how spicy you’d like the dish to be. Cook, stirring constantly, 1 to 2 minutes, or until dark red and fragrant. Turn off the heat; add the heavy cream (shaking the bottle just before opening) and 1/4 cup of water. Stir to combine; season with salt and pepper to taste.', 'foodimages/RedPepperPasta/RPP5.jpg', NULL),
(136, 45, 5, 'To the pan of sauce, add the cooked pasta, butter, and half the reserved pasta cooking water. Cook on medium-high, stirring vigorously, 30 seconds to 1 minute, or until the pasta is thoroughly coated. (If the sauce seems dry, gradually add the remaining pasta cooking water to achieve your desired consistency.) Turn off the heat and season with salt and pepper to taste. Serve the finished pasta with the roasted broccoli and remaining lemon wedges on the side. Garnish the pasta with the almonds and half the cheese. Garnish the broccoli with the remaining cheese. Enjoy!', 'foodimages/RedPepperPasta/RPP7.jpg', NULL),
(137, 46, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Line a sheet pan with aluminum foil. Wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into large pieces, keeping the florets intact. Place on the sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer on one side of the sheet pan. Pat the pork dry with paper towels; season on all sides with salt, pepper, and the spice blend. Place on the other side of the sheet pan. Drizzle with olive oil; turn to coat. Roast, rotating the sheet pan halfway through, 26 to 28 minutes, or until the broccoli is browned and the pork is cooked through. (An instant-read thermometer inserted into the pork should register 145°F.) Remove from the oven. Transfer the roasted pork to a cutting board and let rest for at least 5 minutes.', 'foodimages/RoastedPorkRecipe/RP2.png', NULL),
(138, 46, 2, 'While the pork and broccoli roast, peel and finely chop the garlic; using the side of your knife, smash until it resembles a paste (or use a zester). Core and medium dice the apple. Small dice the cheese.', 'foodimages/RoastedPorkRecipe/RP3.jpg', NULL),
(139, 46, 3, 'While the pork and broccoli continue to roast, in a medium pan, heat a drizzle of olive oil on medium-high until hot. Add the breadcrumbs and half the garlic paste. Cook, stirring constantly, 2 to 3 minutes, or until golden brown. Transfer to a plate; immediately season with salt and pepper. Wipe out the pan.', 'foodimages/RoastedPorkRecipe/RP4.jpg', NULL),
(140, 46, 4, 'While the pork and broccoli continue to roast, in the same pan, heat a drizzle of olive oil on medium-high until hot. Add the diced apple; season with salt and pepper. Cook, stirring occasionally, 3 to 5 minutes, or until slightly softened. Add the vinegar and cook, stirring constantly, 30 seconds to 1 minute, or until the liquid has cooked off. Transfer to a bowl; season with salt and pepper to taste. Cover with aluminum foil to keep warm. Rinse and wipe out the pan.', 'foodimages/RoastedPorkRecipe/RP5.jpg', NULL),
(141, 46, 5, 'While the pork rests, in the same pan, heat 1 1/2 tablespoons of olive oil on medium-high until hot. Add the flour and remaining garlic paste; season with salt and pepper. Cook, stirring constantly, 30 seconds to 1 minute, or until lightly browned and fragrant. Add the milk and 1/2 cup of water; season with salt and pepper. Cook, whisking frequently, 2 to 3 minutes, or until thickened. Add the diced cheese; season with salt and pepper. Cook, whisking constantly, 1 to 2 minutes, or until the cheese has melted. Turn off the heat and season with salt and pepper to taste.', 'foodimages/RoastedPorkRecipe/RP6.jpg', NULL),
(142, 46, 6, 'Find the lines of muscle (or grain) on the rested pork; thinly slice crosswise against the grain. Serve the sliced pork with the roasted broccoli and cheese sauce. Top the pork with the cooked apple and garlic breadcrumbs. Enjoy!', 'foodimages/RoastedPorkRecipe/RP8.jpg', NULL),
(143, 47, 1, 'Remove the honey from the refrigerator to bring to room temperature. Wash, dry, and medium dice the potatoes. In a small pot, combine the potatoes, half the saffron, and a big pinch of salt. Add enough water to cover the potatoes by 1/2 inch. Heat to boiling on high. Once boiling, cook 10 to 12 minutes, or until the potatoes are tender when pierced with a fork. Drain thoroughly and return to the pot. Set aside in a warm place.', 'foodimages/SalmonCarrots/SC2.png', NULL),
(144, 47, 2, 'While the potatoes cook, wash and dry the remaining fresh produce. Peel the carrots; cut into 1/2-inch-thick pieces on an angle. Peel and roughly chop the garlic. Pick the mint leaves off the stems; discard the stems. Using a peeler, remove the rind of the lemon, avoiding the pith; mince to get 2 teaspoons of zest (or use a zester). Quarter and deseed the lemon. In a medium bowl, combine the remaining saffron and the juice of 1 lemon wedge.', 'foodimages/SalmonCarrots/SC4.jpg', NULL),
(145, 47, 3, 'In a medium pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the carrots and garlic; season with salt and pepper. Cook, stirring occasionally, 2 to 3 minutes, or until slightly softened. Add the cumin and honey (kneading the packet before opening). Cook, stirring constantly, 30 seconds to 1 minute, or until fragrant. Add 3/4 cup of water. Cook, stirring occasionally, 8 to 10 minutes, or until the carrots are softened and glazed. Transfer to a bowl. Season with salt and pepper to taste.', 'foodimages/SalmonCarrots/SC5.jpg', NULL),
(146, 47, 4, 'While the carrots cook, to the bowl of saffron-lemon juice mixture, add the yogurt, lemon zest, a drizzle of olive oil, and up to half the Aleppo pepper. Stir to combine; season with salt and pepper to taste.', 'foodimages/SalmonCarrots/SC6.jpg', NULL),
(147, 47, 5, 'While the carrots continue to cook, pat the salmon fillets dry with paper towels; season with salt and pepper on both sides. Rinse and wipe out the pan used to glaze the carrots. In the same pan, heat 1 tablespoon of olive oil on medium-high until hot. Add the seasoned fillets, skinless side down. Cook 3 to 4 minutes on the first side, or until lightly browned. Flip and cook 2 to 3 minutes, or until lightly browned and cooked to your desired degree of doneness. Turn off the heat.', 'foodimages/SalmonCarrots/SC7.jpg', NULL),
(148, 47, 6, 'While the salmon cooks, add the glazed carrots, the juice of the remaining lemon wedges, half the mint (tearing the leaves just before adding), and as much of the remaining Aleppo pepper as you’d like to the pot of cooked potatoes. Drizzle with olive oil; stir to combine. Season with salt and pepper to taste. Divide between 2 dishes. Top each with a cooked salmon fillet and a spoonful of the yogurt sauce. Garnish with the remaining mint (tearing the leaves just before adding). Serve with the remaining yogurt sauce on the side. Enjoy!', 'foodimages/SalmonCarrots/SC8.jpg', NULL),
(149, 48, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Wash and dry the sweet potatoes; cut lengthwise into 1-inch wedges. Place on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer, skin side down. Roast 22 to 24 minutes, or until browned and tender when pierced with a fork. Remove from the oven.', 'foodimages/ShiitakeBeefBurgers/SBB2.png', NULL),
(150, 48, 2, 'While the sweet potatoes roast, wash and dry the remaining fresh produce. In a bowl, combine the mushrooms and 1 cup of hot water; let stand for at least 10 minutes to rehydrate. Peel and finely chop the garlic; using the flat side of your knife, smash until it resembles a paste (or use a zester). Cut off and discard the root ends of the scallions; thinly slice, separating the white bottoms and green tops. Cut off and discard the root end of the bok choy; thinly slice. Place in a bowl. Drizzle with olive oil and season with salt and pepper; toss to coat. Halve the buns. In a bowl, combine the miso paste and mayonnaise; season with salt and pepper to taste.', 'foodimages/ShiitakeBeefBurgers/SBB3.jpg', NULL),
(151, 48, 3, 'While the sweet potatoes continue to roast, drain the rehydrated mushrooms. Transfer to a cutting board; finely chop. In a large bowl, combine the chopped mushrooms, ground beef, garlic paste, sliced white bottoms of the scallions, and hoisin sauce; season with salt and pepper. Gently mix to combine. Using your hands, form into four 1/2-inch-thick patties. Transfer to a plate.', 'foodimages/ShiitakeBeefBurgers/SBB4.jpg', NULL),
(152, 48, 4, 'While the sweet potatoes continue to roast, in a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the patties and cook 3 to 4 minutes per side, or until browned and cooked to your desired degree of doneness. Leaving any browned bits (or fond) in the pan, transfer to a plate.', 'foodimages/ShiitakeBeefBurgers/SBB5.jpg', NULL),
(153, 48, 5, 'Working in batches if necessary, add the buns, cut side down, to the pan of reserved fond. (If the pan seems dry, add a drizzle of olive oil.) Toast on medium-high 30 seconds to 1 minute, or until lightly browned. Transfer to a work surface.', 'foodimages/ShiitakeBeefBurgers/SBB6.jpg', NULL),
(154, 48, 6, 'Divide the miso mayonnaise, cooked patties, and seasoned bok choy among the toasted buns. Serve the burgers with the roasted sweet potatoes. Garnish the sweet potatoes with the sliced green tops of the scallions. Enjoy!', 'foodimages/ShiitakeBeefBurgers/SBB8.jpg', NULL),
(155, 49, 1, 'Fill a medium pot with water; add a big pinch of salt and heat to boiling on high. Wash and dry the fresh produce. Cut out and discard the core of the cabbage; thinly slice the leaves. Peel and roughly chop the garlic.', 'foodimages/ShrimpPasta/SP2.png', NULL),
(156, 49, 2, 'Pat the shrimp dry with paper towels; season with salt and pepper. In a medium pan, heat a drizzle of olive oil on medium-high until hot. Add the seasoned shrimp; cook, stirring occasionally, 3 to 4 minutes, or until opaque and cooked through. Leaving any browned bits (or fond) in the pan, transfer to a plate. Set aside in a warm place.', 'foodimages/ShrimpPasta/SP3.jpg', NULL),
(157, 49, 3, 'Add the sliced cabbage to the pan of reserved fond; season with salt and pepper. (If the pan seems dry, add a drizzle of olive oil.) Cook on medium-high, stirring occasionally, 2 to 3 minutes, or until slightly softened. Add the verjus and 1/4 cup of water; season with salt and pepper. Cook, stirring occasionally and scraping up any fond, 3 to 5 minutes, or until the cabbage has softened and the water has cooked off. Transfer to the plate of cooked shrimp. Wipe out the pan.', 'foodimages/ShrimpPasta/SP4.jpg', NULL),
(158, 49, 4, 'While the cabbage cooks, add the pasta to the pot of boiling water. Cook, stirring occasionally, 9 to 11 minutes, or until al dente (still slightly firm to the bite). Reserving 1/2 cup of the pasta cooking water, drain thoroughly.', 'foodimages/ShrimpPasta/SP5.jpg', NULL),
(159, 49, 5, 'While the pasta cooks, in the same pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the chopped garlic; season with salt and pepper. Cook, stirring constantly, 30 seconds to 1 minute, or until softened and fragrant. Add the tomato sauce, 1/3 cup of water, and as much of the chile paste as you’d like, depending on how spicy you’d like the dish to be; season with salt and pepper. Cook, stirring occasionally, 4 to 5 minutes, or until thickened. Season with salt and pepper to taste.', 'foodimages/ShrimpPasta/SP6.jpg', NULL),
(160, 49, 6, 'Add the cooked pasta, cooked shrimp and cabbage, and half the reserved pasta cooking water to the pan. Cook, stirring vigorously, 1 to 2 minutes, or until coated. (If the sauce seems dry, gradually add the remaining pasta cooking water to achieve your desired consistency.) Turn off the heat; stir in the crème fraîche until thoroughly combined. Season with salt and pepper to taste. Top the finished pasta with the almonds and a drizzle of olive oil. Enjoy!', 'foodimages/ShrimpPasta/SP8.jpg', NULL),
(161, 50, 1, 'Heat a small pot of salted water to boiling on high. Wash and dry the fresh produce. Peel the beet and cut lengthwise into 1/4-inch wedges. Once the pot of water is boiling, add the beet wedges and cook, uncovered, 22 to 24 minutes, or until tender when pierced with a fork. Drain and rinse under cold water for 30 seconds to 1 minute to stop the cooking process. Pat dry with paper towels and transfer to a large bowl.', 'foodimages/SpicyChickenQuesadilla/SCQ2.png', NULL),
(162, 50, 2, 'While the beet cooks, cut off and discard the root ends of the scallions; thinly slice, separating the white bottoms and green tops. Using a peeler, remove the green rind of the lime, avoiding the white pith; mince to get 2 teaspoons of zest (or use a zester). Quarter the lime. Grate the cheese on the large side of a box grater. Peel the orange; halve lengthwise, then thinly slice crosswise. To make the lime crema, in a bowl, combine the crema and the juice of 2 lime wedges; season with salt and pepper to taste. Cut out and discard the stem, ribs, and seeds of the pepper; finely chop. Thoroughly wash your hands, knife, and cutting board immediately after handling the pepper.', 'foodimages/SpicyChickenQuesadilla/SCQ3.jpg', NULL),
(163, 50, 3, 'While the beet continues to cook, pat the chicken dry with paper towels; season on both sides with salt, pepper, and the spice blend. In a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the seasoned chicken; cook 3 to 4 minutes per side, or until browned and cooked through. Transfer to a cutting board; when cool enough to handle, roughly chop. Transfer to a medium bowl. Rinse and wipe out the pan.', 'foodimages/SpicyChickenQuesadilla/SCQ4.jpg', NULL),
(164, 50, 4, 'To the bowl of chopped chicken, add the sliced white bottoms of the scallions, lime zest, the juice of 1 lime wedge, a drizzle of olive oil, and as much of the chopped pepper as you’d like, depending on how spicy you’d like the dish to be. Stir to combine; season with salt and pepper to taste. Place the tortillas on a work surface. Sprinkle the grated cheese onto 1 side of each tortilla. Evenly top with the filling. Fold each tortilla in half over the filling.', 'foodimages/SpicyChickenQuesadilla/SCQ5.jpg', NULL),
(165, 50, 5, 'In the same pan, heat 2 teaspoons of olive oil on medium until hot. Add the quesadillas; cook 2 to 3 minutes per side, or until the tortillas are browned and the cheese has melted. (If the pan seems dry, add a drizzle of olive oil before flipping.) Transfer to a cutting board; immediately season with salt and pepper.', 'foodimages/SpicyChickenQuesadilla/SCQ6.jpg', NULL),
(166, 50, 6, 'While the quesadillas cook, add the sliced orange, peanuts, the juice of the remaining lime wedge, and a drizzle of olive oil to the bowl of cooked beet. Stir to combine; season with salt and pepper to taste. Cut the cooked quesadillas in half. Garnish the quesadillas and salad with the sliced green tops of the scallions. Serve with the lime crema on the side. Enjoy!', 'foodimages/SpicyChickenQuesadilla/SCQ7.jpg', NULL),
(167, 51, 1, 'Heat a large pot of salted water to boiling on high. Wash and dry the fresh produce. Peel and finely chop the ginger. Peel and roughly chop the garlic. Cut off and discard the root end of the bok choy; roughly chop the leaves and stems, keeping them separate. Thinly slice the chives.', 'foodimages/SpicyKoreanRiceCakes/SKRC2.png', NULL),
(168, 51, 2, 'In a large pan, heat 2 teaspoons of olive oil on medium until hot. Add the ground pork (removing and discarding the paper lining from the bottom); season with salt and pepper. Cook, frequently breaking the meat apart with a spoon, 4 to 6 minutes, or until lightly browned.', 'foodimages/SpicyKoreanRiceCakes/SKRC3.jpg', NULL),
(169, 51, 3, 'Add the chopped ginger and garlic to the pan; season with salt and pepper. Cook, stirring occasionally, 2 to 3 minutes, or until softened and the pork is cooked through.', 'foodimages/SpicyKoreanRiceCakes/SKRC4.jpg', NULL),
(170, 51, 4, 'To the pan, add the chopped bok choy stems, soy glaze, black bean sauce, 1/2 cup of water, and as much of the gochujang as you’d like, depending on how spicy you’d like the dish to be. Cook, stirring occasionally, 3 to 4 minutes, or until the bok choy stems have softened and the liquid has thickened. Turn off the heat. Season with salt and pepper to taste.', 'foodimages/SpicyKoreanRiceCakes/SKRC5.jpg', NULL),
(171, 51, 5, 'While the sauce cooks, add the rice cakes to the pot of boiling water and cook for 2 to 3 minutes, or until tender. Drain thoroughly.', 'foodimages/SpicyKoreanRiceCakes/SKRC6.jpg', NULL),
(172, 51, 6, 'Add the cooked rice cakes and chopped bok choy leaves to the pan of cooked pork and sauce; season with salt and pepper. Cook on medium-high, stirring frequently, 1 to 2 minutes, or until the rice cakes are thoroughly coated and the bok choy leaves are slightly wilted. Turn off the heat; stir in the crème fraîche and half the sliced chives. Season with salt and pepper to taste. Garnish the finished pork and rice cakes with the remaining sliced chives. Enjoy!', 'foodimages/SpicyKoreanRiceCakes/SKRC8.jpg', NULL),
(173, 52, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Wash and dry the fresh produce. Using a sharp, sturdy knife, carefully halve the squash lengthwise; using a spoon, scoop out and discard the pulp and seeds. Place in a baking dish, cut side up. Drizzle with olive oil and season with salt and pepper; arrange cut side down. Fill the dish with 1/4 inch of water. Roast 32 to 35 minutes, or until the cut side of the squash is tender when pierced with a fork. Remove from the oven.', 'foodimages/SquashCurry/SqC2.png', NULL),
(174, 52, 2, 'While the squash roasts, in a small saucepan, combine the rice, lime leaf, a big pinch of salt, and 1 cup of water. Heat to boiling on high. Once boiling, cover and reduce the heat to low. Cook 12 to 14 minutes, or until the water has been absorbed and the rice is tender. Turn off the heat. Carefully remove and discard the lime leaf. Fluff the cooked rice with a fork. Cover and set aside in a warm place.', 'foodimages/SquashCurry/SqC3.jpg', NULL),
(175, 52, 3, 'While the rice cooks, peel and thinly slice the onion. Peel and finely chop the ginger. Quarter the lime. Cut off and discard the root end of the bok choy; thinly slice crosswise. Pick the mint leaves off the stems; discard the stems.', 'foodimages/SquashCurry/SqC4.jpg', NULL),
(176, 52, 4, 'While the rice continues to cook, in a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the sliced onion; season with salt and pepper. Cook, stirring occasionally, 3 to 4 minutes, or until slightly softened. Add the chopped ginger; season with salt and pepper. Cook, stirring frequently, 1 to 2 minutes, or until lightly browned and fragrant.', 'foodimages/SquashCurry/SqC5.jpg', NULL),
(177, 52, 5, 'To the pan, add the coconut milk (shaking the can just before opening), sugar, and as much of the curry paste as you’d like, depending on how spicy you’d like the dish to be; season with salt and pepper. Cook, stirring occasionally, 3 to 4 minutes, or until slightly thickened. Turn off the heat and season with salt and pepper to taste.', 'foodimages/SquashCurry/SqC6.jpg', NULL),
(178, 52, 6, 'When cool enough to handle, using a fork, scrape the flesh of the roasted squash into a bowl; separate any clumps. (The result should resemble cooked spaghetti.) Discard the skins. Add the squash and sliced bok choy to the pan of curry. Cook on medium-high, stirring frequently, 2 to 3 minutes, or until thoroughly combined. Turn off the heat. Stir in the juice of 2 lime wedges; season with salt and pepper to taste. Top the cooked rice with the finished curry. Garnish with the mung beans and mint leaves (tearing just before adding). Serve with the remaining lime wedges on the side. Enjoy!', 'foodimages/SquashCurry/SqC8.jpg', NULL),
(179, 53, 1, 'Wash and dry the fresh produce. Peel the carrots; thinly slice on an angle. Slice the celery on an angle into 1/2-inch-thick pieces. Halve the orange; squeeze the juice into a medium bowl, straining out any seeds. Peel and roughly chop the garlic. Peel and finely chop the ginger. Cut off and discard the root end of the bok choy; roughly chop. Quarter and deseed the lemon. Cut off and discard the ends of the radishes; small dice. Place in a bowl and top with the juice of 1 lemon wedge and half the sesame oil. Season with salt and pepper. Set aside to marinate, stirring occasionally, for at least 10 minutes. Season with salt and pepper to taste.', 'foodimages/SweetSourStirFry/SSS2.png', NULL),
(180, 53, 2, 'While the radishes marinate, in a medium saucepan, combine the rice, a big pinch of salt, and 1 1/2 cups of water; heat to boiling on high. Once boiling, cover and reduce the heat to low. Cook 12 to 14 minutes, or until the water has been absorbed and the rice is tender. Turn off the heat and fluff with a fork. Cover to keep warm.', 'foodimages/SweetSourStirFry/SSS3.jpg', NULL),
(181, 53, 3, 'While the rice cooks, in a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the sliced carrots and celery; season with salt and pepper. Cook, stirring occasionally, 6 to 7 minutes, or until slightly softened.', 'foodimages/SweetSourStirFry/SSS4.jpg', NULL),
(182, 53, 4, 'While the vegetables cook, to the bowl of orange juice, add the soy glaze, soy marinade, and the juice of the remaining lemon wedges. Stir to combine; season with salt and pepper to taste.', 'foodimages/SweetSourStirFry/SSS5.jpg', NULL),
(183, 53, 5, 'To the pan of vegetables, add the chopped garlic and ginger and remaining sesame oil. Cook, stirring constantly, 30 seconds to 1 minute, or until fragrant. Add the sauce and chopped bok choy; cook, stirring constantly, 1 to 2 minutes, or until the bok choy leaves have wilted. Transfer to a bowl and season with salt and pepper to taste. Rinse and wipe out the pan.', 'foodimages/SweetSourStirFry/SSS6.jpg', NULL),
(184, 53, 6, 'In the same pan, heat 2 teaspoons of olive oil on medium-high until hot. Keeping them separate, crack the eggs into the pan; season with salt and pepper. Cook 4 to 5 minutes, or until the whites are set and the yolks are cooked to your desired degree of doneness. Turn off the heat. Stir the marinated radishes (including any marinating liquid) into the saucepan of cooked rice. Serve the finished rice with the finished stir-fry. Top with the fried eggs and peanuts. Enjoy!', 'foodimages/SweetSourStirFry/SSS7.jpg', NULL),
(185, 54, 1, 'Wash and dry the fresh produce. In a bowl, combine the mushrooms and 1 cup of warm water. Let stand for at least 10 minutes. Peel the carrots; thinly slice into rounds. Cut off and discard the root end of the bok choy; thinly slice the stems and roughly chop the leaves, keeping them separate. Quarter the lime.', 'foodimages/ThaiCurryChicken/TCC2.png', NULL),
(186, 54, 2, 'In a small saucepan, combine the rice, a big pinch of salt, and 1 1/2 cups of water; heat to boiling on high. Once boiling, cover and reduce the heat to low. Cook 12 to 14 minutes, or until the water has been absorbed and the rice is tender. Turn off the heat and fluff with a fork. Cover and set aside in a warm place.', 'foodimages/ThaiCurryChicken/TCC3.jpg', NULL),
(187, 54, 3, 'While the rice cooks, pat the chicken dry with paper towels; season with salt and pepper. In a large pan, heat 1 tablespoon of olive oil on medium-high until hot. Add the seasoned chicken; cook, stirring occasionally, 3 to 4 minutes, or until lightly browned. Leaving any browned bits (or fond) in the pan, transfer to a plate.', 'foodimages/ThaiCurryChicken/TCC4.jpg', NULL),
(188, 54, 4, 'While the chicken browns, drain the rehydrated mushrooms. Transfer to a cutting board and roughly chop. Add 2 teaspoons of olive oil to the pan of reserved fond; heat on medium-high until hot. Add the sliced carrots and as much of the curry paste as you’d like, depending on how spicy you’d like the dish to be; season with salt and pepper. Cook, stirring frequently, 1 to 2 minutes, or until slightly softened and fragrant.', 'foodimages/ThaiCurryChicken/TCC5.jpg', NULL),
(189, 54, 5, 'To the pan, add the browned chicken, sliced bok choy stems, Golden Mountain sauce, chopped mushrooms, and coconut milk (shaking the can just before opening); season with salt and pepper. Heat to boiling on high. Once boiling, reduce the heat to medium-high and cook, stirring occasionally, 4 to 5 minutes, or until the liquid is slightly reduced in volume. Add the chopped bok choy leaves. Cook, stirring occasionally, 2 to 3 minutes, or until the liquid is slightly thickened and the chicken is cooked through. Turn off the heat and stir in the juice of 2 lime wedges. Season with salt and pepper to taste. Serve the finished curry and cooked rice with the remaining lime wedges on the side. Enjoy!', 'foodimages/ThaiCurryChicken/TCC7.jpg', NULL),
(190, 55, 1, 'Place an oven rack in the center of the oven, then preheat to 450°F. Heat a medium saucepan of salted water to boiling on high. Once boiling, add the lentils and cook, uncovered, 24 to 26 minutes, or until tender. Turn off the heat. Drain thoroughly and rinse under warm water; return to the pot. Cover to keep warm.', 'foodimages/Tilapia/T2.png', NULL),
(191, 55, 2, 'While the lentils cook, wash and dry the fresh produce. Cut off and discard the bottom 1/2 inch of the broccoli stem; cut the broccoli into small pieces, keeping the florets intact. Place on a sheet pan. Drizzle with olive oil and season with salt and pepper; toss to coat. Arrange in an even layer. Roast 15 to 17 minutes, or until browned and tender when pierced with a fork. Remove from the oven.', 'foodimages/Tilapia/T3.jpg', NULL),
(192, 55, 3, 'While the broccoli roasts, peel the garlic. Roughly chop 1 clove. Finely chop the remaining clove; using the flat side of your knife, smash until it resembles a paste (or use a zester). Using a peeler, remove the yellow rind of the lemon, avoiding the white pith; mince the rind to get 2 teaspoons of zest (or use a zester). Quarter and deseed the lemon. Roughly chop the peppers. Finely chop the parsley leaves and stems. To make the gremolata, in a bowl, combine the lemon zest, chopped peppers, half the chopped parsley, the juice of 2 lemon wedges, 1 tablespoon of olive oil, and as much of the garlic paste as you’d like. Season with salt and pepper to taste.', 'foodimages/Tilapia/T4.jpg', NULL),
(193, 55, 4, 'Pat the fish fillets dry with paper towels; season with salt and pepper on both sides. In a large pan (nonstick, if you have one), heat 2 teaspoons of olive oil on medium-high until hot. Add the seasoned fillets and cook 2 to 3 minutes per side, or until lightly browned and cooked through. Leaving any browned bits (or fond) in the pan, transfer to a plate.', 'foodimages/Tilapia/T5.jpg', NULL),
(194, 55, 5, 'Add the capers, chopped garlic, butter, and 1 tablespoon of olive oil to the pan of reserved fond; season with salt and pepper. Cook on medium-high, stirring constantly and scraping up any fond, 1 to 2 minutes, or until browned and fragrant. Turn off the heat; stir in the juice of the remaining lemon wedges (be careful, as the liquid may splatter). Season with salt and pepper to taste.', 'foodimages/Tilapia/T6.jpg', NULL),
(195, 55, 6, 'To the saucepan of cooked lentils, add the roasted broccoli and gremolata. Stir to combine; season with salt and pepper to taste. Serve the finished lentils with the cooked fish fillets. Top the fish with the pan sauce. Garnish with the remaining chopped parsley. Enjoy!', 'foodimages/Tilapia/T8.jpg', NULL),
(196, 56, 1, 'Wash and dry the fresh produce. Quarter the mushrooms. Peel and thinly slice the shallot. Peel and finely chop the ginger. Cut off and discard the root end of the bok choy; roughly chop. Quarter the lime. Cut off and discard the ends of the radishes; thinly slice into rounds. Place in a bowl and top with the juice of 1 lime wedge and a drizzle of olive oil; season with salt and pepper. Stir to coat. In a bowl, combine the ponzu sauce, sweet chili sauce, sugar, 1/4 cup of water, and as much of the soy marinade as you’d like.', 'foodimages/TopChefSteak/TCS2.png', NULL),
(197, 56, 2, 'In a medium pot, combine the rice, a big pinch of salt, and 1 1/2 cups of water; heat to boiling on high. Once boiling, cover and reduce the heat to low. Cook 12 to 14 minutes, or until the water has been absorbed and the rice is tender. Turn off the heat and fluff with a fork. Cover to keep warm.', 'foodimages/TopChefSteak/TCS3.jpg', NULL),
(198, 56, 3, 'While the rice cooks, pat the steaks dry with paper towels; season with salt and pepper on both sides. In a large pan, heat 2 tablespoons of olive oil on medium-high until hot. Add the seasoned steaks and cook 4 to 5 minutes per side for medium-rare, or until browned and cooked to your desired degree of doneness. Leaving any browned bits (or fond) in the pan, transfer to a cutting board and let rest for at least 5 minutes.', 'foodimages/TopChefSteak/TCS5.jpg', NULL),
(199, 56, 4, 'While the steaks rest, add 1 tablespoon of olive oil to the pan of reserved fond; heat on medium-high until hot. Add the quartered mushrooms in an even layer. Cook, without stirring, 3 to 4 minutes, or until lightly browned and slightly softened. Add the sliced shallot and chopped ginger; season with salt and pepper. Cook, stirring constantly, 30 seconds to 1 minute, or until fragrant.', 'foodimages/TopChefSteak/TCS6.jpg', NULL),
(200, 56, 5, 'Add the glaze and chopped bok choy to the pan; season with salt and pepper. Cook, stirring occasionally, 4 to 5 minutes, or until the glaze is slightly thickened and the vegetables have softened. Turn off the heat and stir in the juice of the remaining lime wedges. Season with salt and pepper to taste.', 'foodimages/TopChefSteak/TCS7.jpg', NULL),
(201, 56, 6, 'Find the lines of muscle (or grain) on the rested steaks; thinly slice crosswise against the grain. Serve the sliced steaks with the cooked rice and glazed vegetables. Garnish with the marinated radishes (draining before adding). Enjoy!', 'foodimages/TopChefSteak/TCS8.jpg', NULL),
(202, 57, 1, 'Remove the honey from the refrigerator to bring to room temperature. Place an oven rack in the center of the oven; preheat to 450°F. Heat a medium pot of salted water to boiling on high. Line a sheet pan with foil. Remove and discard the netting from the turkey; season with salt and pepper on both sides. In a large pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the seasoned turkey, skin side down. Cook 4 to 6 minutes on the first side, or until lightly browned. Flip and cook 3 to 5 minutes, or until lightly browned. Leaving any browned bits (or fond) in the pan on the stove, transfer to the sheet pan, skin side up. Roast 15 to 17 minutes, or until cooked through. (An instant-read thermometer should register 165ºF.) Transfer to a cutting board and let rest for at least 5 minutes.', 'foodimages//TurkeyFarroEndiveSalad/TFES2.png', NULL),
(203, 57, 2, 'While the turkey roasts, add the farro to the pot of boiling water and cook, uncovered, 17 to 19 minutes, or until tender. Drain thoroughly and return to the pot. Set aside in a warm place.', 'foodimages//TurkeyFarroEndiveSalad/TFES3.jpg', NULL),
(204, 57, 3, 'While the farro cooks, wash and dry the fresh produce. Peel and finely chop the shallot. Cut off and discard the root end of the endive; thinly slice crosswise. Quarter and deseed the lemon. Core and small dice the apple. Cut the chives into 1/2-inch pieces.', 'foodimages//TurkeyFarroEndiveSalad/TFES4.jpg', NULL),
(205, 57, 4, 'While the farro continues to cook, add 2 teaspoons of olive oil to the pan of reserved fond; heat on medium-high until hot. Add half the chopped shallot; season with salt and pepper. Cook, stirring constantly, 30 seconds to 1 minute, or until softened. Add the sliced endive; season with salt and pepper. Cook, stirring frequently, 1 to 2 minutes, or until softened. Add half the honey (kneading the packet before opening) and the juice of 2 lemon wedges. Cook, stirring constantly, 30 seconds to 1 minute, or until thoroughly combined. Transfer to a bowl and season with salt and pepper to taste. Rinse and wipe out the pan.', 'foodimages//TurkeyFarroEndiveSalad/TFES5.jpg', NULL),
(206, 57, 5, 'While the farro continues to cook, in the same pan, heat the butter on medium-high until melted. Cook, stirring frequently and swirling the pan, 1 to 2 minutes, or until browned and nuttily fragrant. Add the diced apple and remaining chopped shallot; season with salt and pepper. Cook, stirring frequently, 1 to 2 minutes, or until slightly softened. Add the juice of the remaining lemon wedges and the remaining honey. Cook, stirring constantly, 30 seconds to 1 minute, or until thoroughly combined. Turn off the heat and season with salt and pepper to taste.', 'foodimages//TurkeyFarroEndiveSalad/TFES6.jpg', NULL),
(207, 57, 6, 'Add the cooked endive, mustard, half the sliced chives, and a drizzle of olive oil to the pot of cooked farro. Stir to combine; season with salt and pepper to taste. Thinly slice the rested turkey crosswise. Serve the sliced turkey with the farro salad. Top the turkey with the compote. Garnish with the remaining sliced chives and a drizzle of olive oil. Enjoy!', 'foodimages//TurkeyFarroEndiveSalad/TFES8.jpg', NULL),
(208, 58, 1, 'Heat a medium pot of salted water to boiling on high. Once boiling, add the lentils and cook, uncovered, 27 to 29 minutes, or until tender. Drain thoroughly and rinse under warm water 30 seconds to 1 minute, or until the water runs clear.', 'foodimages/TuscanChicken/TC2.png', NULL),
(209, 58, 2, 'While the lentils cook, wash and dry the fresh produce. Peel and thinly slice the onion. Peel and roughly chop the garlic. Peel and medium dice the carrots. Roughly chop the capers. Remove and discard the stems of the collard greens; roughly chop the leaves.', 'foodimages/TuscanChicken/TC4.jpg', NULL),
(210, 58, 3, 'While the lentils continue to cook, pat the chicken dry with paper towels; season on both sides with salt, pepper, and half the spice blend. In a large pan, heat 2 teaspoons of olive oil on medium-high until hot. Add the seasoned chicken and cook 5 to 7 minutes per side, or until browned and cooked through. Leaving any browned bits (or fond) in the pan, transfer to a cutting board.', 'foodimages/TuscanChicken/TC5.jpg', NULL),
(211, 58, 4, 'Add the sliced onion, chopped garlic, and diced carrots to pan of reserved fond; season with salt and pepper. (If the pan seems dry, add 2 teaspoons of olive oil.) Cook on medium-high, stirring frequently, 4 to 5 minutes, or until softened and fragrant. Add the tomato paste, chopped capers, remaining spice blend, and as much of the red pepper flakes as you’d like, depending on how spicy you’d like the dish to be. Cook, stirring constantly, 30 seconds to 1 minute, or until dark red and fragrant. Add the chopped collard greens and 2 cups of water; season with salt and pepper. Cook, stirring occasionally and scraping up any fond, 8 to 9 minutes, or until the collard greens have wilted and the liquid has thickened. Turn off the heat.', 'foodimages/TuscanChicken/TC6.jpg', NULL),
(212, 58, 5, 'Slice the cooked chicken crosswise. Add the cooked lentils and vinegar to the pan of cooked vegetables. Stir to combine. Season with salt and pepper to taste. Serve the finished lentils and vegetables topped with the sliced chicken. Garnish with the cheese. Enjoy!', 'foodimages/TuscanChicken/TC7.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `recipe_images`
--
ALTER TABLE `recipe_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipe_steps`
--
ALTER TABLE `recipe_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `recipe_images`
--
ALTER TABLE `recipe_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recipe_steps`
--
ALTER TABLE `recipe_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_images`
--
ALTER TABLE `recipe_images`
  ADD CONSTRAINT `recipe_images_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_steps`
--
ALTER TABLE `recipe_steps`
  ADD CONSTRAINT `recipe_steps_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
