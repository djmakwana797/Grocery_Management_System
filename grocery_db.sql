-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 21, 2021 at 06:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order_id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `p_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `cprice` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(200) DEFAULT NULL,
  `transactionID` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `orderDateTime` date NOT NULL DEFAULT current_timestamp(),
  `DeliveryDate` varchar(500) DEFAULT NULL,
  `db_email` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`order_id`, `email`, `p_id`, `quantity`, `cprice`, `total`, `address`, `city`, `state`, `country`, `number`, `paymentMethod`, `transactionID`, `status`, `orderDateTime`, `DeliveryDate`, `db_email`) VALUES
(1, 'deep@gmail.com', 2, 1, 700, 630, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Cancel', '2021-03-20', '2021-03-20 07:54 PM', 'jayesh1@gmail.com'),
(2, 'deep@gmail.com', 11, 1, 100, 95, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Cancel', '2021-03-20', '2021-03-20 07:54 PM', 'jayesh1@gmail.com'),
(3, 'deep@gmail.com', 9, 1, 100, 95, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Delivered', '2021-03-20', '2021-03-20 07:59 PM', 'ksakhiya@gmail.com'),
(4, 'deep@gmail.com', 8, 9, 100, 195, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Delivered', '2021-03-21', '2021-03-21 12:22 PM', 'jayesh1@gmail.com'),
(5, 'deep@gmail.com', 19, 2, 170, 337, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Cancel', '2021-03-21', '2021-03-21 12:22 PM', 'jayesh1@gmail.com'),
(6, 'deep@gmail.com', 4, 5, 47, 92, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Cancel', '2021-03-21', '2021-03-21 12:22 PM', 'jayesh1@gmail.com'),
(7, 'deep@gmail.com', 7, 8, 100, 195, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Cancel', '2021-03-21', '2021-03-21 12:22 PM', 'jayesh1@gmail.com'),
(8, 'deep@gmail.com', 11, 1, 100, 95, 'Jasdan', NULL, NULL, NULL, '8905455954', 'Cash on delivery(COD)', '', 'Cancel', '2021-03-21', '2021-03-21 12:22 PM', 'jayesh1@gmail.com'),
(9, 'deep@gmail.com', 6, 1, 50, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-21', NULL, NULL),
(10, 'deep@gmail.com', 10, 1, 80, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` bigint(20) NOT NULL,
  `categoryTitle` varchar(500) NOT NULL,
  `categoryDescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryTitle`, `categoryDescription`) VALUES
(1, 'Foods', 'All types of Food'),
(2, 'Soft Drinks', 'All types of Soft drinks'),
(3, 'Healthcare', 'Healthcare Items'),
(6, 'Biscuits', 'All types of Biscuits'),
(13, 'Chocolates ', 'All types of Chocolates are available'),
(14, 'Fast Foods', 'Breads,Samosa,Dhosa,all types of fast food are present .'),
(15, 'Fruits', 'All Fruits'),
(16, 'Masala', 'All types of masalas are available.'),
(17, 'Washing powder', 'All types of Washing powder are available over here.'),
(18, 'Toilet Cleaners', 'Toilet Cleaners and Bathroom cleaners are available'),
(19, 'Indian Dals', 'All types of Indian dals which are used by the Indian people in cooking');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `db_id` bigint(20) NOT NULL,
  `db_email` varchar(100) NOT NULL,
  `db_pass` varchar(100) NOT NULL,
  `db_name` varchar(100) NOT NULL,
  `db_city` varchar(100) NOT NULL,
  `db_phone` varchar(50) NOT NULL,
  `db_address` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`db_id`, `db_email`, `db_pass`, `db_name`, `db_city`, `db_phone`, `db_address`, `status`) VALUES
