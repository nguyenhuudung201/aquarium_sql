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
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `img_bg` text NOT NULL,
  `img_content` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `time_post` date NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `animal_id`, `img_bg`, `img_content`, `title`, `description`, `time_post`, `author`) VALUES
(1, 1, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_angelfish_eating_fish_food.jpg?v=1676315453&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/koi_eating_pellets.jpg?v=1676315822', 'How to Pick the Best Fish Foods That Aquarium Fish Can’t Resist', 'With so many brands and types of fish foods at the pet store, how do you know which one to get? Many beginners just reach for a jar that has a picture of their fish on the front without considering whether or not their fish will actually eat it. Living animals actually have preferences when it comes to the taste, ingredients, and form factor, and picky eaters may even refuse the most expensive, high-quality brands if they don’t suit their needs. Let’s talk about the different types of fish foods that are most readily available to fishkeepers and what types of fish they are most appropriate for.\r\n\r\nDry, Prepared Fish Foods\r\nFlake foods are one of the most common fish foods at pet stores because of their cheaper cost and universal usage. They float at the surface to feed top-dwelling fish and then slowly sink to feed midwater and bottom-dwelling creatures. They can be crumbled to a smaller size that caters to baby fry and nano species. Plus, they come in many varieties with different ingredients to satisfy the diets of carnivores, omnivores, and herbivores. Because the flakes are so thin and soft, fish can easily bite into them to tear off chunks. However, that also means the flakes can disintegrate quickly in water, so they may not be the best food for slow eaters or constant grazers.', '2023-03-16', 'Sara'),
(2, 2, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_platy_fish.jpg?v=1675193307&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Xiphophorus_maculatus_southern_platyfish.jpg?v=1675193330', ' Aquarium Fish That Love Hard Water', 'Did you know that certain aquarium fish may not do well in your home because they prefer water parameters that are very different from your tap water? For example, if the pH and GH (or general hardness) coming out of your faucet are very high, then discus, crystal shrimp, and other creatures from soft water environments may be more difficult to keep. That being said, do not despair if your water hardness is off the charts and considered to be “liquid rock.” Many species thrive in hard water environments, so we’ve listed our top 10 community fish that can live in high pH and GH conditions.\r\nThis lively, beginner-friendly fish is one of our favorite livebearers to keep because of their bold colors, inexpensive cost, and ease of care. They only grow to 2–3 inches (5–7 cm) long and are very accepting of a broad spectrum of parameters, including harder water. While the southern platy (X. maculatus) is more of a tropical fish, the variatus platy (X. variatus) is accustomed to cooler waters and can live in an unheated tank at home. Like many livebearers, platies are great clean-up crew members that not only pick up leftover fish food around the tank but also nibble on algae without eating the aquarium plants. For more details about their requirements, see our platy article.', '2023-03-08', 'Irene Bearly'),
(3, 3, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_cherry_barb.jpg?v=1674692108&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/female_and_male_cherry_barb.jpg?v=1674692243', 'Care Guide for Cherry Barbs — Peaceful Barb for Community Tanks', 'Barbs often get a bad reputation because of their boisterous, fin-nipping behavior, but cherry barbs are an exception to the rule. This 2-inch (5 cm) schooling fish acts like your average, mild-mannered tetra and mixes well with other community fish. They are commonly sold at pet stores because of their vivid redness, energetic personality, and ease of breeding. Learn all about how to care for this popular and peaceful barb.\r\n\r\nWhat are Cherry Barbs?\r\nPuntius titteya are found in the rainforests of Sri Lanka, an island country off the southern tip of India. As per their common name, the males are bright, cherry red while the females are more tannish-red. Both sexes have a black, horizontal line running down their sides with some scales also rimmed in black. Fish farms have also developed albino and long fin (or veiltail) varieties for the aquarium hobby.\r\n\r\nAre cherry barbs aggressive? No, this easygoing fish is a great addition to community tanks. Similar to tetras, you may see them chase each other around a little as they establish their pecking order or when the males try to initiate breeding, but they do not tend to bother other fish.\r\nHow to Set Up an Aquarium for Cherry Barbs\r\nIn the wild, they inhabit tropical streams with lots of plant life on the banks that drop their leaves and sticks into the water. Because of the seasonal monsoons, cherry barbs are used to living in a wide range of water conditions — such as temperatures between 72–80°F (22–27°C), pH of 6.0–8.0, and soft to hard water. To bring out their crimson coloration, set up a planted aquarium full of greenery with a darker substrate and background. Adding natural decor like driftwood will also enhance the environment and give them more places to explore and take shelter.\r\n\r\nHow many cherry barbs should be kept together? A group of six can be kept in a 10-gallon or larger aquarium. However, the more you get, the more outgoing they will be. While you may be tempted to buy only males because of their deeper reds, try to keep at least 1–2 females for every male because the boys show off their best coloration when they have girls to impress.\r\n\r\nWhat fish can live with cherry barbs? As mentioned before, they are community fish that can live with similar-sized, peaceful creatures, such as tetras, danios, cory catfish, and plecos. While cherry barbs will swim anywhere to feed, they tend to hang out in the middle to bottom levels of the tank, so you may consider pairing them with fish that swim in the upper half — like guppies, blue-eye rainbowfish, and pencilfish. As for dwarf shrimp, they seem to do okay with bigger amano shrimp but may try to go after adult cherry shrimp, so make sure to add plenty of hiding spots for the shrimp and be prepared to remove them if necessary. We have personally kept cherry barbs with betta fish before, but depending on the betta’s personality, they may not get along so watch closely for compatibility issues.', '2023-03-20', 'John'),
(4, 9, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_cherry_shrimp.jpg?v=1672943662&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Orange_sakura_Neocaridina_shrimp.jpg?v=1672943550', 'Care Guide for Cherry Shrimp — Tank Setup, Food, and Breeding', 'The aquarium hobby is crazy about Neocaridina cherry shrimp and for good reason too. Not only are they excellent clean-up crew members that eat algae and leftover fish food, but they come in almost every color of the rainbow and are tiny enough to fit in a 2-gallon nano tank. Compared to other types of ornamental shrimp, they are pretty beginner-friendly and can handle a wide range of water parameters. Finally, these adorable critters are very easy to breed and can be sold at local fish stores and aquarium societies. Learn all about the beautiful cherry shrimp and how to keep them healthy and happy.\r\n\r\nWhat are Cherry Shrimp?\r\nNeocaridina davidi is native to China and Taiwan and normally has a translucent body covered in mottled brown speckling that blends in well with its surroundings. Nowadays, there are many color morphs available on the market — such as red, orange, yellow, green jade, blue dream, blue velvet, chocolate, black rose, and rili (or striped). Red is the most popular color, which is why the species is commonly known as “cherry shrimp” or “red cherry shrimp” (RCS). Lots of companies like to label their RCS with special color grades — like sakura red, fire red, painted fire red, and Bloody Mary — but the quality level is very subjective. The best way to judge color is to visit your local fish store or breeder in person and pick the shrimp that look the best to you.\r\n\r\nHow do you tell a male cherry shrimp from a female? Females are the larger of the two sexes, can grow up to 1.5 inches (4 cm), and display very bright and vivid colors. In adulthood, the female either has a yellow, saddle-like shape at her back (which are unfertilized eggs in the ovaries) or is “berried” and carries fertilized eggs in the swimmerets underneath her tail. Males are a bit smaller at 1–1.25 inches (2.5–3 cm), have a slimmer tail, and are more translucent in color. Juveniles are hard to sex since they all look slender and less colorful than the adults.\r\n\r\nHow to Set Up an Aquarium for Cherry Shrimp\r\nAs mentioned before, Neocaridina shrimp can fit in tiny tanks, but we prefer to use a 10-gallon tank or larger for the purposes of setting up a healthy breeding colony. Ideally, put them in a mature tank that has been running for many months so that it’s chock full of microfauna and mulm for them to graze on. Also, use a sponge filter or cover the filter input with a pre-filter sponge to ensure that no baby shrimp accidentally get sucked up.\r\n\r\nShrimp have a hard, outer structure called an exoskeleton and must regularly molt whenever they outgrow their previous “skin.” In order to make the new exoskeleton, they prefer water with pH levels of 6.5–8.5, GH of at least 6° (110 ppm), and KH of at least 2° (40 ppm). If you have soft water, make sure to add mineral supplements to prevent failed molts (sometimes called the “white ring of death” when a dead shrimp has a white band or gap behind its head). Crushed coral helps to increase KH, while Wonder Shell and Seachem Equilibrium boosts GH. Feeding foods rich in calcium and other minerals also helps with healthy molting, which we will discuss in the next section.\r\n\r\nAfter a shrimp molts, its new exoskeleton is fairly soft, so during this time of vulnerability, the shrimp will hide until the new shell hardens. Provide lots of live aquarium plants, shrimp caves, and other shelter for them to seek cover. Dense plants like mosses also tend to grow algae and biofilm, which cherry shrimp love to forage on.', '2023-03-08', 'Mike'),
(5, 11, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/Betta_albimarginata.jpg?v=1672680426&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Betta_albimarginata.jpg?v=1672680502', 'Easy Fish Breeding Ideas for Your Next 20-Gallon', 'When our founder Cory first got into fishkeeping, funds were tight, so he started breeding fish to help with his hobby expenses. After many years of experience keeping fish rooms and tanks of all sizes, he still loves breeding fish at home in the versatile 20-gallon aquarium (both the high and long versions). Learn about his top 5 favorite fish and invertebrates that are easy to spawn and raise up in a colony setting.Most people know about Betta splendens with their large and colorful fins, but breeding them can be hassle since the male juveniles are too territorial to cohabitate and must be raised in individual jars until they reach a sellable size. However, some of the mouth-brooding Betta species are a little more peaceful where males and females can be kept together in a 20-gallon breeding setup. We’ve personally kept and had success with the strawberry betta (B. albimarginata) and Penang betta (B. pugnax), but there are several other species to try like the snakehead betta (B. channoides) and B. rubra. We like to densely plant the aquarium and add tall hardscape to break up line of sight and provide hiding spots for the future fry. A tight-fitting lid is recommended to increase humidity and prevent fish from jumping out. You can even consider adding some small dither fish like neon tetras to swim out in the open and break up any aggression. Most of these bettas prefer acidic, tannin-stained water, so don’t forget to add catappa leaves and other botanicals.\r\n\r\nAfter the female has spawned and the eggs are fertilized, the male is responsible for holding the brood in his mouth for the next 1.5–3 weeks. Once the babies have hatched and are freely swimming, the male will spit them out and they must fend for themselves. The fry are usually big enough to immediately eat baby brine shrimp, which is an amazing superfood that will help them grow fast and strong. Just know that the male cannot eat while he is holding eggs, so to prevent him from losing too much weight, put the female into a separate tank or breeder box until he has time to regain his mass before breeding them again. As the tank becomes more crowded, remove the juveniles to make room for the next brood and prevent territorial disputes.', '2023-03-07', 'Son'),
(6, 14, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_guppies_in_breeding_tank.jpg?v=1671246747&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/male_and_female_endler_s_livebearer_fa552674-de08-467f-a153-5026c8baa6d3.jpg?v=1671246626', 'Colony Breeding: The Easiest Way to Breed Livebearers for Profit', 'Breeding livebearers like guppies, mollies, and platies is not difficult, and many hobbyists joke that all you need to do is add water. But what if you want to produce large numbers of fish to sell for profit at your local fish store or aquarium society? In addition, what if you are limited by budget or space and cannot afford to set up tons of tanks or giant ponds like the commercial farms? Keep reading to see how we’ve produced hundreds of livebearers in a single fish tank with minimal effort and cost.Most people get fry because their pet fish “accidentally” bred and some of the babies survived. However, if you are looking to supply the local market with a high-quality product, make sure you start off with the best and healthiest parents possible. Look for fish with the ideal colors, patterns, shape, and size. Examine them from both the side view and top view to spot any defects like bent spines, missing fins, or drooping tails. Finally, get a ratio of one male for every two to three females. The bare minimum you should start with is a trio of one male and two females, but you will be more successful if you can start your breeding tank with six, nine, or 12 adult fish instead. Greater quantities not only increase your fry production from the beginning, but they also decrease stress on the females so that they are not constantly hounded by the males.', '2023-03-28', 'Jack');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_animal` (`animal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_blog_animal` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
