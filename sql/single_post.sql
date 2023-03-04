-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 02:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aquarium`
--

-- --------------------------------------------------------

--
-- Table structure for table `single_post`
--

CREATE TABLE `single_post` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `img_content` text DEFAULT NULL,
  `img_bg` text DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `single_post`
--

INSERT INTO `single_post` (`id`, `description`, `title`, `img_content`, `img_bg`, `author`) VALUES
(1, 'Fish diseases can be notoriously hard to diagnose, but one of the more easily recognizable illnesses is an internal parasite called the camallanus red worm. There are multiple species of nematodes or roundworms that are part of the Camallanus genus that can infect aquarium fish. They feed by attaching to the intestinal walls and can often co-exist with their host for a long time. However, added stress factors like bad water quality or tank aggression may weaken the immune system, allowing the worms to cause serious damage and even mortality.In the early stages of the disease, the fish looks quite normal for a while. Then you may start to notice that juvenile fish are growing more slowly than usual, the adults may not be breeding as much, and you are gradually losing a few fish here and there over the course of months. Some hobbyists also reported a loss in appetite.\r\n\r\nThe telltale sign of this sickness is when you see one or more small, red worms coming out of the fish’s anal vent. It can look like a cluster of little, scarlet threads sticking out about ¼ to ½ inch (0.6–1.3 cm). At this point, the disease is at a very advanced stage where the fish may look abnormally thin (from the worms absorbing all the nutrients) or have a belly swollen with worms. Because the worms are blocking the intestines, secondary infections can take root and cause other symptoms to appear.\r\n\r\nCamallanus red worms are often more noticeable in small livebearers like guppies because it only takes a few worms to cause serious problems in a nano fish. The worms need a much longer time to multiply to a point where the population that is large enough to take down bigger fish like angelfish.If infected fish are introduced to your aquarium, the sick fish passes out the worm larvae in its waste, which are eaten by tiny crustaceans like cyclops. When a healthy fish eats the infected crustaceans, it becomes contaminated and the larvae mature in the fish’s body into adults that can reproduce, thus continuing the cycle. Some species of camallanus worms do not need an intermediate host, and fish can get infected directly by nibbling on fish feces that contain larvae. Either way, the disease is fairly contagious, so adding plants, gravel, or equipment from an infected tank to a healthy tank can cause cross contamination that also spreads the parasite.', 'How to Treat Camallanus Red Worms in Aquarium Fish', 'https://cdn.shopify.com/s/files/1/0311/3149/files/guppy_with_camallanus_worm.jpg?v=1668629851', 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_dwarf_water_lettuce_with_baby_fish.jpg?v=1668626028&width=832', 'John Doe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `single_post`
--
ALTER TABLE `single_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `single_post`
--
ALTER TABLE `single_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