(2, 'jayesh1@gmail.com', '12345', 'Jayesh', 'Rajkot', '9974419338', 'Gangabuvan,Jasdan,360050', 'available'),
(4, 'ksakhiya@gmail.com', '12345', 'ksakhiya', 'Jasdan', '8128763389', 'Kailash Nagar, Jasdan,360055', 'assigned'),
(5, 'vinay@gmail.com', '12345', 'Vinay', 'Jasdan', '12345678', 'Bhutdada Temple\r\n', 'assigned');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_details`
--

CREATE TABLE `delivery_boy_details` (
  `db_trans_id` bigint(20) NOT NULL,
  `db_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `pic_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` bigint(20) NOT NULL,
  `order_date` date NOT NULL,
  `order_details` varchar(1000) NOT NULL,
  `pid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `body` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` bigint(20) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pdesc` varchar(1000) NOT NULL,
  `pphoto` varchar(500) NOT NULL,
  `pprice` bigint(20) NOT NULL,
  `pdiscount` bigint(20) NOT NULL,
  `pquantity` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  `shop_id` bigint(20) NOT NULL,
  `punit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pdesc`, `pphoto`, `pprice`, `pdiscount`, `pquantity`, `categoryId`, `shop_id`, `punit`) VALUES
(1, 'Food oil', 'Cooking oil is plant, animal, or synthetic fat used in frying, baking, and other types of cooking.So this is the best oil for all.', 'foodoil.jpg', 1200, 10, 1, 1, 1, '12 liter'),
(2, 'Kohinoor Basmati Rice', 'Kohinoor Basmati Rice healthy and authentic basmati rice.', 'rice.jpg', 700, 10, 2, 1, 2, '1 kg'),
(4, 'Milk', 'Milk is the very needed and healthy drink for body.', 'milk.jpg', 47, 5, 5, 2, 2, '100 ml'),
(6, 'Biscuits', 'Home-made Biscuits are available over here.', 'buiskits.jpg', 50, 5, 5, 6, 6, '1 kg'),
(7, 'Apples', 'Healthy apples are here.', 'apple.jpg', 100, 5, 12, 15, 2, '1 kg'),
(8, 'Orange', 'Orange is a very healthy fruit', 'orange.jpg', 100, 5, 12, 15, 4, '1 kg'),
(9, 'Home made Biscuits', 'Healthy and very tasty Biscuits are available in our shop', 'buis.jpg', 100, 5, 1, 6, 1, '1 kg'),
(10, 'Banana', 'Banana is very health fruit', 'banana.jpg', 80, 5, 5, 15, 3, '1 kg'),
(11, 'Maaza', 'Mango soft drinks', 'maaza.jpg', 100, 5, 1, 2, 1, '1 kg'),
(12, 'Tomato sauce', 'Very yummy and tasty tomato sauce is available near by you location.', 'Tomato_saus.jpg', 100, 2, 15, 14, 3, '100 ml'),
(13, 'Potato', 'Good and healthy potatoes are available over here.', 'potato.jpg', 120, 2, 100, 1, 6, '1 kg'),
(14, 'Lijjat Papad', 'The tasty and healthy papad of the Lijjat company is available over here.', 'papad.jpg', 150, 5, 100, 1, 3, '500 gm'),
(15, 'Mutter Paneer Masala', 'Paneer cheese is a fresh, creamy, normally unsalted cheese. It is a soft, fluffy cheese that is available in our shop.', 'panner.jpg', 70, 0, 50, 16, 7, '300 gm'),
(16, 'Haldi powder', 'Offering Dry Haldi Powder, Haldi, Turmeric Spice, Ground Turmeric, Curcumin Powder, Shimla Hills Turmeric Powder at Rs 130/kilogram', 'haldi.jpg', 130, 5, 10, 16, 7, '1 kg'),
(17, 'Mirchi powder', 'Offering Organic Lal Mirch Powder, Organic mirch powder, Organic chili powder in Madhuram kariyana,', 'mirchi.jpg', 140, 2, 50, 16, 7, '1 kg'),
(18, 'Garam Masala', 'Make the best homemade Garam Masala you\'ve ever tasted in just a few minutes.', 'garam_masala.jpg', 130, 3, 150, 16, 4, '300 gm'),
(19, 'Chilli Powder ', 'Tata Sampann Chilli Powder is specially made of top-quality Guntur, chilies famous for their dark red color and capsaicin content. All TataSampann.\r\n', 'chili_pack.png', 170, 2, 50, 16, 4, '500 gm'),
(20, 'Horlicks', 'Horlicks is a high sugar product, as 100 grams of a popularly advertised pack of Horlicks Delight, contains 78 grams of carbohydrates of which 32 grams is sucrose sugar.', 'horlics.jpg', 300, 5, 50, 3, 4, '500 gm'),
(21, 'Complan', 'Complan Nutrition and Health Drink Royale Chocolate, 1kg (Carton)', 'complan.jpg', 530, 12, 50, 3, 5, '1 kg'),
(22, ' Surf Excel', 'Buy Quick Wash Detergent Powder online at the lowest price from BigBasket and get them delivered to your doorstep.', 'surf_excel.jpg', 600, 5, 10, 17, 5, '4 kg'),
(23, 'Arial Washing Powder', 'Arial Washing powder will available in your doorstep.', 'arial.jpeg', 300, 5, 10, 17, 5, '1.5 kg'),
(24, 'Tide washing powder', 'There is no need for extra labor to wash your clothes as stains and dirt are easily washed out using Tide', 'tide.jpg', 116, 5, 50, 17, 5, '1 kg'),
(25, 'Zep acid', 'Toilet cleaner acid at your doorstep', 'zep_acid.jpg', 100, 5, 50, 18, 6, '500 ml'),
(26, 'Harpic Toilet and Bathroom Cleaner', 'A specialized all-in-one product, Harpic Power Plus is the ultimate one-stop solution for all your toilet cleaning needs', 'harpic.jpg', 140, 5, 2, 18, 6, '500 ml'),
(27, 'Thums up', 'Thums up cold drink is available in our shop to do the order now !!', 'thums_up.jpeg', 120, 3, 50, 2, 1, '2.25 Liter'),
(28, 'Fanta', 'Buy Fanta Soft Drink 175 L Online At Best Price', 'fanta.jpg', 100, 5, 50, 2, 2, '1.75 Liter'),
(29, 'Moong Dal', 'Green gram dal is used in traditional Indian and Southeast Asian cuisine, where it is used to make dough or as the primary ingredient to soups, stews.', 'moong_dal.jpg', 150, 3, 50, 19, 3, '1 kg'),
(30, 'URAD DAL WHITE', 'Urad dal, also known as Split Black Gram, is one of the famous lentils used in southern part of Asia, especially in Indian cuisine', 'urad_dal.jpeg', 70, 3, 70, 19, 3, '500 gm'),
(31, 'Toor Dal', 'Buy Toor Dal 1 Kg from Kalpesh Kariyana Store and get home delivery at the lowest price.', 'Toor_dal.jpg', 70, 2, 50, 19, 1, '500 gm'),
(32, 'Snickers Chocolate - Miniatures, Pouch', 'Crunchy Peanuts covered in a delightful chocolate layer', 'snickers.jpg', 170, 7, 50, 13, 1, '150 gm'),
(33, 'Cadbury Gems Chocolate', 'Cadbury Gems Chocolate, 11 gm (Pack of 72)', 'gems_cadbury.jpg', 420, 17, 50, 13, 2, '11 gm'),
(34, 'KitKat', 'KitKat Chocolatory is the ultimate KitKat Break Experience offering products with unique premium flavours', 'kitkat.png', 55, 5, 50, 13, 3, '45 gm'),
(36, 'Tata Salt', 'Vegetarian Tata Salt is available in our shop.', 'salt.jpg', 30, 5, 50, 1, 1, '1 kg');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_id` bigint(20) NOT NULL,
  `shop_owner` varchar(100) NOT NULL,
  `shop_email` varchar(100) NOT NULL,
  `shop_pass` varchar(100) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `shop_phone` varchar(50) NOT NULL,
  `shop_detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_owner`, `shop_email`, `shop_pass`, `shop_name`, `shop_phone`, `shop_detail`) VALUES
