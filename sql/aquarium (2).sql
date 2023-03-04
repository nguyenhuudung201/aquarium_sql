-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 09:29 AM
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
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_code` varchar(100) NOT NULL,
  `Gallery_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `name_code`, `Gallery_id`) VALUES
(1, 'african penguin', 'african-penguin', 1),
(2, 'Beluga Whale', 'beluga-whale', 2),
(3, 'California Sea Lion', 'california-sea-lion', 3),
(4, 'Common Bottlenose Dolphin', 'bottlenose-dolphin', 4),
(5, 'Tiger Shark', 'tiger-shark', 5),
(6, 'African Butterflyfish', 'dolphin-encounter', 6),
(7, 'African Pancake Tortoise', 'Pike-Fish', 7),
(8, 'Arc-Eye Hawkfish', 'Marline-Fish', 8),
(9, 'Baja Blue Rock Lizard', 'Boar-Fish', 9),
(10, 'Whale Shark', 'Sea-horse', 10),
(11, 'Bignose Unicornfish', 'Hog-Fish', 11),
(12, 'Black Crappie', 'Thread-fin', 12),
(13, 'Black Rockfish', 'Clown-Fish', 13),
(14, 'Black Spot Piranha', 'Sword-Fish', 14),
(15, 'Bat Star', 'Moli-dae', 15),
(16, 'Amazon Puffer', 'Blow-Fish', 16);

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

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `message`, `phone`, `email`) VALUES
(1, 'Lola Bailey', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '0223456', 'LolaBailey@gmail.com'),
(2, 'Dominic Pelletier', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '02234565', 'Dominic Pelletiery@gmail.com'),
(3, 'Abbie Carterr', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '02234565', 'AbbieCarter@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `banner` text NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `size` varchar(200) NOT NULL,
  `diet` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `habitat` varchar(200) NOT NULL,
  `Physical` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`id`, `image`, `banner`, `animal_id`, `content`, `size`, `diet`, `location`, `habitat`, `Physical`) VALUES
