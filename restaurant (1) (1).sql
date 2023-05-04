-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 08:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Fast food'),
(2, 'Drinks'),
(3, 'Healthy food'),
(7, 'home food');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_status`, `comment_author`, `comment_content`, `comment_date`, `comment_email`) VALUES
(9, 2, 'unapproved', 'asdasdasd', 'adsdasdas asdasd asd asdasdasdasdasdasd saasdasdasdaas as asdasd asd', '2022-11-27', 'qwqwe@asdasd.com'),
(10, 2, 'unapproved', 'asdasd', 'asdasdas asdasdasd asasdasdasasd  a sdasqwe qweqsaczxcz qweqad  asd', '2022-11-27', 'sumsamali189@gmail.com'),
(11, 2, 'unapproved', 'asdasd', 'qweqw rwtertcbvvcxbxcvb', '2022-11-27', 'qweqwe@adsdsa.com'),
(12, 4, 'unapproved', 'asdasd', 'dasdasd asdasdasd', '2022-11-27', 'asdasd@dadas.com'),
(13, 4, 'approved', 'asdasd', 'dasdasd asdasdasd', '2022-11-27', 'asdasd@dadas.com'),
(14, 9, 'approved', 'sumsam', 'asdasdsa asdasdasd asd asdsa dasd sadasd', '2022-11-27', 'sumsamali189@gmail.com'),
(16, 9, 'approved', 'mukand', 'asdasdas asd dasasdasdasd aszcxzczxc3we3e zcxzczxqwdasd', '2022-12-03', 'sumsamali189@gmail.com'),
(18, 38, 'approved', 'Sum', 'eewasdas asdasda cxzczxasdeasc xzc qwedsczxw', '2022-12-04', 'codinggeeek247@gmail.com'),
(19, 37, 'approved', 'Sum', 'doapsiud asjdhasjdsuihsnbvfuuhas mnx asgd jashd', '2022-12-04', 'codinggeeek247@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `food_blogs`
--

CREATE TABLE `food_blogs` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comments` int(10) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_blogs`
--

INSERT INTO `food_blogs` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comments`, `post_status`) VALUES
(37, 1, ' asd asdaasdasd asd', 'mukand', '2022-12-04', '2022-02-06.png', '<p>asd adacaaewq zcvfdasdacczc asdf&nbsp;</p>        ', 'asd aczxcaase3wq axczxcaseqweqwasdas', 1, 'published'),
(38, 1, ' asd asdaasdasd asd', 'mukand', '2022-12-04', '2022-02-06.png', '<p>asd adacaaewq zcvfdasdacczc asdf&nbsp;</p>        ', 'asd aczxcaase3wq axczxcaseqweqwasdas', 1, 'published'),
(39, 1, ' asd asdaasdasd asd', 'mukand', '2022-12-04', '2022-02-06.png', '<p>asd adacaaewq zcvfdasdacczc asdf&nbsp;</p>        ', 'asd aczxcaase3wq axczxcaseqweqwasdas', 0, 'published'),
(41, 3, 'qweqweqw', 'Sum', '2022-12-06', 'WhatsApp Image 2022-12-01 at 23.39.42.jpeg', '<p>qeqwwq qwqwsdadqw azxczxc</p>        ', 'qweqwewq', 0, 'Draft');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(3) NOT NULL,
  `blog_id` int(3) NOT NULL,
  `subscriber_id` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `rider_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `blog_id`, `subscriber_id`, `order_date`, `rider_id`) VALUES
(2, 37, 19, '2022-12-05', 0),
(4, 37, 19, '2022-12-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

CREATE TABLE `riders` (
  `rider_id` int(3) NOT NULL,
  `rider_numberplate` varchar(7) NOT NULL,
  `rider_free` tinyint(1) NOT NULL DEFAULT 1,
  `order_id` int(3) NOT NULL,
  `rider_address` varchar(255) NOT NULL,
  `rider_image` varchar(255) NOT NULL,
  `rider_fullname` varchar(255) NOT NULL,
  `rider_phonenumber` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riders`
--

INSERT INTO `riders` (`rider_id`, `rider_numberplate`, `rider_free`, `order_id`, `rider_address`, `rider_image`, `rider_fullname`, `rider_phonenumber`) VALUES
(1, '123-012', 1, 0, 'shah latif town', 'WhatsApp Image 2022-12-01 at 23.39.42.jpeg', 'Yasir rathi', '+923101234567');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_phonenumber` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`, `user_address`, `user_phonenumber`) VALUES
(16, 'mukand', '$2y$12$wdgwYzLM9SVLgO9HhQoYkeN97.24f2qFLsG4BM6Wr1vFiGhWCxTfu', 'mukand', 'rathi', 'sumsamali189@gmail.com', '2022-01-25.png', 'admin', '', 'shah latif town', '+923101345676'),
(17, 'Sumsam', '$2y$10$QP56HEgRpqoAzPJKy7oVuuJ.6EvVK2.Q9Hk7iOFj/NbY8cvQz56Oq', 'aa', 'rathi', 'sunsan@gmail.com', '2022-02-06.png', 'subscriber', '', 'shah latif town', '312'),
(18, 'Sumsaddd', '$2y$10$O/wIPdh1pXEf1KiAq7R55.OIH89qfQOnZG3A9LZ5iIbDqN2/FxwN.', 'Yasir', 'rathi', 'codinggeeek247@gmail.com', '2022-02-06.png', 'admin', '', 'shah latif town', '312'),
(19, 'Sum', '$2y$10$SX.229PSscFf4e1ZHlwaZub2fbm63cAu/hZPWqQttgF0rz1OD2hbO', 'Yasir', 'rathi', 'codinggeeek247@gmail.com', 'Capture.PNG', 'admin', '', 'shah latif town', '+923101234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `food_blogs`
--
ALTER TABLE `food_blogs`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `riders`
--
ALTER TABLE `riders`
  ADD PRIMARY KEY (`rider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `food_blogs`
--
ALTER TABLE `food_blogs`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `riders`
--
ALTER TABLE `riders`
  MODIFY `rider_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
