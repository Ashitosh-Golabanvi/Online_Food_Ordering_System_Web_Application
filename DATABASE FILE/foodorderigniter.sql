-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 01:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 1, 'Grilled Cheese Sandwich', 'Grilled cheese sandwich or grilled cheese is a hot sandwich made with more varieties of cheese cooked on the grill long enough for the cheese to melt a little and the bread to get brown and a little crispy. Grill until lightly browned and flip over; conti', 6, 'igcsan.jpg'),
(2, 1, 'Turkey Fajitas', 'Enjoy delicious Mexican food with this smoky BBQ turkey fajitas recipe from Giulia Restro to finish up turkey leftovers or just to make a tasty dinner! just give it a kick with picante sauce, peppers and onions, all wrapped up in a flour tortilla.', 9, 'turkey-fajitas.jpg'),
(3, 3, 'Hot Dog', 'Whole cured, cooked sausage that is skinless or stuffed in a casing, that may be known as a frankfurter, frank, furter, wiener, red hot, vienna, bologna, garlic bologna, or knockwurst, and that may be served in a bun or roll', 4, 'hdoggg.jpg'),
(4, 2, 'Ham Burger', 'Sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. The Epic Ham and Cheese Stuffed Bacon Burger is hands down the best', 4, 'hmbrger.jpg'),
(5, 3, 'Detroit-Style Pizza', 'A thick, square-cut pizza with a crunchy, fried bottom layer of crust overflowing with delicious melted cheese. The result of this unique pizza style is a gooey, doughy center with a crunchy outer crust and caramelized cheese hugging its edges.', 10, 'detroitpzz.jpg'),
(6, 1, 'Pasta allArrabbiata', 'Pasta Arrabiata literally means \"angry pasta\" in Italian. Arrabiata sauce (sugo all\'arrabbiata) is a spicy (angry) tomato sauce that\'s made with plenty of olive oil, garlic, chopped tomatoes, and red pepper flakes to provide the heat.', 9, 'Pappardelle.jpg'),
(7, 6, 'Spaghetti Carbonara', 'Just spaghetti and the carbonara is made with pancetta or bacon, eggs, Parmesan, a little olive oil, salt and pepper. The silky carbonara sauce is created when the beaten eggs are tossed with the hot pasta and a little fat from the pancetta or bacon.', 9, 'spCarbonara.jpg'),
(8, 2, 'Toasted Ravioli', 'The crunchy pasta, dusted with grated Parmesan cheese and dunked in a marinara-style sauce, makes a delicious hot appetizer. the ravioli is deep-fried, not toasted, and like many culinary discoveries, the first batch was the result of an accident.', 11, 'fried-ravioli-bread-crumbs.jpg'),
(9, 3, 'Maltesers Tiramisu', 'As the name implies, this is an iconic Italian dessert that is served at the end of the meal that hopefully “cheers you up”. For a decadent, crowd-pleasing dessert this Christmas you can\'t go past a no-bake Malteser tiramisu.', 4, 'mldessert.jpeg'),
(11, 6, 'Currywurst', 'Currywurst is a fast food dish of German origin consisting of steamed, and fried pork sausage typically cut into bite-sized chunks and seasoned with curry ketchup, a sauce based on spiced ketchup or tomato paste topped with curry powder, or a ready-made k', 7, 'curywurst.jpg'),
(12, 6, 'Steak au poivre', 'Steak au poivre or pepper steak is a French dish that consists of a steak, traditionally a filet mignon, coated with coarsely cracked peppercorns and then cooked. a steak that has had coarsely ground black pepper pressed into it before cooking, is served ', 10, 'stkkk.jpg'),
(13, 5, 'French Fries', 'French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes. French fries have numerous variants, from thick-cut to shoestring, crinkle, curly and many other names.', 2, 'ffries.jpg'),
(14, 5, 'Roast Beef Sandwich', 'Roast Beef Sandwich Recipe with Horseradish Cream is absolutely loaded up with flavor, from the thinly sliced roast beef to the roasted potatoes, to the horseradish cream, if you want delicious, then this is the sandwich for you.', 5, 'roast-beef-sandwich.jpg'),
(15, 4, 'Philly Cheesesteak', 'A cheesesteak is a sandwich made from thinly sliced pieces of beefsteak and melted cheese in a long hoagie roll. A popular regional fast food, it has its roots in the U.S. city of Philadelphia, Pennsylvania. Cheesesteaks have become popular at restaurants', 5, 'philly-cheesesteak-3c4be15.jpg'),
(16, 4, 'Sesame Chicken', 'Sesame chicken is an American-Chinese dish made by deep-frying deboned and battered chicken pieces which are then dressed with a thick, translucent, sweet sauce consisting of chicken broth, sugar, corn starch, and vinegar or sake. additionally topped with', 11, 'sschicken.jpg'),
(17, 4, 'Mozzarella Sticks', 'One of America\'s favorite cheesy snacks consisting of battered, breaded, and deep-fried pieces of mozzarella cheese. Served as an appetizer with marinara sauce, these cheesy sticks can also be paired with plum sauce, honey mustard sauce, raspberry sauce, ', 9, 'mozzsticks.jpg'),
(18, 2, 'Chimichanga', 'Chimichanga is a wrapped, deep-fried flour tortilla filled with a variety of ingredients such as shredded chicken, beef, rice, beans, onions, and cheese. Served topped with sour cream, guacamole and salsa, this Mexican inspired recipe is delicious!', 9, 'chimichangs.jpg'),
(20, 2, 'Chop Suey', 'Chop suey is a dish in American Chinese cuisine and other forms of overseas Chinese cuisine, consisting of meat and eggs, cooked quickly with vegetables such as bean sprouts, cabbage, and celery and bound in a starch-thickened sauce.', 8, 'choppsuey.jpg'),
(21, 5, 'PoBoy', 'A po\' boy is a traditional sandwich from Louisiana. It almost always consists of meat, which is usually roast beef or fried seafood, often shrimp, crawfish, fish, oysters or crab. The meat is served on New Orleans French bread, known for its crisp crust a', 5, 'poboy.jpg'),
(22, 7, 'Reuben Sandwich', 'Reuben Sandwich is composed of corned beef, swiss chees, sauerkraut and russian dressing, grilled between slices of rye bread. It is associated with kosher-style delicatessens as it combines meat and cheese.', 8, 'reubensandw.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 2, 'Giulia Restro', 'gr69stro@gmail.com', '1-555-555-5555', 'giuliarestroo.com', '8am', '7pm', 'mon-sat', '1259  Wood Street', 'grestro.jpg'),
(2, 4, 'The Empire', 'Empire@gmail.com', '1234567890', 'empire.com', '10am', '7pm', '24hr-x7', 'Nidasoshi Gate', 'empire.jpg'),
(3, 4, 'Tiranga', 'tiranga@gmail.com', '1-333-222-747', 'tiranga.com', '8am', '8pm', 'mon-sat', 'Sankeshwar', 'Tiranga.PNG'),
(4, 4, 'Brindavan', 'Brindavan@gmail.com', '1-222-333-7878', 'Brindavan.com', '11am', '8pm', '24hr-x7', 'Hattaragi', 'Brindavan.jpg'),
(6, 4, 'Niyaz', 'niyaz@gmail.com', '1245485000', 'Niyaz.com', '10am', '8pm', 'mon-sat', 'Belgaum', 'Niyaz.png'),
(7, 6, 'Treehouse Restro', 'treehsr@gmail.com', '12457854101', 'treehouserestr.com', '8am', '10pm', 'mon-sat', '2902 Benson Park Drive', 'treehouserestr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(2, 'Italian'),
(3, 'American'),
(4, 'Indian'),
(5, 'Chinese'),
(6, 'Korean');

-- --------------------------------------------------------

--
-- Table structure for table `total`
--

CREATE TABLE `total` (
  `sum` float NOT NULL,
  `QTY_SUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total`
--

INSERT INTO `total` (`sum`, `QTY_SUM`) VALUES
(53, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(35, 'User123', 'A', 'G', 'user@gmail.com', '1234567890', '$2y$10$7XlRrwB08EYidCfXLax7NO6aQkmoN0V2YwUznUTEgG0bESLXKPg9u', 'Belgaum');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(33, 35, 4, 'Ham Burger', 1, 4, 'closed', '2022-01-09 19:23:22', '2022-01-31 16:11:20', 2),
(34, 35, 11, 'Currywurst', 1, 7, 'closed', '2022-01-09 19:32:15', '2022-02-01 05:26:25', 6),
(35, 35, 9, 'Maltesers Tiramisu', 1, 4, 'closed', '2022-01-09 19:32:15', '2022-02-01 05:19:49', 3),
(51, 35, 9, 'Maltesers Tiramisu', 1, 4, 'closed', '2022-02-01 07:21:41', '2022-02-01 06:22:07', 3),
(52, 35, 1, 'Grilled Cheese Sandwich', 1, 6, 'closed', '2022-02-01 07:23:41', '2022-02-01 06:25:56', 1),
(53, 35, 2, 'Turkey Fajitas', 1, 9, 'closed', '2022-02-01 07:23:41', '2022-02-01 06:24:55', 1),
(55, 35, 5, 'Detroit-Style Pizza', 1, 10, 'closed', '2022-02-01 08:01:58', '2022-02-01 09:21:09', 3),
(56, 35, 2, 'Turkey Fajitas', 1, 9, NULL, '2022-02-01 10:21:50', '2022-02-01 04:51:50', 1);

--
-- Triggers `user_orders`
--
DELIMITER $$
CREATE TRIGGER `PRICE_DELETE` AFTER DELETE ON `user_orders` FOR EACH ROW update total set total.sum = (select SUM(user_orders.price) from user_orders)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `PRICE_INSERT` AFTER INSERT ON `user_orders` FOR EACH ROW update total set total.sum = (select SUM(user_orders.price) from user_orders)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `PRICE_UPDATE` AFTER UPDATE ON `user_orders` FOR EACH ROW update total set total.sum = (select SUM(user_orders.price) from user_orders)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `QTY_DELETE` AFTER DELETE ON `user_orders` FOR EACH ROW update total set total.QTY_SUM = (select SUM(user_orders.quantity) from user_orders)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `QTY_INSERT` AFTER INSERT ON `user_orders` FOR EACH ROW update total set total.QTY_SUM = (select SUM(user_orders.quantity) from user_orders)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `QTY_UPDATE` AFTER UPDATE ON `user_orders` FOR EACH ROW update total set total.QTY_SUM = (select SUM(user_orders.quantity) from user_orders)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