(1, 'https://www.aviary.org/wp-content/uploads/2021/11/African-Penguin-2-edited-scaled.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/african-penguin-3-1440x454.jpg', 1, 'This small, distinctive penguin is found on the rocky coasts of Southwestern Africa, in the countries of Namibia and South Africa. They feed exclusively on marine species, mainly fish and squid. Hunting involves venturing from shore, sometimes as far as nine miles off the coast, and swallowing food whole.', '18-25 inches (46-64 cm) tall', 'Fish, crustaceans, squid', 'Southernmost coast of Africa', 'Temperate climates near water', 'Size\r\n\r\nThe adult African penguin stands 18 to 25 inches (46-64 cm) tall and weighs 6 to 7 lbs. (2.7 – 3.2 kg).\r\nAppearance\r\n\r\nBlack back and a white breast. The chest and belly may also have black markings. The white color extends in a semicircular pattern behind and over the head. A horseshoe-shaped black stripe extends across the chest and flanks. Bare flesh-pink skin surrounds the eyes.\r\nJuvenile feathers are shades of grey with a lighter belly and chest. They maintain their juvenile feathers for one year post-fledging when they molt to their adult plumage.\r\nBoth sexes look the same, which means they are not sexually dimorphic.\r\nFeathers/Allopreening\r\n\r\nPenguin feathers are stiff and overlap in layers to trap air next to the skin for insulation. The feathers are very resistant to wind and water.\r\nThe birds waterproof themselves by using their beak to spread oil from a gland at the base of the tail.\r\nAfrican penguins are often seen preening each other (allopreening). Allopreening helps birds preen clean and arrange feathers in areas they cannot reach, such as their neck.\r\nAllopreening plays a role in strengthening bonds between mates.'),
(2, 'https://www.coolantarctica.com/Antarctica%20fact%20file/wildlife/Arctic_animals/Delphinapterus_leucas_Steve-snodgrass-CC2-Att-Gen.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/beluga-whale-3-1440x454.jpg', 2, 'Beluga whales are small, white whales that live in the cold waters throughout the Arctic and some subarctic locations. Belugas are social, and form groups called pods.', '11-15 feet (3.4-4.6 m)', 'Fish, mollusks, crustaceans and even zooplankton', 'Found throughout the Arctic', 'Varies from deep offshore waters to shallow bays and estuaries', 'Unfused cervical vertebrae allows for neck flexibility. This adaptation allows for maneuverability in shallow water to hunt and to escape from predators.\r\nVery thick layer of blubber, thick skin, relatively small tail flukes and pectoral flippers, and absence of a dorsal fin are adaptations for life in cold water.\r\nThe melon is the rounded structure on the top of the beluga’s head, just in front of the blowhole. It is composed of lipids (fats) and can change shape when the whale is producing sounds. The melon focuses and projects echolocation signals through the water. It is unique to toothed whales and not found on baleen whales.\r\nLips can be pursed to form the shape of an “O.”\r\nTongue forms a tight seal around fish which allows the beluga to swallow prey without ingesting water.\r\nRather than a dorsal fin, which would be prone to injury from ice and heat loss, a beluga has a dorsal ridge.\r\nGenerally pale gray to pure white as adults, belugas are a light gray color at birth. Their light coloration is believed to camouflage the animal in snowy, icy surroundings.\r\nAreas such as the dorsal ridge, the edges of the pectoral flippers and the edges of the tail flukes may be darker on adult belugas.\r\nAverage weight and length of an adult ranges between 1100-2500 lbs (499-1143 kg) and 11-15 feet (3.4-4.6 m).\r\nAverage calf birth weight is 119-145 lbs (54-66 kg) and length is 4.5-5.1 feet (137-155 cm).\r\nThe maximum adult weight reported is 3600 lbs (1633 kg).\r\nBelugas show sexual dimorphism, with males being approximately 25% larger than females.\r\nThe beluga whale has 30-40 homodont (of similar size and shape), conical teeth.\r\nTeeth are not replaced if lost.\r\nA calf’s teeth begin to come in between 1 and 2 years of age.\r\nThe teeth of Odontocetes contain growth rings, called “Growth Layer Groups” (GLG).'),
(3, 'https://nationalzoo.si.edu/sites/default/files/styles/1400x700_scale_and_crop/public/animals/californiasealion-001.jpg?itok=GE8b5iTA&timestamp=1520538731', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/truist-pier-225-2-1440x454.jpg', 3, 'California sea lions are social animals that communicate with various barks, growls, honks and clicks. Their sleek bodies, powerful flippers and excellent vision allow this species to hunt a variety of prey.', '6-8 feet (2-2.4 m)', 'Squid, anchovy, rockfish, whiting and mackerel', 'Eastern Pacific Ocean', 'Near-shore waters', 'The maximum length is 6.6 feet (2 m) for females and 7.8 feet (2.4 m) for males.\r\nCommon weight is about 220 lbs. (100 kg) for females and 770 lbs. (350 kg) for males.\r\nThe maximum weight for males is more than 850 lbs. (390 kg). The maximum weight for females is more than 240 lbs. (110 kg).\r\nThe average weight at birth is 13-20 lbs. (6-9 kg).\r\nThe average length at birth is 30 inches (75 cm).\r\nFlippers\r\n\r\nTwo long, powerful, wing-like front flippers with short claws and two smaller rear flippers.\r\nUses front flippers for propulsion and back flippers to steer while swimming.\r\nRotates all four flippers underneath the body to walk on land.\r\nFlippers are supported by a skeletal structure similar to the bones in a human hand.\r\nMay hold flippers out of the water to thermoregulate.\r\nBody/Fur/Whiskers\r\n\r\nStiff, thick whiskers, or “vibrissae,” made of keratin found around the muzzle. Help to feel the shape and size of objects and detect vibrations and sounds.\r\nFemale coloration is lighter brown while males are typically darker brown, though males range in color from light brown to black. The fur on the male’s head may become lighter with age and the coat appears darker when wet.\r\nMales develop a bony bump on their head known as a sagittal crest at approximately five years of age.\r\nPups are dark brown in color at birth, then shed juvenile fur and grow adult fur at 4-6 months of age.\r\nTwo layers of fur – outer guard hairs and an inner underfur.\r\nDoes not molt annually, but instead sheds and replaces fur all year long.\r\nBlubber helps keep sea lions warm.\r\nMale has a larger, thicker body shape than female.\r\n Vision/Eyes\r\n\r\nLarge eyes with excellent vision both in and out of the water and in low-light conditions.\r\nHearing/Ears\r\n\r\nMember of the family Otariidae, or “eared seals,” and therefore has small, external ear flaps, or “pinnae” (as opposed to a “true seal,” a member of family Phocidae, which has only small ear holes).\r\nCan hear above and below water.\r\nSmell\r\n\r\nA well-developed sense of smell on land, but cannot smell underwater.\r\nMales may use smell to detect a female ready to mate.\r\nMother and pup may use smell and vocalizations to identify one another.'),
(4, 'https://www.blue-world.org/bw/wp-content/uploads/2017/05/140929_92_1_0030.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/common-bottlenose-dolphin-2-1440x454.jpg', 4, 'Common bottlenose dolphins are well-known for their acrobatic stunts and social behavior. Dolphins have varied social structures, pods of 2 to 15 individuals are common for this species, but solitary coastal individuals have been seen all over the world. Dolphins have a wide range of vocalizations, including whistles, grunts, trills, squeaks and moans that they use to communicate in order to hunt efficiently, raise young and guard against predators.', '7-9 feet (2-2.7 m)', 'Fish, cephalopods, crustaceans, small rays or sharks', 'Tropical and temperate waters around the world', 'Bays, tidal creeks, inlets, marshes, rivers and along open ocean beaches', 'Color\r\n\r\nGenerally, slate gray to charcoal in color, including countershading (darker dorsally and lighter ventrally).\r\nThe sides of the body often have light brush markings.\r\nSize\r\n\r\nAverage weight and length of an adult ranges between 485 – 595 lbs. (220 – 270 kg) and 7-9 feet (2-2.7 m).\r\nLength and weight vary widely according to geographic region.\r\nBody size also typically varies inversely with the water temperature of its location (i.e., larger animals occur in colder regions).\r\nAverage weight and length of a calf is 22-44 lbs. (9.9-20 kg); 2.7-4.6 feet (0.8-1.4 m).\r\nThe maximum adult weight reported in the ocean:\r\n626 lbs. (284 kg) from the western North Atlantic\r\n1400 lbs. (635 kg) from the eastern North Atlantic.\r\nTeeth\r\n\r\nThe common bottlenose dolphin has 72 to 104 teeth.\r\nTeeth are not replaced if lost.\r\nSkin\r\n\r\nHighly specialized and contains tiny ridges that play an important role in reducing drag.\r\nThe outer layer of skin is shed approximately every two hours to increase swimming efficiency by maintaining a smooth body surface.\r\nThe skin is also an important sensory organ.\r\nThe epidermis (outer layer of skin) is approximately 15-20 times thicker than that of a human.\r\n'),
(5, 'https://i.natgeofe.com/n/5d39be8b-c79c-4781-89a6-4f4c7d447fd5/tiger-shark_thumb.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2020/09/tiger-shark-2-1440x454.jpg', 5, 'The tiger shark is named for its distinctive \"tiger-striped\" pattern.', '16 feet (4.9 m) and more than 1,400 pounds (635 kg)', 'Bony fishes, sharks, rays, marine mammals and reptiles, invertebrates and sea birds', 'Tropical and temperature ocean environments worldwide', 'Continental shelves or islands and coral reefs', 'Juveniles have tiger-like stripes, which give this species its name. Stripes fade as sharks grow into adulthood but are still visible.\r\nUnlike many shark species, the male tiger shark is larger than the female.\r\nMay grow longer than 16 feet (4.9 m) and weigh more than 1,400 pounds (635 kg).\r\nOne of the largest carnivores in the ocean.\r\nBroad, wedge-shaped head with blunt snout.\r\nColoration is dark gray to bluish or greenish-grey on the dorsal surface. The underside is stark white.'),
(6, 'https://azgardens.com/wp-content/uploads/2017/06/African-Butterfly-Freshwater-Aquarium-Fish-600x462.jpg', 'https://tropical-fish-keeping.com/wp-content/uploads/2014/10/African-Butterfly-Fish-300x206.jpg', 6, 'The African butterflyfish is an insectivore and has sensors that detect small waves in the water caused by insects hitting the water\'s surface.', '2-4 inches (5-10 cm)', 'Terrestrial insects, aquatic larvae, crustaceans and fish', 'Africa', 'Upper surface of open water', 'The body is compressed with a large, upward-facing mouth with a prominent lower jaw and numerous teeth. Large, flat eyes sit high on the head.\r\nEye placement allows the African butterfly to see both above and below the water’s surface at the same time.\r\nEnlarged pectoral fins that extend outward. Ventral fins are thread-like and project down below the body while the caudal and anal fins are large and broad.\r\nColoration consists of brown, gray or olive, all with a silver sheen.\r\nOften have dark markings on their fins and underside.\r\nAverage size is 2-4 inches (5-10 cm). Maximum recorded length of 5.9 inches (15 cm).'),
(7, 'https://nationalzoo.si.edu/sites/default/files/styles/1400x700_scale_and_crop/public/animals/african-pancake-tortoise-001-20180131-6629jj.jpg?itok=kA8Yq5QF&timestamp=1562165662', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/african-pancake-tortoise-2.jpg', 7, 'The thin, flat and flexible shell of the African pancake tortoise allows it to swiftly flee danger and hide in rocky crevices and savanna scrub. Its yellow and brown coloration blends in with the vegetation and dry grasses that make up its diet.', '7 inches (17.8 cm)', 'Vegetation and dry grasses', 'Tanzania and Kenya', 'Crevices on rocky hillsides', 'Coloration is brown and yellow.\r\nShell is thin, flat and flexible.\r\nShell bones have many openings, which allow the tortoise to be lighter and more agile to escape predators.\r\nInstead of retreating into its shell, the African pancake tortoise will flee danger. Its flexible shell allows it to hide in narrow crevices.\r\nCarapace length to 7 inches (17.8 cm).'),
(8, 'https://www.tankfacts.com/photos/12/Fish/thumb_455x300/Arc_Eye_Hawkfish.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/arc-eye-hawkfish-2-1440x454.jpg', 8, 'The arc-eye hawkfish can often be spotted perching on rocky outcropping or coral – like a hawk in a tree!', '6-8 inches (15-20 cm)Shrimp, small fishes, and crustaceans', 'Shrimp, small fishes, and crustaceans', 'Indo-Pacific', 'Lagoons and seaward reefs', 'A small, grouper-like fish with a maximum length of about 8 inches (20 cm).\r\nDisplays a range of colors from olive to red, brown and even yellow; generally darker dorsally.\r\nHas a distinctive dark ring extending around and behind the eyes.'),
(9, 'https://www.niabizoo.com/wp-content/uploads/2018/08/Rep_BajaBlueRockLizard.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2021/05/baja-blue-rock-lizard-1440x454.jpg', 9, 'The Baja blue rock lizard is diurnal, meaning it\'s active during the day. They can often be seen basking in full sun, even on very hot days.', '7-10 inches (18-25 cm)', 'Leaves, fruit, flowers and insects', 'Mexico', 'Found in rocky, lightly vegetated areas', 'Common length of 7-10 inches (18-25 cm).\r\nA grayish-blue lizard with a speckled banding pattern across its back. Darker bars often mark the lizard from the neck to the upper back.\r\nThe face and tail are often a brighter blue than the rest of the body, and the head and neck can sport yellow, orange and red highlights.'),
(10, 'http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcTCw9BMTPvnnTWWgBV1lNvEmPFEQPogjVTFCrrnQHDcF0_8zMQJnjwZ1T0ob1gJmt98', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/whale-shark-3-1440x454.jpg', 10, 'The whale shark is the largest fish in the sea!', '18-32 feet (5.5-9.8 m)', 'Zooplankton', 'Tropical Atlantic, Pacific, and Indian Oceans', 'Typically found offshore', 'Size\r\n\r\nThe whale shark is the largest fish in the world and the largest fish known to have lived on this planet. Because of its size and cartilaginous skeleton, it does not fossilize well and in life it is very difficult to weigh accurately.\r\nThe largest accurately measured whale shark was 61.7 feet (18.8 m).\r\nThe average length is between 18 and 32 feet (5.5-9.8 m).\r\nNewborns measure 21 to 25 inches (53-64 cm) long.\r\nBody Composition\r\n\r\nWhale sharks have a broad, flat head, relatively small eyes, five large gill slits, two dorsal fins, two long pectoral fins, two pelvic fins, one anal fin and a large sweeping tail. It has a vestigial spiracle behind the eye, which is an evolutionary remnant of its common ancestry with bottom-dwelling (benthic) carpet sharks.\r\nUnlike most shark species, its mouth is located at the front of the head (terminal) instead of the underside of the rostrum (subterminal).\r\nThe whale shark has a huge mouth, which can reach up to 4 feet (1.2 m) across, located at the front of the head.\r\nInside the mouth are specialized flaps called velums. These stop the backflow of water as the whale shark closes its mouth, preventing the loss of food.\r\nThe skin of an adult whale shark can be as thick as 4 inches (10 cm) and has the consistency of strong rubber, which limits possible predators to killer whales, great white sharks, tiger sharks and humans.\r\nColor\r\n\r\nWhale sharks have a two-toned pattern of light spots on their dark gray back with a white underside.\r\nEach whale shark has its own individual spot pattern; like human fingerprints, no two are exactly alike.\r\nTeeth\r\n\r\nThe teeth of the whale shark are tiny and pointed backward; they are thought to have no function in feeding.\r\nThere are about 300 rows of tiny teeth along the inner surface of each jaw, just inside the mouth.'),
(11, 'https://www.oceanario.pt/content/img/820x560/naso_vlamingii_172653131_henner_damke.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/bignose-unicornfish-2-1440x454.jpg', 11, 'An adult bignose unicornfish has a long, curved snout.', 'Up to 21.5 inches (55 cm)', 'Zooplankton', 'Indo-Pacific', 'Deep lagoon and seaward reefs', 'Adults have a long, curved snout with tall anal and dorsal fins.\r\nHas vertical blue lines running along the side of the body.\r\nMaximum length of 21.5 inches (55 cm).'),
(12, 'https://www2.illinois.gov/dnr/education/WAImages/WAFBlackCrappie-EE.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/black-crappie-2-1440x454.jpg', 12, 'The black crappie does not tolerate murky waters well. It prefers a habitat with clear water.', '8 to 12 inches (20-30 cm)', 'Small fishes and larger invertebrates', 'North America', 'Lakes, rivers, ponds', 'A deep body that is strongly compressed laterally.\r\nDark green to black mottling throughout its body with a greenish back and silvery-green sides. Median fins are yellowish green with dusky, wavy lines and white spots.\r\nCommon length of 8-12 inches (20-30 cm); maximum length of 19 inches (48 cm).\r\nMaximum weight of 6 lbs (2.7 kg).'),
(13, 'https://www.adfg.alaska.gov/static/species/speciesinfo/blackrockfish/images/blackrockfish_adfg.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/10/black-rockfish-1440x454.jpg', 13, 'The black rockfish has quite the lifespan, living up to 50 years.', '25 inches (63.5 cm)', 'Smaller fish, benthic crustaceans and mollusks', 'Eastern Pacific', 'Near rocky reefs in shallow water', 'Black rockfish can reach a length of about 25 inches (63.5 cm) and weigh about 11 lbs. (5 kg). It is reported to live up to 50 years.\r\nThis species is dark grey to black with light grey mottling and lighter coloring ventrally.'),
(14, 'https://www.biolib.cz/IMG/GAL/433314.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/black-spot-piranha-2-1440x454.jpg', 14, 'These infamous “man-eaters” form large schools and can inflict serious bites, however, black spot piranha feed primarily on fish and insects, and are not dangerous to humans.', '11 inches (28 cm)', 'Fish, birds, benthic crustaceans, insects, aquatic vegetation', 'South America', 'Tropical freshwater areas', 'The upper body of the black spot piranha is silvery grey, while the lower body is red to red-orange, but varies among individuals. There is a black spot behind the operculum.\r\nPectoral and anal fins are orange to red and the dorsal fin is black.\r\nJuveniles have black spots on the upper body.\r\nThis piranha can reach 11 inches (28 cm) in length and about 1.2 lbs. (0.6 kg), with a maximum weight of 5 lbs. (2.3 kg).\r\nFemales are generally larger than males.'),
(15, 'http://4.bp.blogspot.com/_L3sNLmoKUl4/TA7_yx1QYoI/AAAAAAAAE6E/bCFyNLqToIY/s320/ml5977.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/batstar520.jpg', 15, 'Although it is most commonly reddish orange or mottled white, the bat star can be found in a variety of patterns and colors including brown, green, purple or pink!', '4-8 inches (10-20 cm)', 'Other sea stars, tunicate worms and algae', 'Along the U.S. Pacific coast', 'Intertidal zones', 'Most commonly reddish-orange or mottled white, but can be found in a variety of patterns and colors including brown, green, purple or pink.\r\nUsually has five, short, triangular arms, but can have from four to nine. The arms appear to have webbing between them and resemble a bat’s wing, hence the species’ common name. It is also called the “webbed star.”\r\nThis sea star typically has a radius of about 4 inches (10 cm) but can reach 6 to 8 inches (15-20 cm).'),
(16, 'https://www.tfhmagazine.com/-/media/Project/OneWeb/TFH/US/articles/the-fun-friendly-freshwater-amazon-puffer/amazon-pufferfish.jpg?h=355&iar=0&w=755&hash=4A44247B9F39F961E3A2729680837362', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/03/amazon-puffer-1440x454.jpg', 16, 'Also known as the South American puffer, the Amazon puffer is a small, colorful fish typically occurring in South America. Unlike most other freshwater puffers, the Amazon puffer does neither maintain a territory nor displays aggression toward other fishes.', 'Up to about 5 inches (13 cm)', 'Small invertebrates', 'South America', 'Tropical fresh and brackish waters', 'Coloration is yellow-green with black stripes along its body and a white ventral region.\r\nA distinct black spot appears at the base of its caudal fin.\r\nMay reach about 5 inches (13 cm) in total length.');

-- --------------------------------------------------------

--
-- Table structure for table `eventt`
--

CREATE TABLE `eventt` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `BEGIN_time` date NOT NULL,
  `END_time` date NOT NULL,
  `price_personal` int(11) NOT NULL CHECK (`price_personal` > 0),
  `price_family` int(11) NOT NULL,
  `description` text NOT NULL,
  `images` text NOT NULL,
  `banner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `eventt`
--

INSERT INTO `eventt` (`id`, `name`, `BEGIN_time`, `END_time`, `price_personal`, `price_family`, `description`, `images`, `banner`) VALUES
(1, 'CHEERSPORT 2023', '2023-02-07', '2023-02-27', 27, 60, 'THREE CHEERS FOR FUN! Georgia Aquarium is excited to welcome all Cheersport attendees from near and far with a special discounted admission rate valid ANYTIME between February 15 – February 22.', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/01/cheersport-2019-3-250x175.png', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/07/GAQ-Feb2019-695-Jellyfish-0010-1440x454.jpg'),
(2, 'Career Day 2023', '2023-02-07', '2023-03-27', 27, 60, 'Georgia Aquarium’s Education department is otter-ly excited to announce the return of our Career Day, Thursday, March 2nd from 10am to 1pm.', 'https://www.georgiaaquarium.org/wp-content/uploads/2021/05/careers-3-250x175.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/zoological-operations-animal-training-dolphins-internship-2-1440x454.jpg'),
(3, 'Protected: IMATA/ABMA Conference', '2023-02-07', '2023-02-14', 27, 60, 'Georgia Aquarium site visit for IMATA/ABMA conference. We look forward to seeing everyone on-site!.', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/zoological-operations-animal-training-dolphins-internship-2-1440x454.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/08/twilight-tickets-2-1440x454.jpg'),
(4, 'Georgia Aquarium 2023 5K', '2023-02-07', '2023-02-28', 27, 60, 'Georgia Aquarium’s 5K walk/run returns for its sixth year. Starting and finishing at one of the most recognizable landmarks in downtown Atlanta, this Peachtree Qualifier 3.1-mile course is a quick “out and back” run/jog/walk sponsored by Dermaglove returns for all ages..', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/12/georgia-aquarium-2023-5k-11-210x210.jpeg', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/12/georgia-aquarium-2023-5k-1440x454.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`) VALUES
(1, 'African Penguins'),
(2, 'Beluga Whale'),
(3, 'California Sea Lion'),
(4, 'Common Bottlenose Dolphin'),
(5, 'Tiger Shark'),
(6, 'Animal Encounters'),
(7, 'Pike Fish'),
(8, 'Marline Fish'),
(9, 'Boar Fish'),
(10, 'Seahorse'),
(11, 'Hog Fish'),
(12, 'Threadfin'),
(13, 'Clown Fish'),
(14, 'Sword Fish'),
(15, 'Molidae'),
(16, 'Blow Fish');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `conmment` text NOT NULL,
  `img_rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `event_id`, `name`, `conmment`, `img_rating`) VALUES
(1, 1, 'sara', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(2, 2, 'saxra', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(3, 4, 'sarfa', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(4, 2, 'sarfa', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(5, 2, 'sasra', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` int(11) NOT NULL CHECK (`price` > 0),
  `time_vist` date NOT NULL,
  `phone_guest` varchar(20) NOT NULL,
  `name_guest` varchar(100) NOT NULL,
  `email_guest` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `event_id`, `unit`, `price`, `time_vist`, `phone_guest`, `name_guest`, `email_guest`) VALUES
(1, 1, 2, 20, '0000-00-00', '03333666', 'alex', 'alex@gmail.com'),
(2, 1, 1, 50, '0000-00-00', '033313666', 'sara', 'sara@gmail.com'),
(3, 2, 4, 240, '0000-00-00', '033133666', 'willam', 'william@gmail.com'),
(4, 3, 15, 220, '0000-00-00', '0333366645', 'san', 'sanx@gmail.com'),
(5, 2, 20, 220, '0000-00-00', '033336667', 'son', 'son@gmail.com'),
(6, 3, 22, 205, '0000-00-00', '033336666', 'alexsanro', 'alexsanro@gmail.com'),
(7, 2, 21, 205, '0000-00-00', '033336566', 'gata', 'afax@gmail.com'),
(8, 2, 12, 204, '0000-00-00', '0333253666', 'asax', 'fa@gmail.com'),
(9, 3, 25, 204, '0000-00-00', '033233666', 'fami', 'alex@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Gallery_id` (`Gallery_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_animal` (`animal_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `eventt`
--
ALTER TABLE `eventt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_eventt` (`event_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `eventt`
--
ALTER TABLE `eventt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Gallery_id`) REFERENCES `gallery` (`id`);

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_blog_animal` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_eventt` FOREIGN KEY (`event_id`) REFERENCES `eventt` (`id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_ticket_eventt` FOREIGN KEY (`event_id`) REFERENCES `eventt` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
