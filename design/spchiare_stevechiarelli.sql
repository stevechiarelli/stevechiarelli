-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2021 at 10:13 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spchiare_stevechiarelli`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) UNSIGNED NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `heading`, `content`) VALUES
(1, 'About Me', '<p>My name is Steve Chiarelli. I have a Bachelor of Science degree in computer science from Florida Gulf Coast University. For the last twelve years I have been a Retail Service Technician at Publix. During this time, I gathered a great deal of hands-on experience and knowledge with all aspects of technology in addition to the importance of teamwork and collaboration.<br><br>When I\'m not at Publix I spend my time creating websites and developing web applications. Thanks to my degree I am proficient in a variety of programming and scripting languages including PHP, C, C++, C#, JavaScript, SQL, and HTML. I also have experience with content management systems including WordPress and JavaScript libraries/frameworks including React.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `title`, `email`, `content`) VALUES
(1, 'Hire Me', 'Email: spchiare@yahoo.com', 'Are you in need of a hard working, creative, professional individual to help take your website to the next level? If so send me a message or you can shoot me an email. Also don\'t forget to check out my GitHub page at github.com/chiatek.');

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `id` int(11) UNSIGNED NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subheading` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`id`, `heading`, `subheading`) VALUES
(1, 'Hello,<br>My name is<br>Steve Chiarelli', 'I am a web developer with a knack for UI/UX');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `featured` tinyint(1) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `built_with` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button1_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button1_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button2_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button2_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `title`, `date`, `featured`, `image`, `description`, `built_with`, `button1_text`, `button1_url`, `button2_text`, `button2_url`) VALUES
(1, 'halografix.com', '2021-06-20 11:13:00', 1, 'images/halografix.jpg', 'Halografix is a creative design and video production company based in Fort Myers, FL. The site features a multi step registration form which provides upfront pricing and availability. Also, if you look closely all stock photos used have been manipulated in some way using Photoshop. The content is delivered from the headless version of my custom CMS.', 'React, Sass', 'website link', 'https://www.halografix.com', 'github link', 'https://github.com/chiatek/halografix'),
(2, 'chiatek.com', '2020-12-06 20:35:00', 0, 'images/chiatek.jpg', 'This is a mockup for a creative agency specializing in web design and video production. The content is delivered from the headless version of my custom CMS.', 'React, Sass', 'website link', 'https://www.chiatek.com', 'github link', 'https://github.com/chiatek/chiatek'),
(3, 'kalilogic.com', '2020-12-03 20:37:00', 0, 'images/kalilogic.jpg', 'Kali Logic is an app agency template featuring a hero video background (desktop only) and a project section with modal descriptions.', 'React, Sass', 'website link', 'https://www.kalilogic.com', 'github link', 'https://github.com/chiatek/kalilogic'),
(4, 'retroforest.com', '2020-12-05 20:39:00', 0, 'images/retroforest.jpg', 'Retro Forest is a digital blog template featuring a parallax hero section. The site and blog entries are managed by my CMS.', 'PHP, MySQL, JavaScript, Bootstrap', 'website link', 'https://www.retroforest.com', 'github link', 'https://github.com/chiatek/retroforest'),
(5, 'Content Mgmt System', '2020-12-04 20:41:00', 0, 'images/cms.jpg', 'This CMS is built with a custom designed MVC (model/view/controller) framework. It features a streamlined URL routing system, blog post editor, and much more! (Username: demo-user, Password: Demo*omed!1)', 'PHP, MySQL, JavaScript, Bootstrap', 'website link', 'https://www.retroforest.com/admin', 'github link', 'https://github.com/chiatek/cms'),
(6, 'Database Content Editor', '2020-12-01 20:43:00', 0, 'images/dbce.jpg', 'This is a simple database editor with a user friendly interface that provides basic CRUD functionality. (Username: demo-user, Password: Demo*omed!1)', 'PHP, MySQL, W3.css', 'website link', 'https://www.chiamedia.com', 'github link', 'https://github.com/chiatek/dbce'),
(7, 'emmachiarelli.com', '2020-12-02 20:46:00', 0, 'images/emmachiarelli.jpg', 'This is a portfolio website built for my niece who was applying for college with the hopes of getting a scholarship in gymnastics.', 'WordPress', 'website link', 'https://www.emmachiarelli.com', 'github link', 'https://github.com/chiatek/emmachiarelli'),
(8, 'CMS (Headless Version)', '2020-12-07 20:31:00', 1, 'images/hcms.jpg', 'This is the headless version of my CMS which generates a JSON ouput file for content delivery. A notable feature includes a database editor with the ability to save frequent queries. (Username: demo-user, Password: Demo*omed!1)', 'PHP, MySQL, JavaScript, Bootstrap', 'website link', 'https://cms.chiatek.com', 'github link', 'https://github.com/chiatek/cms_headless');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