(1, 'Kalpesh', 'ksarvaiya248@gmail.com', '12345', 'Kalpesh Kariyana Store', '9898672365', 'All types of items of the grocery are available'),
(2, 'Shailesh Sarvaiya', 'shailesh@gmail.com', '12345', 'Sarvaiya Grocery Shop', '9898563310', 'All types of grocery are available over here'),
(3, 'Nayan Chauhan', 'nayan@gmail.com', '12345', 'Chauhan General Store', '9157018907', 'All food items of grocery are available'),
(4, 'Jenti Sarvaiya', 'jsarvaiya700@gmail.com', '12345', 'Sarvaiya General Store', '9898563310', 'All types of grocery items are available'),
(5, 'Raydhan Bhai', 'radhe@gmail.com', '12345', 'Radhe Krishana Shop', '8905455955', 'We are providing all the necessary products for the customers.'),
(6, 'Pravinbhai', 'pravin@gmail.com', '12345', 'Muskan General Store', '7600730603', 'We are giving all the cold drinks and food items'),
(7, 'Bhupatbhai', 'bhupatsarvaiya@gmail.com', '12345', 'Madhuram Kariyana', '9974419338', 'We are providing all the products of the grocery');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` bigint(20) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPassword` varchar(50) NOT NULL,
  `userPhone` varchar(20) NOT NULL,
  `user_type` varchar(500) NOT NULL,
  `userAddress` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `userEmail`, `userPassword`, `userPhone`, `user_type`, `userAddress`) VALUES
(8, 'Bhavesh', 'bsarvaiya@gmail.com', '12345', '1234567890', 'Admin', 'Jasdan'),
(15, 'Nayan Chauhan', 'nayan@gmail.com', '12345', '9157018907', 'Shopkeeper', 'Ahmedabad'),
(16, 'Rohan mehta', 'rohan@gmail.com', '12345', '8905455955', 'Delivery boy', 'Jasdan'),
(18, 'Jayesh', 'jayesh1@gmail.com', '12345', '9974419338', 'Delivery boy', 'Gangabuvan,Jasdan,360050'),
(20, 'ksakhiya', 'ksakhiya@gmail.com', '12345', '8128763389', 'Delivery boy', 'Kailash Nagar, Jasdan,360055'),
(21, 'Divya Makwana', 'dmakwana@gmail.com', '12345', '88888 99999', 'Customer', 'Rajkot'),
(22, 'Kalpesh', 'ksarvaiya1@gmail.com', '12345', '8905455955', 'Customer', 'Jasdan'),
(23, 'Jatin Kumar', 'jatin@gmail.com', '12345', '8905455955', 'Customer', 'Rajkot'),
(24, 'Deep patadiya', 'deep@gmail.com', '12345', '8905455954', 'Customer', 'Jasdan'),
(25, 'Vinay', 'vinay@gmail.com', '12345', '1234567890', 'Delivery boy', 'Jasdan'),
(26, 'Bhupatbhai', 'bhupatsarvaiya@gmail.com', '12345', '9974419338', 'Shopkeeper', 'Tower Road,Vadod'),
(27, 'Kalpesh', 'ksarvaiya248@gmail.com', '12345', '9898672365', 'Shopkeeper', 'Tower'),
(28, 'shailesh', 'shailesh@gmail.com', '12345', '7096258907', 'Shopkeeper', 'Gitanagar, Jasdan, 360050'),
(29, 'Jenti Sarvaiya', 'jsarvaiya700@gmail.com', '12345', '9898563310', 'Shopkeeper', 'Gangabuvan,Jasdan,360050'),
(30, 'Raydhan Bhai', 'radhe@gmail.com', '12345', '6355893507', 'Shopkeeper', 'Khodiyar Nagar, Gadhda.'),
(31, 'Pravinbhai', 'pravin@gmail.com', '12345', '7600730603', 'Shopkeeper', 'Khodiyar Nagar, Botad ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `delivery_boy_details`
--
ALTER TABLE `delivery_boy_details`
  ADD PRIMARY KEY (`db_trans_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`) USING BTREE;

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`) USING BTREE;

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `db_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
