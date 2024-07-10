-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 05:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaintmanger`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `notice` longtext NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) DEFAULT NULL,
  `announcementday` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apptitles`
--

CREATE TABLE `apptitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `searchtitle` varchar(255) NOT NULL,
  `searchsub` varchar(255) DEFAULT NULL,
  `featurecheck` varchar(255) NOT NULL,
  `featuretitle` varchar(255) NOT NULL,
  `featuresub` varchar(255) DEFAULT NULL,
  `testimonialcheck` varchar(255) NOT NULL,
  `testimonialtitle` varchar(255) NOT NULL,
  `testimonialsub` varchar(255) DEFAULT NULL,
  `faqcheck` varchar(255) NOT NULL,
  `faqtitle` varchar(255) NOT NULL,
  `faqsub` varchar(255) DEFAULT NULL,
  `articlecheck` varchar(255) NOT NULL,
  `articletitle` varchar(255) NOT NULL,
  `articlesub` varchar(255) DEFAULT NULL,
  `checkbox` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apptitles`
--

INSERT INTO `apptitles` (`id`, `searchtitle`, `searchsub`, `featurecheck`, `featuretitle`, `featuresub`, `testimonialcheck`, `testimonialtitle`, `testimonialsub`, `faqcheck`, `faqtitle`, `faqsub`, `articlecheck`, `articletitle`, `articlesub`, `checkbox`, `image`, `title`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(1, 'Looking For help?', 'Type your query or submit your ticket', 'on', 'Why Choose US?', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Client Says', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out FAQ’s', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Recent Articles', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', NULL, '20240502033059.png', 'laravel', '20240502033059.png', '20240502033059.png', '20240502033059.png', '20240502033059.png', '2024-04-28 02:00:28', '2024-05-01 22:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `articleslug` longtext DEFAULT NULL,
  `subcategory` longtext DEFAULT NULL,
  `featureimage` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(2, 'In eleifend velit vitae libero sollicitudin euismod.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(3, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(4, 'Cras fringilla ipsum magna, in fringilla dui commodo a.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac faucibus odio.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(6, 'Maecenas non lorem quis tellus placerat varius.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(7, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum ?', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(8, 'Etiam vehicula luctus fermentum. In vel metus congue, pulvinar lectus vel, fermentum dui.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(9, 'Maecenas ante orci, egestas ut aliquet sit amet, sagittis a magna.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(10, 'Ut ullamcorperjusto sapien, in cursus libero viverra eget. Vivamus auctor imperdiet urna, at pulvinar leoposuere laoreet.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(11, 'Suspendisse neque nisl, fringilla at iaculis scelerisque, ornare vel dolor. Utet   pulvinar   nunc.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(12, 'Pellentesque fringilla mollis efficitur.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(13, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(14, 'Ut ac loremsed turpis imperdiet eleifend sit amet id sapien.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(15, 'Nulla facilisi. Aenean congue fringilla justout aliquam.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(16, 'Nunc vulputate neque vitae justo facilisis, non condimentumante sagittis.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30');
INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(17, 'Maecenas tincidunt est efficiturligula euismod, sit amet ornare est vulputate.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(18, 'Duis vehicula mi vel mi pretium, a viverra erat efficitur.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(19, 'Cras aliquamest ac eros varius, id iaculis dui auctor.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(20, 'Duis pretium neque ligula, et pulvinar mi placeratet. Nulla nec nunc sit amet nunc posuere vestibulum.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(21, 'ellentesquescelerisque fermentum erat, id posuere justo pulvinar ut.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `articles_likes`
--

CREATE TABLE `articles_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `rating` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_likes`
--

INSERT INTO `articles_likes` (`id`, `user_id`, `article_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(2, 1, 1, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(3, 1, 1, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(4, 1, 1, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(5, 1, 1, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(6, 1, 1, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(7, 1, 1, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(8, 1, 1, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(9, 1, 1, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(10, 1, 2, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(11, 1, 2, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(12, 1, 2, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(13, 1, 2, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(14, 1, 8, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(15, 1, 8, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(16, 1, 8, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(17, 1, 8, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(18, 1, 8, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(19, 1, 8, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(20, 1, 8, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(21, 1, 8, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(22, 1, 8, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(23, 1, 9, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(24, 1, 9, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(25, 1, 9, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(26, 1, 9, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(27, 1, 15, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(28, 1, 15, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(29, 1, 15, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(30, 1, 15, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(31, 1, 15, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(32, 1, 15, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(33, 1, 15, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(34, 1, 15, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(35, 1, 15, -1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(36, 1, 16, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(37, 1, 16, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(38, 1, 16, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(39, 1, 16, 1, '2022-01-07 01:13:30', '2022-01-07 01:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `article_comments`
--

CREATE TABLE `article_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_replies`
--

CREATE TABLE `article_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bussinesshours`
--

CREATE TABLE `bussinesshours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_id` varchar(255) DEFAULT NULL,
  `weeks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `endtime` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `callactions`
--

CREATE TABLE `callactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `callcheck` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `buttonname` varchar(255) NOT NULL,
  `buttonurl` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `callactions`
--

INSERT INTO `callactions` (`id`, `callcheck`, `title`, `subtitle`, `buttonname`, `buttonurl`, `image`, `created_at`, `updated_at`) VALUES
(1, 'on', 'Need Support & Response within 24 hours?', 'Excepteur sint occaecat cupidatat non proident mollit anim id est laborum', 'Open Ticket', '#', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `cannedmessages`
--

CREATE TABLE `cannedmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `messages` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display` varchar(255) DEFAULT NULL,
  `categoryslug` longtext DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `display`, `categoryslug`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ticket Support 234567890 piu', 'both', 'ticket-support-234567890', NULL, '1', '2022-01-07 01:13:30', '2024-05-03 13:48:13'),
(2, 'Securities', 'knowledge', NULL, NULL, '1', '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(3, 'Sales & Services', 'both', NULL, NULL, '1', '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(4, 'Electrical', 'ticket', 'electrical', NULL, '1', '2024-05-02 13:20:55', '2024-05-02 13:20:55'),
(6, 'cater', 'both', 'cater', NULL, '0', '2024-05-02 13:24:11', '2024-05-02 13:24:11'),
(8, 'cater test', 'both', 'cater-test', NULL, '0', '2024-05-02 13:33:34', '2024-05-02 13:33:34'),
(12, 'syteee io', NULL, 'syteee-io', NULL, '0', '2024-05-02 13:37:29', '2024-05-02 13:37:29'),
(14, 'syteee io9009', 'ticket', 'syteee-io9009', NULL, '0', '2024-05-02 13:41:48', '2024-05-02 13:41:48'),
(16, 'ad ewnwe', 'ticket', 'ad-ewnwe', NULL, '0', '2024-05-02 13:42:47', '2024-05-02 13:42:47'),
(18, 'asdkjas89', 'ticket', 'asdkjas89', NULL, '0', '2024-05-02 13:48:59', '2024-05-02 13:48:59'),
(20, 'treeeeeeeeee', 'ticket', 'treeeeeeeeee', NULL, '0', '2024-05-03 13:11:18', '2024-05-03 13:11:18'),
(22, 'jsd', 'ticket', 'jsd', NULL, '0', '2024-05-03 13:15:28', '2024-05-03 13:15:28'),
(24, 'jsd90', 'ticket', 'jsd90', NULL, '0', '2024-05-03 13:21:42', '2024-05-03 13:21:42'),
(26, 'jsd90ticket', 'ticket', 'jsd90ticket', NULL, '0', '2024-05-03 13:22:14', '2024-05-03 13:22:14'),
(28, 'jhjh2345678', 'ticket', 'jhjh2345678', NULL, '0', '2024-05-03 13:30:45', '2024-05-03 13:30:45'),
(30, 'trip', 'ticket', 'trip', NULL, '0', '2024-05-03 13:34:41', '2024-05-03 13:34:41'),
(32, 'tripjaan', 'ticket', 'tripjaan', NULL, '0', '2024-05-03 13:35:04', '2024-05-03 13:35:04'),
(38, 'tripjaanjio0', 'both', 'tripjaanjio0', NULL, '0', '2024-05-03 13:38:39', '2024-05-03 13:38:39'),
(40, 'muiosd', 'both', 'muiosd', 'Low', '1', '2024-07-06 07:31:28', '2024-07-06 07:31:28'),
(46, 'new lal', 'both', 'new-lal', 'Low', '0', '2024-07-06 11:42:17', '2024-07-06 11:42:17'),
(48, 'new lal hjsd', 'both', 'new-lal-hjsd', 'Low', '0', '2024-07-06 11:50:28', '2024-07-06 11:50:28'),
(52, 'new lal hjsd jksd', 'both', 'new-lal-hjsd-jksd', 'Low', '0', '2024-07-06 12:14:23', '2024-07-06 12:14:23'),
(54, 'google chrom', 'both', 'google-chrom', 'Low', '1', '2024-07-06 12:58:00', '2024-07-06 12:58:00'),
(56, 'bakers', 'both', 'bakers', 'Low', '1', '2024-07-06 13:34:31', '2024-07-06 13:34:31'),
(58, 'tru dine', 'both', 'tru-dine', 'Low', '1', '2024-07-06 13:40:14', '2024-07-06 13:40:14'),
(60, 'Ticket Support 234567890 piusasss', 'both', 'ticket-support-234567890-piusasss', 'Low', '1', '2024-07-06 13:41:19', '2024-07-06 13:41:19'),
(62, 'full ewocn', 'knowledge', 'full-ewocn', 'Medium', '1', '2024-07-06 14:00:01', '2024-07-06 14:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `category_category_user`
--

CREATE TABLE `category_category_user` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `display` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `cust_id`, `user_id`, `comment`, `display`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 6, NULL, '<p>vQui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.vQui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.</p>', 1, '2024-07-09 12:29:30', '2024-07-09 12:29:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE `contactforms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', NULL, NULL),
(2, 'Åland Islands', 'AX', NULL, NULL),
(3, 'Albania', 'AL', NULL, NULL),
(4, 'Algeria', 'DZ', NULL, NULL),
(5, 'American Samoa', 'AS', NULL, NULL),
(6, 'Andorra', 'AD', NULL, NULL),
(7, 'Angola', 'AO', NULL, NULL),
(8, 'Anguilla', 'AI', NULL, NULL),
(9, 'Antarctica', 'AQ', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', NULL, NULL),
(11, 'Argentina', 'AR', NULL, NULL),
(12, 'Armenia', 'AM', NULL, NULL),
(13, 'Aruba', 'AW', NULL, NULL),
(14, 'Australia', 'AU', NULL, NULL),
(15, 'Austria', 'AT', NULL, NULL),
(16, 'Azerbaijan', 'AZ', NULL, NULL),
(17, 'Bahamas', 'BS', NULL, NULL),
(18, 'Bahrain', 'BH', NULL, NULL),
(19, 'Bangladesh', 'BD', NULL, NULL),
(20, 'Barbados', 'BB', NULL, NULL),
(21, 'Belarus', 'BY', NULL, NULL),
(22, 'Belgium', 'BE', NULL, NULL),
(23, 'Belize', 'BZ', NULL, NULL),
(24, 'Benin', 'BJ', NULL, NULL),
(25, 'Bermuda', 'BM', NULL, NULL),
(26, 'Bhutan', 'BT', NULL, NULL),
(27, 'Bolivia, Plurinational State of', 'BO', NULL, NULL),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British Indian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Canada', 'CA', NULL, NULL),
(41, 'Cape Verde', 'CV', NULL, NULL),
(42, 'Cayman Islands', 'KY', NULL, NULL),
(43, 'Central African Republic', 'CF', NULL, NULL),
(44, 'Chad', 'TD', NULL, NULL),
(45, 'Chile', 'CL', NULL, NULL),
(46, 'China', 'CN', NULL, NULL),
(47, 'Christmas Island', 'CX', NULL, NULL),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(49, 'Colombia', 'CO', NULL, NULL),
(50, 'Comoros', 'KM', NULL, NULL),
(51, 'Congo', 'CG', NULL, NULL),
(52, 'Congo, the Democratic Republic of the', 'CD', NULL, NULL),
(53, 'Cook Islands', 'CK', NULL, NULL),
(54, 'Costa Rica', 'CR', NULL, NULL),
(55, 'Côte d\'Ivoire', 'CI', NULL, NULL),
(56, 'Croatia', 'HR', NULL, NULL),
(57, 'Cuba', 'CU', NULL, NULL),
(58, 'Curaçao', 'CW', NULL, NULL),
(59, 'Cyprus', 'CY', NULL, NULL),
(60, 'Czech Republic', 'CZ', NULL, NULL),
(61, 'Denmark', 'DK', NULL, NULL),
(62, 'Djibouti', 'DJ', NULL, NULL),
(63, 'Dominica', 'DM', NULL, NULL),
(64, 'Dominican Republic', 'DO', NULL, NULL),
(65, 'Ecuador', 'EC', NULL, NULL),
(66, 'Egypt', 'EG', NULL, NULL),
(67, 'El Salvador', 'SV', NULL, NULL),
(68, 'Equatorial Guinea', 'GQ', NULL, NULL),
(69, 'Eritrea', 'ER', NULL, NULL),
(70, 'Estonia', 'EE', NULL, NULL),
(71, 'Ethiopia', 'ET', NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(73, 'Faroe Islands', 'FO', NULL, NULL),
(74, 'Fiji', 'FJ', NULL, NULL),
(75, 'Finland', 'FI', NULL, NULL),
(76, 'France', 'FR', NULL, NULL),
(77, 'French Guiana', 'GF', NULL, NULL),
(78, 'French Polynesia', 'PF', NULL, NULL),
(79, 'French Southern Territories', 'TF', NULL, NULL),
(80, 'Gabon', 'GA', NULL, NULL),
(81, 'Gambia', 'GM', NULL, NULL),
(82, 'Georgia', 'GE', NULL, NULL),
(83, 'Germany', 'DE', NULL, NULL),
(84, 'Ghana', 'GH', NULL, NULL),
(85, 'Gibraltar', 'GI', NULL, NULL),
(86, 'Greece', 'GR', NULL, NULL),
(87, 'Greenland', 'GL', NULL, NULL),
(88, 'Grenada', 'GD', NULL, NULL),
(89, 'Guadeloupe', 'GP', NULL, NULL),
(90, 'Guam', 'GU', NULL, NULL),
(91, 'Guatemala', 'GT', NULL, NULL),
(92, 'Guernsey', 'GG', NULL, NULL),
(93, 'Guinea', 'GN', NULL, NULL),
(94, 'Guinea-Bissau', 'GW', NULL, NULL),
(95, 'Guyana', 'GY', NULL, NULL),
(96, 'Haiti', 'HT', NULL, NULL),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', NULL, NULL),
(98, 'Holy See (Vatican City State)', 'VA', NULL, NULL),
(99, 'Honduras', 'HN', NULL, NULL),
(100, 'Hong Kong', 'HK', NULL, NULL),
(101, 'Hungary', 'HU', NULL, NULL),
(102, 'Iceland', 'IS', NULL, NULL),
(103, 'India', 'IN', NULL, NULL),
(104, 'Indonesia', 'ID', NULL, NULL),
(105, 'Iran, Islamic Republic of', 'IR', NULL, NULL),
(106, 'Iraq', 'IQ', NULL, NULL),
(107, 'Ireland', 'IE', NULL, NULL),
(108, 'Isle of Man', 'IM', NULL, NULL),
(109, 'Israel', 'IL', NULL, NULL),
(110, 'Italy', 'IT', NULL, NULL),
(111, 'Jamaica', 'JM', NULL, NULL),
(112, 'Japan', 'JP', NULL, NULL),
(113, 'Jersey', 'JE', NULL, NULL),
(114, 'Jordan', 'JO', NULL, NULL),
(115, 'Kazakhstan', 'KZ', NULL, NULL),
(116, 'Kenya', 'KE', NULL, NULL),
(117, 'Kiribati', 'KI', NULL, NULL),
(118, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(119, 'Korea, Republic of', 'KR', NULL, NULL),
(120, 'Kuwait', 'KW', NULL, NULL),
(121, 'Kyrgyzstan', 'KG', NULL, NULL),
(122, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(123, 'Latvia', 'LV', NULL, NULL),
(124, 'Lebanon', 'LB', NULL, NULL),
(125, 'Lesotho', 'LS', NULL, NULL),
(126, 'Liberia', 'LR', NULL, NULL),
(127, 'Libya', 'LY', NULL, NULL),
(128, 'Liechtenstein', 'LI', NULL, NULL),
(129, 'Lithuania', 'LT', NULL, NULL),
(130, 'Luxembourg', 'LU', NULL, NULL),
(131, 'Macao', 'MO', NULL, NULL),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, NULL),
(133, 'Madagascar', 'MG', NULL, NULL),
(134, 'Malawi', 'MW', NULL, NULL),
(135, 'Malaysia', 'MY', NULL, NULL),
(136, 'Maldives', 'MV', NULL, NULL),
(137, 'Mali', 'ML', NULL, NULL),
(138, 'Malta', 'MT', NULL, NULL),
(139, 'Marshall Islands', 'MH', NULL, NULL),
(140, 'Martinique', 'MQ', NULL, NULL),
(141, 'Mauritania', 'MR', NULL, NULL),
(142, 'Mauritius', 'MU', NULL, NULL),
(143, 'Mayotte', 'YT', NULL, NULL),
(144, 'Mexico', 'MX', NULL, NULL),
(145, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(146, 'Moldova, Republic of', 'MD', NULL, NULL),
(147, 'Monaco', 'MC', NULL, NULL),
(148, 'Mongolia', 'MN', NULL, NULL),
(149, 'Montenegro', 'ME', NULL, NULL),
(150, 'Montserrat', 'MS', NULL, NULL),
(151, 'Morocco', 'MA', NULL, NULL),
(152, 'Mozambique', 'MZ', NULL, NULL),
(153, 'Myanmar', 'MM', NULL, NULL),
(154, 'Namibia', 'NA', NULL, NULL),
(155, 'Nauru', 'NR', NULL, NULL),
(156, 'Nepal', 'NP', NULL, NULL),
(157, 'Netherlands', 'NL', NULL, NULL),
(158, 'New Caledonia', 'NC', NULL, NULL),
(159, 'New Zealand', 'NZ', NULL, NULL),
(160, 'Nicaragua', 'NI', NULL, NULL),
(161, 'Niger', 'NE', NULL, NULL),
(162, 'Nigeria', 'NG', NULL, NULL),
(163, 'Niue', 'NU', NULL, NULL),
(164, 'Norfolk Island', 'NF', NULL, NULL),
(165, 'Northern Mariana Islands', 'MP', NULL, NULL),
(166, 'Norway', 'NO', NULL, NULL),
(167, 'Oman', 'OM', NULL, NULL),
(168, 'Pakistan', 'PK', NULL, NULL),
(169, 'Palau', 'PW', NULL, NULL),
(170, 'Palestine, State of', 'PS', NULL, NULL),
(171, 'Panama', 'PA', NULL, NULL),
(172, 'Papua New Guinea', 'PG', NULL, NULL),
(173, 'Paraguay', 'PY', NULL, NULL),
(174, 'Peru', 'PE', NULL, NULL),
(175, 'Philippines', 'PH', NULL, NULL),
(176, 'Pitcairn', 'PN', NULL, NULL),
(177, 'Poland', 'PL', NULL, NULL),
(178, 'Portugal', 'PT', NULL, NULL),
(179, 'Puerto Rico', 'PR', NULL, NULL),
(180, 'Qatar', 'QA', NULL, NULL),
(181, 'Réunion', 'RE', NULL, NULL),
(182, 'Romania', 'RO', NULL, NULL),
(183, 'Russian Federation', 'RU', NULL, NULL),
(184, 'Rwanda', 'RW', NULL, NULL),
(185, 'Saint Barthélemy', 'BL', NULL, NULL),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', NULL, NULL),
(187, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(188, 'Saint Lucia', 'LC', NULL, NULL),
(189, 'Saint Martin (French part)', 'MF', NULL, NULL),
(190, 'Saint Pierre and Miquelon', 'PM', NULL, NULL),
(191, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(192, 'Samoa', 'WS', NULL, NULL),
(193, 'San Marino', 'SM', NULL, NULL),
(194, 'Sao Tome and Principe', 'ST', NULL, NULL),
(195, 'Saudi Arabia', 'SA', NULL, NULL),
(196, 'Senegal', 'SN', NULL, NULL),
(197, 'Serbia', 'RS', NULL, NULL),
(198, 'Seychelles', 'SC', NULL, NULL),
(199, 'Sierra Leone', 'SL', NULL, NULL),
(200, 'Singapore', 'SG', NULL, NULL),
(201, 'Sint Maarten (Dutch part)', 'SX', NULL, NULL),
(202, 'Slovakia', 'SK', NULL, NULL),
(203, 'Slovenia', 'SI', NULL, NULL),
(204, 'Solomon Islands', 'SB', NULL, NULL),
(205, 'Somalia', 'SO', NULL, NULL),
(206, 'South Africa', 'ZA', NULL, NULL),
(207, 'South Georgia and the South Sandwich Islands', 'GS', NULL, NULL),
(208, 'South Sudan', 'SS', NULL, NULL),
(209, 'Spain', 'ES', NULL, NULL),
(210, 'Sri Lanka', 'LK', NULL, NULL),
(211, 'Sudan', 'SD', NULL, NULL),
(212, 'Suriname', 'SR', NULL, NULL),
(213, 'Svalbard and Jan Mayen', 'SJ', NULL, NULL),
(214, 'Swaziland', 'SZ', NULL, NULL),
(215, 'Sweden', 'SE', NULL, NULL),
(216, 'Switzerland', 'CH', NULL, NULL),
(217, 'Syrian Arab Republic', 'SY', NULL, NULL),
(218, 'Taiwan', 'TW', NULL, NULL),
(219, 'Tajikistan', 'TJ', NULL, NULL),
(220, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(221, 'Thailand', 'TH', NULL, NULL),
(222, 'Timor-Leste', 'TL', NULL, NULL),
(223, 'Togo', 'TG', NULL, NULL),
(224, 'Tokelau', 'TK', NULL, NULL),
(225, 'Tonga', 'TO', NULL, NULL),
(226, 'Trinidad and Tobago', 'TT', NULL, NULL),
(227, 'Tunisia', 'TN', NULL, NULL),
(228, 'Turkey', 'TR', NULL, NULL),
(229, 'Turkmenistan', 'TM', NULL, NULL),
(230, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(231, 'Tuvalu', 'TV', NULL, NULL),
(232, 'Uganda', 'UG', NULL, NULL),
(233, 'Ukraine', 'UA', NULL, NULL),
(234, 'United Arab Emirates', 'AE', NULL, NULL),
(235, 'United Kingdom', 'GB', NULL, NULL),
(236, 'United States', 'US', NULL, NULL),
(237, 'United States Minor Outlying Islands', 'UM', NULL, NULL),
(238, 'Uruguay', 'UY', NULL, NULL),
(239, 'Uzbekistan', 'UZ', NULL, NULL),
(240, 'Vanuatu', 'VU', NULL, NULL),
(241, 'Venezuela, Bolivarian Republic of', 'VE', NULL, NULL),
(242, 'Viet Nam', 'VN', NULL, NULL),
(243, 'Virgin Islands, British', 'VG', NULL, NULL),
(244, 'Virgin Islands, U.S.', 'VI', NULL, NULL),
(245, 'Wallis and Futuna', 'WF', NULL, NULL),
(246, 'Western Sahara', 'EH', NULL, NULL),
(247, 'Yemen', 'YE', NULL, NULL),
(248, 'Zambia', 'ZM', NULL, NULL),
(249, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customcssjs`
--

CREATE TABLE `customcssjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customcssjs`
--

INSERT INTO `customcssjs` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'CUSTOMCHATENABLE', 'disable', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(2, 'CUSTOMCHATUSER', 'public', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(3, 'CUSTOMCHAT', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(4, 'CUSTOMJS', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(5, 'CUSTOMCSS', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `logintype` varchar(255) DEFAULT NULL,
  `userType` varchar(255) NOT NULL,
  `voilated` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `inactive_date` datetime DEFAULT NULL,
  `last_logins_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `username`, `gender`, `provider_id`, `email`, `logintype`, `userType`, `voilated`, `status`, `phone`, `image`, `verified`, `password`, `last_login_at`, `inactive_date`, `last_logins_at`, `last_login_ip`, `country`, `timezone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', '', 'Customer', 'Male', NULL, 'customer@gmail.com', NULL, 'Customer', NULL, '1', NULL, NULL, 1, '$2y$10$qwVR9vzTVDRb5bGW27rzxeqoBDGKbhcUxkQTl76rl8i.WmFbLTEl2', NULL, NULL, NULL, NULL, '', 'UTC', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(2, '', '', 'GUEST', NULL, NULL, 'test@sd.com', NULL, 'Guest', NULL, '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', 'UTC', NULL, '2024-04-28 02:05:20', '2024-05-02 13:18:45'),
(3, 'Fleur', 'Albert', 'Fleur Albert', NULL, NULL, 'sezec@smailinator.com', NULL, 'Customer', NULL, '1', NULL, NULL, 0, '$2y$10$K5OTUKHyzdorODnZY43XDOPhA3GVdkeobyJ0rRKmRCm2H2ujkB0aq', NULL, NULL, NULL, NULL, 'United States', 'America/New_York', NULL, '2024-05-17 14:08:51', '2024-05-17 14:08:51'),
(4, '', '', 'GUEST', NULL, NULL, 'putiroli@mailinator.com', NULL, 'Guest', NULL, '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', 'UTC', NULL, '2024-07-06 15:38:44', '2024-07-06 15:38:44'),
(5, '', '', 'GUEST', NULL, NULL, 'nycin@mailinator.com', NULL, 'Guest', NULL, '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '', 'UTC', NULL, '2024-07-08 00:29:12', '2024-07-08 00:29:12'),
(6, 'Kyla', 'Nicholson', 'Kyla Nicholson', NULL, NULL, 'napofysybo@mailinatouir.com', NULL, 'Customer', NULL, '1', NULL, NULL, 1, '$2y$10$9jpqUiIyb9OI481knEPG7OOzYz50GF4vG9gt6PVAdj/3K2pZhrZAO', '2024-07-09 17:27:26', NULL, '2024-07-09 17:27:26', '127.0.0.0', 'United States', 'America/New_York', NULL, '2024-07-09 12:26:08', '2024-07-09 12:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `customer_settings`
--

CREATE TABLE `customer_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custs_id` bigint(20) UNSIGNED NOT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_settings`
--

INSERT INTO `customer_settings` (`id`, `custs_id`, `darkmode`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(2, 2, NULL, '2024-04-28 02:05:20', '2024-04-28 02:05:20'),
(3, 3, NULL, '2024-05-17 14:08:51', '2024-05-17 14:08:51'),
(4, 4, NULL, '2024-07-06 15:38:44', '2024-07-06 15:38:44'),
(5, 5, NULL, '2024-07-08 00:29:12', '2024-07-08 00:29:12'),
(6, 6, NULL, '2024-07-09 12:26:08', '2024-07-09 12:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `customfields`
--

CREATE TABLE `customfields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fieldnames` varchar(255) NOT NULL,
  `fieldtypes` varchar(255) NOT NULL,
  `fieldoptions` varchar(255) DEFAULT NULL,
  `displaytypes` varchar(255) DEFAULT NULL,
  `fieldrequired` tinyint(1) NOT NULL DEFAULT 0,
  `fieldprivacy` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customizeerrors`
--

CREATE TABLE `customizeerrors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `errorname` varchar(255) NOT NULL,
  `errorvalue` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customizeerrors`
--

INSERT INTO `customizeerrors` (`id`, `errorname`, `errorvalue`, `created_at`, `updated_at`) VALUES
(1, '404title', 'Page Not Found', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(2, '404subtitle', 'Request Page Does Not Exists', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(3, '503title', 'Maintenance Mode', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(4, '503subtitle', 'We will be back soon', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(5, '503description', 'Please wait this site is undermaintenance', '2024-04-28 02:00:29', '2024-04-28 02:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departmentname` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `departmentname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Web', 0, '2024-05-03 13:42:57', '2024-05-03 13:42:57'),
(2, 'Web90', 0, '2024-05-03 13:43:06', '2024-05-03 13:43:06'),
(4, 'Walter Lott9099', 0, '2024-07-05 13:20:23', '2024-07-05 13:20:23'),
(5, 'iusdiu', 1, NULL, NULL),
(6, 'iujksd', 1, NULL, NULL),
(7, 'kjew', 0, NULL, NULL),
(8, 'kjds', 0, NULL, NULL),
(9, 'datarecor removed', 1, NULL, NULL),
(10, 'testing department', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `code`, `title`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'customer_sendmail_contactus', 'Users receive e-mail from Admin for submitting contact_us form.', 'Thank you for contacting us.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{Contact_name}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;This to inform you that we have recieved your details successfully. Our team will respond shortly.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\"><br></p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(2, 'admin_sendmail_contactus', 'Admin receives e-mails from customers through contact_us form', 'Received contact details from a new user.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp;Received contact information from new customer.</p>\n                <p>&nbsp; &nbsp;Name: {{Contact_name}}</p>\n                <p>&nbsp; &nbsp;Email: {{Contact_email}}</p><p>&nbsp; &nbsp;Phone Number: {{Contact_phone}}</p>\n                <p>&nbsp; &nbsp;Subject: {{Contact_subject}}</p><p>&nbsp; &nbsp;Message:{{Contact_message}}</p>\n                <p><br></p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(3, 'customer_sendmail_verification', 'Customers receive e-mail, when they get registered with the application.', 'Thanks you for registering. Please verify your email.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{username}},</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"23\" data-from-init=\"true\" data-changed=\"false\"><span class=\"red-underline\" data-startindex=\"0\" data-endindex=\"2\" data-paragraphid=\"23\">&nbsp; &nbsp;</span>Thank you for registering as our customer. Be a part of our family. Before you log in to your portal, please verify your email by clicking this&nbsp;link:-&nbsp;<a href=\"{{email_verify_url}}\" style=\"color: var(--primary); outline: 0px;\">VerifyLink</a>.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(4, 'customer_send_ticket_created', 'Send email to customer, when a ticket is created.', 'We received your ticket successfully.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response.(usually within 24 hours).</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p><p>Thank you for your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(5, 'admin_send_email_ticket_created', 'Send email to admin when ticket is created', 'New ticket has been created.', '<p>Dear Admin,</p><p>A ticket has been created with Ticket ID {{ticket_id}}.&nbsp;<br></p><p>Assign the ticket to support representatives who will be reviewing the request.</p><p>To view the status of the ticket or add comments, please visit,</p><p><a href=\"{{ticket_admin_url}}\" target=\"_blank\">{{ticket_admin_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(6, 'customer_send_ticket_reply', 'Send email to customers, when they get reply to ticket.', 'You got reply for the ticket', '<p>Our support representatives have started reviewing your request.</p><p>Please visit the application to&nbsp;<a href=\"{{ticket_customer_url}}\" style=\"\">ViewTicket</a></p><p>Thank you for reaching us</p><p>Your Ticket Title: {{ticket_title}}<br></p><p>Your Ticket ID: {{ticket_id}}</p><p>Recent Reply: {{comment}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(7, 'customer_rating', 'Customer rating for agents.', 'Your ticket {{ticket_id}} has been closed succesfully.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your ticket {{ticket_id}} has been closed by our support team. We’re always looking for ways to improve and would love to know how we did recently.</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">How would you rate the support you received?</p><p>Please click on the link to rate us:&nbsp;<a href=\"{{ratinglink}}\">Click here</a></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\"><br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(8, 'customer_send_ticket_reopen', 'Send email to customer, when ticket is re-opened!', 'Your ticket has been reopened succesfully', '<p>Thank you for reaching us again&nbsp;</p><p>Our support representatives will be reviewing your request again and will send you a personal response within 1-2 business working days.<br></p><p><br> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(9, 'forget_password', 'When customer/admin or any user forgets password', 'Password Reset Email Link', '<p class=\"root-block-node\" data-paragraphid=\"51\" data-from-init=\"true\" data-changed=\"false\">Hi there,</p><p class=\"root-block-node\" data-paragraphid=\"53\" data-from-init=\"true\" data-changed=\"false\">Looks like you lost your password.</p><p class=\"root-block-node\" data-paragraphid=\"52\" data-from-init=\"true\" data-changed=\"false\">To regain access to your account</p><p>Please click the link below to reset your account password.</p><p><a href=\"{{reset_password_url}}\">Reset Password</a>&nbsp;</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>\n                ', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(10, 'customer_send_registration_details', 'Send email to customer, when customer is created by admin', 'Your account has been successfully created by our support team. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by our support team.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(11, 'employee_send_registration_details', 'Send email to employee, when employee is created by admin', 'Your account has been successfully created by our support team. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by our support team.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(12, 'customer_send_guestticket_created', 'Send email to guest, when guest-ticket is created.', 'We received your guest ticket successfully.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a gust ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response 1-2 bussiness days.</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p>Note:- Without logging into the above link, you cannot access your ticket.</p><p><br></p><p>We appreciate your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(13, 'customer_send_ticket_overdue', 'Send email to employees, when Ticket is Overdue.', 'Your ticket status has been overdue.', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear Admin Panel Users,</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">This ticket status has been overdue for {{ticket_overduetime}} days. </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">Please give attention to the ticket. The customer is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_admin_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(14, 'customer_send_ticket_response', 'When the customer does not respond to the ticket, an email is sent to the customer.', 'Waiting for your response to the ticket.', '<p>Dear {{ticket_username}},<br></p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">Your ticket is in an idle state. Our team is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">If you do not respond to this ticket {{ticket_id}}, it will be automatically closed after {{ticket_closingtime}} days.</p><p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">\n                </p><p class=\"root-block-node\" data-paragraphid=\"8\" data-from-init=\"true\" data-changed=\"true\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">View Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(15, 'customer_send_ticket_autoclose', 'Send email to customer, when a ticket is autoclosed.', 'Your Ticket has been Closed Succesfully', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"11\" data-from-init=\"true\" data-changed=\"false\">Your ticket has been closed successfully because there was no response from your end, so the ticket was closed automatically&nbsp;{{ticket_id}}.&nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"12\" data-from-init=\"true\" data-changed=\"false\">If you want to reopen this ticket, please log in to your portal.</p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(16, 'admin_send_email_ticket_reply', 'Send email to admin, when customer replies to ticket', 'You got reply from the customer', '<p>Hey Admin, </p><p>You have got a reply from customer. Please respond to the ticket.</p><p>Please visit the application to&nbsp;<a href=\"{{ticket_admin_url}}\" style=\"\">ViewTicket</a></p><p>Ticket Title: {{ticket_title}}<br></p><p>Ticket ID: {{ticket_id}}</p><p>Client Last Reply: {{comment}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(17, 'when_ticket_assign_to_other_employee', 'Send email to employee, when a ticket is assigned.', 'You have been assigned a ticket.', '<p>Dear User,<br></p>\n                    <p>You have been assigned a ticket.</p>\n                    <p>Please visit the application and respond accordingly. <br></p>\n                    <p><a href=\"{{ticket_admin_url}}\" style=\"\">Click-here </a>to view ticket.<br></p>\n                    <p>User Name: {{ticket_username}}<br></p>\n                    <p>Ticket Title: {{ticket_title}}<br></p>\n                    <p>Ticket ID: {{ticket_id}}</p>\n                    <p><br></p>\n                    <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(18, 'when_send_customnotify_email_to_selected_member', 'Send email to employee/customer, when a custom notification is sent to them.', 'You got a new notificatin.', '<p>Hey user, </p><p>You got a new notification. Please login to your account to see the notification in detail.</p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(19, 'when_send_customnotify_email_todelete_member', 'Send an email alert to the customers when they are not using the application.', 'Your account is unused and will soon be deleted.', '<p>Attention {{customer_username}}</p><p>Your {{customer_email}} personal account has been unused for {{customer_months}}.</p><p>It would be helpful if you could confirm that your account is still active by verifying it now.</p><p>Click here to <a href=\"{{ticket_customer_url}}\" target=\"_blank\">login</a></p><p>Note:  If you fail to login, your unused account with the associated data will be deleted in {{customer_time}}.</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(20, 'admin_sendemail_whenticketclosed', 'Send an email to admin panel users when ticket is closed.', 'The ticket {{ticket_id}} has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear User,</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This email is to inform you that the ticket {{ticket_id}} has been closed.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(21, 'customer_sendemail_whenticketclosed', 'Send an email to customer, when a ticket is closed.', 'The ticket {{ticket_id}} has been closed', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;We hope that the ticket {{ticket_id}} was resolved to your satisfaction. If you feel that the ticket should not be closed or if the ticket has not been resolved, please go ahead and reopen it.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(22, 'CCmail_sendemail_whenticketclosed', 'Send an email to CC when the ticket is closed.', 'Your ticket {{ticket_id}} has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p> <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;We hope that the ticket {{ticket_id}} was resolved to your satisfaction. If you feel that the ticket should not be closed or if the ticket has not been resolved, please go ahead and reopen it.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(23, 'admin_sendemail_whenticketreopen', 'Send an email to admin panel users when ticket is reopened.', 'The ticket has been reopened.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear User,</p> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The ticket {{ticket_id}}&nbsp;has been reopened by the {{ticket_username}}. Please review the ticket again.</p> <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p> <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(24, 'guestticket_email_verification_view', 'Guest email verification to view ticket.', 'Guest-Ticket Email Verification', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{guestname}},</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{guestotp}} is your one time password (otp) to view your ticket.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{guestemail}}</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Please do not share your otp’s with anyone.</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(25, 'send_mail_to_customer_when_ticket_closed_by_admin', 'Send mail to customer when ticket closed by admin', 'Your ticket {{ticket_id}} has been closed succesfully.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your ticket {{ticket_id}} has been closed by our team support.</p>\n                <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(26, 'send_mail_to_agent_when_ticket_closed_by_admin_or_agent', 'Send mail to agent and admin when ticket closed by admin or agent', 'The ticket has been closed.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear Admin panel user,</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The ticket {{ticket_id}} has been closed by our support team {{closed_agent_role}} {{closed_agent_name}}.</p>\n                <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(27, 'send_mail_admin_panel_users_when_category_changed', 'Send mail to admin panel users when ticket category changed', 'The ticket category has been changed.', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear Admin panel user,</p>\n                        <p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The ticket {{ticket_id}}  category has been changed.</p>\n                        <p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(28, 'send_mail_customer_when_category_changed', 'Send mail to customers when ticket category is changed', 'The category has been changed.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">This email is to let you know that you have selected the wrong category {{ticket_oldcategory}} for this project. Our support team has changed it to the right category, {{ticket_changedcategory}}.</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(29, 'send_mail_to_admin_when_ticket_note_created', 'Send mail to admin when ticket note is created.', 'A ticket note for {{ticket_id}} is created.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">This email is to let you know that {{note_username}} has added a new note for a ticket {{ticket_id}}.</p>\n                <p></p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\"><b>Note by employee&nbsp;</b>: </p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">{{ticket_note}}</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\"><b>Ticket URL</b> :</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">{{ticket_admin_url}}&nbsp;</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(30, 'guestticket_email_verification', 'Guest email verification to create ticket.', 'Guest Ticket Verification', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{guestname}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Please verify your email address to create your guest ticket.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Your OTP:- {{guestotp}}</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{{guestemail}}</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2024-04-28 02:00:33', '2024-04-28 02:00:33'),
(31, 'customer_send_guestticket_created_with_attachment_failed', 'Send email to guest, when file attachment is failed. Guest-ticket is created.', 'We received your guest ticket successfully. But upload attachment was failed.', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a gust ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response 1-2 bussiness days.</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p>Note:- Without logging into the above link, you cannot access your ticket.</p><p>File upload failed, Please make sure that the file size is within the allowed limits and that the file format is supported.</p><p>Allowed Limits of Files&nbsp; :&nbsp;</p><p>File Formats : {{ticket_file_format}}</p><p>File Size : {{ticket_file_size}} MB</p><p>Max Files that can be uploaded : {{ticket_file_count}}</p><p>We appreciate your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2024-04-28 02:00:38', '2024-04-28 02:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `employeeratings`
--

CREATE TABLE `employeeratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urating_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faqcategoryname` varchar(255) NOT NULL,
  `slug` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_list`
--

CREATE TABLE `faq_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `faqcat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_list`
--

INSERT INTO `faq_list` (`id`, `question`, `answer`, `faqcat_id`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(4, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(5, 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(7, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', NULL, 1, NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `feature_boxes`
--

CREATE TABLE `feature_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `featureboxurl` longtext DEFAULT NULL,
  `url_checkbox` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_boxes`
--

INSERT INTO `feature_boxes` (`id`, `title`, `subtitle`, `featureboxurl`, `url_checkbox`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Secure Payment', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(2, 'Quality Templates', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(3, '24/7 Support', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, NULL, NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `footertexts`
--

CREATE TABLE `footertexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footertexts`
--

INSERT INTO `footertexts` (`id`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '<p class=\"mb-0\">Copyright © 2023<a href=\"https://uhelp.spruko.com/\">&nbsp;</a>. Developed by ESys</p>', '2024-04-28 02:00:28', '2024-05-01 22:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `groupstatus` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `groupname`, `groupstatus`, `created_at`, `updated_at`) VALUES
(1, 'aks', 1, '2024-07-06 13:43:20', '2024-07-06 13:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `groups_categories`
--

CREATE TABLE `groups_categories` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE `groups_users` (
  `groups_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups_users`
--

INSERT INTO `groups_users` (`groups_id`, `users_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `i_p_l_i_s_t_s`
--

CREATE TABLE `i_p_l_i_s_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `entrytype` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `languagename` varchar(250) NOT NULL,
  `languagenativename` varchar(150) NOT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `languagecode` varchar(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `languagename`, `languagenativename`, `is_rtl`, `languagecode`, `created_at`, `updated_at`) VALUES
(1, 'English', 'English', 0, 'en', '2024-04-28 02:00:36', '2024-04-28 02:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'App\\Models\\Ticket\\Comment', 1, 'f2e8f1e4-beeb-4ee2-87d9-91f3e27013d2', 'comments', 'image', 'image.png', 'image/png', 'public', 'public', 148965, '[]', '[]', '[]', '[]', 1, '2024-07-09 12:29:30', '2024-07-09 12:29:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_04_22_040708_contactform', 1),
(4, '2021_04_22_091416_countries', 1),
(5, '2021_04_27_060126_timezones', 1),
(6, '2021_04_27_102115_tickets', 1),
(7, '2021_04_28_042408_create_roles_table', 1),
(8, '2021_05_03_035012_create_categories_table', 1),
(9, '2021_05_03_094047_create_comments_table', 1),
(10, '2021_06_19_050240_create_table_articles', 1),
(11, '2021_06_28_083257_create_article_comments_table', 1),
(12, '2021_06_30_083642_create_article_replies_table', 1),
(13, '2021_07_06_100416_article_likes', 1),
(14, '2021_07_15_035926_create_media_table', 1),
(15, '2021_07_26_115944_create_permission_tables', 1),
(16, '2021_08_03_050245_create_faq_list', 1),
(17, '2021_08_03_111412_create_testimonials_table', 1),
(18, '2021_08_04_104125_create_callactions_table', 1),
(19, '2021_08_05_040909_create_feature_boxes_table', 1),
(20, '2021_08_05_051851_create_apptitles_table', 1),
(21, '2021_08_05_121507_create_footertexts_table', 1),
(22, '2021_08_16_050727_create_seosettings_table', 1),
(23, '2021_08_16_071125_create_addcoloumn_apptitles', 1),
(24, '2021_08_20_063925_create_verify_users_table', 1),
(25, '2021_08_26_043304_create_table_pages', 1),
(26, '2021_08_26_111852_create_announcements_table', 1),
(27, '2021_08_27_083617_create_settings_table', 1),
(28, '2021_08_27_101912_create_email_templates_table', 1),
(29, '2021_08_30_062024_create_social_auth_settings_table', 1),
(30, '2021_09_17_051723_create_add_coloumn_category', 1),
(31, '2021_09_21_082936_create_customizeerrors_table', 1),
(32, '2021_09_22_052400_create_table_categoryuser', 1),
(33, '2021_09_27_050656_create_customcssjs_table', 1),
(34, '2021_09_27_120834_create_add_column_tickets', 1),
(35, '2021_10_08_113339_create_table_groups', 1),
(36, '2021_10_08_113458_create_table_groups_users', 1),
(37, '2021_10_08_120528_create_table_groups_categories', 1),
(38, '2021_10_14_051452_create_notifications_table', 1),
(39, '2021_10_22_091731_create_ticketnotes_table', 1),
(40, '2021_10_28_041824_create_projects_categories_table', 1),
(41, '2021_10_30_061123_create_usersettings_table', 1),
(42, '2021_11_11_062738_create_sendmails_table', 1),
(43, '2021_11_12_035635_create_senduserlists_table', 1),
(44, '2021_11_15_044456_add_login_fields_to_customers_table', 1),
(45, '2021_11_18_111347_create_customer_settings_table', 1),
(46, '2021_12_08_103116_create_i_p_l_i_s_t_s_table', 1),
(47, '2022_03_10_094231_create_envatoapitoken', 1),
(48, '2022_03_10_094658_create_envatocategoryassign', 1),
(49, '2022_03_10_095956_create_add_column_ticket_table', 1),
(50, '2022_03_11_035359_create_add_column_cannedmessages_table', 1),
(51, '2022_03_16_152830_create_add_column_articles_table', 1),
(52, '2022_03_16_152938_create_add_column_faq_table', 1),
(53, '2022_03_28_060354_create_add_column_Category_article_table', 1),
(54, '2022_04_11_041716_create_subcategorysd_table', 1),
(55, '2022_04_21_053048_create_verify_otps_table', 1),
(56, '2022_04_30_042009_create_add_column_featurebox_url', 1),
(57, '2022_05_16_050959_create_timezone', 1),
(58, '2022_05_23_050956_create_bussinesshours', 1),
(59, '2022_06_09_033735_create_faq_categories_table', 1),
(60, '2022_06_13_110345_create_userratings_table', 1),
(61, '2022_06_13_111713_create_employeeratings_table', 1),
(62, '2022_06_13_111729_create_ratingtokens_table', 1),
(63, '2022_07_18_074123_create_customfields', 1),
(64, '2022_07_18_074245_create_ticket_customfields_table', 1),
(65, '2022_07_18_074733_create_languages', 1),
(66, '2022_07_18_074757_create_translates_table', 1),
(67, '2022_08_26_061128_create_ticketsccemails', 1),
(68, '2022_09_08_045457_create_addcolumn_extra', 1),
(69, '2022_09_22_102122_create_departments_table', 1),
(70, '2022_09_23_102604_create_ticketassignchildren_table', 1),
(71, '2022_09_29_035250_create_tickethistories_table', 1),
(72, '2022_12_23_113549_announcement_startdate_nullable', 1),
(73, '2023_02_15_044824_add_extra_column_to_tickets_table', 1),
(74, '2019_08_19_000000_create_failed_jobs_table', 2),
(75, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(77, '2024_07_07_175029_create_plants_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `notifiable` tinyint(1) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `notifiable`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0bef4428-bd2d-4fba-8e49-de18366ccac0', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SP-5\",\"title\":\"Quibusdam\",\"category\":\"google chrom\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SP-5\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SP-5\"}', NULL, '2024-07-09 12:28:12', '2024-07-09 12:34:59'),
('0f25c872-b5f6-41b4-b3bc-787a59cb47f4', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\Customer', 4, 0, '{\"ticket_id\":\"SPG-3\",\"title\":\"Dolor cons\",\"category\":\"muiosd\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-3\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-3\"}', NULL, '2024-07-06 15:38:44', '2024-07-06 15:38:44'),
('0fd3459f-2b6f-437f-bb04-37f011f4b923', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\Customer', 5, 0, '{\"ticket_id\":\"SPG-4\",\"title\":\"Adipisci a\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-4\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-4\"}', NULL, '2024-07-08 00:29:13', '2024-07-08 00:29:13'),
('2a3954eb-9688-456e-9545-12a43efdee42', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SPG-3\",\"title\":\"Dolor cons\",\"category\":\"muiosd\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-3\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-3\"}', '2024-07-07 07:21:26', '2024-07-06 15:38:44', '2024-07-07 07:21:26'),
('329c43c6-5729-4352-9f8e-c97bb27b92cf', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 2, 0, '{\"ticket_id\":\"SPG-1\",\"title\":\"sd\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-1\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-1\"}', NULL, '2024-04-28 02:05:21', '2024-04-28 02:05:21'),
('3471de38-5ed1-4eba-add3-9b9980c281d0', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SPG-1\",\"title\":\"sd\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-1\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-1\"}', '2024-04-28 02:16:19', '2024-04-28 02:05:21', '2024-04-28 02:16:19'),
('4350541c-853a-47c3-88fb-a1e2ae7f9019', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\Customer', 2, 0, '{\"ticket_id\":\"SPG-1\",\"title\":\"sd\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-1\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-1\"}', NULL, '2024-04-28 02:05:21', '2024-04-28 02:05:21'),
('62efc30d-5c6f-4ef3-874d-1414eeec6120', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 2, 0, '{\"ticket_id\":\"SPG-2\",\"title\":\"sd\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-2\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-2\"}', NULL, '2024-04-28 02:05:24', '2024-04-28 02:05:24'),
('64143598-6b23-4469-be69-47c95da52c5c', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\Customer', 2, 0, '{\"ticket_id\":\"SPG-2\",\"title\":\"sd\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-2\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-2\"}', NULL, '2024-04-28 02:05:24', '2024-04-28 02:05:24'),
('8f3a048d-b4b4-4c3c-a510-1fa9614fc941', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SPG-4\",\"title\":\"Adipisci a\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-4\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-4\"}', NULL, '2024-07-08 00:29:13', '2024-07-08 00:29:22'),
('e3205267-3d51-4b91-8d76-51e7bb2a5f44', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SP-5\",\"title\":\"Quibusdam\",\"category\":\"google chrom\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SP-5\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SP-5\"}', NULL, '2024-07-09 12:29:31', '2024-07-09 12:34:59'),
('e7b5a210-2f02-4293-b8ac-e15bf791c8ce', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, 1, '{\"ticket_id\":\"SPG-2\",\"title\":\"sd\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/ticket-view\\/SPG-2\",\"clink\":\"http:\\/\\/127.0.0.1:8000\\/customer\\/ticket\\/view\\/SPG-2\"}', '2024-04-28 02:16:19', '2024-04-28 02:05:24', '2024-04-28 02:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` varchar(255) NOT NULL,
  `pagedescription` longtext NOT NULL,
  `pageslug` longtext DEFAULT NULL,
  `viewonpages` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `pagename`, `pagedescription`, `pageslug`, `viewonpages`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Francis Jenkins', '<p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADPCAYAAACwXZ4mAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAJ9GlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDUgNzkuMTYzNDk5LCAyMDE4LzA4LzEzLTE2OjQwOjIyICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXA6Q3JlYXRlRGF0ZT0iMjAyNC0wNi0yOVQwNzo1NDo0NiswNTowMCIgeG1wOk1vZGlmeURhdGU9IjIwMjQtMDYtMjlUMDg6Mjk6MzIrMDU6MDAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMjQtMDYtMjlUMDg6Mjk6MzIrMDU6MDAiIGRjOmZvcm1hdD0iaW1hZ2UvcG5nIiBwaG90b3Nob3A6Q29sb3JNb2RlPSIzIiBwaG90b3Nob3A6SUNDUHJvZmlsZT0ic1JHQiBJRUM2MTk2Ni0yLjEiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NmUyMmNlNGMtYzEwNC05NzQ0LTk4ZjAtMzQwZmFlYzI5NjAzIiB4bXBNTTpEb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6YzgxNDc1YWItOTgzMi1mODRhLWI1YzgtODkwNjk4ZDdlZDc1IiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6MGU5NGU0OTgtOGU4OC0wYjQyLWE3YjgtMzcyNzYwZDJmN2IzIj4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDowZTk0ZTQ5OC04ZTg4LTBiNDItYTdiOC0zNzI3NjBkMmY3YjMiIHN0RXZ0OndoZW49IjIwMjQtMDYtMjlUMDc6NTQ6NDYrMDU6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGltYWdlL3BuZyB0byBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo1MmJkYjRlNC02YzlkLTA0NGItOTJlZi00OTU5ODgxNDY4N2QiIHN0RXZ0OndoZW49IjIwMjQtMDYtMjlUMDg6MTg6MDErMDU6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6YTVlZmQ0ZjQtZGFmZi01ODQ3LWEzNGQtOGFlZmMyODVlOGU5IiBzdEV2dDp3aGVuPSIyMDI0LTA2LTI5VDA4OjI5OjMyKzA1OjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249ImNvbnZlcnRlZCIgc3RFdnQ6cGFyYW1ldGVycz0iZnJvbSBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIHRvIGltYWdlL3BuZyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iZGVyaXZlZCIgc3RFdnQ6cGFyYW1ldGVycz0iY29udmVydGVkIGZyb20gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcCB0byBpbWFnZS9wbmciLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjZlMjJjZTRjLWMxMDQtOTc0NC05OGYwLTM0MGZhZWMyOTYwMyIgc3RFdnQ6d2hlbj0iMjAyNC0wNi0yOVQwODoyOTozMiswNTowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDwvcmRmOlNlcT4gPC94bXBNTTpIaXN0b3J5PiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDphNWVmZDRmNC1kYWZmLTU4NDctYTM0ZC04YWVmYzI4NWU4ZTkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MGU5NGU0OTgtOGU4OC0wYjQyLWE3YjgtMzcyNzYwZDJmN2IzIiBzdFJlZjpvcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6MGU5NGU0OTgtOGU4OC0wYjQyLWE3YjgtMzcyNzYwZDJmN2IzIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+6NJA1QAAm25JREFUeNrsvXe8ZUWVNvysVVU7nHBj56ahiYIIKDgI5pxzDmN2UMwBHeMYZsSEIwYcdQyjOIPZGdMYxjQKGECQQXLopnP3zSftvatqre+Pfe6l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\" data-bs-filename=\"eleco-logo-circle-200.png\" style=\"width: 200px;\">Nulla numquam beatae.</p>', 'francis-jenkins', 'both', 0, '2024-07-06 13:45:12', '2024-07-06 13:45:12');
INSERT INTO `pages` (`id`, `pagename`, `pagedescription`, `pageslug`, `viewonpages`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Evangeline Durham', 'Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.Autem aut quaerat qu.', 'evangeline-durham', 'header', 0, '2024-07-06 13:50:59', '2024-07-06 13:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `permissionsgroupname` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `permissionsgroupname`, `created_at`, `updated_at`) VALUES
(1, 'Profile Edit', 'web', 'Profile Edit', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(3, 'Ticket Create', 'web', 'Tickets', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(4, 'Ticket Edit', 'web', 'Tickets', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(5, 'Ticket Delete', 'web', 'Tickets', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(6, 'Ticket Assign', 'web', 'Tickets', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(15, 'Project Access', 'web', 'Project', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(16, 'Project Create', 'web', 'Project', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(17, 'Project Edit', 'web', 'Project', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(18, 'Project Delete', 'web', 'Project', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(19, 'Project Assign', 'web', 'Project', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(20, 'Project Importlist', 'web', 'Project', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(21, 'Knowledge Access', 'web', 'Knowledge', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(22, 'Article Access', 'web', 'Knowledge', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(23, 'Article Create', 'web', 'Knowledge', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(24, 'Article View', 'web', 'Knowledge', '2024-04-28 02:00:24', '2024-04-28 02:00:33'),
(25, 'Article Edit', 'web', 'Knowledge', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(26, 'Article Delete', 'web', 'Knowledge', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(27, 'Category Access', 'web', 'Category', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(28, 'Category Create', 'web', 'Category', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(29, 'Category Edit', 'web', 'Category', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(30, 'Category Assign To Groups', 'web', 'Category', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(31, 'Managerole Access', 'web', 'Roles & Permission', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(32, 'Roles & Permission Access', 'web', 'Roles & Permission', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(33, 'Roles & Permission Create', 'web', 'Roles & Permission', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(34, 'Roles & Permission Edit', 'web', 'Roles & Permission', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(35, 'Employee Access', 'web', 'Employee', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(36, 'Employee Create', 'web', 'Employee', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(37, 'Employee Edit', 'web', 'Employee', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(38, 'Employee Delete', 'web', 'Employee', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(39, 'Employee Importlist', 'web', 'Employee', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(40, 'Landing Page Access', 'web', 'Landing Page Setting', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(41, 'Banner Access', 'web', 'Landing Page Setting', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(42, 'Feature Box Access', 'web', 'Feature Box', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(43, 'Feature Box Create', 'web', 'Feature Box', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(44, 'Feature Box Edit', 'web', 'Feature Box', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(45, 'Feature Box Delete', 'web', 'Feature Box', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(46, 'Call To Action Access', 'web', 'Landing Page Setting', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(47, 'Testimonial Access', 'web', 'Testimonial', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(48, 'Testimonial Create', 'web', 'Testimonial', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(49, 'Testimonial Edit', 'web', 'Testimonial', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(50, 'Testimonial Delete', 'web', 'Testimonial', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(51, 'FAQs Access', 'web', 'FAQ`s', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(52, 'FAQs Create', 'web', 'FAQ`s', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(53, 'FAQs Edit', 'web', 'FAQ`s', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(54, 'FAQs Delete', 'web', 'FAQ`s', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(55, 'Customers Access', 'web', 'Customer', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(56, 'Customers Create', 'web', 'Customer', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(57, 'Customers Edit', 'web', 'Customer', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(58, 'Customers Delete', 'web', 'Customer', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(59, 'Customers Importlist', 'web', 'Customer', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(60, 'Customers Login', 'web', 'Customer', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(61, 'Groups Access', 'web', 'Groups', '2024-04-28 02:00:25', '2024-04-28 02:00:33'),
(62, 'Groups List Access', 'web', 'Groups', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(63, 'Groups Create', 'web', 'Groups', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(64, 'Groups Edit', 'web', 'Groups', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(65, 'Custom Notifications Access', 'web', 'Custom Notifications', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(66, 'Custom Notifications View', 'web', 'Custom Notifications', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(67, 'Custom Notifications Delete', 'web', 'Custom Notifications', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(68, 'Custom Notifications Employee', 'web', 'Custom Notifications', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(69, 'Custom Notifications Customer', 'web', 'Custom Notifications', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(70, 'Custom Pages Access', 'web', 'Custom pages', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(71, 'Pages Access', 'web', 'Custom pages', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(72, 'Pages Edit', 'web', 'Custom pages', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(73, 'Pages View', 'web', 'Custom pages', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(74, '404 Error Page Access', 'web', 'Custom pages', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(75, 'Under Maintanance Page Access', 'web', 'Custom pages', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(76, 'App Setting Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(77, 'General Setting Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(78, 'Ticket Setting Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(79, 'SEO Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(80, 'Google Analytics Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(81, 'Custom JS & CSS Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(82, 'Captcha Setting Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(83, 'Social Logins Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(84, 'Email Setting Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(85, 'Custom Chat Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(86, 'Maintenance Mode Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(87, 'SecruitySetting Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(88, 'Emailtoticket Access', 'web', 'App Setting', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(89, 'IpBlock Access', 'web', 'IP Block', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(90, 'IpBlock Add', 'web', 'IP Block', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(91, 'IpBlock Edit', 'web', 'IP Block', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(92, 'IpBlock Delete', 'web', 'IP Block', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(93, 'Announcements Access', 'web', 'Annoucements', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(94, 'Announcements Create', 'web', 'Annoucements', '2024-04-28 02:00:26', '2024-04-28 02:00:33'),
(95, 'Announcements Edit', 'web', 'Annoucements', '2024-04-28 02:00:27', '2024-04-28 02:00:33'),
(96, 'Announcements Delete', 'web', 'Annoucements', '2024-04-28 02:00:27', '2024-04-28 02:00:33'),
(97, 'Email Template Access', 'web', 'Email Template', '2024-04-28 02:00:27', '2024-04-28 02:00:33'),
(98, 'Email Template Edit', 'web', 'Email Template', '2024-04-28 02:00:27', '2024-04-28 02:00:33'),
(99, 'Reports Access', 'web', 'Reports', '2024-04-28 02:00:27', '2024-04-28 02:00:33'),
(100, 'Canned Response Access', 'web', 'Canned Response', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(101, 'Canned Response Create', 'web', 'Canned Response', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(102, 'Canned Response Edit', 'web', 'Canned Response', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(103, 'Canned Response Delete', 'web', 'Canned Response', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(104, 'Envato Access', 'web', 'Envato', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(105, 'Envato API Token Access', 'web', 'Envato', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(106, 'Envato License Details Access', 'web', 'Envato', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(107, 'App Info Access', 'web', 'App Info', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(108, 'App Purchase Code Access', 'web', 'App Info', '2024-04-28 02:00:29', '2024-04-28 02:00:33'),
(109, 'Pages Create', 'web', 'Custom pages', '2024-04-28 02:00:31', '2024-04-28 02:00:33'),
(110, 'Pages Delete', 'web', 'Custom pages', '2024-04-28 02:00:31', '2024-04-28 02:00:33'),
(111, 'Categories Access', 'web', 'Category', '2024-04-28 02:00:31', '2024-04-28 02:00:33'),
(112, 'Subcategory Access', 'web', 'Category', '2024-04-28 02:00:31', '2024-04-28 02:00:33'),
(113, 'Subcategory Create', 'web', 'Category', '2024-04-28 02:00:31', '2024-04-28 02:00:33'),
(114, 'Subcategory Edit', 'web', 'Category', '2024-04-28 02:00:31', '2024-04-28 02:00:33'),
(115, 'Subcategory Delete', 'web', 'Category', '2024-04-28 02:00:31', '2024-04-28 02:00:33'),
(116, 'Department Access', 'web', 'Department', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(117, 'Department Create', 'web', 'Department', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(118, 'Department Edit', 'web', 'Department', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(119, 'Department Delete', 'web', 'Department', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(120, 'CustomField Access', 'web', 'CustomField', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(121, 'CustomField Create', 'web', 'CustomField', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(122, 'CustomField Edit', 'web', 'CustomField', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(123, 'CustomField Delete', 'web', 'CustomField', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(124, 'Languages Access', 'web', 'Languages', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(125, 'Languages Create', 'web', 'Languages', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(126, 'Languages Edit', 'web', 'Languages', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(127, 'Languages Delete', 'web', 'Languages', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(128, 'Languages Translate', 'web', 'Languages', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(129, 'Main FAQ Access', 'web', 'FAQ`s', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(130, 'FAQ Category Access', 'web', 'FAQ`s', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(131, 'FAQ Category Create', 'web', 'FAQ`s', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(132, 'FAQ Category Edit', 'web', 'FAQ`s', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(133, 'FAQ Category Delete', 'web', 'FAQ`s', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(134, 'Bussiness Hours Access', 'web', 'Bussiness Hours', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(135, 'Category Delete', 'web', 'Category', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(136, 'Groups Delete', 'web', 'Groups', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(137, 'Reset Password', 'web', 'Employee', '2024-04-28 02:00:34', '2024-04-28 02:00:34'),
(138, 'Employee Status', 'web', 'Employee', '2024-04-28 02:00:34', '2024-04-28 02:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plant_id` varchar(255) NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `installation_date` date DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `plant_type` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `plant_id`, `project_id`, `address`, `installation_date`, `zone`, `plant_type`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'CDWA-KSR-NA141-C254', NULL, 'Ram Pura Changa Manga', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(2, 'CDWA-KSR-PP-C220', NULL, 'In UC office village Maan', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(3, 'CDWA-LHR-NA122-C165', NULL, 'Bank Colony Ichhara welfare society Rasool Park', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(4, 'CDWA-LHR-NA122-C166', NULL, 'Mehmood road Ichra near child ground masjid kubra, telephon Exchange', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(5, 'CDWA-LHR-NA122-C167', NULL, 'Nawab pura tube Well, Fazal Elahi road Rehman pura', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(6, 'CDWA-LHR-NA122-C168', NULL, 'Jinnah colony near office of the union council no.105 Umer park Kachi abadi', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(7, 'CDWA-LHR-NA124-C169', NULL, 'Faisal Park Near WASA Tube well', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(8, 'CDWA-LHR-NA124-C170', NULL, 'Main band road near total petrol pump near ghass mandi siraj pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(9, 'CDWA-LHR-NA124-C171', NULL, 'kachi abadi qalandar pura near ring road', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(10, 'CDWA-LHR-NA124-C172', NULL, 'Rajbah road main billal park near raiz utility store', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(11, 'CDWA-LHR-NA124-C173', NULL, 'New abadi Bohar wali masjid pul Taj Bagh Canal bank road harbans pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(12, 'CDWA-LHR-NA124-C174', NULL, 'Kotli Ghose Near Ring Road Govt Girls School', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(13, 'CDWA-LHR-PP-137-C003', NULL, 'Inside kamran park near girls school Bara dari road shahdara', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(14, 'CDWA-LHR-PP-137-C004', NULL, 'Main interance Fazal park', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(15, 'CDWA-LHR-PP-137-C005', NULL, 'Near wasa tube well KPS road Miraj park begum kot Shahdra', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(16, 'CDWA-LHR-PP-137-C006', NULL, 'Mohallaha toheed park Al-jannat road nan sukh Shahdara', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(17, 'CDWA-LHR-PP-137-C007', NULL, 'Mehmood road Yousaf park inside salamat jut', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(18, 'CDWA-LHR-PP-C255', NULL, 'Local Govt Complex', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(19, 'CDWA-LHR-PP-C306', NULL, 'Near C-29 Tubewell GOR-3 Shadman', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(20, 'CDWA-LHR-PP-C307CDWA-LHR-PP-C307', NULL, 'Inside Civil Secretariat Near Mosque', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(21, 'CDWA-LHR-PP137-C001', NULL, 'Dhair main road near graveyard and disposal station', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(22, 'CDWA-LHR-PP137-C002', NULL, 'Mohalla islam pura Jinah Road Near Laal Masjid', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(23, 'CDWA-LHR-PP138-C008', NULL, 'Gunj Buksh colony Near trust Model school Molana Ahmed ali road', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(24, 'CDWA-LHR-PP138-C009', NULL, 'Freed colony shahdara Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(25, 'CDWA-LHR-PP138-C010', NULL, 'Bagum ka bagh shahdara Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(26, 'CDWA-LHR-PP138-C011', NULL, 'Wasa Tube well Street No.6, Hanif Park Data Nagar Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(27, 'CDWA-LHR-PP138-C012', NULL, 'Floor mill area shahdara', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(28, 'CDWA-LHR-PP138-C013', NULL, 'Ali pura New vegetable market', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(29, 'CDWA-LHR-PP139-C014', NULL, 'Naseerabad Chup Shah Darbar', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(30, 'CDWA-LHR-PP139-C015', NULL, 'Wasa tube well Kareem park', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(31, 'CDWA-LHR-PP139-C016', NULL, '09-Chattergi road urdu bazar behind GC Universty Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(32, 'CDWA-LHR-PP139-C017', NULL, 'Wasa tube well umer park near filter clinic billal ganj', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(33, 'CDWA-LHR-PP139-C018', NULL, 'Wasa Office tube well out fall road', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(34, 'CDWA-LHR-PP139-C019', NULL, 'Block IV,Karim Park,Wasa Tubewell Allaha wali Masjid', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(35, 'CDWA-LHR-PP139-C211', NULL, 'Office of Director General Public Relations Lahore', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(36, 'CDWA-LHR-PP140-C020', NULL, 'Darbar Sain Sardar ,WarisRoad', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(37, 'CDWA-LHR-PP140-C021', NULL, 'Revaz Garden Market,Near HBL Bank,Wasa Tubewell.', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(38, 'CDWA-LHR-PP140-C022', NULL, 'Lady Macladin High School,East Side of Road Corner.', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(39, 'CDWA-LHR-PP140-C023', NULL, 'Regal Chowk Bus stop Adjacent to Masjid Shohda Mall Road', '2041-10-05', '7', NULL, NULL, NULL, NULL, NULL),
(40, 'CDWA-LHR-PP140-C024', NULL, 'Seatla manzar main gate circular road near by botal market', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(41, 'CDWA-LHR-PP140-C025', NULL, '31 temple road Near police station', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(42, 'CDWA-LHR-PP141-C026', NULL, 'Shams Abad Park Tube well', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(43, 'CDWA-LHR-PP141-C027', NULL, 'Sultani Park', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(44, 'CDWA-LHR-PP141-C028', NULL, 'Shahi road Near darbar Madhulal hussain', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(45, 'CDWA-LHR-PP141-C029', NULL, 'Madni chock muhammadia colony Data nagar', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(46, 'CDWA-LHR-PP141-C030', NULL, 'Opposite UC office no,23 park', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(47, 'CDWA-LHR-PP141-C031', NULL, 'Street no 23 opposite white Masjid Data Nagar', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(48, 'CDWA-LHR-PP141-C032', NULL, 'Wireless Colony Near Shuja Colony Park', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(49, 'CDWA-LHR-PP141-C033', NULL, 'Chah  meeran hussain darbar old post office road near neelam cinema chowk', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(50, 'CDWA-LHR-PP142-C034', NULL, 'wasa tube well out side Lohari Gate', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(51, 'CDWA-LHR-PP142-C035', NULL, 'Wasa Tubel well inside mochi gate near thana mochi gate', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(52, 'CDWA-LHR-PP142-C036', NULL, 'Duban pura near kamboh masjid main road wasa tubewell.', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(53, 'CDWA-LHR-PP142-C212', NULL, '103-Nawazish ali road, Shah Abdul Maali Darbar', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(54, 'CDWA-LHR-PP143-C037', NULL, 'Govt Comprihensive School,Kot Khawja Saeed Road Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(55, 'CDWA-LHR-PP143-C038', NULL, 'Gumbad Dara Shikwa,Karim Park Chah Miran,St # 42,Lahore', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(56, 'CDWA-LHR-PP143-C039', NULL, 'Block BIII,Near Police Station Gujjar Pura,China Scheme Lahore', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(57, 'CDWA-LHR-PP143-C040', NULL, 'Jani Pur Park,D1 Block, UC-16,PP143 Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(58, 'CDWA-LHR-PP143-C041', NULL, 'kot khawaja Saeed Hospital', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(59, 'CDWA-LHR-PP143-C042', NULL, 'New Bogi wall Darbar bibi allaha rakhi(mehar bashir colony', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(60, 'CDWA-LHR-PP144-C043', NULL, 'Shah Badar Dewan,Begum Pura,GT Road Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(61, 'CDWA-LHR-PP144-C044', NULL, 'Laal school Daras Baray mian  Mughalpura Shalimar link Road', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(62, 'CDWA-LHR-PP144-C045', NULL, 'Melaad Street, GT Road Baghban Pura Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(63, 'CDWA-LHR-PP144-C046', NULL, 'Said Mill,Baghban Pura Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(64, 'CDWA-LHR-PP144-C047', NULL, 'Darbar Shah Gohar Pir, Mahmood Booti', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(65, 'CDWA-LHR-PP144-C048', NULL, 'Government Rasheed model school Street No 7  Muhammadi colony Baagbaan pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(66, 'CDWA-LHR-PP145-C049', NULL, 'Darbar Baba Hasan Jalali,Alam Town,Shadi Pura,Punj Peer Road', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(67, 'CDWA-LHR-PP145-C050', NULL, 'Chota Graveyard,Afshan Park,Shadi Pura Road, Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(68, 'CDWA-LHR-PP145-C051', NULL, 'Street No-1 Ahmed park Ahmed town shadi pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(69, 'CDWA-LHR-PP146-C052', NULL, 'Sowari Bazar,Mughal Pura,Lahore', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(70, 'CDWA-LHR-PP146-C053', NULL, 'Sunny View Park,Mughal Pura, Lahore', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(71, 'CDWA-LHR-PP146-C054', NULL, 'Angori Bagh,Street No 2,Mughal Pura, Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(72, 'CDWA-LHR-PP147-C055', NULL, 'Gawalmandi Mohala Gawalian', '2042-04-05', '7', NULL, NULL, NULL, NULL, NULL),
(73, 'CDWA-LHR-PP147-C056', NULL, 'Usmanabad Park,Mughal Pura,Lahore.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(74, 'CDWA-LHR-PP147-C057', NULL, 'Baba Baiara Wala,Kachi Abadi,Mughal Pura Lahore', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(75, 'CDWA-LHR-PP147-C058', NULL, 'Engine Shed ,Mughal Pura Lahore', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(76, 'CDWA-LHR-PP147-C059', NULL, 'Waris Road', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(77, 'CDWA-LHR-PP147-C060', NULL, 'Farooq Azam road Washing Lane Near Water Tank', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(78, 'CDWA-LHR-PP147-C061', NULL, 'Thana ghari shahu wasa tube well, opposite UC office', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(79, 'CDWA-LHR-PP148-C062', NULL, 'Tariq Road Islamia Park near WASA tubewell', '2042-05-03', '6', NULL, NULL, NULL, NULL, NULL),
(80, 'CDWA-LHR-PP148-C063', NULL, 'Mehboob Street in Mehboob park Link Sultan Ahmad Road Ichhra', '2042-05-04', '6', NULL, NULL, NULL, NULL, NULL),
(81, 'CDWA-LHR-PP148-C064', NULL, 'OHR GOR- II', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(82, 'CDWA-LHR-PP148-C065', NULL, 'Ichhra more main bazar', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(83, 'CDWA-LHR-PP148-C066', NULL, 'A-block Rehman pura qadri ground', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(84, 'CDWA-LHR-PP148-C067', NULL, 'LOS ch.Colony katchi abbadi near 1122 academy', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(85, 'CDWA-LHR-PP148-C068', NULL, 'Shah kamal near grave yard', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(86, 'CDWA-LHR-PP148-C069', NULL, 'Opposite Gullzaib Colony,90/13 Samanabad Lahore', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(87, 'CDWA-LHR-PP148-C070', NULL, 'Aashaq Hussain road Shadman Link road', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(88, 'CDWA-LHR-PP149-C071', NULL, 'Alhalal Masjid,New Chourburji Park,B Block', '2041-08-05', '6', NULL, NULL, NULL, NULL, NULL),
(89, 'CDWA-LHR-PP149-C072', NULL, 'Children park Gulfishan colony opposite Allied school', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(90, 'CDWA-LHR-PP149-C073', NULL, 'Ghulam Hussain Colony,ASP Shera Kot,Band Road Lahore.', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(91, 'CDWA-LHR-PP149-C074', NULL, 'Patwar Khana, Takia Baba Boray Shah,OppWapda Office Main Sanda', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(92, 'CDWA-LHR-PP149-C075', NULL, 'Muhajara Abad, Sodiwal,Multan Road, Lahore.', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(93, 'CDWA-LHR-PP149-C076', NULL, 'Ehsan Park,Firdous Colony,Near Munawar Hospital,F-Block Gulshan Ravi', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(94, 'CDWA-LHR-PP150-C077', NULL, 'Wasa tube well hussain park P Block sabza zar', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(95, 'CDWA-LHR-PP150-C078', NULL, 'Wasa tube well B block Park sabza zar', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(96, 'CDWA-LHR-PP150-C079', NULL, 'Komi Buchat Bank TMA Tubewell Railway Road Lahore', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(97, 'CDWA-LHR-PP150-C080', NULL, 'wasa tube well bakar mandi Near grave yard lahore', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(98, 'CDWA-LHR-PP150-C081', NULL, 'Wasa tube well 60 feet road near masjid abu bakar siddique saint mary kids campus school', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(99, 'CDWA-LHR-PP150-C082', NULL, 'wasa tube well D block sabza zar', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(100, 'CDWA-LHR-PP151-C083', NULL, 'Ravi park in children park Near market', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(101, 'CDWA-LHR-PP151-C084', NULL, 'Huma block Allama iqbal town in front of dongi ground', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(102, 'CDWA-LHR-PP151-C085', NULL, 'Chah jana wala jhanzaib block near al-ILM institute Allama iqbal town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(103, 'CDWA-LHR-PP151-C086', NULL, 'Block No.13 Ghosia masjid Town ship', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(104, 'CDWA-LHR-PP151-C087', NULL, 'kashmir block in children park near masjid muhammdia', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(105, 'CDWA-LHR-PP151-C088', NULL, 'Labour Quarter khayber block flat allama iqbal town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(106, 'CDWA-LHR-PP152-C089', NULL, 'Wasa Tube well C-2 block gulberg-3 C-park behind union council  Opp; islmia learning school', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(107, 'CDWA-LHR-PP152-C090', NULL, 'LDA Flat N-block Model Town, EXT near police station Faisal Town', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(108, 'CDWA-LHR-PP152-C091', NULL, 'Gulberg III,D Ground H Block Firdous Market, Lahore', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(109, 'CDWA-LHR-PP152-C092', NULL, 'Ladies Park,Ghous -e-Azam Colony Near Pace Tower, Q Block, Wasa Tubewell, Gulberg II Lhr', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(110, 'CDWA-LHR-PP152-C093', NULL, 'Model Town B-Block Gurdwara', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(111, 'CDWA-LHR-PP152-C094', NULL, 'Naseer abad, Melad park', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(112, 'CDWA-LHR-PP153-C095', NULL, 'Wasa Tubewell,Opposite Abid Market, Main Feroz pur Road Lahore.', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(113, 'CDWA-LHR-PP153-C096', NULL, 'Itehad Colony,Near Oil Depot,Kot Lakhpat Railway Station Lahore.', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(114, 'CDWA-LHR-PP153-C097', NULL, 'Street# 5 A,Ghulam Muhammad Bhatti,Colony,Inside Bhatti Flats,Lahore', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(115, 'CDWA-LHR-PP153-C098', NULL, 'Haji Park Ferozpur road near shell petrol pump', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(116, 'CDWA-LHR-PP153-C099', NULL, 'Wasa Tubewell,Opposite Natt House, Bhatti Colony Model Town Link Road Lahore.', '2041-09-02', '4', NULL, NULL, NULL, NULL, NULL),
(117, 'CDWA-LHR-PP153-C100', NULL, 'S Block tube well Nusrat Road', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(118, 'CDWA-LHR-PP154-C101', NULL, 'Park Block-3 Sector B-I', '2042-05-05', '4', NULL, NULL, NULL, NULL, NULL),
(119, 'CDWA-LHR-PP154-C102', NULL, 'Ground Block-6 Sector A2', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(120, 'CDWA-LHR-PP154-C103', NULL, '5D1 Park Jamia Masjid Ghusia', '2042-05-05', '4', NULL, NULL, NULL, NULL, NULL),
(121, 'CDWA-LHR-PP154-C104', NULL, 'Block-1, Sector D-2, Near WASA Tube well', '2042-05-08', '4', NULL, NULL, NULL, NULL, NULL),
(122, 'CDWA-LHR-PP154-C105', NULL, '3D/1 Wasa Tube well Park,Green Town Lahore.', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(123, 'CDWA-LHR-PP154-C106', NULL, '4D-1 Near Masjid Gulzar-e- Madina,Green Town Lahore', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(124, 'CDWA-LHR-PP154-C107', NULL, '1-C-1 Near Asif Park Town Ship Lahore', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(125, 'CDWA-LHR-PP154-C108', NULL, '3D-II Near 112 Stop ,Green Town Lahore', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(126, 'CDWA-LHR-PP154-C109', NULL, 'Karachi plaza block 5 D1 ayub park Green town Children park near muti masjid', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(127, 'CDWA-LHR-PP154-C110', NULL, 'Islamia park block-2- sector D-1 near masjid islamia Green town umer chowk', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(128, 'CDWA-LHR-PP155-C118', NULL, 'Near wasa office Pounch House', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(129, 'PHED-LHR-NA128-P079', NULL, 'Chak Boota', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(130, 'PHED-LHR-NA128-P085', NULL, 'Rangeel Pura', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(131, 'PHED-LHR-NA128-P086', NULL, 'Islam Nagar', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(132, 'PHED-LHR-NA128-P087', NULL, 'Kamas', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(133, 'PHED-LHR-NA128-P088', NULL, 'Rana Town', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(134, 'PHED-LHR-NA128-P089', NULL, 'Rana Town', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(135, 'PHED-LHR-NA128-P090', NULL, 'Maraka', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(136, 'PHED-LHR-NA128-P092', NULL, 'Pajian', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(137, 'PHED-LHR-NA128-P093', NULL, 'Tiba pajian', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(138, 'PHED-LHR-NA128-P094', NULL, 'Chumru Pur', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(139, 'PHED-LHR-NA128-P095', NULL, 'Bhatta Pind', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(140, 'PHED-LHR-NA128-P096', NULL, 'Julyyana', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(141, 'PHED-LHR-NA128-P097', NULL, 'Ghulshan-e-Lahore', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(142, 'PHED-LHR-NA128-P098', NULL, 'PCSIR Staff Colony', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(143, 'PHED-LHR-NA128-P100', NULL, 'Manga Mandi', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(144, 'PHED-LHR-NA128-P104', NULL, 'Meat Market', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(145, 'PHED-LHR-NA128-P105', NULL, 'Sarwar Hayat Colony', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(146, 'PHED-LHR-NA128-P106', NULL, 'Arshad Colony Park', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(147, 'PHED-LHR-NA128-P107', NULL, 'Darbar Baba Doola Moola', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(148, 'PHED-LHR-NA128-P108', NULL, 'Raiwind Pind', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(149, 'PHED-LHR-NA128-P109', NULL, 'Sundar Road', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(150, 'PHED-LHR-NA128-P110', NULL, 'Darbar Baba Ghanday Wala', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(151, 'PHED-LHR-NA128-P111', NULL, '3 Marla Scheme', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(152, 'PHED-LHR-NA128-P112', NULL, 'Basti Ameen Pura', '2044-10-05', '3', NULL, NULL, NULL, NULL, NULL),
(153, 'PHED-LHR-NA128-P113', NULL, 'Haveli Hassan Khan', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(154, 'PHED-LHR-NA128-P114', NULL, 'Gulloo Kot', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(155, 'PHED-LHR-NA128-P115', NULL, 'Asif Town No.II', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(156, 'PHED-LHR-NA128-P116', NULL, 'Youhanabad No.II', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(157, 'PHED-LHR-NA128-P117', NULL, 'Sherwani Mohallah Nashter Colony UC', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(158, 'PHED-LHR-NA128-P118', NULL, 'Shadab Colony Attari', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(159, 'PHED-LHR-NA128-P119', NULL, 'UC Jahman (Bio Boly)', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(160, 'PHED-LHR-NA128-P120', NULL, 'Purse Raam/ Azad Town', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(161, 'PHED-LHR-NA128-P121', NULL, 'Nashter Colony', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(162, 'PHED-LHR-NA128-P122', NULL, 'Mehr Town Lidhar', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(163, 'PHED-LHR-NA128-P123', NULL, 'Attari/ Awan market/ nasheeman park', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(164, 'PHED-LHR-NA128-P137', NULL, 'Hangar Wall', '2044-02-07', '3', NULL, NULL, NULL, NULL, NULL),
(165, 'PHED-LHR-NA128-P138', NULL, 'Azam Garden', '2044-02-07', '3', NULL, NULL, NULL, NULL, NULL),
(166, 'PHED-LHR-NA128-P139', NULL, 'Revenue Society', '2044-02-07', '3', NULL, NULL, NULL, NULL, NULL),
(167, 'PHED-LHR-NA128-P140', NULL, 'Bhobatian', '2044-02-07', '3', NULL, NULL, NULL, NULL, NULL),
(168, 'PHED-LHR-NA128-P141', NULL, 'Tariq Abad', '2044-02-07', '3', NULL, NULL, NULL, NULL, NULL),
(169, 'PHED-LHR-NA128-P142', NULL, 'Qila Shamkey', '2044-02-07', '3', NULL, NULL, NULL, NULL, NULL),
(170, 'PHED-LHR-NA128-P143', NULL, 'Ahmad Abad', '2044-02-07', '3', NULL, NULL, NULL, NULL, NULL),
(171, 'PHED-LHR-NA129-P001 ', NULL, 'Bypass haloki updated new date', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(172, 'PHED-LHR-NA129-P002', NULL, 'Rasoolpura Jugiya haloki', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(173, 'PHED-LHR-NA129-P003', NULL, 'F Block Yohan Abad', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(174, 'PHED-LHR-NA129-P004', NULL, 'E block Yohan Abad', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(175, 'PHED-LHR-NA129-P005', NULL, 'UC office Haloki', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(176, 'PHED-LHR-NA129-P006', NULL, 'Bahaderabad Kamaha', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(177, 'PHED-LHR-NA129-P007', NULL, 'Dera Akhter Hussain shaheed Kamaha', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(178, 'PHED-LHR-NA129-P008', NULL, 'Villege kamaha', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(179, 'PHED-LHR-NA129-P009', NULL, 'Defence Garden', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(180, 'PHED-LHR-NA129-P010', NULL, 'Azher Town', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(181, 'PHED-LHR-NA129-P011', NULL, 'Awan Town Gali no 6', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(182, 'PHED-LHR-NA129-P012', NULL, 'Nazam Din Chowk, Mohalla Ahmad Pura', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(183, 'PHED-LHR-NA129-P013', NULL, 'Tipu Park, Attari', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(184, 'PHED-LHR-NA129-P014', NULL, 'Leel', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(185, 'PHED-LHR-NA129-P015', NULL, 'Nawa pind Pandoki', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(186, 'PHED-LHR-NA129-P016', NULL, 'Dullu khurd', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(187, 'PHED-LHR-NA129-P017', NULL, 'Khaliq Nager', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(188, 'PHED-LHR-NA129-P018', NULL, 'Raja Bhulla', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(189, 'PHED-LHR-NA129-P019', NULL, 'Ludhy ki Bhullar', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(190, 'PHED-LHR-NA129-P020', NULL, 'Roara wala', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(191, 'PHED-LHR-NA129-P021', NULL, 'Jamia Masjid Jaman', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(192, 'PHED-LHR-NA129-P022', NULL, 'Masjid Hafiz Karamat Jaman /Dera Manzoor Hussain', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(193, 'PHED-LHR-NA129-P023', NULL, 'Govt. High School Heir', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(194, 'PHED-LHR-NA129-P024', NULL, 'Mohalla Khudiyan Wala Heir', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(195, 'PHED-LHR-NA129-P025', NULL, 'Mohalla Baradari Heir', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(196, 'PHED-LHR-NA129-P026', NULL, 'Lidher Hospital', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(197, 'PHED-LHR-NA129-P027', NULL, 'Mayo Muhallah Attari', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(198, 'PHED-LHR-NA129-P028', NULL, 'Rora Boghan Nepal', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(199, 'PHED-LHR-NA129-P029', NULL, 'Watna Pind', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(200, 'PHED-LHR-NA129-P030', NULL, 'Village Gaga', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(201, 'PHED-LHR-NA129-P031', NULL, 'Keerka', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(202, 'PHED-LHR-NA129-P032', NULL, 'Gwaind', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(203, 'PHED-LHR-NA129-P033', NULL, 'Mota Singh', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(204, 'PHED-LHR-NA129-P034', NULL, 'Dhondy Pind', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(205, 'PHED-LHR-NA129-P035', NULL, 'Aasal Salman', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(206, 'PHED-LHR-NA129-P036', NULL, 'Jodo Dheer pind', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(207, 'PHED-LHR-NA129-P037', NULL, 'Bhadoki', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(208, 'PHED-LHR-NA129-P038', NULL, 'Islam Pura pind', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(209, 'PHED-LHR-NA129-P039', NULL, 'Tibba Pind', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(210, 'PHED-LHR-NA129-P040', NULL, 'Jhulkhay Pind', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(211, 'PHED-LHR-NA129-P041', NULL, 'Panju Thay Pind', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(212, 'PHED-LHR-NA129-P042', NULL, 'Deo Khurd', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(213, 'PHED-LHR-NA129-P043', NULL, 'Chato Wali  Hawaili', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(214, 'PHED-LHR-NA129-P044', NULL, 'Karyal', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(215, 'PHED-LHR-NA129-P045', NULL, 'Jahtool', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(216, 'PHED-LHR-NA129-P046', NULL, 'Lakhoki', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(217, 'PHED-LHR-NA129-P047', NULL, 'Khanu nepal', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(218, 'PHED-LHR-NA129-P048', NULL, 'Galvera', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(219, 'PHED-LHR-NA129-P049', NULL, 'kot Mela Ram', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(220, 'PHED-LHR-NA129-P050', NULL, 'Shahzada Pind', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(221, 'PHED-LHR-NA129-P051', NULL, 'Natha Singh', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(222, 'PHED-LHR-NA129-P052', NULL, 'Khanu Harni', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(223, 'PHED-LHR-NA129-P053', NULL, 'Jahdoo village', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(224, 'PHED-LHR-NA129-P054', NULL, 'Atto Aasil', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(225, 'PHED-LHR-NA129-P055', NULL, 'Bilal Town', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(226, 'PHED-LHR-NA129-P056', NULL, 'Animal Hospital Chung', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(227, 'PHED-LHR-NA129-P057', NULL, 'Mission High School Rawind', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(228, 'PHED-LHR-NA129-P058', NULL, 'Mission Colony Rawind', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(229, 'PHED-LHR-NA129-P059', NULL, 'Lakho Dheer (Gwandi Khushal)', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(230, 'PHED-LHR-NA129-P060', NULL, 'Dullu Khurd & Kalan', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(231, 'PHED-LHR-NA129-P061', NULL, 'Toor', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(232, 'PHED-LHR-NA129-P062', NULL, 'Warriach', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(233, 'PHED-LHR-NA129-P063', NULL, 'Gujjumata  (Shalimar Town)', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(234, 'PHED-LHR-NA129-P064', NULL, 'Green Cap', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(235, 'PHED-LHR-NA129-P065', NULL, 'Sua Ghujjumata (Ghulshan-e-Munir)', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(236, 'PHED-LHR-NA129-P066', NULL, 'Old Khana Naseeb Abad', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(237, 'PHED-LHR-NA129-P067', NULL, 'Seedhar', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(238, 'PHED-LHR-NA129-P068', NULL, 'Jia Bagga', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(239, 'PHED-LHR-NA129-P069', NULL, 'They Dial Singh', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(240, 'PHED-LHR-NA129-P070', NULL, 'Haveli Habib Ullah', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(241, 'PHED-LHR-NA129-P071', NULL, 'Nabi Buksh', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(242, 'PHED-LHR-NA129-P072', NULL, 'Noor Pur', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(243, 'PHED-LHR-NA129-P073', NULL, 'Tatley', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(244, 'PHED-LHR-NA129-P074', NULL, 'Maliyan', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(245, 'PHED-LHR-NA129-P075', NULL, 'Dhalla', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(246, 'PHED-LHR-NA129-P076', NULL, 'Ghawaindi', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(247, 'PHED-LHR-NA129-P077', NULL, 'kuelki-Bahu-Bolay', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(248, 'PHED-LHR-NA129-P078', NULL, 'Khand', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(249, 'PHED-LHR-NA129-P080', NULL, 'Kot Wadhawa singh (keeran wala)', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(250, 'PHED-LHR-NA129-P081', NULL, 'Keet', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(251, 'PHED-LHR-NA129-P082', NULL, 'Burj', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(252, 'PHED-LHR-NA129-P083', NULL, 'Haveli Mewatiyal (Pando Kie)', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(253, 'PHED-LHR-NA129-P084', NULL, 'Sadho kie', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(254, 'PHED-LHR-NA129-P101', NULL, 'Govt.Primary School Gurdawarey wali gally', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(255, 'PHED-LHR-NA129-P102', NULL, 'Eid Gaah Colony/ Kashwana Road', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(256, 'PHED-LHR-NA129-P103', NULL, 'Govt.Girls College/ W-3 Aata Masjid, Old Shadi Hall', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(257, 'PHED-LHR-NA129-P124', NULL, 'Jhugian Mehra & Dera Afghan', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(258, 'PHED-LHR-NA129-P125', NULL, 'Jalal Pura', '0000-00-00', '3', NULL, NULL, NULL, NULL, NULL),
(259, 'PHED-LHR-NA129-P144', NULL, 'Rajpootan, Aahlo', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(260, 'PHED-LHR-NA129-P145', NULL, 'Thaih Chaamb', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(261, 'PHED-LHR-NA129-P146', NULL, 'Govt. Primary School Kamahan', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(262, 'PHED-LHR-NA129-P147', NULL, 'Khalid Town, Gajjumatta', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(263, 'PHED-LHR-NA129-P148', NULL, 'Noor Pur Havelian', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(264, 'PHED-LHR-NA129-P149', NULL, 'Govt. Boys High School Kahna', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(265, 'PHED-LHR-NA129-P150', NULL, 'Shahzad colony Ahlu Road', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(266, 'PHED-LHR-NA129-P151', NULL, 'Nawab Mashkoor Twon', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(267, 'PHED-LHR-NA129-P152', NULL, 'Billian Wala Kho', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(268, 'PHED-LHR-NA129-P153', NULL, 'Essa Nagar', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(269, 'PHED-LHR-NA129-P154', NULL, 'Budhwar Village', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(270, 'PHED-LHR-NA129-P155', NULL, 'Haveli Sajjad Wali', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(271, 'PHED-LHR-NA129-P157', NULL, 'Lidhar Near UC Office', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(272, 'PHED-LHR-NA130-P126', NULL, 'Awan Dhai Wala', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(273, 'PHED-LHR-NA130-P127', NULL, 'Wara Shah Muhammad', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(274, 'PHED-LHR-NA130-P128', NULL, 'Bhanu Chack', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(275, 'PHED-LHR-NA130-P129', NULL, 'Qila Jeewen Singh', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(276, 'PHED-LHR-NA130-P130', NULL, 'Bhattay', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(277, 'PHED-LHR-NA130-P131', NULL, 'Jhughian Muhammad Bakash', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(278, 'PHED-LHR-NA130-P132', NULL, 'Chappa', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(279, 'PHED-LHR-NA130-P133', NULL, 'Nutt', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(280, 'PHED-LHR-NA130-P134', NULL, 'Klass Mari', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(281, 'PHED-LHR-NA130-P135', NULL, 'Atto kie Awan', '2044-06-08', '5', NULL, NULL, NULL, NULL, NULL),
(282, 'PHED-LHR-NA130-P136', NULL, 'Rora Stop', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(283, 'PHED-LHR-NA130-P158', NULL, 'Thatha Dhalwan', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(284, 'PHED-LHR-NA130-P159', NULL, 'Bhehni', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(285, 'PHED-LHR-NA130-P160', NULL, 'Jandiala', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(286, 'PHED-LHR-NA130-P161', NULL, 'Ganja Sindhu', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(287, 'PHED-LHR-NA130-P162', NULL, 'Class Mari', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(288, 'PHED-LHR-NA130-P164', NULL, 'Narwar', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(289, 'PHED-LHR-NA130-P165', NULL, 'Bhehni Jattan', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(290, 'PHED-LHR-NA130-P167', NULL, 'Takki Pura', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(291, 'PHED-LHR-NA130-P168', NULL, 'Padri', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(292, 'PHED-LHR-NA130-P169', NULL, 'Labu Pura', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(293, 'PHED-LHR-NA130-P170', NULL, 'Dayal', '2044-02-07', '5', NULL, NULL, NULL, NULL, NULL),
(294, 'PHED-LHR-NA130-P171', NULL, 'Manawan', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(295, 'PHED-LHR-NA130-P172', NULL, 'Wasoian', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(296, 'PHED-LHR-NA130-P173', NULL, 'Echu Gill', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(297, 'PHED-LHR-NA130-P174', NULL, 'Thathi Tararan', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(298, 'PHED-LHR-NA130-P175', NULL, 'Saanke', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(299, 'PHED-LHR-NA130-P176', NULL, 'Dera Islam Ud Din', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(300, 'PHED-LHR-NA130-P177', NULL, 'Ram Pura', '2045-09-02', '5', NULL, NULL, NULL, NULL, NULL),
(301, 'W1-PP137-001', NULL, 'Latif Chowk', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(302, 'W1-PP137-002', NULL, 'Faisal Park Shahdra', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(303, 'W1-PP137-003', NULL, 'Aziz Colony Chatha Park', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(304, 'W1-PP138-004', NULL, 'Fruit and Vegetable Market', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(305, 'W1-PP138-005', NULL, 'Iqbal Park No.2 Sports Ground Near Lari Ada', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(306, 'W1-PP138-006', NULL, 'Ali Park No.1, Badshai Masjad Near PTCL Exchange', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(307, 'W1-PP138-007', NULL, 'Qila Mohammadi', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(308, 'W1-PP139-008', NULL, 'Corporation Colony', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(309, 'W1-PP139-009', NULL, 'Shafiqabad Bajri Adda', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(310, 'W1-PP140-010', NULL, 'Shaheen Park Bhagat Pura Near Makkah colony', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(311, 'W1-PP140-011', NULL, 'Kot Abdullah Shah,Mozang High School', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(312, 'W1-PP141-012', NULL, 'Elahi Park, Tajpura', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(313, 'W1-PP141-013', NULL, 'Tajpura Near Wassanpura Main Park', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(314, 'W1-PP141-014', NULL, 'Railway  Road Near Technical College', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(315, 'W1-PP141-015', NULL, 'Cattle Park, City Dist. Girls School Near Urdu Bazar', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(316, 'W1-PP141-016', NULL, 'Chah Meeran', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(317, 'W1-PP141-017', NULL, 'Kohlu Ghar', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(318, 'W1-PP142-018', NULL, 'Chomala', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(319, 'W1-PP142-019', NULL, 'Kacha Nisbat Road', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(320, 'W1-PP142-020', NULL, 'Moori Gate', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(321, 'W1-PP142-021', NULL, 'Sheran Wala Gate', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(322, 'W1-PP142-022', NULL, 'Rishi Bawan, Pathi Ground Govt Middle School', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(323, 'W1-PP142-023', NULL, 'Adda Crown Bus', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(324, 'W1-PP142-024', NULL, 'Lohari Gate', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(325, 'W1-PP143-025', NULL, 'Hamad Colony Park', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(326, 'W1-PP143-026', NULL, 'Nabi Bukhash Park Shad Bagh', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(327, 'W1-PP143-027', NULL, 'B-1 Gujar Pura,China Scheme', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(328, 'W1-PP144-028', NULL, 'Sehar Road Near Shalimar Hospital Sehar Road', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(329, 'W1-PP144-029', NULL, 'Jamshaid Park Singh Pura New', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(330, 'W1-PP145-030', NULL, 'Dhobi Ghat', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(331, 'W1-PP145-032', NULL, 'Fatah Gharh', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(332, 'W1-PP146-033', NULL, 'Iqbal Park  Ghaziabad', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(333, 'W1-PP146-034', NULL, 'Dry Port Mughal Pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(334, 'W1-PP146-035', NULL, 'Jhangir Road Near Mughal Pura Bridge', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(335, 'W1-PP147-036', NULL, 'Jamilabad', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(336, 'W1-PP148-037', NULL, 'Rahat Park Aavia Chowk Nadeem Shaheed Road', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(337, 'W1-PP148-038', NULL, 'Near Tubewell Akber Chah Meeran Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(338, 'W1-PP149-039', NULL, 'Jahangir Town National Park Kacha Sanda', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(339, 'W1-PP149-040', NULL, 'A- Block Gulshan-e-Ravi', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(340, 'W4-PP-301', NULL, 'Shah Di Khoi Awami Pura Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(341, 'W4-PP-302', NULL, 'Near Social Welfare Society Govt. Park A Block Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(342, 'W4-PP-303', NULL, 'Saman Berg Kurd Near House#137C Block C Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(343, 'W4-PP-304', NULL, 'Near Qowat ul Islam Masjid  Shahbaz park Park Block E1  Johar Town House#808', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(344, 'W4-PP-305', NULL, 'Campus Colony Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(345, 'W4-PP-306', NULL, 'G1 Market behind school', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(346, 'W4-PP-307', NULL, 'Near House#246 Govt. Park G1 Block Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(347, 'W4-PP-308', NULL, 'Near Punjab School Govt. Park Johar K Block Johar Town.', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(348, 'W4-PP-309', NULL, 'Near House#425 Govt. Park Block N Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(349, 'W4-PP-310', NULL, 'Near House#274 Govt. Park Block F1 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(350, 'W4-PP-311', NULL, 'Government Park in Block-B3 in front of Al-Janat Shadi Hal Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(351, 'W4-PP-312', NULL, 'Beer pind Darbar Badar Deen', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(352, 'W4-PP-313', NULL, 'Shaeen park E block', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(353, 'W4-PP-314', NULL, 'Mian Mazhar Park C1 Block Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(354, 'W4-PP-315', NULL, 'Government Park in Block-B1  House#356 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(355, 'W4-PP-316', NULL, 'Government Park in Block-A1 Near Jamia Masjid Ithad Ul Muslimeen Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(356, 'W4-PP-317', NULL, 'Government Park in Block-A1 Near Anjlina Beauty Prolor Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(357, 'W4-PP-318', NULL, 'Government Park in Block-B1 Near Allah Hu Chowk Front of HFC Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(358, 'W4-PP-319', NULL, 'Block-A3 Park Near House#71 Back side of TH School Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(359, 'W4-PP-320', NULL, 'Near House#473 back side Shoukat Khanam Govt. Park Block R3 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(360, 'W4-PP-321', NULL, 'Kachi Abadi Near Khana Bdosh House#159c Block C Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(361, 'W4-PP-322', NULL, 'Government Park in Block-B3 Near House#91 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(362, 'W4-PP-323', NULL, 'Government Park in Block-B2 Near Jahanzaib Chowk Johar Town house no222, KPS College', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(363, 'W4-PP-324', NULL, 'Watto Park Block D2 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(364, 'W4-PP-325', NULL, 'Salman Farsi Park Block D1 Luqman Park Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(365, 'W4-PP-326', NULL, 'House# 350 Block R2 Pani wali Tanki Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(366, 'W4-PP-327', NULL, 'House#126F Block F Govt. Park Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(367, 'W4-PP-329', NULL, 'Near House#418, Jamia Masjid Al Faisal Block R1 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(368, 'W4-PP-330', NULL, 'Near House#843 Govt. Park Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(369, 'W4-PP-331', NULL, 'Family Park Block P Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(370, 'W4-PP-332', NULL, 'Near House#273 Govt. Park M Block Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(371, 'W4-PP-333', NULL, 'LACAS Ground Near House#64 Block F2 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(372, 'W4-PP-334', NULL, 'House#223 E1 Govt Park Block E1 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(373, 'W4-PP-335', NULL, 'Govt Park G Block Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(374, 'W4-PP-336', NULL, 'Near Girl high school A-Block Al- Faisal town taj pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(375, 'W4-PP-337', NULL, 'Near House#530 Block F2 Govt. Park  Nimrah Mosque Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(376, 'W4-PP-338', NULL, 'Near House#412 infront of Ibrahim Masjid Govt. Park G Block Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(377, 'W4-PP-339', NULL, 'House#758 Melad Park Block F2 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(378, 'W4-PP-340', NULL, 'Samsani Graveyard Near Janazgah', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(379, 'W4-PP-341', NULL, 'Near House#224 Al-Kashmir Park Block G4 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(380, 'W4-PP-342', NULL, 'Near House#430 Govt. Park Block H1 Makki Masjid Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(381, 'W4-PP-343', NULL, 'Near Jamia Masjid Teachers Colony Block C2 Johar Twon', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(382, 'W4-PP-344', NULL, 'Near House#219 Block J3 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(383, 'W4-PP-345', NULL, 'Govt. Park Block A2', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(384, 'W4-PP-346', NULL, 'Near Awan e Quaid Azam Block J1 Green Belt Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(385, 'W4-PP-347', NULL, 'House#738E Govt. Park Block E Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(386, 'W4-PP-348', NULL, 'Childern Park Near Choti Market Block J Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(387, 'W4-PP-349', NULL, 'Near House#580 Govt. Park Block J3 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(388, 'W4-PP-350', NULL, 'Bismillah Park Block F Near House#639 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(389, 'W4-PP-351', NULL, 'Near Ghaziabad Usman nagar Wasa T/Well Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(390, 'W4-PP-352', NULL, 'Muhammadi Masjid 60 Ft Road Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(391, 'W4-PP-353', NULL, 'Ghaziabad Disposal Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(392, 'W4-PP-354', NULL, 'Amna Park Block B Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(393, 'W4-PP-355', NULL, 'Jamal E Mustafa park Block D Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(394, 'W4-PP-356', NULL, 'Near House#154E Mian Ameer Uddin Park Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(395, 'W4-PP-357', NULL, 'Near babri Masjid tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(396, 'W4-PP-358', NULL, 'Mian Park Nizam abad Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(397, 'W4-PP-359', NULL, 'Nazim Abad Chowk Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(398, 'W4-PP-360', NULL, 'Zeenat Shadi hall khokha stop tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(399, 'W4-PP-361', NULL, 'Nissar Amir Manzar Soling Road Near Dayyar Grammar School', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(400, 'W4-PP-362', NULL, 'Subhan Allah Park Block A Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(401, 'W4-PP-363', NULL, 'Attar Abbas Park Block E Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(402, 'W4-PP-364', NULL, 'Ashfaq Chowk Near WASA Tube well A Block Al Faisal Town Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(403, 'W4-PP-365', NULL, 'Peer Naseer Chandian', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(404, 'W4-PP-366', NULL, 'Gate#3 Taj Bag Colony Harbans Pura Road  Qadir Baksh', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(405, 'W4-PP-367', NULL, 'Laal School for boys Ghaziabad', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(406, 'W4-PP-368', NULL, 'Sabary Darbar Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(407, 'W4-PP-369', NULL, 'Near Azfar Marbel Mian Ameer Uddin Park Taj Pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(408, 'W4-PP-370', NULL, 'Near Jahalarn Grave yard Harbanse pura road A Block Al Faisal Town Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(409, 'W4-PP-371', NULL, 'Near Joray Pull Chowk WASA Disposal A Block Al Faisal Town Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(410, 'W4-PP-372', NULL, 'Bismillah Park Block B Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(411, 'W4-PP-373', NULL, 'Grassion home Phase II herbanus pura road.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(412, 'W4-PP-374', NULL, 'Ghaziabad Dispensary Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(413, 'W4-PP-375', NULL, 'Ali Muhammad Darbar Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(414, 'W4-PP-376', NULL, 'Govt.school butt chowk tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(415, 'W4-PP-377', NULL, 'Near union Council office B Block Al Faisal Town Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(416, 'W4-PP-378', NULL, 'A Block VRI Murghi Khana Chowk Al Faisal Town Tajpra', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(417, 'W4-PP-379', NULL, 'C-Block Al-Faisal town tajpura.', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(418, 'W4-PP-380', NULL, 'Near Allied School D Block Al Faisal Town Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(419, 'W4-PP-381', NULL, 'Gujja Peer Taj Pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(420, 'W4-PP-382', NULL, 'Inside Janz gah Manzoor colony Harbans pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(421, 'W4-PP-383', NULL, 'Larics Colony Block D Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(422, 'W4-PP-384', NULL, 'D Block Graveyard Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(423, 'W4-PP-385', NULL, 'Ladies park tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(424, 'W4-PP-386', NULL, 'Razaq Colony Taj Bagh', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(425, 'W4-PP-387', NULL, 'Sally Town Near House#45-A Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(426, 'W4-PP-388', NULL, 'Near Masjid Mahtab Opp Broadway School Harbunspura Road Tajpura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(427, 'W4-PP-389', NULL, 'Near House CH Tariq Gujar Green Belt E Block Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(428, 'W4-PP-390', NULL, 'Near House#83 Block E2 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(429, 'W4-PP-391', NULL, 'Near House#412 Block F Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(430, 'W4-PP-392', NULL, 'Govt. Park Block E2 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(431, 'W4-PP-393', NULL, 'Near House#219 Bock R Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(432, 'W4-PP-394', NULL, 'Near Jamia Masjid Block E1 Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(433, 'W4-PP-395', NULL, 'Near House#737 Block F-II Johar Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(434, 'W5-397', NULL, 'Near WASA T/W Block A3 Gulberg III', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `plants` (`id`, `plant_id`, `project_id`, `address`, `installation_date`, `zone`, `plant_type`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(435, 'W5-398', NULL, 'Itehad Colony Near 7Up Factroy WASA Tube Well Gulberg Lahore', '2043-08-08', '4', NULL, NULL, NULL, NULL, NULL),
(436, 'W5-399', NULL, 'Govt. Central Model Higher Secondary School Gulberg III Lahore', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(437, 'W5-400', NULL, 'Govt. City district School Main Bazar Bhumma Shad bag Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(438, 'W5-401', NULL, 'Taroon Wali Kothi New Shad Bagh Near Royal Marriage Hall Shad Bagh Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(439, 'W5-402', NULL, '6A Circular Road Lari Adda Opp Badami Bagh Lahore.', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(440, 'W6-PP-140-448', NULL, 'Board of Revenue Near Museum Church Road', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(441, 'W6-PP-141-434', NULL, 'Near Govt. Girls Middle School Fazal Park Shafi Allah Ditta Masjid Wasan Pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(442, 'W6-PP-147-407', NULL, 'Near House#188 Rehmania Park Shadman', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(443, 'W6-PP-147-459', NULL, 'Nusrat Colony Canal Bridge', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(444, 'W6-PP137-426', NULL, 'In Side WASA Office Farkhabad Shahdra', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(445, 'W6-PP138-427', NULL, 'WASA Tube Well Kachi Abadi Kareem Nagar Near PSO Pump GT Road Shahdra', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(446, 'W6-PP139-470', NULL, 'In Side T.B Hospital Bilal Gunj Lahore `', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(447, 'W6-PP139-471', NULL, 'Main Road Near Bajri Adda, Niazi Chowk', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(448, 'W6-PP139-472', NULL, 'Amin Park Near WASA Tube Well Bund Road Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(449, 'W6-PP139-473', NULL, 'Baba Hayat Darbar Hakeem Wala Bazar', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(450, 'W6-PP139-476', NULL, 'Govt. Middle School Roza Peer Abu Ishaq Mozang', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(451, 'W6-PP139-480', NULL, 'Near Muslim Gunj Musjid Liten Road Chowk Qamar Din', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(452, 'W6-PP140-410', NULL, 'Chistian Ladies Park Krishan Nagar Dew Samage', '2043-06-09', '7', NULL, NULL, NULL, NULL, NULL),
(453, 'W6-PP140-435', NULL, 'WASA Tubewell Near Kotha Pind Graveyard Faisal Town', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(454, 'W6-PP140-437', NULL, 'Inside Anti corruption court Freed Kot House Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(455, 'W6-PP140-439', NULL, 'Near Govt. MC Boys High School Kot Khawaja Saeed Near Wagon Adda 60No.', '2043-06-09', '5', NULL, NULL, NULL, NULL, NULL),
(456, 'W6-PP140-442', NULL, 'Inside Commissioner Office Behind Civil Court Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(457, 'W6-PP140-447', NULL, 'Kacha Temple Road Abid Market JECA Tubewell No.76 behind Masjid Haji Noor Muhammad.', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(458, 'W6-PP140-449', NULL, 'Amar jan Hostel Hota Singh Road Near Ghani Masjid', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(459, 'W6-PP140-450', NULL, 'In Side PUET College Road Green Town', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(460, 'W6-PP140-451', NULL, 'Darbar Peer Hassan shah wali 15A Abbot Road Jan ki devi', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(461, 'W6-PP140-454', NULL, 'Namak Mandi Azad Park Sarian Ratan Chand', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(462, 'W6-PP140-462', NULL, 'In side Al-Hamra Arts Council Ajirtan Road Gate  Opp Avari Hotel', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(463, 'W6-PP140-469', NULL, 'Masjid Bagh Wali Circular Road Shah Alam Market Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(464, 'W6-PP140-474', NULL, 'Pataila Ground Link Maklod Road', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(465, 'W6-PP140-475', NULL, 'Street#24 Akbar Street Near WASA Tube Well Shadab Colony', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(466, 'W6-PP141-420', NULL, 'Shesh Mehal Near Toka Stop Shad Bagh', '2043-06-09', '7', NULL, NULL, NULL, NULL, NULL),
(467, 'W6-PP141-428', NULL, 'Kachi Abadi near Gunj Baksh Masjid Badami Bagh Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(468, 'W6-PP141-429', NULL, 'Amam Ghazali Family Park Near Govt. Bosy High School Scheme No.2 Wasan Pura.', '2043-06-09', '5', NULL, NULL, NULL, NULL, NULL),
(469, 'W6-PP141-430', NULL, 'Shafi Park Wasan Pura Opp House#02 UC#46', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(470, 'W6-PP141-431', NULL, 'Govt High School Islamia Aziz Road Misre Shah', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(471, 'W6-PP141-432', NULL, 'Near Govt. Girls High School Chamra Mandi Faiz Bagh', '2043-06-09', '5', NULL, NULL, NULL, NULL, NULL),
(472, 'W6-PP141-433', NULL, 'In Side Darbar Baba Hazoori Shah Chah Miraan', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(473, 'W6-PP141-436', NULL, 'Nazim Abad Near in Park Eye Hospital  kousar Masjid', '2043-06-09', '7', NULL, NULL, NULL, NULL, NULL),
(474, 'W6-PP141-443', NULL, 'Tanki Wali Park D Block Shad Bagh', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(475, 'W6-PP141-452', NULL, 'In Side Nonehal Park Near Amam Bargah Near Shad Bagh', '2043-07-09', '7', NULL, NULL, NULL, NULL, NULL),
(476, 'W6-PP141-453', NULL, 'Faroz street No.30 Near Dispencery Muslim Park Raj Garh.', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(477, 'W6-PP141-460', NULL, 'Iqbal Fort Near Lari Adda', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(478, 'W6-PP141-461', NULL, 'Iqbal Park I Near Lari Adda', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(479, 'W6-PP141-464', NULL, 'PECO Factory Data Nagar Rajput Road Chah Motian', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(480, 'W6-PP142-444', NULL, 'Near Scheme Qillah Gujjar Singh Near JECA Tubewell No.07', '2043-06-09', '5', NULL, NULL, NULL, NULL, NULL),
(481, 'W6-PP143-440', NULL, 'T/W#122 Fazal pura St#30 Kot Khawaja Saeed Near Darbar Peer Mahndi', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(482, 'W6-PP143-441', NULL, 'Shah Din Park Peer Ronqe Graveyard Shadbagh', '2043-06-09', '7', NULL, NULL, NULL, NULL, NULL),
(483, 'W6-PP143-478', NULL, 'Near JICA T/W No.126 Shad Bagh WASA Colony', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(484, 'W6-PP143-479', NULL, 'Opp Shanza Banquat Hall Main Road Ghora Shah Gujjar Pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(485, 'W6-PP144-424', NULL, 'Govt. High School Baghban Pura Main GT Road Shalamar', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(486, 'W6-PP144-425', NULL, 'NearWASAtubwell behind city Tower P block Gulberg', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(487, 'W6-PP147-408', NULL, 'Green Belt Near LESCO Grid Station Gujjar Pura China Scheme', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(488, 'W6-PP147-409', NULL, 'Queen Merry Girls Hostel Habib Ullah Road', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(489, 'W6-PP147-438', NULL, 'Near Takia Masjid Pakki Thathi Samanabad', '2043-03-09', '6', NULL, NULL, NULL, NULL, NULL),
(490, 'W6-PP147-445', NULL, 'In Side Race course Park Near PTCL Office', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(491, 'W6-PP147-456', NULL, 'Ghazi Mohalla Childern Park Ghari Shaho', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(492, 'W6-PP148-405', NULL, 'Super Market Shah Jamal Lahore', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(493, 'W6-PP148-406', NULL, 'Near House#90 Mental Hospital Shadman II Lahore', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(494, 'W6-PP148-417', NULL, 'N Block Samanabad Lahore', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(495, 'W6-PP148-446', NULL, 'Near House#64 Arya Nagar Punch Road Samanabad', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(496, 'W6-PP149-416', NULL, 'Gaddafi park B Block Gulshan Ravi Lahore', '0000-00-00', '7', NULL, NULL, NULL, NULL, NULL),
(497, 'W6-PP149-455', NULL, 'Behind City Adda Main Road Sodiwal pind', '2043-07-04', '6', NULL, NULL, NULL, NULL, NULL),
(498, 'W6-PP150-414', NULL, 'A Block Sabzazar', '2043-08-01', '6', NULL, NULL, NULL, NULL, NULL),
(499, 'W6-PP150-415', NULL, 'Govt. High School E Block Sabzazar Lahore', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(500, 'W6-PP150-463', NULL, 'Near Tube Well No.60 Sodiwal Quarter In Sodiwal Park', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(501, 'W6-PP151-411', NULL, 'A Block Muslim Town Ayoubia Market', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(502, 'W6-PP151-412', NULL, 'Neelam Block Allama Iqbal Town in children park', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(503, 'W6-PP151-413', NULL, 'Jahanzeeb Block Opp Amam Bargah Allma Iqbal Town', '2043-03-09', '6', NULL, NULL, NULL, NULL, NULL),
(504, 'W6-PP151-423', NULL, 'Opp Alfatha Store Huma Block WASA Tube Well#1 Allama Iqbal Town', '2043-06-09', '6', NULL, NULL, NULL, NULL, NULL),
(505, 'W6-PP152-403', NULL, 'Alaf Laila Park Gulberg II Lahore', '2043-07-08', '4', NULL, NULL, NULL, NULL, NULL),
(506, 'W6-PP152-418', NULL, 'Near WASA Tube Well#42 Zafar Ali Road', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(507, 'W6-PP152-457', NULL, 'Bahbrrah Market M Block Gulberg III', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(508, 'W6-PP153-422', NULL, 'Kunj Pura Park Near WASA T/W B Block Sabazazar', '0000-00-00', '6', NULL, NULL, NULL, NULL, NULL),
(509, 'W6-PP153-466', NULL, 'In Side Graveyard Near WASA Tube Well Salamat Pura', '0000-00-00', '5', NULL, NULL, NULL, NULL, NULL),
(510, 'W6-PP154-419', NULL, 'Tanki No#3 inside WASA Office Town Ship', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(511, 'W6-PP154-421', NULL, '6-C-2 Green Town Park', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(512, 'W6-PP154-467', NULL, 'Near Rahmaniya Masjid Al-Hadise Gawala Colony chand Rai Road', '0000-00-00', '4', NULL, NULL, NULL, NULL, NULL),
(513, 'W6-PP154-477', NULL, '5-A-II Near Govt. Primary School Town Ship', '2043-06-09', '4', NULL, NULL, NULL, NULL, NULL),
(514, 'W6-PP159-458', NULL, 'Usama Block WASA Disposal Nishtar Colony', '2043-08-07', '4', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tree', '2024-04-28 02:06:56', '2024-04-28 02:06:56'),
(3, 'tree na', '2024-04-28 02:07:04', '2024-04-28 02:07:04'),
(5, 'new', '2024-05-03 13:39:41', '2024-05-03 13:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `projects_categories`
--

CREATE TABLE `projects_categories` (
  `projects_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratingtokens`
--

CREATE TABLE `ratingtokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2024-04-28 02:00:27', '2024-04-28 02:00:27'),
(2, 'agent', 'web', '2024-04-28 02:00:27', '2024-04-28 02:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sendmails`
--

CREATE TABLE `sendmails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mailsubject` varchar(255) NOT NULL,
  `mailtext` longtext NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `selecttagcolor` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `senduserlists`
--

CREATE TABLE `senduserlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_id` bigint(20) UNSIGNED NOT NULL,
  `touser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tocust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seosettings`
--

CREATE TABLE `seosettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seosettings`
--

INSERT INTO `seosettings` (`id`, `author`, `description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'My Desk', 'Looking For help?', 'Why Choose US ?', '2024-04-28 02:00:28', '2024-04-28 02:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'date_format', 'd M, Y', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(2, 'time_format', 'h:i A', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(3, 'site_title', 'laravel', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(4, 'site_description', 'Description for your portal !', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(5, 'update_setting', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(6, 'site_logo', 'default.png', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(7, 'site_favicon', 'favicon.png', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(8, 'CAPTCHATYPE', 'off', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(9, 'GOOGLE_RECAPTCHA_KEY', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(10, 'GOOGLE_RECAPTCHA_SECRET', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(11, 'USER_REOPEN_ISSUE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(12, 'USER_REOPEN_TIME', '1', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(13, 'AUTO_CLOSE_TICKET', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(14, 'AUTO_CLOSE_TICKET_TIME', '1', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(15, 'AUTO_OVERDUE_TICKET', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(16, 'AUTO_OVERDUE_TICKET_TIME', '1', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(17, 'AUTO_RESPONSETIME_TICKET', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(18, 'AUTO_RESPONSETIME_TICKET_TIME', '1', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(19, 'CUSTOMER_TICKETID', 'SP', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(20, 'GUEST_TICKET', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(21, 'PRIORITY_ENABLE', 'no', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(22, 'REGISTER_POPUP', 'no', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(23, 'REGISTER_DISABLE', 'on', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(24, 'CUSTOMER_CLOSE_TICKET', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(25, 'USER_FILE_UPLOAD_ENABLE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(26, 'GUEST_FILE_UPLOAD_ENABLE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(27, 'GOOGLE_ANALYTICS_ENABLE', 'no', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(28, 'AUTO_NOTIFICATION_DELETE_ENABLE', 'on', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(29, 'AUTO_NOTIFICATION_DELETE_DAYS', '60', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(30, 'GOOGLE_ANALYTICS', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(31, 'FILE_UPLOAD_MAX', '3', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(32, 'FILE_UPLOAD_TYPES', '.jpg,.jpeg,.png', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(33, 'KNOWLEDGE_ENABLE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(34, 'FAQ_ENABLE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(35, 'CONTACT_ENABLE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(36, 'MAINTENANCE_MODE', 'off', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(37, 'MAINTENANCE_MODE_VALUE', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(38, 'PROFILE_USER_ENABLE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(39, 'PROFILE_AGENT_ENABLE', 'yes', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(40, 'RECAPTCH_ENABLE_REGISTER', 'no', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(41, 'RECAPTCH_ENABLE_CONTACT', 'no', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(42, 'RECAPTCH_ENABLE_LOGIN', 'no', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(43, 'RECAPTCH_ENABLE_GUEST', 'no', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(44, 'COUNTRY_BLOCKTYPE', 'block', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(45, 'COUNTRY_LIST', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(46, 'ADMIN_COUNTRY_BLOCKTYPE', 'block', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(47, 'ADMIN_COUNTRY_LIST', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(48, 'DOS_Enable', 'off', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(49, 'IPMAXATTEMPT', '10', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(50, 'IPSECONDS', '30', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(51, 'IPBLOCKTYPE', 'captcha', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(52, 'GOOGLEFONT_DISABLE', 'off', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(53, 'FORCE_SSL', 'off', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(54, 'DARK_MODE', '0', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(55, 'SPRUKOADMIN_P', 'on', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(56, 'SPRUKOADMIN_C', 'off', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(57, 'ticket_default_assigned_user_id', '2', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(58, 'social_media_facebook', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(59, 'social_media_instagram', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(60, 'social_media_twitter', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(61, 'social_media_youtube', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(62, 'social_media_pinterest', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(64, 'default_lang', 'en', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(65, 'theme_color', 'rgba(51 ,102 ,255, 1)', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(66, 'theme_color_dark', 'rgba(24, 71, 128, 1)', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(67, 'popular_categories', '[]', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(68, 'home_featured_categories', '[]', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(69, 'home_categories', '[]', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(70, 'home_max_articles', '10', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(71, 'mail_driver', 'smtp', '2024-04-28 02:00:28', '2024-05-02 12:52:12'),
(72, 'mail_host', 'sandbox.smtp.mailtrap.io', '2024-04-28 02:00:28', '2024-05-02 12:52:12'),
(73, 'mail_port', '2525', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(74, 'mail_from_address', 'admin@example.com', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(75, 'mail_from_name', 'smtp', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(76, 'mail_encryption', 'ssl', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(77, 'MAIL_USERNAME', '098a67ffc41e0d', '2024-04-28 02:00:28', '2024-05-02 12:52:12'),
(78, 'MAIL_PASSWORD', 'c7a3ab66ea822d', '2024-04-28 02:00:28', '2024-05-02 12:52:12'),
(79, 'IMAP_STATUS', 'off', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(80, 'IMAP_HOST', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(81, 'IMAP_PORT', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(82, 'IMAP_PROTOCOL', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(83, 'IMAP_ENCRYPTION', NULL, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(84, 'IMAP_USERNAME', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(85, 'IMAP_PASSWORD', '', '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(86, 'GUEST_TICKET_OTP', 'no', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(87, 'CUSTOMER_TICKET', 'no', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(88, 'start_week', '0', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(89, 'TICKET_CHARACTER', '10', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(90, 'default_timezone', 'UTC', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(91, 'businesshourstitle', 'Support', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(92, 'businesshourssubtitle', 'Our technical team is available in the IST timezone.', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(93, 'businesshoursswitch', 'on', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(94, 'supporticonimage', NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(95, 'admin_reply_mail', 'yes', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(96, 'customer_panel_employee_protect', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(97, 'employeeprotectname', 'Support', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(98, 'ticketrating', 'on', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(99, 'sidemenu_icon_style', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(100, 'login_disable', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(101, 'login_disable_statement', 'Due technical issue', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(102, 'cust_profile_delete_enable', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(103, 'EMAILDOMAIN_BLOCKTYPE', 'blockemail', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(104, 'EMAILDOMAIN_LIST', '', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(105, 'customer_inactive_notify', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(106, 'customer_inactive_notify_date', '1', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(107, 'customer_inactive_week_date', '1', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(108, 'guest_inactive_notify', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(109, 'guest_inactive_notify_date', '1', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(110, 'guest_inactive_week_date', '1', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(111, 'RECAPTCH_ENABLE_ADMIN_LOGIN', 'NO', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(112, 'cc_email', 'h:i A', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(113, 'contact_form_mail', NULL, '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(114, 'only_social_logins', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(115, 'article_count', 'on', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(116, 'trashed_ticket_autodelete', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(117, 'trashed_ticket_delete_time', '7', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(118, 'RESTRICT_TO_CREATE_TICKET', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(119, 'MAXIMUM_ALLOW_TICKETS', '1', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(120, 'MAXIMUM_ALLOW_HOURS', '1', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(121, 'SUPPORT_POLICY_URL', '#', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(122, 'RESTRICT_TO_REPLY_TICKET', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(123, 'MAXIMUM_ALLOW_REPLIES', '0', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(124, 'REPLY_ALLOW_IN_HOURS', '0', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(125, 'NOTE_CREATE_MAILS', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(126, 'ANNOUNCEMENT_USER', 'all_users', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(127, 'CUSTOMER_RESTICT_TO_DELETE_TICKET', 'off', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(130, 'MAX_FILE_UPLOAD', '2', '2024-04-28 02:00:31', '2024-04-28 02:00:31'),
(131, 'terms_url', '#', '2024-04-28 02:00:31', '2024-04-28 02:00:31'),
(132, 'purchasecode_on', 'off', '2024-04-28 02:00:31', '2024-04-28 02:00:31'),
(133, 'defaultlogin_on', 'off', '2024-04-28 02:00:31', '2024-04-28 02:00:31'),
(134, 'time_format', 'h:i A', '2024-04-28 02:00:31', '2024-04-28 02:00:31'),
(135, 'cronjob_set', NULL, '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(136, 'enable_gpt', 'on', '2024-04-28 02:00:38', '2024-07-08 00:32:18'),
(137, 'openai_api', '', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(138, 'openai_api', '', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(139, 'newupdate', 'updated3.1.2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_settings`
--

CREATE TABLE `social_auth_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_client_id` varchar(255) DEFAULT NULL,
  `facebook_secret_id` varchar(255) DEFAULT NULL,
  `facebook_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_secret_id` varchar(255) DEFAULT NULL,
  `google_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `twitter_client_id` varchar(255) DEFAULT NULL,
  `twitter_secret_id` varchar(255) DEFAULT NULL,
  `twitter_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `envato_client_id` varchar(255) DEFAULT NULL,
  `envato_secret_id` varchar(255) DEFAULT NULL,
  `envato_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_auth_settings`
--

INSERT INTO `social_auth_settings` (`id`, `facebook_client_id`, `facebook_secret_id`, `facebook_status`, `google_client_id`, `google_secret_id`, `google_status`, `twitter_client_id`, `twitter_secret_id`, `twitter_status`, `envato_client_id`, `envato_secret_id`, `envato_status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', '2024-04-28 02:00:21', '2024-04-28 02:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `subcategoryschild`
--

CREATE TABLE `subcategoryschild` (
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategoryschild`
--

INSERT INTO `subcategoryschild` (`subcategory_id`, `category_id`) VALUES
(2, 2),
(3, 3),
(4, 3),
(1, 26),
(1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `subcategorysd`
--

CREATE TABLE `subcategorysd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategoryname` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategorysd`
--

INSERT INTO `subcategorysd` (`id`, `subcategoryname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sabu', 1, '2024-05-03 13:39:21', '2024-05-03 13:39:21'),
(2, 'System sub', 1, '2024-05-17 14:13:24', '2024-05-17 14:13:24'),
(3, 'sub agaisn sub', 1, '2024-05-17 14:13:54', '2024-05-17 14:13:54'),
(4, 'jask', 1, '2024-07-06 14:00:28', '2024-07-06 14:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `designation`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Heather Bell', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id officiis hic tenetur quae quaerat ad velit ab. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore cum accusamus eveniet molestias voluptatum inventore laboriosam labore sit, aspernatur praesentium iste impedit quidem dolor veniam.', 'Developer', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(2, 'David Blake', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.', 'Designer', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30'),
(3, 'Sophie Carr', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'HTML', NULL, '2022-01-07 01:13:30', '2022-01-07 01:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `ticketassignchildren`
--

CREATE TABLE `ticketassignchildren` (
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `toassignuser_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickethistories`
--

CREATE TABLE `tickethistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `ticketactions` longtext DEFAULT NULL,
  `ticketstatus` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickethistories`
--

INSERT INTO `tickethistories` (`id`, `ticket_id`, `ticketactions`, `ticketstatus`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Responded)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2024-04-28 02:05:20', '2024-04-28 02:05:20'),
(2, 2, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Responded)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, '2024-05-02 13:10:56', '2024-04-28 02:05:24', '2024-05-02 13:10:56'),
(3, 2, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                <span class=\"text-warning font-weight-semibold mx-1\">Note</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Note Created)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, '2024-05-02 13:10:56', '2024-05-01 22:17:25', '2024-05-02 13:10:56'),
(4, 2, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                <span class=\"text-warning font-weight-semibold mx-1\">Note</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Note Created)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, '2024-05-02 13:10:56', '2024-05-01 22:17:25', '2024-05-02 13:10:56'),
(5, 2, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                <span class=\"text-warning font-weight-semibold mx-1\">Note</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Priority Updated)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, '2024-05-02 13:10:56', '2024-05-02 13:03:08', '2024-05-02 13:10:56'),
(6, 2, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                <span class=\"text-warning font-weight-semibold mx-1\">Note</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Priority Updated)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, '2024-05-02 13:10:56', '2024-05-02 13:03:08', '2024-05-02 13:10:56'),
(7, 2, '<div class=\"d-flex align-items-center\">\n                <div class=\"mt-0\">\n                    <p class=\"mb-0 fs-12 mb-1\">Status\n                \n                    <span class=\"text-danger font-weight-semibold mx-1\">New</span>\n                    <span class=\"text-warning font-weight-semibold mx-1\">Note</span>\n                    \n                <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Ticket Deleted)</span></p>\n            </div>\n            <div class=\"ms-auto\">\n            <span class=\"float-end badge badge-primary-light\">\n                <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n            </span>\n            </div>\n\n            </div>\n            ', NULL, '2024-05-02 13:10:56', '2024-05-02 13:10:56', '2024-05-02 13:10:56'),
(8, 3, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Responded)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2024-07-06 15:38:44', '2024-07-06 15:38:44'),
(9, 4, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Responded)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2024-07-08 00:29:12', '2024-07-08 00:29:12'),
(10, 4, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Priority Updated)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2024-07-08 00:30:06', '2024-07-08 00:30:06'),
(11, 4, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                <span class=\"text-warning font-weight-semibold mx-1\">Note</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Admin 1<span class=\"fs-11 mx-1 text-muted\">(Note Created)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-primary-light\">\n            <span class=\"fs-11 font-weight-semibold\">superadmin</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2024-07-08 00:30:53', '2024-07-08 00:30:53'),
(12, 5, '<div class=\"d-flex align-items-center\">\n            <div class=\"mt-0\">\n                <p class=\"mb-0 fs-12 mb-1\">Status\n            \n                <span class=\"text-burnt-orange font-weight-semibold mx-1\">New</span>\n                \n            <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Kyla Nicholson<span class=\"fs-11 mx-1 text-muted\">(Created)</span></p>\n        </div>\n        <div class=\"ms-auto\">\n        <span class=\"float-end badge badge-danger-light\">\n            <span class=\"fs-11 font-weight-semibold\">Customer</span>\n        </span>\n        </div>\n\n        </div>\n        ', NULL, NULL, '2024-07-09 12:28:10', '2024-07-09 12:28:10'),
(13, 5, '<div class=\"d-flex align-items-center\">\n                    <div class=\"mt-0\">\n                        <p class=\"mb-0 fs-12 mb-1\">Status\n                    \n                        <span class=\"text-info font-weight-semibold mx-1\">New</span>\n                        \n                    <p class=\"mb-0 fs-17 font-weight-semibold text-dark\">Kyla Nicholson<span class=\"fs-11 mx-1 text-muted\">(Responded)</span></p>\n                </div>\n                <div class=\"ms-auto\">\n                <span class=\"float-end badge badge-danger-light\">\n                    <span class=\"fs-11 font-weight-semibold\">Customer</span>\n                </span>\n                </div>\n\n                </div>\n                ', NULL, NULL, '2024-07-09 12:29:31', '2024-07-09 12:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `ticketnotes`
--

CREATE TABLE `ticketnotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticketnotes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketnotes`
--

INSERT INTO `ticketnotes` (`id`, `ticket_id`, `user_id`, `ticketnotes`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'testing notes', '2024-05-01 22:17:25', '2024-05-01 22:17:25'),
(2, 2, 1, 'testing notes', '2024-05-01 22:17:25', '2024-05-01 22:17:25'),
(3, 4, 1, 'here we', '2024-07-08 00:30:53', '2024-07-08 00:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory` bigint(20) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `employeesreplying` varchar(255) DEFAULT NULL,
  `usernameverify` varchar(255) DEFAULT NULL,
  `emailticketfile` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `purchasecode` varchar(255) DEFAULT NULL,
  `purchasecodesupport` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `replystatus` varchar(255) DEFAULT NULL,
  `myassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_reply` datetime DEFAULT NULL,
  `lastreply_mail` bigint(20) UNSIGNED DEFAULT NULL,
  `auto_replystatus` datetime DEFAULT NULL,
  `closing_ticket` datetime DEFAULT NULL,
  `auto_close_ticket` datetime DEFAULT NULL,
  `overduestatus` varchar(255) DEFAULT NULL,
  `auto_overdue_ticket` datetime DEFAULT NULL,
  `selfassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closedby_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `cust_id`, `user_id`, `ticket_id`, `category_id`, `subcategory`, `subject`, `employeesreplying`, `usernameverify`, `emailticketfile`, `priority`, `project`, `purchasecode`, `purchasecodesupport`, `message`, `note`, `status`, `replystatus`, `myassignuser_id`, `last_reply`, `lastreply_mail`, `auto_replystatus`, `closing_ticket`, `auto_close_ticket`, `overduestatus`, `auto_overdue_ticket`, `selfassignuser_id`, `closedby_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'SPG-1', 3, NULL, 'sd', '', NULL, NULL, NULL, NULL, 'eyJpdiI6InVhMW8xbXYyY1NibFJtYTUvWWI4ZGc9PSIsInZhbHVlIjoiNFg3bllGcVBwb3JocDdLeDhxRlJQRnFQRkJmcFhVNWZmQVU1NGRBOHRZZz0iLCJtYWMiOiJlNGM1NWFiYzU4NTE5MjVjODQyOWE2NjEwMWI5NGUxYzU2YTFmMjViZGE4OWM3NWM3MzM5NzAzOWQyYzE4ZDEwIiwidGFnIjoiIn0=', NULL, '<p>df</p>', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-28 02:05:20', '2024-06-07 22:48:43', NULL),
(2, 2, 1, 'SPG-2', 3, NULL, 'sd', NULL, NULL, NULL, 'Medium', NULL, 'eyJpdiI6ImNOWnIwK3ZwUThSSytkeGhwY3RxTWc9PSIsInZhbHVlIjoiS3JFaXVqZDgwMWZGTjBhSTlYYmlPSys0bHBKdTZ4VXhYajRNM0Zna1ZNdz0iLCJtYWMiOiJkMDQyNWViN2M3MzhjYjk1NjgzYzdlMDQ0ODhkZWZjNWMzODNkN2RhNTI2Yzc2ODY4YzI4ZDU3NjliYjI4NzYwIiwidGFnIjoiIn0=', NULL, '<p>df</p>', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-28 02:05:24', '2024-05-02 13:10:56', '2024-05-02 13:10:56'),
(3, 4, 1, 'SPG-3', 40, NULL, 'Dolor cons', NULL, NULL, NULL, 'Low', NULL, 'eyJpdiI6Iko3cFkydUVGdWh2VVR1ME5XTjZpVHc9PSIsInZhbHVlIjoiNkZSVm5qYVNhS1MwYnpLUFFuMXVrSWlXQkRvUmcwTUJQbjVRWUN5TmFwST0iLCJtYWMiOiJiNTJiOWZmZTk2YmQ4ZWQ1NDEyMjAzZjgzMzRiOTc1NmUyMWY2NDhlNGYwODE5MzFiZGNlMzYzNmY0YjkxOWQzIiwidGFnIjoiIn0=', NULL, 'Neque nulla sed sed .Laborum. Facilis rer.mnasdNeque nulla sed sed .Laborum. Facilis rer.mnasdNeque nulla sed sed .Laborum. Facilis rer.mnasdNeque nulla sed sed .Laborum. Facilis rer.mnasdNeque nulla sed sed .Laborum. Facilis rer.mnasdNeque nulla sed sed .Laborum. Facilis rer.mnasdNeque nulla sed sed .Laborum. Facilis rer.mnasdNeque nulla sed sed .Laborum. Facilis rer.mnasd', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06 15:38:44', '2024-07-06 15:38:44', NULL),
(4, 5, 1, 'SPG-4', 3, NULL, 'Adipisci a', '', NULL, NULL, 'Critical', NULL, 'eyJpdiI6IkdzYUJjQzJqeWlqTEoyWUF5dVlPbmc9PSIsInZhbHVlIjoia3dlZXNMVTl5ejc2WDJoYVc0OUxvWjVsNFUyV1doem9JSXREUEdoelMwMD0iLCJtYWMiOiJiZDRhODkwMGRkZDlkYTI4YzY4NGZhYWFkMTNjOTYwMTBlZGUyYzJjNGMyZDIyZDA2ZmEyYjNhODBiZmViMzE3IiwidGFnIjoiIn0=', NULL, 'Ut aliquam velit, od.Ut aliquam velit, od.Ut aliquam velit, od.Ut aliquam velit, od.Ut aliquam velit, od.Ut aliquam velit, od.Ut aliquam velit, od.Ut aliquam velit, od.', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 00:29:12', '2024-07-08 00:39:10', NULL),
(5, 6, NULL, 'SP-5', 54, NULL, 'Quibusdam', NULL, NULL, NULL, 'Low', NULL, 'eyJpdiI6IlFwWmJqQjV1RCtkcG1pMVZPWCtnVlE9PSIsInZhbHVlIjoiWCtNcjZ3U1ZKZ0dxU3NKYzVwVGpSRWMxVmJoZDYvUjBZSkdwOEQ0WkhDZz0iLCJtYWMiOiJhNjUyNmRjYjlhOWQxZDI3ZTEwMGUzZGI5MGNmNzVjMjUwZDU0NzI1MjY1YTkyMTZjNWFjMmUwYzAzMDQxNzY4IiwidGFnIjoiIn0=', NULL, '<p>Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.</p><p><br></p><p>Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.Qui ut minima duis c.<br></p>', NULL, 'New', 'Replied', NULL, '2024-07-09 17:29:31', NULL, NULL, '2024-07-09 17:29:31', NULL, NULL, '2024-07-10 17:29:31', NULL, NULL, '2024-07-09 12:28:10', '2024-07-09 12:29:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticketsccemails`
--

CREATE TABLE `ticketsccemails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ccemails` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketsccemails`
--

INSERT INTO `ticketsccemails` (`id`, `ticket_id`, `ccemails`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2024-04-28 02:05:20', '2024-04-28 02:05:20'),
(2, 2, NULL, '2024-04-28 02:05:24', '2024-04-28 02:05:24'),
(3, 3, NULL, '2024-07-06 15:38:44', '2024-07-06 15:38:44'),
(4, 4, NULL, '2024-07-08 00:29:12', '2024-07-08 00:29:12'),
(5, 5, NULL, '2024-07-09 12:28:10', '2024-07-09 12:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_customfields`
--

CREATE TABLE `ticket_customfields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `privacymode` bigint(20) UNSIGNED DEFAULT NULL,
  `fieldnames` varchar(255) DEFAULT NULL,
  `fieldtypes` varchar(255) DEFAULT NULL,
  `values` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `utc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`id`, `timezone`, `group`, `utc`, `created_at`, `updated_at`) VALUES
(1, 'Europe/Amsterdam', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(2, 'Europe/Andorra', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(3, 'Europe/Astrakhan', 'Europe', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(4, 'Europe/Athens', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(5, 'Europe/Belgrade', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(6, 'Europe/Berlin', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(7, 'Europe/Bratislava', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(8, 'Europe/Brussels', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(9, 'Europe/Bucharest', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(10, 'Europe/Budapest', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(11, 'Europe/Busingen', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(12, 'Europe/Chisinau', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(13, 'Europe/Copenhagen', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(14, 'Europe/Dublin', 'Europe', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(15, 'Europe/Gibraltar', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(16, 'Europe/Guernsey', 'Europe', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(17, 'Europe/Helsinki', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(18, 'Europe/Isle_of_Man', 'Europe', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(19, 'Europe/Istanbul', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(20, 'Europe/Jersey', 'Europe', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(21, 'Europe/Kaliningrad', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(22, 'Europe/Kiev', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(23, 'Europe/Kirov', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(24, 'Europe/Lisbon', 'Europe', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(25, 'Europe/Ljubljana', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(26, 'Europe/London', 'Europe', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(27, 'Europe/Luxembourg', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(28, 'Europe/Madrid', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(29, 'Europe/Malta', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(30, 'Europe/Mariehamn', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(31, 'Europe/Minsk', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(32, 'Europe/Monaco', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(33, 'Europe/Moscow', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(34, 'Europe/Oslo', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(35, 'Europe/Paris', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(36, 'Europe/Podgorica', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(37, 'Europe/Prague', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(38, 'Europe/Riga', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(39, 'Europe/Rome', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(40, 'Europe/Samara', 'Europe', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(41, 'Europe/San_Marino', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(42, 'Europe/Sarajevo', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(43, 'Europe/Saratov', 'Europe', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(44, 'Europe/Simferopol', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(45, 'Europe/Skopje', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(46, 'Europe/Sofia', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(47, 'Europe/Stockholm', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(48, 'Europe/Tallinn', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(49, 'Europe/Tirane', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(50, 'Europe/Ulyanovsk', 'Europe', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(51, 'Europe/Uzhgorod', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(52, 'Europe/Vaduz', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(53, 'Europe/Vatican', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(54, 'Europe/Vienna', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(55, 'Europe/Vilnius', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(56, 'Europe/Volgograd', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(57, 'Europe/Warsaw', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(58, 'Europe/Zagreb', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(59, 'Europe/Zaporozhye', 'Europe', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(60, 'Europe/Zurich', 'Europe', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(61, 'America/Adak', 'America', '(GMT/UTC -09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(62, 'America/Anchorage', 'America', '(GMT/UTC -08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(63, 'America/Anguilla', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(64, 'America/Antigua', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(65, 'America/Araguaina', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(66, 'America/Argentina/Buenos_Aires', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(67, 'America/Argentina/Catamarca', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(68, 'America/Argentina/Cordoba', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(69, 'America/Argentina/Jujuy', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(70, 'America/Argentina/La_Rioja', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(71, 'America/Argentina/Mendoza', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(72, 'America/Argentina/Rio_Gallegos', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(73, 'America/Argentina/Salta', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(74, 'America/Argentina/San_Juan', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(75, 'America/Argentina/San_Luis', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(76, 'America/Argentina/Tucuman', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(77, 'America/Argentina/Ushuaia', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(78, 'America/Aruba', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(79, 'America/Asuncion', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(80, 'America/Atikokan', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(81, 'America/Bahia', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(82, 'America/Bahia_Banderas', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(83, 'America/Barbados', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(84, 'America/Belem', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(85, 'America/Belize', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(86, 'America/Blanc-Sablon', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(87, 'America/Boa_Vista', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(88, 'America/Bogota', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(89, 'America/Boise', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(90, 'America/Cambridge_Bay', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(91, 'America/Campo_Grande', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(92, 'America/Cancun', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(93, 'America/Caracas', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(94, 'America/Cayenne', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(95, 'America/Cayman', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(96, 'America/Chicago', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(97, 'America/Chihuahua', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(98, 'America/Costa_Rica', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(99, 'America/Creston', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(100, 'America/Cuiaba', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(101, 'America/Curacao', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(102, 'America/Danmarkshavn', 'America', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(103, 'America/Dawson', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(104, 'America/Dawson_Creek', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(105, 'America/Denver', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(106, 'America/Detroit', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(107, 'America/Dominica', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(108, 'America/Edmonton', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(109, 'America/Eirunepe', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(110, 'America/El_Salvador', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(111, 'America/Fort_Nelson', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(112, 'America/Fortaleza', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(113, 'America/Glace_Bay', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(114, 'America/Goose_Bay', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(115, 'America/Grand_Turk', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(116, 'America/Grenada', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(117, 'America/Guadeloupe', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(118, 'America/Guatemala', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(119, 'America/Guayaquil', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(120, 'America/Guyana', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(121, 'America/Halifax', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(122, 'America/Havana', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(123, 'America/Hermosillo', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(124, 'America/Indiana/Indianapolis', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(125, 'America/Indiana/Knox', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(126, 'America/Indiana/Marengo', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(127, 'America/Indiana/Petersburg', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(128, 'America/Indiana/Tell_City', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(129, 'America/Indiana/Vevay', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(130, 'America/Indiana/Vincennes', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(131, 'America/Indiana/Winamac', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(132, 'America/Inuvik', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(133, 'America/Iqaluit', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(134, 'America/Jamaica', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(135, 'America/Juneau', 'America', '(GMT/UTC -08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(136, 'America/Kentucky/Louisville', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(137, 'America/Kentucky/Monticello', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(138, 'America/Kralendijk', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(139, 'America/La_Paz', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(140, 'America/Lima', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(141, 'America/Los_Angeles', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(142, 'America/Lower_Princes', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(143, 'America/Maceio', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(144, 'America/Managua', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(145, 'America/Manaus', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(146, 'America/Marigot', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(147, 'America/Martinique', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(148, 'America/Matamoros', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(149, 'America/Mazatlan', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(150, 'America/Menominee', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(151, 'America/Merida', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(152, 'America/Metlakatla', 'America', '(GMT/UTC -08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(153, 'America/Mexico_City', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(154, 'America/Miquelon', 'America', '(GMT/UTC -02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(155, 'America/Moncton', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(156, 'America/Monterrey', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(157, 'America/Montevideo', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(158, 'America/Montserrat', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(159, 'America/Nassau', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(160, 'America/New_York', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(161, 'America/Nipigon', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(162, 'America/Nome', 'America', '(GMT/UTC -08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(163, 'America/Noronha', 'America', '(GMT/UTC -02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(164, 'America/North_Dakota/Beulah', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(165, 'America/North_Dakota/Center', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(166, 'America/North_Dakota/New_Salem', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(167, 'America/Nuuk', 'America', '(GMT/UTC -02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(168, 'America/Ojinaga', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(169, 'America/Panama', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(170, 'America/Pangnirtung', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(171, 'America/Paramaribo', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(172, 'America/Phoenix', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(173, 'America/Port-au-Prince', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(174, 'America/Port_of_Spain', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(175, 'America/Porto_Velho', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(176, 'America/Puerto_Rico', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(177, 'America/Punta_Arenas', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(178, 'America/Rainy_River', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(179, 'America/Rankin_Inlet', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(180, 'America/Recife', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(181, 'America/Regina', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(182, 'America/Resolute', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(183, 'America/Rio_Branco', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(184, 'America/Santarem', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(185, 'America/Santiago', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(186, 'America/Santo_Domingo', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(187, 'America/Sao_Paulo', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(188, 'America/Scoresbysund', 'America', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(189, 'America/Sitka', 'America', '(GMT/UTC -08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(190, 'America/St_Barthelemy', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(191, 'America/St_Johns', 'America', '(GMT/UTC -02:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(192, 'America/St_Kitts', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(193, 'America/St_Lucia', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(194, 'America/St_Thomas', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(195, 'America/St_Vincent', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(196, 'America/Swift_Current', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(197, 'America/Tegucigalpa', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(198, 'America/Thule', 'America', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(199, 'America/Thunder_Bay', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(200, 'America/Tijuana', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(201, 'America/Toronto', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(202, 'America/Tortola', 'America', '(GMT/UTC -04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(203, 'America/Vancouver', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(204, 'America/Whitehorse', 'America', '(GMT/UTC -07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(205, 'America/Winnipeg', 'America', '(GMT/UTC -05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(206, 'America/Yakutat', 'America', '(GMT/UTC -08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(207, 'America/Yellowknife', 'America', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(208, 'Indian/Antananarivo', 'Indian', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(209, 'Indian/Chagos', 'Indian', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(210, 'Indian/Christmas', 'Indian', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(211, 'Indian/Cocos', 'Indian', '(GMT/UTC +06:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(212, 'Indian/Comoro', 'Indian', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(213, 'Indian/Kerguelen', 'Indian', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(214, 'Indian/Mahe', 'Indian', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(215, 'Indian/Maldives', 'Indian', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(216, 'Indian/Mauritius', 'Indian', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(217, 'Indian/Mayotte', 'Indian', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(218, 'Indian/Reunion', 'Indian', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(219, 'Australia/Adelaide', 'Australia', '(GMT/UTC +09:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(220, 'Australia/Brisbane', 'Australia', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(221, 'Australia/Broken_Hill', 'Australia', '(GMT/UTC +09:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(222, 'Australia/Darwin', 'Australia', '(GMT/UTC +09:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(223, 'Australia/Eucla', 'Australia', '(GMT/UTC +08:45)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(224, 'Australia/Hobart', 'Australia', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(225, 'Australia/Lindeman', 'Australia', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(226, 'Australia/Lord_Howe', 'Australia', '(GMT/UTC +10:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(227, 'Australia/Melbourne', 'Australia', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(228, 'Australia/Perth', 'Australia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(229, 'Australia/Sydney', 'Australia', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(230, 'Asia/Aden', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(231, 'Asia/Almaty', 'Asia', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(232, 'Asia/Amman', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(233, 'Asia/Anadyr', 'Asia', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(234, 'Asia/Aqtau', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(235, 'Asia/Aqtobe', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(236, 'Asia/Ashgabat', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(237, 'Asia/Atyrau', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(238, 'Asia/Baghdad', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(239, 'Asia/Bahrain', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(240, 'Asia/Baku', 'Asia', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(241, 'Asia/Bangkok', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(242, 'Asia/Barnaul', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(243, 'Asia/Beirut', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(244, 'Asia/Bishkek', 'Asia', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(245, 'Asia/Brunei', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(246, 'Asia/Chita', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(247, 'Asia/Choibalsan', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(248, 'Asia/Colombo', 'Asia', '(GMT/UTC +05:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(249, 'Asia/Damascus', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(250, 'Asia/Dhaka', 'Asia', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(251, 'Asia/Dili', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(252, 'Asia/Dubai', 'Asia', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(253, 'Asia/Dushanbe', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(254, 'Asia/Famagusta', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(255, 'Asia/Gaza', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(256, 'Asia/Hebron', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(257, 'Asia/Ho_Chi_Minh', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(258, 'Asia/Hong_Kong', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(259, 'Asia/Hovd', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(260, 'Asia/Irkutsk', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(261, 'Asia/Jakarta', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(262, 'Asia/Jayapura', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(263, 'Asia/Jerusalem', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(264, 'Asia/Kabul', 'Asia', '(GMT/UTC +04:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(265, 'Asia/Kamchatka', 'Asia', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(266, 'Asia/Karachi', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(267, 'Asia/Kathmandu', 'Asia', '(GMT/UTC +05:45)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(268, 'Asia/Khandyga', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(269, 'Asia/Kolkata', 'Asia', '(GMT/UTC +05:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(270, 'Asia/Krasnoyarsk', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(271, 'Asia/Kuala_Lumpur', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(272, 'Asia/Kuching', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(273, 'Asia/Kuwait', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(274, 'Asia/Macau', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(275, 'Asia/Magadan', 'Asia', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(276, 'Asia/Makassar', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(277, 'Asia/Manila', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(278, 'Asia/Muscat', 'Asia', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(279, 'Asia/Nicosia', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(280, 'Asia/Novokuznetsk', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(281, 'Asia/Novosibirsk', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(282, 'Asia/Omsk', 'Asia', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(283, 'Asia/Oral', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(284, 'Asia/Phnom_Penh', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(285, 'Asia/Pontianak', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(286, 'Asia/Pyongyang', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(287, 'Asia/Qatar', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(288, 'Asia/Qostanay', 'Asia', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(289, 'Asia/Qyzylorda', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(290, 'Asia/Riyadh', 'Asia', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(291, 'Asia/Sakhalin', 'Asia', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(292, 'Asia/Samarkand', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(293, 'Asia/Seoul', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(294, 'Asia/Shanghai', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(295, 'Asia/Singapore', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(296, 'Asia/Srednekolymsk', 'Asia', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(297, 'Asia/Taipei', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(298, 'Asia/Tashkent', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(299, 'Asia/Tbilisi', 'Asia', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(300, 'Asia/Tehran', 'Asia', '(GMT/UTC +04:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(301, 'Asia/Thimphu', 'Asia', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(302, 'Asia/Tokyo', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(303, 'Asia/Tomsk', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(304, 'Asia/Ulaanbaatar', 'Asia', '(GMT/UTC +08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(305, 'Asia/Urumqi', 'Asia', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(306, 'Asia/Ust-Nera', 'Asia', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(307, 'Asia/Vientiane', 'Asia', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(308, 'Asia/Vladivostok', 'Asia', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(309, 'Asia/Yakutsk', 'Asia', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(310, 'Asia/Yangon', 'Asia', '(GMT/UTC +06:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(311, 'Asia/Yekaterinburg', 'Asia', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(312, 'Asia/Yerevan', 'Asia', '(GMT/UTC +04:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(313, 'Africa/Abidjan', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(314, 'Africa/Accra', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(315, 'Africa/Addis_Ababa', 'Africa', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(316, 'Africa/Algiers', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(317, 'Africa/Asmara', 'Africa', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(318, 'Africa/Bamako', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(319, 'Africa/Bangui', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(320, 'Africa/Banjul', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(321, 'Africa/Bissau', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(322, 'Africa/Blantyre', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(323, 'Africa/Brazzaville', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(324, 'Africa/Bujumbura', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(325, 'Africa/Cairo', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(326, 'Africa/Casablanca', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(327, 'Africa/Ceuta', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(328, 'Africa/Conakry', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(329, 'Africa/Dakar', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(330, 'Africa/Dar_es_Salaam', 'Africa', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(331, 'Africa/Djibouti', 'Africa', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(332, 'Africa/Douala', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(333, 'Africa/El_Aaiun', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(334, 'Africa/Freetown', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(335, 'Africa/Gaborone', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(336, 'Africa/Harare', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(337, 'Africa/Johannesburg', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(338, 'Africa/Juba', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(339, 'Africa/Kampala', 'Africa', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(340, 'Africa/Khartoum', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(341, 'Africa/Kigali', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(342, 'Africa/Kinshasa', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(343, 'Africa/Lagos', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(344, 'Africa/Libreville', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(345, 'Africa/Lome', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(346, 'Africa/Luanda', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(347, 'Africa/Lubumbashi', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(348, 'Africa/Lusaka', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(349, 'Africa/Malabo', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(350, 'Africa/Maputo', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(351, 'Africa/Maseru', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(352, 'Africa/Mbabane', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(353, 'Africa/Mogadishu', 'Africa', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(354, 'Africa/Monrovia', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(355, 'Africa/Nairobi', 'Africa', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(356, 'Africa/Ndjamena', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(357, 'Africa/Niamey', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(358, 'Africa/Nouakchott', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(359, 'Africa/Ouagadougou', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(360, 'Africa/Porto-Novo', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(361, 'Africa/Sao_Tome', 'Africa', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(362, 'Africa/Tripoli', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(363, 'Africa/Tunis', 'Africa', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(364, 'Africa/Windhoek', 'Africa', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(365, 'Antarctica/Casey', 'Antarctica', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(366, 'Antarctica/Davis', 'Antarctica', '(GMT/UTC +07:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(367, 'Antarctica/DumontDUrville', 'Antarctica', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(368, 'Antarctica/Macquarie', 'Antarctica', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(369, 'Antarctica/Mawson', 'Antarctica', '(GMT/UTC +05:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(370, 'Antarctica/McMurdo', 'Antarctica', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(371, 'Antarctica/Palmer', 'Antarctica', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(372, 'Antarctica/Rothera', 'Antarctica', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(373, 'Antarctica/Syowa', 'Antarctica', '(GMT/UTC +03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(374, 'Antarctica/Troll', 'Antarctica', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(375, 'Antarctica/Vostok', 'Antarctica', '(GMT/UTC +06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(376, 'Arctic/Longyearbyen', 'Arctic', '(GMT/UTC +02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(377, 'Atlantic/Azores', 'Atlantic', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(378, 'Atlantic/Bermuda', 'Atlantic', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(379, 'Atlantic/Canary', 'Atlantic', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(380, 'Atlantic/Cape_Verde', 'Atlantic', '(GMT/UTC -01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(381, 'Atlantic/Faroe', 'Atlantic', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(382, 'Atlantic/Madeira', 'Atlantic', '(GMT/UTC +01:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(383, 'Atlantic/Reykjavik', 'Atlantic', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(384, 'Atlantic/South_Georgia', 'Atlantic', '(GMT/UTC -02:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(385, 'Atlantic/St_Helena', 'Atlantic', '(GMT/UTC +00:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(386, 'Atlantic/Stanley', 'Atlantic', '(GMT/UTC -03:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(387, 'Pacific/Apia', 'Pacific', '(GMT/UTC +13:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(388, 'Pacific/Auckland', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(389, 'Pacific/Bougainville', 'Pacific', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(390, 'Pacific/Chatham', 'Pacific', '(GMT/UTC +12:45)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(391, 'Pacific/Chuuk', 'Pacific', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(392, 'Pacific/Easter', 'Pacific', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(393, 'Pacific/Efate', 'Pacific', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(394, 'Pacific/Fakaofo', 'Pacific', '(GMT/UTC +13:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(395, 'Pacific/Fiji', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(396, 'Pacific/Funafuti', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(397, 'Pacific/Galapagos', 'Pacific', '(GMT/UTC -06:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(398, 'Pacific/Gambier', 'Pacific', '(GMT/UTC -09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(399, 'Pacific/Guadalcanal', 'Pacific', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(400, 'Pacific/Guam', 'Pacific', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(401, 'Pacific/Honolulu', 'Pacific', '(GMT/UTC -10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(402, 'Pacific/Kanton', 'Pacific', '(GMT/UTC +13:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(403, 'Pacific/Kiritimati', 'Pacific', '(GMT/UTC +14:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(404, 'Pacific/Kosrae', 'Pacific', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(405, 'Pacific/Kwajalein', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(406, 'Pacific/Majuro', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(407, 'Pacific/Marquesas', 'Pacific', '(GMT/UTC -09:30)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(408, 'Pacific/Midway', 'Pacific', '(GMT/UTC -11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(409, 'Pacific/Nauru', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(410, 'Pacific/Niue', 'Pacific', '(GMT/UTC -11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(411, 'Pacific/Norfolk', 'Pacific', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(412, 'Pacific/Noumea', 'Pacific', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(413, 'Pacific/Pago_Pago', 'Pacific', '(GMT/UTC -11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(414, 'Pacific/Palau', 'Pacific', '(GMT/UTC +09:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(415, 'Pacific/Pitcairn', 'Pacific', '(GMT/UTC -08:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(416, 'Pacific/Pohnpei', 'Pacific', '(GMT/UTC +11:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(417, 'Pacific/Port_Moresby', 'Pacific', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(418, 'Pacific/Rarotonga', 'Pacific', '(GMT/UTC -10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(419, 'Pacific/Saipan', 'Pacific', '(GMT/UTC +10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(420, 'Pacific/Tahiti', 'Pacific', '(GMT/UTC -10:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(421, 'Pacific/Tarawa', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(422, 'Pacific/Tongatapu', 'Pacific', '(GMT/UTC +13:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(423, 'Pacific/Wake', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(424, 'Pacific/Wallis', 'Pacific', '(GMT/UTC +12:00)', '2024-04-28 02:00:29', '2024-04-28 02:00:29'),
(425, 'UTC', 'UTC', '', '2024-04-28 02:00:29', '2024-04-28 02:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `offset` varchar(255) NOT NULL,
  `diff_from_gtm` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translates`
--

CREATE TABLE `translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(3) NOT NULL,
  `group_langname` varchar(255) NOT NULL DEFAULT 'general',
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translates`
--

INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'menu', 'Dashboard', 'Dashboard', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(2, 'en', 'menu', 'Profile', 'Profile', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(3, 'en', 'menu', 'All Tickets', 'All Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(4, 'en', 'menu', 'Recent Tickets', 'Recent Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(5, 'en', 'menu', 'Total Tickets', 'Total Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(6, 'en', 'menu', 'Total Active Tickets', 'Total Active Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(7, 'en', 'menu', 'Total Closed Tickets', 'Total Closed Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(8, 'en', 'menu', 'Total On-Hold Tickets', 'Total On-Hold Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(9, 'en', 'menu', 'Total Overdue Tickets', 'Total Overdue Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(10, 'en', 'menu', 'Total Assigned Tickets', 'Total Assigned Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(11, 'en', 'menu', 'My Tickets', 'My Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(12, 'en', 'menu', 'Self Assigned Tickets', 'Self Assigned Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(13, 'en', 'menu', 'Assigned Tickets', 'Assigned Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(14, 'en', 'menu', 'My Assigned Tickets', 'My Assigned Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(15, 'en', 'menu', 'My Closed Tickets', 'My Closed Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(16, 'en', 'menu', 'Categories', 'Categories', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(17, 'en', 'menu', 'Main Categories', 'Main Categories', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(18, 'en', 'menu', 'SubCategory', 'SubCategory', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(19, 'en', 'menu', 'Knowledge', 'Knowledge', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(20, 'en', 'menu', 'Articles', 'Articles', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(21, 'en', 'menu', 'Projects', 'Projects', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(22, 'en', 'menu', 'Trashed Tickets', 'Trashed Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(23, 'en', 'menu', 'Faq Category', 'Faq Category', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(24, 'en', 'menu', 'Manage Roles', 'Manage Roles', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(25, 'en', 'menu', 'Roles & Permissions', 'Roles & Permissions', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(26, 'en', 'menu', 'Create Employee', 'Create Employee', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(27, 'en', 'menu', 'Employees List', 'Employees List', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(28, 'en', 'menu', 'Landing Page Settings', 'Landing Page Settings', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(29, 'en', 'menu', 'Banner', 'Banner', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(30, 'en', 'menu', 'Feature Box', 'Feature Box', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(31, 'en', 'menu', 'Call To Action', 'Call To Action', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(32, 'en', 'menu', 'Testmonial', 'Testmonial', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(33, 'en', 'menu', 'FAQ’s', 'FAQ’s', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(34, 'en', 'menu', 'Customers', 'Customers', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(35, 'en', 'menu', 'Canned Response', 'Canned Response', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(36, 'en', 'menu', 'Envato', 'Envato', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(37, 'en', 'menu', 'Envato API Token', 'Envato API Token', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(38, 'en', 'menu', 'Envato License Verification', 'Envato License Verification', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(39, 'en', 'menu', 'App Info', 'App Info', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(40, 'en', 'menu', 'App Purchase Code', 'App Purchase Code', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(41, 'en', 'menu', 'Groups', 'Groups', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(42, 'en', 'menu', 'Create Group', 'Create Group', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(43, 'en', 'menu', 'Groups List', 'Groups List', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(44, 'en', 'menu', 'Notifications', 'Notifications', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(45, 'en', 'menu', 'All Notifications', 'All Notifications', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(46, 'en', 'menu', 'Custom Notifications', 'Custom Notifications', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(47, 'en', 'menu', 'Custom Pages', 'Custom Pages', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(48, 'en', 'menu', 'Pages', 'Pages', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(49, 'en', 'menu', '404 Error Page', '404 Error Page', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(50, 'en', 'menu', 'Under Maintenance Page', 'Under Maintenance Page', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(51, 'en', 'menu', 'Bussiness Hours', 'Bussiness Hours', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(52, 'en', 'menu', 'App Setting', 'App Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(53, 'en', 'menu', 'General Setting', 'General Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(54, 'en', 'menu', 'Ticket Setting', 'Ticket Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(55, 'en', 'menu', 'SEO', 'SEO', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(56, 'en', 'menu', 'Google Analytics', 'Google Analytics', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(57, 'en', 'menu', 'Custom CSS & JS', 'Custom CSS & JS', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(58, 'en', 'menu', 'Captcha Setting', 'Captcha Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(59, 'en', 'menu', 'Social Logins', 'Social Logins', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(60, 'en', 'menu', 'Email Setting', 'Email Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(61, 'en', 'menu', 'External Chat', 'External Chat', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(62, 'en', 'menu', 'Maintenance Mode', 'Maintenance Mode', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(63, 'en', 'menu', 'Security Setting', 'Security Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(64, 'en', 'menu', 'IP List', 'IP List', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(65, 'en', 'menu', 'Email to Tickets', 'Email to Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(66, 'en', 'menu', 'Announcements', 'Announcements', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(67, 'en', 'menu', 'Email Templates', 'Email Templates', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(68, 'en', 'menu', 'Clear Cache', 'Clear Cache', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(69, 'en', 'menu', 'Custom Field', 'Custom Field', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(70, 'en', 'menu', 'Languages', 'Languages', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(71, 'en', 'menu', 'Create Ticket', 'Create Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(72, 'en', 'menu', 'Home Page', 'Home Page', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(73, 'en', 'menu', 'Profile', 'Profile', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(74, 'en', 'menu', 'Logout', 'Logout', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(75, 'en', 'menu', 'Home', 'Home', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(76, 'en', 'menu', 'Contact Us', 'Contact Us', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(77, 'en', 'menu', 'Tickets', 'Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(78, 'en', 'menu', 'Login', 'Login', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(79, 'en', 'menu', 'Register', 'Register', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(80, 'en', 'menu', 'Submit Ticket', 'Submit Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(81, 'en', 'menu', 'Edit Profile', 'Edit Profile', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(82, 'en', 'menu', 'Active Tickets', 'Active Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(83, 'en', 'menu', 'Closed Tickets', 'Closed Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(84, 'en', 'menu', 'On-Hold Tickets', 'On-Hold Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(85, 'en', 'notification', 'New Notifications', 'New Notifications', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(86, 'en', 'notification', 'Mark all as read', 'Mark all as read', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(87, 'en', 'notification', 'A new ticket has been created', 'A new ticket has been created', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(88, 'en', 'notification', 'Ticket is assigned', 'Ticket is assigned', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(89, 'en', 'notification', 'This ticket has been closed', 'This ticket has been closed', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(90, 'en', 'notification', 'This ticket status is On-Hold', 'This ticket status is On-Hold', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(91, 'en', 'notification', 'This ticket has been reopened', 'This ticket has been reopened', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(92, 'en', 'notification', 'You got a new reply on this ticket', 'You got a new reply on this ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(93, 'en', 'notification', 'This ticket status is overdue', 'This ticket status is overdue', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(94, 'en', 'notification', 'There are no new notifications to display', 'There are no new notifications to display', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(95, 'en', 'notification', 'See All Notifications', 'See All Notifications', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(96, 'en', 'notification', 'Your new ticket has been created', 'Your new ticket has been created', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(97, 'en', 'notification', 'Your ticket has been closed', 'Your ticket has been closed', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(98, 'en', 'notification', 'Your ticket status is On-Hold', 'Your ticket status is On-Hold', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(99, 'en', 'notification', 'Your ticket has been Reopened', 'Your ticket has been Reopened', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(100, 'en', 'notification', 'You got a new reply on this ticket', 'You got a new reply on this ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(101, 'en', 'notification', 'Your ticket status is overdue', 'Your ticket status is overdue', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(102, 'en', 'notification', 'Filter Notifications', 'Filter Notifications', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(103, 'en', 'notification', 'Sort by Status', 'Sort by Status', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(104, 'en', 'notification', 'New Tickets', 'New Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(105, 'en', 'notification', 'Closed Tickets', 'Closed Ticketss', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(106, 'en', 'notification', 'On-Hold Tickets', 'On-Hold Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(107, 'en', 'notification', 'Overdue Tickets', 'Overdue Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(108, 'en', 'notification', 'Re-Open Tickets', 'Re-Open Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(109, 'en', 'notification', 'Inprogress Tickets', 'Inprogress Tickets', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(110, 'en', 'notification', 'Custom Notifications', 'Custom Notifications', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(111, 'en', 'notification', 'New Ticket', 'New Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(112, 'en', 'notification', 'Closed Ticket', 'Closed Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(113, 'en', 'notification', 'On-Hold Ticket', 'On-Hold Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(114, 'en', 'notification', 'Overdue Ticket', 'Overdue Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(115, 'en', 'notification', 'Re-Open Ticket', 'Re-Open Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(116, 'en', 'notification', 'Inprogress Ticket', 'Inprogress Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(117, 'en', 'alerts', 'We have e-mailed your password reset link!', 'We have e-mailed your password reset link!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(118, 'en', 'alerts', 'Your Account is Inactive. Please Contact to Admin.', 'Your Account is Inactive. Please Contact to Admin.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(119, 'en', 'alerts', 'Your Account is Not Verified.', 'Your Account is Not Verified.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(120, 'en', 'alerts', 'Your password has been changed!', 'Your password has been changed!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(121, 'en', 'alerts', 'An announcement has been successfully updated.', 'An announcement has been successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(122, 'en', 'alerts', 'The announcement was successfully deleted.', 'The announcement was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(123, 'en', 'alerts', 'Updated successfully', 'Updated successfully', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(124, 'en', 'alerts', 'The ticket was successfully assigned.', 'The ticket was successfully assigned.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(125, 'en', 'alerts', 'Deleted successfully', 'Deleted successfully', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(126, 'en', 'alerts', 'Please check the format and size of the file.', 'Please check the format and size of the file.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(127, 'en', 'alerts', 'Your profile has been successfully updated.', 'Your profile has been successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(128, 'en', 'alerts', 'The profile image was successfully removed.', 'The profile image was successfully removed.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(129, 'en', 'alerts', 'A new customer was successfully added.', 'A new customer was successfully added.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(130, 'en', 'alerts', 'The customer profile was successfully updated.', 'The customer profile was successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(131, 'en', 'alerts', 'The account has been deactivated.', 'The account has been deactivated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(132, 'en', 'alerts', 'The customer was deleted successfully.', 'The customer was deleted successfully.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(133, 'en', 'alerts', 'A test email was sent successfully.', 'A test email was sent successfully.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(134, 'en', 'alerts', 'The test email couldn’t be sent.', 'The test email couldn’t be sent.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(135, 'en', 'alerts', 'The ticket has been closed.', 'The ticket has been closed.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(136, 'en', 'alerts', 'The ticket was successfully deleted.', 'The ticket was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(137, 'en', 'alerts', 'A ticket has been opened with the ticket ID.', 'A ticket has been opened with the ticket ID.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(138, 'en', 'alerts', 'Domain is Blocked List', 'Domain is Blocked List', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(139, 'en', 'alerts', 'The note was successfully submitted.', 'The note was successfully submitted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(140, 'en', 'alerts', 'The note was successfully deleted.', 'The note was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(141, 'en', 'alerts', 'The ticket was successfully restore.', 'The ticket was successfully restore.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(142, 'en', 'alerts', 'A new employee was successfully added.', 'A new employee was successfully added.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(143, 'en', 'alerts', 'The employee’s profile was successfully updated.', 'The employee’s profile was successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(144, 'en', 'alerts', 'The employee was successfully deleted.', 'The employee was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(145, 'en', 'alerts', 'The employee list was imported successfully.', 'The employee list was imported successfully.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(146, 'en', 'alerts', 'The password has been successfully changed!', 'The password has been successfully changed!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(147, 'en', 'alerts', 'A new article was successfully created.', 'A new article was successfully created.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(148, 'en', 'alerts', 'This article has been successfully updated.', 'This article has been successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(149, 'en', 'alerts', 'The article was successfully deleted.', 'The article was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(150, 'en', 'alerts', 'Cannot Update the data', 'Cannot Update the data', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(151, 'en', 'alerts', 'The category was successfully updated.', 'The category was successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(152, 'en', 'alerts', 'The category was successfully deleted.', 'The category was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(153, 'en', 'alerts', 'The subcategory was successfully updated.', 'The subcategory was successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(154, 'en', 'alerts', 'The subcategory was successfully deleted.', 'The subcategory was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(155, 'en', 'alerts', 'Your new password can not be the same as your old password. Please choose a new password.', 'Your new password can not be the same as your old password. Please choose a new password.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(156, 'en', 'alerts', 'The current password does not match!', 'The current password does not match!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(157, 'en', 'alerts', 'The response to the ticket was successful.', 'The response to the ticket was successful.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(158, 'en', 'alerts', 'The ticket has been successfully reopened.', 'The ticket has been successfully reopened.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(159, 'en', 'alerts', 'The FAQ has been successfully updated.', 'The FAQ has been successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(160, 'en', 'alerts', 'The FAQ has been successfully deleted.', 'The FAQ has been successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(161, 'en', 'alerts', 'Featurebox Updated successfully', 'Featurebox Updated successfully', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(162, 'en', 'alerts', 'Featurebox Updated successfully', 'Featurebox Updated successfully', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(163, 'en', 'alerts', 'A group was successfully created.', 'A group was successfully created.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(164, 'en', 'alerts', 'The group updated successfully.', 'The group updated successfully.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(165, 'en', 'alerts', 'The group deleted successfully.', 'The group deleted successfully.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(166, 'en', 'alerts', 'The IP address was successfully created and updated.', 'The IP address was successfully created and updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(167, 'en', 'alerts', 'The IP address has been successfully removed.', 'The IP address has been successfully removed.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(168, 'en', 'alerts', 'A custom notification was successfully sent to the customer.', 'A custom notification was successfully sent to the customer.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(169, 'en', 'alerts', 'A custom notification was successfully sent to the employee.', 'A custom notification was successfully sent to the employee.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(170, 'en', 'alerts', '\"Custom notification\" was successfully deleted.', '\"Custom notification\" was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(171, 'en', 'alerts', 'Role updated successfully', 'Role updated successfully', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(172, 'en', 'alerts', 'The project has been updated successfully.', 'The project has been updated successfully.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(173, 'en', 'alerts', 'The project was successfully deleted.', 'The project was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(174, 'en', 'alerts', 'The projects were successfully assigned.', 'The projects were successfully assigned.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(175, 'en', 'alerts', 'Projects have not been assigned.', 'Projects have not been assigned.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(176, 'en', 'alerts', 'The project list was imported successfully.', 'The project list was imported successfully.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(177, 'en', 'alerts', 'The role was successfully created.', 'The role was successfully created.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(178, 'en', 'alerts', 'The role has been successfully updated.', 'The role has been successfully updated.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(179, 'en', 'alerts', 'You are not supposed to block your own country.', 'You are not supposed to block your own country.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(180, 'en', 'alerts', 'The language has been successfully updated', 'The language has been successfully updated', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(181, 'en', 'alerts', 'The testimonial has been successfully updated', 'The testimonial has been successfully updated', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(182, 'en', 'alerts', 'The testimonial to was successfully deleted.', 'The testimonial to was successfully deleted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(183, 'en', 'alerts', 'Thank you for contacting us!', 'Thank you for contacting us!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(184, 'en', 'alerts', 'Password successfully changed!', 'Password successfully changed!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(185, 'en', 'alerts', 'Current password does not match!', 'Current password does not match!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(186, 'en', 'alerts', 'Your email has not been verified. Please verify your email.', 'Your email has not been verified. Please verify your email.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(187, 'en', 'alerts', 'This email is not registered.', 'This email is not registered.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(188, 'en', 'alerts', 'Invalid email or password', 'Invalid email or password', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(189, 'en', 'alerts', 'Techincal Issue', 'Techincal Issue', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(190, 'en', 'alerts', 'The email verification link was successfully sent. Please check and verify your email.', 'The email verification link was successfully sent. Please check and verify your email.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(191, 'en', 'alerts', 'Your e-mail has been verified. You can now login.', 'Your e-mail has been verified. You can now login.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(192, 'en', 'alerts', 'Your e-mail has already been verified. You can now login.', 'Your e-mail has already been verified. You can now login.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(193, 'en', 'alerts', 'Sorry, your email could not be determined.', 'Sorry, your email could not be determined.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(194, 'en', 'alerts', 'Your account has been deleted!', 'Your account has been deleted!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(195, 'en', 'alerts', 'The ticket has been already closed.', 'The ticket has been already closed.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(196, 'en', 'alerts', 'The image has been deleted successfully!', 'The image has been deleted successfully!', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(197, 'en', 'alerts', 'You already rating has submitted.', 'You already rating has submitted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(198, 'en', 'alerts', 'Thank you for rating us.', 'Thank you for rating us.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(199, 'en', 'alerts', 'The purchase code has been verified, but your product support has expired.', 'The purchase code has been verified, but your product support has expired.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(200, 'en', 'alerts', 'The purchase code has been validated and is supported.', 'The purchase code has been validated and is supported.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(201, 'en', 'alerts', 'The Purchase Code is invalid.', 'The Purchase Code is invalid.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(202, 'en', 'alerts', 'Your comment has be submitted.', 'Your comment has be submitted.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(203, 'en', 'alerts', 'Please check your Email', 'Please check your Email', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(204, 'en', 'alerts', 'Email is already registered, Please login to Create a Ticket', 'Email is already registered, Please login to Create a Ticket', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(205, 'en', 'alerts', 'Please select at least one check box.', 'Please select at least one check box.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(206, 'en', 'alerts', 'Category name already exists', 'Category name already exists', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(207, 'en', 'alerts', 'SubCategory name already exists', 'SubCategory name already exists', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(208, 'en', 'alerts', 'Setting Not Updated', 'Setting Not Updated', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(209, 'en', 'alerts', 'Project Name is Already Exists', 'Project Name is Already Exists', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(210, 'en', 'alerts', 'Are you sure you want to continue?', 'Are you sure you want to continue?', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(211, 'en', 'alerts', 'This might erase your records permanently', 'This might erase your records permanently', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(212, 'en', 'alerts', 'Are you sure you want to unassign this agent?', 'Are you sure you want to unassign this agent?', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(213, 'en', 'alerts', 'This agent may no longer exist for this ticket.', 'This agent may no longer exist for this ticket.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(214, 'en', 'alerts', 'Are you sure you want to reset this record?', 'Are you sure you want to reset this record?', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(215, 'en', 'alerts', 'Are you sure you want to remove the profile image?', 'Are you sure you want to remove the profile image?', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(216, 'en', 'setting', 'App Title & Logos', 'App Title & Logos', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(217, 'en', 'setting', 'Upload Light-Logo', 'Upload Light-Logo', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(218, 'en', 'setting', 'Upload Dark-Logo', 'Upload Dark-Logo', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(219, 'en', 'setting', 'Upload Dark-Icon', 'Upload Dark-Icon', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(220, 'en', 'setting', 'Upload Light-Icon', 'Upload Light-Icon', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(221, 'en', 'setting', 'Upload Favicon', 'Upload Favicon', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(222, 'en', 'setting', 'Set URL', 'Set URL', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(223, 'en', 'setting', 'Terms of service URL', 'Terms of service URL', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(224, 'en', 'setting', 'Color Setting', 'Color Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(225, 'en', 'setting', 'Primary Color', 'Primary Color', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(226, 'en', 'setting', 'Secondary Color', 'Secondary Color', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(227, 'en', 'setting', 'Global Language Setting', 'Global Language Setting', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(228, 'en', 'setting', 'Select Language', 'Select Language', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(229, 'en', 'setting', 'Global Date & Time Format', 'Global Date & Time Format', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(230, 'en', 'setting', 'Select Date Format', 'Select Date Format', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(231, 'en', 'setting', 'Select Time Format', 'Select Time Format', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(232, 'en', 'setting', 'First Day of the Week', 'First Day of the Week', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(233, 'en', 'setting', 'Select Day', 'Select Day', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(234, 'en', 'setting', 'Global Timezones', 'Global Timezones', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(235, 'en', 'setting', 'Select Global Timezones', 'Select Global Timezones', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(236, 'en', 'setting', 'App Global Settings', 'App Global Settings', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(237, 'en', 'setting', 'Enable Personal Setting For Admin Panel', 'Enable Personal Setting For Admin Panel', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(238, 'en', 'setting', 'If you disable this setting, the \"Personal Setting\" with the \"Switch to Dark-Mode\" option will disappear from the Admin panel on the profile page.', 'If you disable this setting, the \"Personal Setting\" with the \"Switch to Dark-Mode\" option will disappear from the Admin panel on the profile page.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(239, 'en', 'setting', 'Enable Personal Setting For Customer Panel', 'Enable Personal Setting For Customer Panel', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(240, 'en', 'setting', 'If you enable this setting, it will appear on all customer panels on the profile page with the \"Switch to Dark-Mode\" option. And global \"Dark-Mode', 'If you enable this setting, it will appear on all customer panels on the profile page with the \"Switch to Dark-Mode\" option. And global \"Dark-Mode', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(241, 'en', 'setting', 'Enable Dark-Mode', 'Enable Dark-Mode', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(242, 'en', 'setting', 'If you enable this setting, the whole application will convert into \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', 'If you enable this setting, the whole application will convert into \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(243, 'en', 'setting', 'Enable Popup Register/Login', 'Enable Popup Register/Login', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(244, 'en', 'setting', 'If you enable this setting, only customers can access the registration and login forms with the “popup modal”.', 'If you enable this setting, only customers can access the registration and login forms with the “popup modal”.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(245, 'en', 'setting', 'Disable Register', 'Disable Register', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(246, 'en', 'setting', 'If you enable this setting, \"Register\" options will disappear from the application in the header section, and new visitors wont be able to register', 'If you enable this setting, \"Register\" options will disappear from the application in the header section, and new visitors wont be able to register', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(247, 'en', 'setting', 'Disable Google Font', 'Disable Google Font', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(248, 'en', 'setting', 'If you enable this setting, \"Google Font\" will not apply to the whole application or site.', 'If you enable this setting, \"Google Font\" will not apply to the whole application or site.', '2024-04-28 02:00:36', '2024-04-28 02:00:36'),
(249, 'en', 'setting', 'Enable Force SSL (https)', 'Enable Force SSL (https)', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(250, 'en', 'setting', 'If you enable this setting, it will make your web application secure using \"force SSL\" when it is not secure, even if your domain is certified with an SSL certificate.', 'If you enable this setting, it will make your web application secure using \"force SSL\" when it is not secure, even if your domain is certified with an SSL certificate.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(251, 'en', 'setting', 'Enable Knowledge', 'Enable Knowledge', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(252, 'en', 'setting', 'If you disable this setting, the \"Knowledge\" option will disappear from the application in the header section.', 'If you disable this setting, the \"Knowledge\" option will disappear from the application in the header section.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(253, 'en', 'setting', 'Enable Faq', 'Enable Faq', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(254, 'en', 'setting', 'If you disable this setting, the \"faq\" option will disappear from the application in the header section.', 'If you disable this setting, the \"faq\" option will disappear from the application in the header section.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(255, 'en', 'setting', 'Enable Contact Us', 'Enable Contact Us', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(256, 'en', 'setting', 'If you disable this setting, the \"Contact\" option will disappear from the application in the header section.', 'If you disable this setting, the \"Contact\" option will disappear from the application in the header section.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(257, 'en', 'setting', 'Enable Customer Profile Image Upload', 'Enable Customer Profile Image Upload', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(258, 'en', 'setting', 'If you disable this setting, the \"Upload file\" option will disappear from the customers profile page, and they wont be able to upload their profile picture.', 'If you disable this setting, the \"Upload file\" option will disappear from the customers profile page, and they wont be able to upload their profile picture.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(259, 'en', 'setting', 'Envato On', 'Envato On', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(260, 'en', 'setting', 'If you disable this Envato switch, the \"Envato\" option will disappear from the application’s side menu.', 'If you disable this Envato switch, the \"Envato\" option will disappear from the application’s side menu.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(261, 'en', 'setting', 'Envato Expired On', 'Envato Expired On', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(262, 'en', 'setting', 'An expired license cannot be used by \"customers\" or \"guests\" if you enable this Envato Expired switch.', 'An expired license cannot be used by \"customers\" or \"guests\" if you enable this Envato Expired switch.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(263, 'en', 'setting', 'Purchase code enable to agent', 'Purchase code enable to agent', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(264, 'en', 'setting', 'If you enable this, employees can see the purchase code.', 'If you enable this, employees can see the purchase code.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(265, 'en', 'setting', 'Default Login', 'Default Login', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(266, 'en', 'setting', 'If you enable it will be a login page is default', 'If you enable it will be a login page is default', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(267, 'en', 'setting', 'Sidemenu Icon Style', 'Sidemenu Icon Style', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(268, 'en', 'setting', 'If you \"Enable\" this setting, the whole application sidemenu will be converted into \"Sidemenu Icon Style\".', 'If you \"Enable\" this setting, the whole application sidemenu will be converted into \"Sidemenu Icon Style\".', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(269, 'en', 'setting', 'Login Disable', 'Login Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(270, 'en', 'setting', 'If you \"Enable\" this setting, customers cannot login to their dashboard.', 'If you \"Enable\" this setting, customers cannot login to their dashboard.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(271, 'en', 'setting', 'Customer Account Delete On/off', 'Customer Account Delete On/off', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(272, 'en', 'setting', 'If you \"Enable\" this setting, customers can \"Delete\" their account permenently.', 'If you \"Enable\" this setting, customers can \"Delete\" their account permenently.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(273, 'en', 'setting', 'Footer Copyright Text', 'Footer Copyright Text', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(274, 'en', 'setting', 'Customer Can Re-Open Ticket Enable/Disable', 'Customer Can Re-Open Ticket Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(275, 'en', 'setting', 'If you disable this ticket setting, customers can not \"Re-Open\" their tickets. If it is enabled, then the customers can \"Re-Open\" their tickets within the mentioned days in the input field below. And if it is set to 0 (zero), then the customers can reopen their tickets at any time.', 'If you disable this ticket setting, customers can not \"Re-Open\" their tickets. If it is enabled, then the customers can \"Re-Open\" their tickets within the mentioned days in the input field below. And if it is set to 0 (zero), then the customers can reopen their tickets at any time.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(276, 'en', 'setting', 'Re-Open Days', 'Re-Open Days', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(277, 'en', 'setting', 'Auto Close Ticket Enable/Disable', 'Auto Close Ticket Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(278, 'en', 'setting', 'If you disable this ticket setting, the inactive ticket won’t be closed automatically. Users will need to close the ticket manually. If it is enabled, the inactive ticket will close automatically after the completion of the days that are mentioned in the input field below.', 'If you disable this ticket setting, the inactive ticket won’t be closed automatically. Users will need to close the ticket manually. If it is enabled, the inactive ticket will close automatically after the completion of the days that are mentioned in the input field below.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(279, 'en', 'setting', 'Auto Close Days', 'Auto Close Days', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(280, 'en', 'setting', 'Auto Ticket Overdue Enable/Disable', 'Auto Ticket Overdue Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(281, 'en', 'setting', 'If you disable this ticket setting, the \"overdue\" status won’t be reflected on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', 'If you disable this ticket setting, the \"overdue\" status won’t be reflected on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(282, 'en', 'setting', 'Auto Overdue Days', 'Auto Overdue Days', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(283, 'en', 'setting', 'Ticket Reply Status Time Enable/Disable', 'Ticket Reply Status Time Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(284, 'en', 'setting', 'Basically, this setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t give a reply to the ticket within the mentioned hours in the input field. If you disable this ticket setting, then it won’t change the ticket status.', 'Basically, this setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t give a reply to the ticket within the mentioned hours in the input field. If you disable this ticket setting, then it won’t change the ticket status.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(285, 'en', 'setting', 'Auto Reply Status in Hours', 'Auto Reply Status in Hours', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(286, 'en', 'setting', 'Auto Delete Notifications Enable/disable', 'Auto Delete Notifications Enable/disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(287, 'en', 'setting', 'If you disable this notification setting, the red notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the red notifications will be deleted after the completion of the mentioned days in the input field.', 'If you disable this notification setting, the red notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the red notifications will be deleted after the completion of the mentioned days in the input field.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(288, 'en', 'setting', 'Auto Notification Days', 'Auto Notification Days', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(289, 'en', 'setting', 'Custom Ticket Id', 'Custom Ticket Id', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(290, 'en', 'setting', 'Simply customise your ticket ID. For example, SPT-1 is the ticket id. You can only customise the first letters of the ticket ID of your choice. It displays SPT-1 for the registered user and SPTG-1 for the guest user. By default, the letter \"G\" represents the guest user.', 'Simply customise your ticket ID. For example, SPT-1 is the ticket id. You can only customise the first letters of the ticket ID of your choice. It displays SPT-1 for the registered user and SPTG-1 for the guest user. By default, the letter \"G\" represents the guest user.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(291, 'en', 'setting', 'Ticket Title Character Limit', 'Ticket Title Character Limit', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(292, 'en', 'setting', 'Basically, this setting is used for the limit of ticket titles.Which means the ticket`s title allows the maximum character entered value.', 'Basically, this setting is used for the limit of ticket titles.Which means the ticket`s title allows the maximum character entered value.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(293, 'en', 'setting', 'Employee Name Protection', 'Employee Name Protection', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(294, 'en', 'setting', 'If you \"Enable\" this setting, customers will only be able to see the name that you give in the below input field. They will not be able to see the employees name and role.', 'If you \"Enable\" this setting, customers will only be able to see the name that you give in the below input field. They will not be able to see the employees name and role.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(295, 'en', 'setting', 'Guest Ticket Enable/Disable', 'Guest Ticket Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(296, 'en', 'setting', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application in the header section.', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application in the header section.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(297, 'en', 'setting', 'Customer File Upload in Ticket', 'Customer File Upload in Ticket', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(298, 'en', 'setting', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Tickets\" page, while creating or replying to the ticket to the registered customers.', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Tickets\" page, while creating or replying to the ticket to the registered customers.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(299, 'en', 'setting', 'Guest User File Upload in Ticket', 'Guest User File Upload in Ticket', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(300, 'en', 'setting', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Guest Ticket\" page while creating or replying to the ticket to the guest users.', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the \"Guest Ticket\" page while creating or replying to the ticket to the guest users.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(301, 'en', 'setting', 'Guest Ticket OTP Enable/Disable', 'Guest Ticket OTP Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(302, 'en', 'setting', 'If you enable this ticket setting, the \"Guest Ticket OTP\" option will be disabled.', 'If you enable this ticket setting, the \"Guest Ticket OTP\" option will be disabled.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(303, 'en', 'setting', 'Customer Ticket Enable/Disable', 'Customer Ticket Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(304, 'en', 'setting', 'If you enable this ticket setting, the \"Customer Ticket\" option will disappear from the application in the user dashboard.', 'If you enable this ticket setting, the \"Customer Ticket\" option will disappear from the application in the user dashboard.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(305, 'en', 'setting', 'Rating Page Enable/Disable', 'Rating Page Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(306, 'en', 'setting', 'If you \"Enable\" this setting, the \"Rating Page\" will not appear to the customers after closing the ticket.', 'If you \"Enable\" this setting, the \"Rating Page\" will not appear to the customers after closing the ticket.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(307, 'en', 'setting', 'File Setting', 'File Setting', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(308, 'en', 'setting', 'Captcha Disable', 'Captcha Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(309, 'en', 'setting', 'By default, both manual and Google Captcha will be disabled.', 'By default, both manual and Google Captcha will be disabled.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(310, 'en', 'setting', 'Manual Captcha Enable', 'Manual Captcha Enable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(311, 'en', 'setting', 'This setting will enable the \"Manual\" captcha.', 'This setting will enable the \"Manual\" captcha.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(312, 'en', 'setting', 'Google Captcha Enable', 'Google Captcha Enable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(313, 'en', 'setting', 'This setting will enable the \"Google\" captcha.', 'This setting will enable the \"Google\" captcha.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(314, 'en', 'setting', 'Enable On Contact Form', 'Enable On Contact Form', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(315, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Contact Form\".', 'If you enable this captcha setting feature, it will appear on the \"Contact Form\".', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(316, 'en', 'setting', 'Enable On Register Form', 'Enable On Register Form', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(317, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Register Form\".', 'If you enable this captcha setting feature, it will appear on the \"Register Form\".', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(318, 'en', 'setting', 'Enable On Login Form', 'Enable On Login Form', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(319, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Login Form\".', 'If you enable this captcha setting feature, it will appear on the \"Login Form\".', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(320, 'en', 'setting', 'Enable On Guest Ticket', 'Enable On Guest Ticket', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(321, 'en', 'setting', 'If you enable this captcha setting feature, it will appear on the \"Guest Ticket\".', 'If you enable this captcha setting feature, it will appear on the \"Guest Ticket\".', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(322, 'en', 'setting', 'External Chat Enable/Disable', 'External Chat Enable/Disable', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(323, 'en', 'setting', 'If you enable this “External Chat” setting feature, it will appear on the \"Application\".', 'If you enable this “External Chat” setting feature, it will appear on the \"Application\".', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(324, 'en', 'setting', 'All Users', 'All Users', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(325, 'en', 'setting', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.\"', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.\"', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(326, 'en', 'setting', 'Only  Registered Users', 'Only  Registered Users', '2024-04-28 02:00:37', '2024-04-28 02:00:37');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(327, 'en', 'setting', 'If you enable this \"Only Registered Users\" setting feature, the \"External Chat\" will appear only for the registered users on the \"Application.\"', 'If you enable this \"Only Registered Users\" setting feature, the \"External Chat\" will appear only for the registered users on the \"Application.\"', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(328, 'en', 'setting', 'Callback/Redirect URL', 'Callback/Redirect URL', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(329, 'en', 'setting', 'Add this callback URL to your \"Envato\" App settings.', 'Add this callback URL to your \"Envato\" App settings.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(330, 'en', 'setting', 'Add this callback URL to your \"Google\" App settings.', 'Add this callback URL to your \"Google\" App settings.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(331, 'en', 'setting', 'Add this callback URL to your \"Facebook\" App settings.', 'Add this callback URL to your \"Facebook\" App settings.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(332, 'en', 'setting', 'Add this callback URL to your \"Twitter\" App settings.', 'Add this callback URL to your \"Twitter\" App settings.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(333, 'en', 'filesetting', 'The file size should not be more than 5MB', 'The file size should not be more than 5MB', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(334, 'en', 'filesetting', 'Max File Upload', 'Max File Upload', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(335, 'en', 'filesetting', 'Max File Size Upload', 'Max File Size Upload', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(336, 'en', 'filesetting', 'MB', 'MB', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(337, 'en', 'filesetting', 'Allow File Types', 'Allow File Types', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(338, 'en', 'filesetting', 'Upload File', 'Upload File', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(339, 'en', 'filesetting', 'Download', 'Download', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(340, 'en', 'filesetting', 'File Format: .xlsx & .csv', 'File Format: .xlsx & .csv', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(341, 'en', 'filesetting', 'Import Data', 'Import Data', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(342, 'en', 'filesetting', 'Sample File', 'Sample File', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(343, 'en', 'filesetting', 'The file size should not be more than', 'The file size should not be more than', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(344, 'en', 'filesetting', 'MB', 'MB', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(345, 'en', 'filesetting', 'The file size should not be more than 500kb', 'The file size should not be more than 500kb', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(346, 'en', 'filesetting', 'Filesize should not be morethan 10MB', 'Filesize should not be morethan 10MB', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(347, 'en', 'general', 'Employees', 'Employees', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(348, 'en', 'general', 'Edit Employee', 'Edit Employee', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(349, 'en', 'general', 'First Name', 'First Name', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(350, 'en', 'general', 'Last Name', 'Last Name', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(351, 'en', 'general', 'Username', 'Username', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(352, 'en', 'general', 'Email', 'Email', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(353, 'en', 'general', 'Employee ID', 'Employee ID', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(354, 'en', 'general', 'Select Role', 'Select Role', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(355, 'en', 'general', 'Mobile Number', 'Mobile Number', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(356, 'en', 'general', 'Languages', 'Languages', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(357, 'en', 'general', 'Skills', 'Skills', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(358, 'en', 'general', 'Country', 'Country', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(359, 'en', 'general', 'Timezone', 'Timezone', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(360, 'en', 'general', 'Status', 'Status', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(361, 'en', 'general', 'Update Profile', 'Update Profile', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(362, 'en', 'general', 'Password', 'Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(363, 'en', 'general', 'Add Employee', 'Add Employee', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(364, 'en', 'general', 'Import Employees List', 'Import Employees List', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(365, 'en', 'general', 'Delete', 'Delete', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(366, 'en', 'general', 'Sl.No', 'Sl.No', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(367, 'en', 'general', 'Employee Name', 'Employee Name', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(368, 'en', 'general', 'Roles', 'Roles', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(369, 'en', 'general', 'Register Date', 'Register Date', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(370, 'en', 'general', 'Actions', 'Actions', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(371, 'en', 'general', 'Generate Password', 'Generate Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(372, 'en', 'general', 'Save', 'Save', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(373, 'en', 'general', 'User Import', 'User Import', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(374, 'en', 'general', 'Import file', 'Import file', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(375, 'en', 'general', 'Upload file', 'Upload file', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(376, 'en', 'general', 'Add New Announcement', 'Add New Announcement', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(377, 'en', 'general', 'Title', 'Title', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(378, 'en', 'general', 'Start Date', 'Start Date', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(379, 'en', 'general', 'End Date', 'End Date', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(380, 'en', 'general', 'Add Announcement', 'Add Announcement', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(381, 'en', 'general', 'Edit Announcement', 'Edit Announcement', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(382, 'en', 'general', 'Notice Text', 'Notice Text', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(383, 'en', 'general', 'Close', 'Close', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(384, 'en', 'general', 'New Article', 'New Article', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(385, 'en', 'general', 'Category', 'Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(386, 'en', 'general', 'SubCategory', 'SubCategory', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(387, 'en', 'general', 'Description', 'Description', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(388, 'en', 'general', 'Tags', 'Tags', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(389, 'en', 'general', 'Publish', 'Publish', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(390, 'en', 'general', 'UnPublish', 'UnPublish', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(391, 'en', 'general', 'Privacy Mode', 'Privacy Mode', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(392, 'en', 'general', 'Update', 'Update', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(393, 'en', 'general', 'Article Title', 'Article Title', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(394, 'en', 'general', 'Edit Article', 'Edit Article', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(395, 'en', 'general', 'Add Article', 'Add Article', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(396, 'en', 'general', 'Article List', 'Article List', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(397, 'en', 'general', 'Hide Section', 'Hide Section', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(398, 'en', 'general', 'Article Section', 'Article Section', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(399, 'en', 'general', 'Subtitle', 'Subtitle', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(400, 'en', 'general', 'Save Changes', 'Save Changes', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(401, 'en', 'general', 'Ticket To Article', 'Ticket To Article', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(402, 'en', 'general', 'New', 'New', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(403, 'en', 'general', 'In-Progress', 'In-Progress', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(404, 'en', 'general', 'On-Hold', 'On-Hold', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(405, 'en', 'general', 'Re-Open', 'Re-Open', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(406, 'en', 'general', 'OverDue', 'OverDue', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(407, 'en', 'general', 'Closed', 'Closed', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(408, 'en', 'general', 'Ticket Details', 'Ticket Details', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(409, 'en', 'general', 'User', 'User', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(410, 'en', 'general', 'Assign To', 'Assign To', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(411, 'en', 'general', 'Assign To Agent', 'Assign To Agent', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(412, 'en', 'general', 'Restore', 'Restore', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(413, 'en', 'general', 'Ticket Information', 'Ticket Information', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(414, 'en', 'general', 'Created Date', 'Created Date', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(415, 'en', 'general', 'Conversations', 'Conversations', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(416, 'en', 'general', 'Priority', 'Priority', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(417, 'en', 'general', 'Project', 'Project', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(418, 'en', 'general', 'Opened Date', 'Opened Date', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(419, 'en', 'general', 'Reply Status', 'Reply Status', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(420, 'en', 'general', 'Customer Details', 'Customer Details', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(421, 'en', 'general', 'IP', 'IP', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(422, 'en', 'general', 'Don’t have any notes yet', 'Don’t have any notes yet', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(423, 'en', 'general', 'Add your notes here', 'Add your notes here', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(424, 'en', 'general', 'Change Password', 'Change Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(425, 'en', 'general', 'Old Password', 'Old Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(426, 'en', 'general', 'New Password', 'New Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(427, 'en', 'general', 'Confirm Password', 'Confirm Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(428, 'en', 'general', 'Forgot Password?', 'Forgot Password?', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(429, 'en', 'general', 'Enter the email address that is linked to your account.', 'Enter the email address that is linked to your account.', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(430, 'en', 'general', 'Submit', 'Submit', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(431, 'en', 'general', 'Send me Back', 'Send me Back', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(432, 'en', 'general', 'Reset Password', 'Reset Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(433, 'en', 'general', 'Enter the email address registered on your account', 'Enter the email address registered on your account', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(434, 'en', 'general', 'Remembered your password?', 'Remembered your password?', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(435, 'en', 'general', 'Remember me', 'Remember me', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(436, 'en', 'general', 'Bussiness Hours Title', 'Bussiness Hours Title', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(437, 'en', 'general', 'Days', 'Days', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(438, 'en', 'general', 'Closed/Open', 'Closed/Open', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(439, 'en', 'general', 'Start-time', 'Start-time', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(440, 'en', 'general', 'End-time', 'End-time', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(441, 'en', 'general', 'Call Action', 'Call Action', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(442, 'en', 'general', 'Call Action Section', 'Call Action Section', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(443, 'en', 'general', 'Button-Text', 'Button-Text', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(444, 'en', 'general', 'Select Category', 'Select Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(445, 'en', 'general', 'Category List', 'Category List', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(446, 'en', 'general', 'Add Category', 'Add Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(447, 'en', 'general', 'Envato Api Assign', 'Envato Api Assign', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(448, 'en', 'general', 'Assign Envato Api', 'Assign Envato Api', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(449, 'en', 'general', 'Category Name', 'Category Name', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(450, 'en', 'general', 'Ticket/Knowledge', 'Ticket/Knowledge', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(451, 'en', 'general', 'Assign To Groups', 'Assign To Groups', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(452, 'en', 'general', 'Assigned Priority', 'Assigned Priority', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(453, 'en', 'general', 'Add New Category', 'Add New Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(454, 'en', 'general', 'Edit Category', 'Edit Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(455, 'en', 'general', 'View On :', 'View On :', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(456, 'en', 'general', 'View On Both', 'View On Both', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(457, 'en', 'general', 'View On Tickets', 'View On Tickets', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(458, 'en', 'general', 'View On Knowledge', 'View On Knowledge', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(459, 'en', 'general', 'Choose Priority', 'Choose Priority', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(460, 'en', 'general', 'Choose Priority :', 'Choose Priority :', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(461, 'en', 'general', 'Low', 'Low', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(462, 'en', 'general', 'Medium', 'Medium', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(463, 'en', 'general', 'High', 'High', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(464, 'en', 'general', 'Status :', 'Status :', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(465, 'en', 'general', 'Sub-Category', 'Sub-Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(466, 'en', 'general', 'Subcategory List', 'Subcategory List', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(467, 'en', 'general', 'Add SubCategory', 'Add SubCategory', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(468, 'en', 'general', 'Subcategory Name', 'Subcategory Name', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(469, 'en', 'general', 'Parent Category list', 'Parent Category list', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(470, 'en', 'general', 'Add New SubCategory', 'Add New SubCategory', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(471, 'en', 'general', 'Edit Subcategory', 'Edit Subcategory', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(472, 'en', 'general', 'Parent Category', 'Parent Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(473, 'en', 'general', 'Compose for Customers', 'Compose for Customers', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(474, 'en', 'general', 'Compose for Employees', 'Compose for Employees', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(475, 'en', 'general', 'Compose Notification For Customers', 'Compose Notification For Customers', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(476, 'en', 'general', 'Compose Notification For Employees', 'Compose Notification For Employees', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(477, 'en', 'general', 'To', 'To', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(478, 'en', 'general', 'Tag', 'Tag', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(479, 'en', 'general', 'Select Tag Color', 'Select Tag Color', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(480, 'en', 'general', 'Send Message', 'Send Message', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(481, 'en', 'general', 'Message', 'Message', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(482, 'en', 'general', 'Employees', 'Employees', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(483, 'en', 'general', 'Custom Notifications List', 'Custom Notifications List', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(484, 'en', 'general', 'User Type', 'User Type', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(485, 'en', 'general', 'Customer', 'Customer', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(486, 'en', 'general', 'Create Customer', 'Create Customer', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(487, 'en', 'general', 'Please copy the Password', 'Please copy the Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(488, 'en', 'general', 'Customers List', 'Customers List', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(489, 'en', 'general', 'Add Customer', 'Add Customer', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(490, 'en', 'general', 'Verification', 'Verification', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(491, 'en', 'general', 'Edit Customer', 'Edit Customer', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(492, 'en', 'general', 'Timezone', 'Timezone', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(493, 'en', 'general', 'Timezones', 'Timezones', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(494, 'en', 'general', 'Email Template', 'Email Template', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(495, 'en', 'general', 'Email Subject', 'Email Subject', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(496, 'en', 'general', 'Email Body', 'Email Body', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(497, 'en', 'general', 'Send Test Mail', 'Send Test Mail', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(498, 'en', 'general', 'Enter Mail', 'Enter Mail', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(499, 'en', 'general', 'Send', 'Send', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(500, 'en', 'general', 'Mail Driver', 'Mail Driver', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(501, 'en', 'general', 'Mail Host', 'Mail Host', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(502, 'en', 'general', 'Mail Port', 'Mail Port', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(503, 'en', 'general', 'Mail Username', 'Mail Username', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(504, 'en', 'general', 'Mail Password', 'Mail Password', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(505, 'en', 'general', 'From Name', 'From Name', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(506, 'en', 'general', 'From Email', 'From Email', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(507, 'en', 'general', 'Last Updated on', 'Last Updated on', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(508, 'en', 'general', 'Action', 'Action', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(509, 'en', 'general', 'Main Title', 'Main Title', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(510, 'en', 'general', 'Add Faq Category', 'Add Faq Category', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(511, 'en', 'general', 'Faq Category Name', 'Faq Category Name', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(512, 'en', 'general', 'FAQ’s Section', 'FAQ’s Section', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(513, 'en', 'general', 'Add FAQ', 'Add FAQ', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(514, 'en', 'general', 'Question', 'Question', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(515, 'en', 'general', 'Answer', 'Answer', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(516, 'en', 'general', 'Add New FAQ', 'Add New FAQ', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(517, 'en', 'general', 'Edit FAQ', 'Edit FAQ', '2024-04-28 02:00:37', '2024-04-28 02:00:37'),
(518, 'en', 'general', 'Select Faq Category', 'Select Faq Category', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(519, 'en', 'general', 'Feature Box Section', 'Feature Box Section', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(520, 'en', 'general', 'Feature Box List', 'Feature Box List', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(521, 'en', 'general', 'Add Feature', 'Add Feature', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(522, 'en', 'general', 'Add New Feature Box', 'Add New Feature Box', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(523, 'en', 'general', 'Edit Feature Box', 'Edit Feature Box', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(524, 'en', 'general', 'URL', 'URL', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(525, 'en', 'general', 'Open in a new tab', 'Open in a new tab', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(526, 'en', 'general', 'Create Page', 'Create Page', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(527, 'en', 'general', 'Add New Page', 'Add New Page', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(528, 'en', 'general', 'Edit page', 'Edit page', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(529, 'en', 'general', 'View on header', 'View on header', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(530, 'en', 'general', 'View on footer', 'View on footer', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(531, 'en', 'general', 'Are you sure want to remove this logo?', 'Are you sure want to remove this logo?', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(532, 'en', 'general', 'Login Disable Statement', 'Login Disable Statement', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(533, 'en', 'general', 'Banner Section', 'Banner Section', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(534, 'en', 'general', 'Captcha Enable/Disable', 'Captcha Enable/Disable', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(535, 'en', 'general', 'Google Re-Captcha Setting', 'Google Re-Captcha Setting', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(536, 'en', 'general', 'Site Key', 'Site Key', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(537, 'en', 'general', 'Secret Key', 'Secret Key', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(538, 'en', 'general', 'Captcha Setting in Forms', 'Captcha Setting in Forms', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(539, 'en', 'general', 'External Chat Setting', 'External Chat Setting', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(540, 'en', 'general', 'Custom CSS', 'Custom CSS', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(541, 'en', 'general', 'Custom JS', 'Custom JS', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(542, 'en', 'general', 'Enable Google Analytics', 'Enable Google Analytics', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(543, 'en', 'general', 'Tracking ID', 'Tracking ID', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(544, 'en', 'general', 'Social Login', 'Social Login', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(545, 'en', 'general', 'Envato Settings', 'Envato Settings', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(546, 'en', 'general', 'Envato App ID', 'Envato App ID', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(547, 'en', 'general', 'Envato Secret', 'Envato Secret', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(548, 'en', 'general', 'Google App ID', 'Google App ID', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(549, 'en', 'general', 'Google Secret', 'Google Secret', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(550, 'en', 'general', 'Facebook App ID', 'Facebook App ID', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(551, 'en', 'general', 'Facebook Secret', 'Facebook Secret', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(552, 'en', 'general', 'Twitter App ID', 'Twitter App ID', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(553, 'en', 'general', 'Twitter Secret', 'Twitter Secret', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(554, 'en', 'general', 'Google', 'Google', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(555, 'en', 'general', 'Facebook', 'Facebook', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(556, 'en', 'general', 'Twitter', 'Twitter', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(557, 'en', 'general', 'Create Group', 'Create Group', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(558, 'en', 'general', 'Select Employees', 'Select Employees', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(559, 'en', 'general', 'Edit Group', 'Edit Group', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(560, 'en', 'general', 'Groups List', 'Groups List', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(561, 'en', 'general', 'Add Group', 'Add Group', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(562, 'en', 'general', 'Category Assign', 'Category Assign', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(563, 'en', 'general', 'Group Name', 'Group Name', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(564, 'en', 'general', 'Count', 'Count', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(565, 'en', 'general', 'Go Live', 'Go Live', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(566, 'en', 'general', 'Under Maintenance', 'Under Maintenance', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(567, 'en', 'general', 'Notification View', 'Notification View', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(568, 'en', 'general', 'Delete Photo', 'Delete Photo', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(569, 'en', 'general', 'Personal Details', 'Personal Details', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(570, 'en', 'general', 'Phone', 'Phone', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(571, 'en', 'general', 'Role', 'Role', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(572, 'en', 'general', 'Role Name', 'Role Name', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(573, 'en', 'general', 'Location', 'Location', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(574, 'en', 'general', 'Personal setting', 'Personal setting', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(575, 'en', 'general', 'Switch to Dark-Mode', 'Switch to Dark-Mode', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(576, 'en', 'general', 'Setting', 'Setting', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(577, 'en', 'general', 'Email Notification On/Off', 'Email Notification On/Off', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(578, 'en', 'general', 'Profile Details', 'Profile Details', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(579, 'en', 'general', 'Add Project', 'Add Project', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(580, 'en', 'general', 'Assign Projects', 'Assign Projects', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(581, 'en', 'general', 'Add New Project', 'Add New Project', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(582, 'en', 'general', 'Edit Project', 'Edit Project', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(583, 'en', 'general', 'Create Role & Permissions', 'Create Role & Permissions', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(584, 'en', 'general', 'Select All', 'Select All', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(585, 'en', 'general', 'Permissions', 'Permissions', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(586, 'en', 'general', 'Edit Role & Permissions', 'Edit Role & Permissions', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(587, 'en', 'general', 'Roles List', 'Roles List', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(588, 'en', 'general', 'Add Role & Permissions', 'Add Role & Permissions', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(589, 'en', 'general', 'Employees Count', 'Employees Count', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(590, 'en', 'general', 'Permissions Count', 'Permissions Count', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(591, 'en', 'general', 'Email to tickets Enable/Disable', 'Email to tickets Enable/Disable', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(592, 'en', 'general', 'IMAP Host', 'IMAP Host', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(593, 'en', 'general', 'IMAP Port', 'IMAP Port', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(594, 'en', 'general', 'IMAP Encryption', 'IMAP Encryption', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(595, 'en', 'general', 'IMAP Protocol', 'IMAP Protocol', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(596, 'en', 'general', 'IMAP Username', 'IMAP Username', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(597, 'en', 'general', 'IMAP Password', 'IMAP Password', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(598, 'en', 'general', 'Add IP Address', 'Add IP Address', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(599, 'en', 'general', 'Entry ', 'Entry  ', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(600, 'en', 'general', 'Types', 'Types', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(601, 'en', 'general', 'Edit IP Address', 'Edit IP Address', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(602, 'en', 'general', 'Add New IP Address', 'Add New IP Address', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(603, 'en', 'general', 'Unlock', 'Unlock', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(604, 'en', 'general', 'Lock', 'Lock', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(605, 'en', 'general', 'Block', 'Block', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(606, 'en', 'general', 'Front End', 'Front End', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(607, 'en', 'general', 'Admin', 'Admin', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(608, 'en', 'general', 'DOS', 'DOS', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(609, 'en', 'general', 'Domain Lists', 'Domain Lists', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(610, 'en', 'general', 'Country Block/Unblock Setting', 'Country Block/Unblock Setting', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(611, 'en', 'general', 'Countries List', 'Countries List', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(612, 'en', 'general', 'Blocked Countries', 'Blocked Countries', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(613, 'en', 'general', 'Allowed Countries', 'Allowed Countries', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(614, 'en', 'general', 'Admin Country Block/Unblock Setting', 'Admin Country Block/Unblock Setting', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(615, 'en', 'general', 'DOS Attack Setting', 'DOS Attack Setting', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(616, 'en', 'general', 'Enable/Disable', 'Enable/Disable', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(617, 'en', 'general', 'If you enable this setting, it prevents denial-of-service (DoS) attacks on the application.', 'If you enable this setting, it prevents denial-of-service (DoS) attacks on the application.', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(618, 'en', 'general', 'If there are more than', 'If there are more than', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(619, 'en', 'general', 'attempts in', 'attempts in', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(620, 'en', 'general', 'seconds', 'seconds', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(621, 'en', 'general', 'View Captcha', 'View Captcha', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(622, 'en', 'general', 'Block IP Address', 'Block IP Address', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(623, 'en', 'general', 'Author', 'Author', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(624, 'en', 'general', 'Keywords', 'Keywords', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(625, 'en', 'general', 'Testmonial Section', 'Testmonial Section', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(626, 'en', 'general', 'Testimonial List', 'Testimonial List', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(627, 'en', 'general', 'Add Testmonial', 'Add Testmonial', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(628, 'en', 'general', 'Add New Testimonial', 'Add New Testimonial', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(629, 'en', 'general', 'Edit Testimonial', 'Edit Testimonial', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(630, 'en', 'general', 'Designation', 'Designation', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(631, 'en', 'general', 'Assigned Closed Tickets', 'Assigned Closed Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(632, 'en', 'general', 'Assigned In-Progress Tickets', 'Assigned In-Progress Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(633, 'en', 'general', 'Assigned New Tickets', 'Assigned New Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(634, 'en', 'general', 'Assigned On-Hold Tickets', 'Assigned On-Hold Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(635, 'en', 'general', 'Assigned Overdue Tickets', 'Assigned Overdue Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(636, 'en', 'general', 'Assigned Re-Open Tickets', 'Assigned Re-Open Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(637, 'en', 'general', 'My Assigned Closed Tickets', 'My Assigned Closed Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(638, 'en', 'general', 'My Assigned In-Progress Tickets', 'My Assigned In-Progress Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(639, 'en', 'general', 'My Assigned New Tickets', 'My Assigned New Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(640, 'en', 'general', 'My Assigned On-Hold Tickets', 'My Assigned On-Hold Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(641, 'en', 'general', 'My Assigned Overdue Tickets', 'My Assigned Overdue Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(642, 'en', 'general', 'My Assigned Re-Open Tickets', 'My Assigned Re-Open Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(643, 'en', 'general', 'Self Assigned Closed Tickets', 'Self Assigned Closed Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(644, 'en', 'general', 'Self Assigned In-Progress Tickets', 'Self Assigned In-Progress Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(645, 'en', 'general', 'Self Assigned New Tickets', 'Self Assigned New Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(646, 'en', 'general', 'Self Assigned On-Hold Tickets', 'Self Assigned On-Hold Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(647, 'en', 'general', 'Self Assigned Overdue Tickets', 'Self Assigned Overdue Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(648, 'en', 'general', 'Self Assigned Re-Open Tickets', 'Self Assigned Re-Open Tickets', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(649, 'en', 'general', 'Delete Ticket', 'Delete Ticket', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(650, 'en', 'general', 'Ticket Activity', 'Ticket Activity', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(651, 'en', 'general', 'Today', 'Today', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(652, 'en', 'general', 'Yesterday', 'Yesterday', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(653, 'en', 'general', 'Previous', 'Previous', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(654, 'en', 'general', 'Next', 'Next', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(655, 'en', 'general', 'Guest Ticket', 'Guest Ticket', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(656, 'en', 'general', 'Thank you for submitting your ticket to us. Your tickets are always our top priority. You are submitting a guest ticket.', 'Thank you for submitting your ticket to us. Your tickets are always our top priority. You are submitting a guest ticket.', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(657, 'en', 'general', 'Please register your account with us to access more features.', 'Please register your account with us to access more features.', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(658, 'en', 'general', 'View Ticket', 'View Ticket', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(659, 'en', 'general', 'View', 'View', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(660, 'en', 'general', 'Active', 'Active', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(661, 'en', 'general', 'Inactive', 'Inactive', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(662, 'en', 'general', 'Support Active', 'Support Active', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(663, 'en', 'general', 'Support Expired', 'Support Expired', '2024-04-28 02:00:38', '2024-04-28 02:00:38'),
(664, 'en', 'general', 'Sign In to your account', 'Sign In to your account', '2024-04-28 02:02:41', '2024-04-28 02:02:41'),
(665, 'en', 'general', 'These credentials do not match our records.', 'These credentials do not match our records.', '2024-04-28 02:02:54', '2024-04-28 02:02:54'),
(666, 'en', 'menu', 'Global Tickets', 'Global Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(667, 'en', 'general', 'All Tickets', 'All Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(668, 'en', 'general', 'Recent Tickets', 'Recent Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(669, 'en', 'general', 'Active Tickets', 'Active Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(670, 'en', 'general', 'Suspended Tickets', 'Suspended Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(671, 'en', 'general', 'Closed Tickets', 'Closed Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(672, 'en', 'general', 'Self Tickets', 'Self Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(673, 'en', 'general', 'Self assigned Tickets', 'Self assigned Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(674, 'en', 'general', 'My Assigned Tickets', 'My Assigned Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(675, 'en', 'general', 'Suspend Tickets', 'Suspend Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(676, 'en', 'general', 'Loading....', 'Loading....', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(677, 'en', 'general', 'No data available in table', 'No data available in table', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(678, 'en', 'general', 'No entries to show', 'No entries to show', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(679, 'en', 'general', 'showing page', 'showing page', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(680, 'en', 'general', 'of', 'of', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(681, 'en', 'general', '- filtered from ', '- filtered from ', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(682, 'en', 'general', 'records', 'records', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(683, 'en', 'general', 'entries', 'entries', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(684, 'en', 'general', 'Show', 'Show', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(685, 'en', 'general', 'Search...', 'Search...', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(686, 'en', 'general', 'Select Agent', 'Select Agent', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(687, 'en', 'menu', 'Overdue Tickets', 'Overdue Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(688, 'en', 'menu', 'Suspended Tickets', 'Suspended Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(689, 'en', 'menu', 'Self Tickets', 'Self Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(690, 'en', 'menu', 'Suspend Tickets', 'Suspend Tickets', '2024-04-28 02:03:08', '2024-04-28 02:03:08'),
(691, 'en', 'menu', 'Department', 'Department', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(692, 'en', 'menu', 'Main FAQ’s', 'Main FAQ’s', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(693, 'en', 'menu', 'Envato Setting', 'Envato Setting', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(694, 'en', 'menu', 'Envato License\n                            Verification', 'Envato License\n                            Verification', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(695, 'en', 'menu', 'Reports', 'Reports', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(696, 'en', 'menu', 'Contact Support', 'Contact Support', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(697, 'en', 'general', 'It is necessary to set up your email settings first in order to send and receive emails.', 'It is necessary to set up your email settings first in order to send and receive emails.', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(698, 'en', 'general', 'Email Setup', 'Email Setup', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(699, 'en', 'general', 'Setup Reference ', 'Setup Reference ', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(700, 'en', 'general', 'It is necessary to set up your cron job first in order for the auto functions to work.', 'It is necessary to set up your cron job first in order for the auto functions to work.', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(701, 'en', 'general', 'You have', 'You have', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(702, 'en', 'general', 'new notification', 'new notification', '2024-04-28 02:03:09', '2024-04-28 02:03:09'),
(703, 'en', 'general', 'Employee', 'Employee', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(704, 'en', 'general', 'Select Roles', 'Select Roles', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(705, 'en', 'general', 'Department', 'Department', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(706, 'en', 'general', 'Select Department', 'Select Department', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(707, 'en', 'general', '(Please copy the Password)', '(Please copy the Password)', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(708, 'en', 'general', 'Upload Image', 'Upload Image', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(709, 'en', 'general', 'Select Dashboard', 'Select Dashboard', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(710, 'en', 'general', 'Employee Dashboard', 'Employee Dashboard', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(711, 'en', 'general', 'Admin Dashboard', 'Admin Dashboard', '2024-04-28 02:03:36', '2024-04-28 02:03:36'),
(712, 'en', 'general', 'Edit', 'Edit', '2024-04-28 02:03:48', '2024-04-28 02:03:48'),
(713, 'en', 'general', 'The firstname field is required.', 'The firstname field is required.', '2024-04-28 02:04:12', '2024-04-28 02:04:12'),
(714, 'en', 'general', 'The lastname field is required.', 'The lastname field is required.', '2024-04-28 02:04:12', '2024-04-28 02:04:12'),
(715, 'en', 'general', 'The role field is required.', 'The role field is required.', '2024-04-28 02:04:12', '2024-04-28 02:04:12'),
(716, 'en', 'general', 'The empid field is required.', 'The empid field is required.', '2024-04-28 02:04:12', '2024-04-28 02:04:12'),
(717, 'en', 'general', 'The email field is required.', 'The email field is required.', '2024-04-28 02:04:12', '2024-04-28 02:04:12'),
(718, 'en', 'general', 'New Ticket', 'New Ticket', '2024-04-28 02:04:49', '2024-04-28 02:04:49'),
(719, 'en', 'general', 'Subject', 'Subject', '2024-04-28 02:04:49', '2024-04-28 02:04:49'),
(720, 'en', 'general', 'Maximum', 'Maximum', '2024-04-28 02:04:49', '2024-04-28 02:04:49'),
(721, 'en', 'general', 'Characters', 'Characters', '2024-04-28 02:04:49', '2024-04-28 02:04:49'),
(722, 'en', 'general', 'Select SubCategory', 'Select SubCategory', '2024-04-28 02:04:50', '2024-04-28 02:04:50'),
(723, 'en', 'alerts', 'Purchase Code field is Required', 'Purchase Code field is Required', '2024-04-28 02:04:50', '2024-04-28 02:04:50'),
(724, 'en', 'alerts', 'Check the all field(*) required', 'Check the all field(*) required', '2024-04-28 02:04:50', '2024-04-28 02:04:50'),
(725, 'en', 'alerts', 'A ticket has been opened with the ticket ID', 'A ticket has been opened with the ticket ID', '2024-04-28 02:05:24', '2024-04-28 02:05:24'),
(726, 'en', 'general', 'Date', 'Date', '2024-04-28 02:05:31', '2024-04-28 02:05:31'),
(727, 'en', 'general', 'Last Replied', 'Last Replied', '2024-04-28 02:05:31', '2024-04-28 02:05:31'),
(728, 'en', 'general', 'Guest', 'Guest', '2024-04-28 02:05:31', '2024-04-28 02:05:31'),
(729, 'en', 'general', 'Assign', 'Assign', '2024-04-28 02:05:31', '2024-04-28 02:05:31'),
(730, 'en', 'general', 'Self Assign', 'Self Assign', '2024-04-28 02:05:32', '2024-04-28 02:05:32'),
(731, 'en', 'general', 'Other Assign', 'Other Assign', '2024-04-28 02:05:32', '2024-04-28 02:05:32'),
(732, 'en', 'general', 'Voilation', 'Voilation', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(733, 'en', 'general', 'Suspend Ticket', 'Suspend Ticket', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(734, 'en', 'general', 'Created At', 'Created At', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(735, 'en', 'general', 'Reply Ticket', 'Reply Ticket', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(736, 'en', 'general', 'Canned Response', 'Canned Response', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(737, 'en', 'general', 'Select Canned Messages', 'Select Canned Messages', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(738, 'en', 'general', 'Inprogress', 'Inprogress', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(739, 'en', 'general', 'Solved', 'Solved', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(740, 'en', 'general', 'Ticket ID', 'Ticket ID', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(741, 'en', 'general', 'Change Category', 'Change Category', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(742, 'en', 'general', 'Open Date', 'Open Date', '2024-04-28 02:06:02', '2024-04-28 02:06:02'),
(743, 'en', 'general', 'Assign Activity', 'Assign Activity', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(744, 'en', 'general', 'View History', 'View History', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(745, 'en', 'general', 'Created By', 'Created By', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(746, 'en', 'general', 'Previous Tickets', 'Previous Tickets', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(747, 'en', 'general', 'Online', 'Online', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(748, 'en', 'general', 'UTC', 'UTC', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(749, 'en', 'general', 'Ticket Note', 'Ticket Note', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(750, 'en', 'general', 'Leave a message for On-Hold', 'Leave a message for On-Hold', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(751, 'en', 'menu', 'Add Note', 'Add Note', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(752, 'en', 'menu', 'Sending..', 'Sending..', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(753, 'en', 'alerts', 'Are you sure you want to delete this comment?', 'Are you sure you want to delete this comment?', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(754, 'en', 'alerts', 'This might erase your records permanently.', 'This might erase your records permanently.', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(755, 'en', 'menu', 'Category', 'Category', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(756, 'en', 'general', 'Envato Purchase Code', 'Envato Purchase Code', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(757, 'en', 'general', 'Update Your Purchase Code', 'Update Your Purchase Code', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(758, 'en', 'alerts', 'This might suspend the ticket permanently', 'This might suspend the ticket permanently', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(759, 'en', 'alerts', 'This action may remove the ticket from suspension.', 'This action may remove the ticket from suspension.', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(760, 'en', 'general', 'Note:', 'Note:', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(761, 'en', 'general', 'Select Priority', 'Select Priority', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(762, 'en', 'general', 'Critical', 'Critical', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(763, 'en', 'general', 'Puchase Code', 'Puchase Code', '2024-04-28 02:06:03', '2024-04-28 02:06:03'),
(764, 'en', 'general', 'Name', 'Name', '2024-04-28 02:06:41', '2024-04-28 02:06:41'),
(765, 'en', 'general', 'tree', 'tree', '2024-04-28 02:07:12', '2024-04-28 02:07:12'),
(766, 'en', 'general', 'tree na', 'tree na', '2024-04-28 02:07:12', '2024-04-28 02:07:12'),
(767, 'en', 'general', 'Import Customer List', 'Import Customer List', '2024-04-28 02:07:56', '2024-04-28 02:07:56'),
(768, 'en', 'general', 'Login as', 'Login as', '2024-04-28 02:07:56', '2024-04-28 02:07:56'),
(769, 'en', 'general', 'Verified', 'Verified', '2024-04-28 02:07:56', '2024-04-28 02:07:56'),
(770, 'en', 'general', 'Unverified', 'Unverified', '2024-04-28 02:07:56', '2024-04-28 02:07:56'),
(771, 'en', 'general', 'Tickets History', 'Tickets History', '2024-04-28 02:07:56', '2024-04-28 02:07:56'),
(772, 'en', 'alerts', 'This is to resend email verification link to the customer', 'This is to resend email verification link to the customer', '2024-04-28 02:07:56', '2024-04-28 02:07:56'),
(773, 'en', 'general', 'Canned Response List', 'Canned Response List', '2024-04-28 02:08:07', '2024-04-28 02:08:07'),
(774, 'en', 'general', 'Add Canned Response', 'Add Canned Response', '2024-04-28 02:08:07', '2024-04-28 02:08:07'),
(775, 'en', 'general', 'Are you sure you want to continue?', 'Are you sure you want to continue?', '2024-04-28 02:08:07', '2024-04-28 02:08:07'),
(776, 'en', 'general', 'This might erase your records permanently', 'This might erase your records permanently', '2024-04-28 02:08:07', '2024-04-28 02:08:07'),
(777, 'en', 'general', 'Please select at least one check box.', 'Please select at least one check box.', '2024-04-28 02:08:07', '2024-04-28 02:08:07'),
(778, 'en', 'general', 'Canned Response Create', 'Canned Response Create', '2024-04-28 02:08:16', '2024-04-28 02:08:16'),
(779, 'en', 'general', 'Canned Response Title', 'Canned Response Title', '2024-04-28 02:08:16', '2024-04-28 02:08:16'),
(780, 'en', 'general', 'Canned Response Message', 'Canned Response Message', '2024-04-28 02:08:16', '2024-04-28 02:08:16'),
(781, 'en', 'setting', 'Envato Setting', 'Envato Setting', '2024-04-28 02:08:42', '2024-04-28 02:08:42'),
(782, 'en', 'setting', 'Enable purchase code to employees', 'Enable purchase code to employees', '2024-04-28 02:08:42', '2024-04-28 02:08:42'),
(783, 'en', 'setting', 'If you enable this, employees can see the purchase code submitted by customer’s.', 'If you enable this, employees can see the purchase code submitted by customer’s.', '2024-04-28 02:08:42', '2024-04-28 02:08:42'),
(784, 'en', 'setting', 'If you enable this Envato Expired switch, customer’s and guest’s cannot create ticket with an expired license.', 'If you enable this Envato Expired switch, customer’s and guest’s cannot create ticket with an expired license.', '2024-04-28 02:08:42', '2024-04-28 02:08:42');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(785, 'en', 'setting', 'Support policy URL', 'Support policy URL', '2024-04-28 02:08:42', '2024-04-28 02:08:42'),
(786, 'en', 'general', 'https://example.com', 'https://example.com', '2024-04-28 02:08:42', '2024-04-28 02:08:42'),
(787, 'en', 'general', 'Custom Field', 'Custom Field', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(788, 'en', 'general', 'Custom Field Lists', 'Custom Field Lists', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(789, 'en', 'general', 'Add Custom Field', 'Add Custom Field', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(790, 'en', 'general', 'Field Name', 'Field Name', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(791, 'en', 'general', 'Field Type', 'Field Type', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(792, 'en', 'general', 'Label field name', 'Label field name', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(793, 'en', 'general', 'Field label type', 'Field label type', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(794, 'en', 'general', 'Field options', 'Field options', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(795, 'en', 'general', 'You have to add the comma-separated values.', 'You have to add the comma-separated values.', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(796, 'en', 'general', 'a,k,n', 'a,k,n', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(797, 'en', 'general', 'View On', 'View On', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(798, 'en', 'general', 'Both', 'Both', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(799, 'en', 'general', 'Create Tickets', 'Create Tickets', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(800, 'en', 'general', 'Register', 'Register', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(801, 'en', 'general', 'Required field', 'Required field', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(802, 'en', 'general', 'Privacy', 'Privacy', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(803, 'en', 'general', 'If you select this option, the content in the field will be encrypted.', 'If you select this option, the content in the field will be encrypted.', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(804, 'en', 'general', 'New Custom Field', 'New Custom Field', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(805, 'en', 'alerts', 'Please select required fields.', 'Please select required fields.', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(806, 'en', 'general', 'Edit Custom Field', 'Edit Custom Field', '2024-04-28 02:09:00', '2024-04-28 02:09:00'),
(807, 'en', 'general', 'Not Found', 'Not Found', '2024-04-28 02:10:58', '2024-04-28 02:10:58'),
(808, 'en', 'general', '404', '404', '2024-04-28 02:10:58', '2024-04-28 02:10:58'),
(809, 'en', 'general', 'Back to Home', 'Back to Home', '2024-04-28 02:10:58', '2024-04-28 02:10:58'),
(810, 'en', 'general', 'Assign to group', 'Assign to group', '2024-04-28 02:14:11', '2024-04-28 02:14:11'),
(811, 'en', 'general', 'View On:', 'View On:', '2024-04-28 02:14:11', '2024-04-28 02:14:11'),
(812, 'en', 'general', 'Select Group', 'Select Group', '2024-04-28 02:14:11', '2024-04-28 02:14:11'),
(813, 'en', 'general', 'Report', 'Report', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(814, 'en', 'general', 'View All', 'View All', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(815, 'en', 'general', 'Customers', 'Customers', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(816, 'en', 'general', 'Ticket', 'Ticket', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(817, 'en', 'general', 'Reopen', 'Reopen', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(818, 'en', 'general', 'Ticket Priority', 'Ticket Priority', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(819, 'en', 'general', 'Knowledge Base', 'Knowledge Base', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(820, 'en', 'general', 'Ratings For Employee', 'Ratings For Employee', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(821, 'en', 'general', 'Total', 'Total', '2024-04-28 02:14:50', '2024-04-28 02:14:50'),
(822, 'en', 'setting', 'The character limit of a ticket title can be fixed here. Enter your desired ticket title’s character count. And characters in title now cannot exceed that value', 'The character limit of a ticket title can be fixed here. Enter your desired ticket title’s character count. And characters in title now cannot exceed that value', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(823, 'en', 'setting', 'Restrict Customers from creating tickets continously', 'Restrict Customers from creating tickets continously', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(824, 'en', 'setting', 'If you enable this ticket setting, customers cannot create multiple tickets at a time. Customers will be restricted to the value specified in \"Maximum Number Of Tickets Allowed\" untill the given timeframe \"In Hours\"', 'If you enable this ticket setting, customers cannot create multiple tickets at a time. Customers will be restricted to the value specified in \"Maximum Number Of Tickets Allowed\" untill the given timeframe \"In Hours\"', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(825, 'en', 'setting', 'Maximum Number Of Tickets Allowed', 'Maximum Number Of Tickets Allowed', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(826, 'en', 'setting', 'In Hours', 'In Hours', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(827, 'en', 'setting', 'Restrict Customer From Replying To Ticket Continously', 'Restrict Customer From Replying To Ticket Continously', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(828, 'en', 'setting', 'If you enable this ticket setting, customers can not \"Reply\" their tickets within the mentioned hours and tickets in the input fields as below.', 'If you enable this ticket setting, customers can not \"Reply\" their tickets within the mentioned hours and tickets in the input fields as below.', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(829, 'en', 'setting', 'Maximum Allowed Replies', 'Maximum Allowed Replies', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(830, 'en', 'setting', 'Replies Allowed In Hours', 'Replies Allowed In Hours', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(831, 'en', 'setting', 'Ticket Auto Response Time Enable', 'Ticket Auto Response Time Enable', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(832, 'en', 'setting', 'This setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t reply to the ticket within the mentioned hours in the input field, and an email will also be sent to the customer. If you disable this ticket setting, then it won’t change the ticket status.', 'This setting is used to change the ticket status to \"Waiting for response\" when a customer doesn’t reply to the ticket within the mentioned hours in the input field, and an email will also be sent to the customer. If you disable this ticket setting, then it won’t change the ticket status.', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(833, 'en', 'setting', 'Ticket Auto Response time in Hours', 'Ticket Auto Response time in Hours', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(834, 'en', 'setting', 'Auto Close Ticket Enable', 'Auto Close Ticket Enable', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(835, 'en', 'setting', 'Customer Re-Open Ticket Enable', 'Customer Re-Open Ticket Enable', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(836, 'en', 'setting', 'Re-Open Ticket In Days', 'Re-Open Ticket In Days', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(837, 'en', 'setting', 'Auto Ticket Overdue Enable', 'Auto Ticket Overdue Enable', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(838, 'en', 'setting', 'If you disable this ticket setting, the \"overdue\" status won’t reflect on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', 'If you disable this ticket setting, the \"overdue\" status won’t reflect on the tickets table in the admin panel. If it is enabled and the users of an admin panel don’t give a reply to the customer within the mentioned days, then the ticket status changes to \"Overdue.\"', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(839, 'en', 'setting', 'Auto Overdue Ticket In Days', 'Auto Overdue Ticket In Days', '2024-04-28 02:15:42', '2024-04-28 02:15:42'),
(840, 'en', 'setting', 'Auto Delete Trashed Tickets', 'Auto Delete Trashed Tickets', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(841, 'en', 'setting', 'If you enable this ticket setting, trashed tickets will be deleted automatically deleted after the time mentioned in the below input field.', 'If you enable this ticket setting, trashed tickets will be deleted automatically deleted after the time mentioned in the below input field.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(842, 'en', 'setting', 'Trashed Tickets Auto Delete In Days', 'Trashed Tickets Auto Delete In Days', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(843, 'en', 'setting', 'Auto Delete Notifications Enable', 'Auto Delete Notifications Enable', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(844, 'en', 'setting', 'If you disable this notification setting, read notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the read notifications will be deleted after the completion of the mentioned days in the input field below.', 'If you disable this notification setting, read notification won’t be deleted from both panels, i.e., the customer and admin panel. If it is enabled, then the read notifications will be deleted after the completion of the mentioned days in the input field below.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(845, 'en', 'setting', 'Auto Delete Notification In Days', 'Auto Delete Notification In Days', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(846, 'en', 'setting', 'Employee Name Privacy', 'Employee Name Privacy', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(847, 'en', 'setting', 'Guest Ticket Enable', 'Guest Ticket Enable', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(848, 'en', 'setting', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application’s header section.', 'If you disable this ticket setting, the \"Guest Ticket\" option will disappear from the application’s header section.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(849, 'en', 'setting', 'Note Created Mail to Admin', 'Note Created Mail to Admin', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(850, 'en', 'setting', 'If you enable this ticket setting, an email will be sent to superadmin when a ticket note is created.', 'If you enable this ticket setting, an email will be sent to superadmin when a ticket note is created.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(851, 'en', 'setting', 'Ticket Delete By Customer Disable', 'Ticket Delete By Customer Disable', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(852, 'en', 'setting', 'If you enable this ticket setting, delete ticket option will disappear from customer’s dashboard.', 'If you enable this ticket setting, delete ticket option will disappear from customer’s dashboard.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(853, 'en', 'setting', 'Customer File Uploads for Ticket', 'Customer File Uploads for Ticket', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(854, 'en', 'setting', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the create ticket page, while creating or replying to the ticket.', 'If you disable this ticket setting, the \"File Upload\" option will disappear from the create ticket page, while creating or replying to the ticket.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(855, 'en', 'setting', 'Guest Ticket OTP Disable', 'Guest Ticket OTP Disable', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(856, 'en', 'setting', 'Customer Create Ticket Disable', 'Customer Create Ticket Disable', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(857, 'en', 'setting', 'If you enable this ticket setting, the create ticket option will disappear from the customer’s dashboard.', 'If you enable this ticket setting, the create ticket option will disappear from the customer’s dashboard.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(858, 'en', 'setting', 'Rating Page Disable', 'Rating Page Disable', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(859, 'en', 'setting', 'CC Mail Enable', 'CC Mail Enable', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(860, 'en', 'setting', 'If you \"Enable\" this \"CC Mail\" setting, the CC Mail input field options will appear on the Create Ticket, Admin Create Ticket, and Guest Ticket pages.', 'If you \"Enable\" this \"CC Mail\" setting, the CC Mail input field options will appear on the Create Ticket, Admin Create Ticket, and Guest Ticket pages.', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(861, 'en', 'filesetting', 'Maximum File Upload’s', 'Maximum File Upload’s', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(862, 'en', 'filesetting', 'File Upload’s Maximum Size', 'File Upload’s Maximum Size', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(863, 'en', 'filesetting', 'File Types Allowed', 'File Types Allowed', '2024-04-28 02:15:43', '2024-04-28 02:15:43'),
(864, 'en', 'general', 'Search here...', 'Search here...', '2024-04-28 02:16:17', '2024-04-28 02:16:17'),
(865, 'en', 'general', 'Ask your Questions...', 'Ask your Questions...', '2024-05-01 22:16:00', '2024-05-01 22:16:00'),
(866, 'en', 'general', 'Recent Articles', 'Recent Articles', '2024-05-01 22:16:00', '2024-05-01 22:16:00'),
(867, 'en', 'general', 'Popular Articles', 'Popular Articles', '2024-05-01 22:16:00', '2024-05-01 22:16:00'),
(868, 'en', 'general', 'Verify Your Email', 'Verify Your Email', '2024-05-01 22:16:00', '2024-05-01 22:16:00'),
(869, 'en', 'setting', 'Contact Us', 'Contact Us', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(870, 'en', 'setting', 'If you enable this setting, the \"Contact Us\" option will appear in the application’s landing page.', 'If you enable this setting, the \"Contact Us\" option will appear in the application’s landing page.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(871, 'en', 'setting', 'Enter Contact us Email', 'Enter Contact us Email', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(872, 'en', 'setting', 'Enter an email address to receive contact-us form details.', 'Enter an email address to receive contact-us form details.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(873, 'en', 'general', 'admin@example.com', 'admin@example.com', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(874, 'en', 'setting', 'Chat GPT', 'Chat GPT', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(875, 'en', 'setting', 'Enable Chat GPT', 'Enable Chat GPT', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(876, 'en', 'setting', 'By enabling this setting, you will be able to use chat gpt to generate text for canned response, email templates, custom notifications, articles and announcements.', 'By enabling this setting, you will be able to use chat gpt to generate text for canned response, email templates, custom notifications, articles and announcements.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(877, 'en', 'setting', 'Enter OpenAI Chat GPT API Secret Key', 'Enter OpenAI Chat GPT API Secret Key', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(878, 'en', 'setting', 'Enter the OpenAI Chat GPT API Secret Key to use Chat GPT in your application.', 'Enter the OpenAI Chat GPT API Secret Key to use Chat GPT in your application.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(879, 'en', 'setting', 'Inactive Customer/Guest Delete ', 'Inactive Customer/Guest Delete ', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(880, 'en', 'setting', 'Customer Profile Auto Delete Enable', 'Customer Profile Auto Delete Enable', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(881, 'en', 'setting', 'If you enable this ticket setting, inactive customers will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Customer Delete Days).', 'If you enable this ticket setting, inactive customers will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Customer Delete Days).', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(882, 'en', 'setting', 'Inactive Months', 'Inactive Months', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(883, 'en', 'setting', 'Customer Delete Days', 'Customer Delete Days', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(884, 'en', 'setting', 'Guest Profile Auto Delete Enable', 'Guest Profile Auto Delete Enable', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(885, 'en', 'setting', 'If you enable this ticket setting, inactive guests will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Guest Delete Days).', 'If you enable this ticket setting, inactive guests will receive an email after the time period specified below (Inactive Months) stating that their account has been unused since then and will be deleted automatically after the specified (Guest Delete Days).', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(886, 'en', 'setting', 'Guest Delete Days', 'Guest Delete Days', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(887, 'en', 'setting', 'Enable Dark Mode Switch For Admin Panel User’s', 'Enable Dark Mode Switch For Admin Panel User’s', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(888, 'en', 'setting', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Admin panel user’s profile page.', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Admin panel user’s profile page.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(889, 'en', 'setting', 'Enable Dark Mode Switch For All Customer’s', 'Enable Dark Mode Switch For All Customer’s', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(890, 'en', 'setting', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Customer’s profile page. And global \"Dark-Mode\" settings will not apply for customers.', 'If you disable this setting, the \"Switch to Dark-Mode\" option will disappear from the Customer’s profile page. And global \"Dark-Mode\" settings will not apply for customers.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(891, 'en', 'setting', 'Enable Dark-Mode Globally', 'Enable Dark-Mode Globally', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(892, 'en', 'setting', 'If you enable this setting, the whole application will convert to \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', 'If you enable this setting, the whole application will convert to \"Dark-Mode\" except for the users that are permitted with \"Personal Settings.\"', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(893, 'en', 'setting', 'If you enable this setting, customers can access the registration form or login form in “popup modal” only.', 'If you enable this setting, customers can access the registration form or login form in “popup modal” only.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(894, 'en', 'setting', 'If you enable this setting, \"Register\" options will disappear from the application’s header section, and new visitors wont be able to register to the application.', 'If you enable this setting, \"Register\" options will disappear from the application’s header section, and new visitors wont be able to register to the application.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(895, 'en', 'setting', 'If you enable this setting, \"Login\" options will disappear from the application’s header section. Customers cannot login to their accounts.', 'If you enable this setting, \"Login\" options will disappear from the application’s header section. Customers cannot login to their accounts.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(896, 'en', 'setting', 'If you disable this setting, the \"Knowledge\" option will disappear from the application’s header section.', 'If you disable this setting, the \"Knowledge\" option will disappear from the application’s header section.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(897, 'en', 'setting', 'If you disable this setting, the \"faq\" option will disappear from the application’s header section.', 'If you disable this setting, the \"faq\" option will disappear from the application’s header section.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(898, 'en', 'setting', 'If you disable this Envato switch, the entire \"Envato\" option will disappear from the application', 'If you disable this Envato switch, the entire \"Envato\" option will disappear from the application', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(899, 'en', 'setting', 'If you enable this setting, login page will appear on the main site URL by default. Users cannot access the homepage', 'If you enable this setting, login page will appear on the main site URL by default. Users cannot access the homepage', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(900, 'en', 'setting', 'Article Count Enable', 'Article Count Enable', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(901, 'en', 'setting', 'If you disable this setting, article views count will disappear in the \"Article\" view page.', 'If you disable this setting, article views count will disappear in the \"Article\" view page.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(902, 'en', 'setting', 'Social Login’s Only', 'Social Login’s Only', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(903, 'en', 'setting', 'If you enable this setting, only social login form will appear to customer’s by when you click on the login button in header section. They cannot access normal login form', 'If you enable this setting, only social login form will appear to customer’s by when you click on the login button in header section. They cannot access normal login form', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(904, 'en', 'setting', 'If you \"Enable\" this setting, the whole application sidemenu will collapse into Icon Menu', 'If you \"Enable\" this setting, the whole application sidemenu will collapse into Icon Menu', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(905, 'en', 'setting', 'Customer Account Delete Permission', 'Customer Account Delete Permission', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(906, 'en', 'setting', 'Enable Maintenance Mode', 'Enable Maintenance Mode', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(907, 'en', 'setting', 'If you \"Enable\" this setting, the application will go into maintenance mode. Only admin panel users can access the application.', 'If you \"Enable\" this setting, the application will go into maintenance mode. Only admin panel users can access the application.', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(908, 'en', 'alerts', 'Social logins are not enabled please enable it first', 'Social logins are not enabled please enable it first', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(909, 'en', 'general', 'Login/Register Disable Statement', 'Login/Register Disable Statement', '2024-05-01 22:29:04', '2024-05-01 22:29:04'),
(910, 'en', 'general', 'The image failed to upload.', 'The image failed to upload.', '2024-05-01 22:31:00', '2024-05-01 22:31:00'),
(911, 'en', 'general', 'Afghanistan', 'Afghanistan', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(912, 'en', 'general', 'Åland Islands', 'Åland Islands', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(913, 'en', 'general', 'Albania', 'Albania', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(914, 'en', 'general', 'Algeria', 'Algeria', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(915, 'en', 'general', 'American Samoa', 'American Samoa', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(916, 'en', 'general', 'Andorra', 'Andorra', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(917, 'en', 'general', 'Angola', 'Angola', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(918, 'en', 'general', 'Anguilla', 'Anguilla', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(919, 'en', 'general', 'Antarctica', 'Antarctica', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(920, 'en', 'general', 'Antigua and Barbuda', 'Antigua and Barbuda', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(921, 'en', 'general', 'Argentina', 'Argentina', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(922, 'en', 'general', 'Armenia', 'Armenia', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(923, 'en', 'general', 'Aruba', 'Aruba', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(924, 'en', 'general', 'Australia', 'Australia', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(925, 'en', 'general', 'Austria', 'Austria', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(926, 'en', 'general', 'Azerbaijan', 'Azerbaijan', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(927, 'en', 'general', 'Bahamas', 'Bahamas', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(928, 'en', 'general', 'Bahrain', 'Bahrain', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(929, 'en', 'general', 'Bangladesh', 'Bangladesh', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(930, 'en', 'general', 'Barbados', 'Barbados', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(931, 'en', 'general', 'Belarus', 'Belarus', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(932, 'en', 'general', 'Belgium', 'Belgium', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(933, 'en', 'general', 'Belize', 'Belize', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(934, 'en', 'general', 'Benin', 'Benin', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(935, 'en', 'general', 'Bermuda', 'Bermuda', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(936, 'en', 'general', 'Bhutan', 'Bhutan', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(937, 'en', 'general', 'Bolivia, Plurinational State of', 'Bolivia, Plurinational State of', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(938, 'en', 'general', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(939, 'en', 'general', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(940, 'en', 'general', 'Botswana', 'Botswana', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(941, 'en', 'general', 'Bouvet Island', 'Bouvet Island', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(942, 'en', 'general', 'Brazil', 'Brazil', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(943, 'en', 'general', 'British Indian Ocean Territory', 'British Indian Ocean Territory', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(944, 'en', 'general', 'Brunei Darussalam', 'Brunei Darussalam', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(945, 'en', 'general', 'Bulgaria', 'Bulgaria', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(946, 'en', 'general', 'Burkina Faso', 'Burkina Faso', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(947, 'en', 'general', 'Burundi', 'Burundi', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(948, 'en', 'general', 'Cambodia', 'Cambodia', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(949, 'en', 'general', 'Cameroon', 'Cameroon', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(950, 'en', 'general', 'Canada', 'Canada', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(951, 'en', 'general', 'Cape Verde', 'Cape Verde', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(952, 'en', 'general', 'Cayman Islands', 'Cayman Islands', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(953, 'en', 'general', 'Central African Republic', 'Central African Republic', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(954, 'en', 'general', 'Chad', 'Chad', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(955, 'en', 'general', 'Chile', 'Chile', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(956, 'en', 'general', 'China', 'China', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(957, 'en', 'general', 'Christmas Island', 'Christmas Island', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(958, 'en', 'general', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(959, 'en', 'general', 'Colombia', 'Colombia', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(960, 'en', 'general', 'Comoros', 'Comoros', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(961, 'en', 'general', 'Congo', 'Congo', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(962, 'en', 'general', 'Congo, the Democratic Republic of the', 'Congo, the Democratic Republic of the', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(963, 'en', 'general', 'Cook Islands', 'Cook Islands', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(964, 'en', 'general', 'Costa Rica', 'Costa Rica', '2024-05-01 22:31:17', '2024-05-01 22:31:17'),
(965, 'en', 'general', 'Côte d\'Ivoire', 'Côte d\'Ivoire', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(966, 'en', 'general', 'Croatia', 'Croatia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(967, 'en', 'general', 'Cuba', 'Cuba', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(968, 'en', 'general', 'Curaçao', 'Curaçao', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(969, 'en', 'general', 'Cyprus', 'Cyprus', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(970, 'en', 'general', 'Czech Republic', 'Czech Republic', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(971, 'en', 'general', 'Denmark', 'Denmark', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(972, 'en', 'general', 'Djibouti', 'Djibouti', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(973, 'en', 'general', 'Dominica', 'Dominica', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(974, 'en', 'general', 'Dominican Republic', 'Dominican Republic', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(975, 'en', 'general', 'Ecuador', 'Ecuador', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(976, 'en', 'general', 'Egypt', 'Egypt', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(977, 'en', 'general', 'El Salvador', 'El Salvador', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(978, 'en', 'general', 'Equatorial Guinea', 'Equatorial Guinea', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(979, 'en', 'general', 'Eritrea', 'Eritrea', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(980, 'en', 'general', 'Estonia', 'Estonia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(981, 'en', 'general', 'Ethiopia', 'Ethiopia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(982, 'en', 'general', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(983, 'en', 'general', 'Faroe Islands', 'Faroe Islands', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(984, 'en', 'general', 'Fiji', 'Fiji', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(985, 'en', 'general', 'Finland', 'Finland', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(986, 'en', 'general', 'France', 'France', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(987, 'en', 'general', 'French Guiana', 'French Guiana', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(988, 'en', 'general', 'French Polynesia', 'French Polynesia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(989, 'en', 'general', 'French Southern Territories', 'French Southern Territories', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(990, 'en', 'general', 'Gabon', 'Gabon', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(991, 'en', 'general', 'Gambia', 'Gambia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(992, 'en', 'general', 'Georgia', 'Georgia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(993, 'en', 'general', 'Germany', 'Germany', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(994, 'en', 'general', 'Ghana', 'Ghana', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(995, 'en', 'general', 'Gibraltar', 'Gibraltar', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(996, 'en', 'general', 'Greece', 'Greece', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(997, 'en', 'general', 'Greenland', 'Greenland', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(998, 'en', 'general', 'Grenada', 'Grenada', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(999, 'en', 'general', 'Guadeloupe', 'Guadeloupe', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1000, 'en', 'general', 'Guam', 'Guam', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1001, 'en', 'general', 'Guatemala', 'Guatemala', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1002, 'en', 'general', 'Guernsey', 'Guernsey', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1003, 'en', 'general', 'Guinea', 'Guinea', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1004, 'en', 'general', 'Guinea-Bissau', 'Guinea-Bissau', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1005, 'en', 'general', 'Guyana', 'Guyana', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1006, 'en', 'general', 'Haiti', 'Haiti', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1007, 'en', 'general', 'Heard Island and McDonald Mcdonald Islands', 'Heard Island and McDonald Mcdonald Islands', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1008, 'en', 'general', 'Holy See (Vatican City State)', 'Holy See (Vatican City State)', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1009, 'en', 'general', 'Honduras', 'Honduras', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1010, 'en', 'general', 'Hong Kong', 'Hong Kong', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1011, 'en', 'general', 'Hungary', 'Hungary', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1012, 'en', 'general', 'Iceland', 'Iceland', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1013, 'en', 'general', 'India', 'India', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1014, 'en', 'general', 'Indonesia', 'Indonesia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1015, 'en', 'general', 'Iran, Islamic Republic of', 'Iran, Islamic Republic of', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1016, 'en', 'general', 'Iraq', 'Iraq', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1017, 'en', 'general', 'Ireland', 'Ireland', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1018, 'en', 'general', 'Isle of Man', 'Isle of Man', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1019, 'en', 'general', 'Israel', 'Israel', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1020, 'en', 'general', 'Italy', 'Italy', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1021, 'en', 'general', 'Jamaica', 'Jamaica', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1022, 'en', 'general', 'Japan', 'Japan', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1023, 'en', 'general', 'Jersey', 'Jersey', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1024, 'en', 'general', 'Jordan', 'Jordan', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1025, 'en', 'general', 'Kazakhstan', 'Kazakhstan', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1026, 'en', 'general', 'Kenya', 'Kenya', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1027, 'en', 'general', 'Kiribati', 'Kiribati', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1028, 'en', 'general', 'Korea, Democratic People\'s Republic of', 'Korea, Democratic People\'s Republic of', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1029, 'en', 'general', 'Korea, Republic of', 'Korea, Republic of', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1030, 'en', 'general', 'Kuwait', 'Kuwait', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1031, 'en', 'general', 'Kyrgyzstan', 'Kyrgyzstan', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1032, 'en', 'general', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1033, 'en', 'general', 'Latvia', 'Latvia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1034, 'en', 'general', 'Lebanon', 'Lebanon', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1035, 'en', 'general', 'Lesotho', 'Lesotho', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1036, 'en', 'general', 'Liberia', 'Liberia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1037, 'en', 'general', 'Libya', 'Libya', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1038, 'en', 'general', 'Liechtenstein', 'Liechtenstein', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1039, 'en', 'general', 'Lithuania', 'Lithuania', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1040, 'en', 'general', 'Luxembourg', 'Luxembourg', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1041, 'en', 'general', 'Macao', 'Macao', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1042, 'en', 'general', 'Macedonia, the Former Yugoslav Republic of', 'Macedonia, the Former Yugoslav Republic of', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1043, 'en', 'general', 'Madagascar', 'Madagascar', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1044, 'en', 'general', 'Malawi', 'Malawi', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1045, 'en', 'general', 'Malaysia', 'Malaysia', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1046, 'en', 'general', 'Maldives', 'Maldives', '2024-05-01 22:31:18', '2024-05-01 22:31:18'),
(1047, 'en', 'general', 'Mali', 'Mali', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1048, 'en', 'general', 'Malta', 'Malta', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1049, 'en', 'general', 'Marshall Islands', 'Marshall Islands', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1050, 'en', 'general', 'Martinique', 'Martinique', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1051, 'en', 'general', 'Mauritania', 'Mauritania', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1052, 'en', 'general', 'Mauritius', 'Mauritius', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1053, 'en', 'general', 'Mayotte', 'Mayotte', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1054, 'en', 'general', 'Mexico', 'Mexico', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1055, 'en', 'general', 'Micronesia, Federated States of', 'Micronesia, Federated States of', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1056, 'en', 'general', 'Moldova, Republic of', 'Moldova, Republic of', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1057, 'en', 'general', 'Monaco', 'Monaco', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1058, 'en', 'general', 'Mongolia', 'Mongolia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1059, 'en', 'general', 'Montenegro', 'Montenegro', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1060, 'en', 'general', 'Montserrat', 'Montserrat', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1061, 'en', 'general', 'Morocco', 'Morocco', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1062, 'en', 'general', 'Mozambique', 'Mozambique', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1063, 'en', 'general', 'Myanmar', 'Myanmar', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1064, 'en', 'general', 'Namibia', 'Namibia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1065, 'en', 'general', 'Nauru', 'Nauru', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1066, 'en', 'general', 'Nepal', 'Nepal', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1067, 'en', 'general', 'Netherlands', 'Netherlands', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1068, 'en', 'general', 'New Caledonia', 'New Caledonia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1069, 'en', 'general', 'New Zealand', 'New Zealand', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1070, 'en', 'general', 'Nicaragua', 'Nicaragua', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1071, 'en', 'general', 'Niger', 'Niger', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1072, 'en', 'general', 'Nigeria', 'Nigeria', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1073, 'en', 'general', 'Niue', 'Niue', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1074, 'en', 'general', 'Norfolk Island', 'Norfolk Island', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1075, 'en', 'general', 'Northern Mariana Islands', 'Northern Mariana Islands', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1076, 'en', 'general', 'Norway', 'Norway', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1077, 'en', 'general', 'Oman', 'Oman', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1078, 'en', 'general', 'Pakistan', 'Pakistan', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1079, 'en', 'general', 'Palau', 'Palau', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1080, 'en', 'general', 'Palestine, State of', 'Palestine, State of', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1081, 'en', 'general', 'Panama', 'Panama', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1082, 'en', 'general', 'Papua New Guinea', 'Papua New Guinea', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1083, 'en', 'general', 'Paraguay', 'Paraguay', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1084, 'en', 'general', 'Peru', 'Peru', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1085, 'en', 'general', 'Philippines', 'Philippines', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1086, 'en', 'general', 'Pitcairn', 'Pitcairn', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1087, 'en', 'general', 'Poland', 'Poland', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1088, 'en', 'general', 'Portugal', 'Portugal', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1089, 'en', 'general', 'Puerto Rico', 'Puerto Rico', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1090, 'en', 'general', 'Qatar', 'Qatar', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1091, 'en', 'general', 'Réunion', 'Réunion', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1092, 'en', 'general', 'Romania', 'Romania', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1093, 'en', 'general', 'Russian Federation', 'Russian Federation', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1094, 'en', 'general', 'Rwanda', 'Rwanda', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1095, 'en', 'general', 'Saint Barthélemy', 'Saint Barthélemy', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1096, 'en', 'general', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1097, 'en', 'general', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1098, 'en', 'general', 'Saint Lucia', 'Saint Lucia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1099, 'en', 'general', 'Saint Martin (French part)', 'Saint Martin (French part)', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1100, 'en', 'general', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1101, 'en', 'general', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1102, 'en', 'general', 'Samoa', 'Samoa', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1103, 'en', 'general', 'San Marino', 'San Marino', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1104, 'en', 'general', 'Sao Tome and Principe', 'Sao Tome and Principe', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1105, 'en', 'general', 'Saudi Arabia', 'Saudi Arabia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1106, 'en', 'general', 'Senegal', 'Senegal', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1107, 'en', 'general', 'Serbia', 'Serbia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1108, 'en', 'general', 'Seychelles', 'Seychelles', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1109, 'en', 'general', 'Sierra Leone', 'Sierra Leone', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1110, 'en', 'general', 'Singapore', 'Singapore', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1111, 'en', 'general', 'Sint Maarten (Dutch part)', 'Sint Maarten (Dutch part)', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1112, 'en', 'general', 'Slovakia', 'Slovakia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1113, 'en', 'general', 'Slovenia', 'Slovenia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1114, 'en', 'general', 'Solomon Islands', 'Solomon Islands', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1115, 'en', 'general', 'Somalia', 'Somalia', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1116, 'en', 'general', 'South Africa', 'South Africa', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1117, 'en', 'general', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1118, 'en', 'general', 'South Sudan', 'South Sudan', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1119, 'en', 'general', 'Spain', 'Spain', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1120, 'en', 'general', 'Sri Lanka', 'Sri Lanka', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1121, 'en', 'general', 'Sudan', 'Sudan', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1122, 'en', 'general', 'Suriname', 'Suriname', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1123, 'en', 'general', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1124, 'en', 'general', 'Swaziland', 'Swaziland', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1125, 'en', 'general', 'Sweden', 'Sweden', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1126, 'en', 'general', 'Switzerland', 'Switzerland', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1127, 'en', 'general', 'Syrian Arab Republic', 'Syrian Arab Republic', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1128, 'en', 'general', 'Taiwan', 'Taiwan', '2024-05-01 22:31:19', '2024-05-01 22:31:19'),
(1129, 'en', 'general', 'Tajikistan', 'Tajikistan', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1130, 'en', 'general', 'Tanzania, United Republic of', 'Tanzania, United Republic of', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1131, 'en', 'general', 'Thailand', 'Thailand', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1132, 'en', 'general', 'Timor-Leste', 'Timor-Leste', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1133, 'en', 'general', 'Togo', 'Togo', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1134, 'en', 'general', 'Tokelau', 'Tokelau', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1135, 'en', 'general', 'Tonga', 'Tonga', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1136, 'en', 'general', 'Trinidad and Tobago', 'Trinidad and Tobago', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1137, 'en', 'general', 'Tunisia', 'Tunisia', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1138, 'en', 'general', 'Turkey', 'Turkey', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1139, 'en', 'general', 'Turkmenistan', 'Turkmenistan', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1140, 'en', 'general', 'Turks and Caicos Islands', 'Turks and Caicos Islands', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1141, 'en', 'general', 'Tuvalu', 'Tuvalu', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1142, 'en', 'general', 'Uganda', 'Uganda', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1143, 'en', 'general', 'Ukraine', 'Ukraine', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1144, 'en', 'general', 'United Arab Emirates', 'United Arab Emirates', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1145, 'en', 'general', 'United Kingdom', 'United Kingdom', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1146, 'en', 'general', 'United States', 'United States', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1147, 'en', 'general', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1148, 'en', 'general', 'Uruguay', 'Uruguay', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1149, 'en', 'general', 'Uzbekistan', 'Uzbekistan', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1150, 'en', 'general', 'Vanuatu', 'Vanuatu', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1151, 'en', 'general', 'Venezuela, Bolivarian Republic of', 'Venezuela, Bolivarian Republic of', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1152, 'en', 'general', 'Viet Nam', 'Viet Nam', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1153, 'en', 'general', 'Virgin Islands, British', 'Virgin Islands, British', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1154, 'en', 'general', 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1155, 'en', 'general', 'Wallis and Futuna', 'Wallis and Futuna', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1156, 'en', 'general', 'Western Sahara', 'Western Sahara', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1157, 'en', 'general', 'Yemen', 'Yemen', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1158, 'en', 'general', 'Zambia', 'Zambia', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1159, 'en', 'general', 'Zimbabwe', 'Zimbabwe', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1160, 'en', 'general', 'Europe/Amsterdam', 'Europe/Amsterdam', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1161, 'en', 'general', '(GMT/UTC +02:00)', '(GMT/UTC +02:00)', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1162, 'en', 'general', 'Europe/Andorra', 'Europe/Andorra', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1163, 'en', 'general', 'Europe/Astrakhan', 'Europe/Astrakhan', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1164, 'en', 'general', '(GMT/UTC +04:00)', '(GMT/UTC +04:00)', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1165, 'en', 'general', 'Europe/Athens', 'Europe/Athens', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1166, 'en', 'general', '(GMT/UTC +03:00)', '(GMT/UTC +03:00)', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1167, 'en', 'general', 'Europe/Belgrade', 'Europe/Belgrade', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1168, 'en', 'general', 'Europe/Berlin', 'Europe/Berlin', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1169, 'en', 'general', 'Europe/Bratislava', 'Europe/Bratislava', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1170, 'en', 'general', 'Europe/Brussels', 'Europe/Brussels', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1171, 'en', 'general', 'Europe/Bucharest', 'Europe/Bucharest', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1172, 'en', 'general', 'Europe/Budapest', 'Europe/Budapest', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1173, 'en', 'general', 'Europe/Busingen', 'Europe/Busingen', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1174, 'en', 'general', 'Europe/Chisinau', 'Europe/Chisinau', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1175, 'en', 'general', 'Europe/Copenhagen', 'Europe/Copenhagen', '2024-05-01 22:31:20', '2024-05-01 22:31:20');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1176, 'en', 'general', 'Europe/Dublin', 'Europe/Dublin', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1177, 'en', 'general', '(GMT/UTC +01:00)', '(GMT/UTC +01:00)', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1178, 'en', 'general', 'Europe/Gibraltar', 'Europe/Gibraltar', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1179, 'en', 'general', 'Europe/Guernsey', 'Europe/Guernsey', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1180, 'en', 'general', 'Europe/Helsinki', 'Europe/Helsinki', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1181, 'en', 'general', 'Europe/Isle_of_Man', 'Europe/Isle_of_Man', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1182, 'en', 'general', 'Europe/Istanbul', 'Europe/Istanbul', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1183, 'en', 'general', 'Europe/Jersey', 'Europe/Jersey', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1184, 'en', 'general', 'Europe/Kaliningrad', 'Europe/Kaliningrad', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1185, 'en', 'general', 'Europe/Kiev', 'Europe/Kiev', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1186, 'en', 'general', 'Europe/Kirov', 'Europe/Kirov', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1187, 'en', 'general', 'Europe/Lisbon', 'Europe/Lisbon', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1188, 'en', 'general', 'Europe/Ljubljana', 'Europe/Ljubljana', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1189, 'en', 'general', 'Europe/London', 'Europe/London', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1190, 'en', 'general', 'Europe/Luxembourg', 'Europe/Luxembourg', '2024-05-01 22:31:20', '2024-05-01 22:31:20'),
(1191, 'en', 'general', 'Europe/Madrid', 'Europe/Madrid', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1192, 'en', 'general', 'Europe/Malta', 'Europe/Malta', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1193, 'en', 'general', 'Europe/Mariehamn', 'Europe/Mariehamn', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1194, 'en', 'general', 'Europe/Minsk', 'Europe/Minsk', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1195, 'en', 'general', 'Europe/Monaco', 'Europe/Monaco', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1196, 'en', 'general', 'Europe/Moscow', 'Europe/Moscow', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1197, 'en', 'general', 'Europe/Oslo', 'Europe/Oslo', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1198, 'en', 'general', 'Europe/Paris', 'Europe/Paris', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1199, 'en', 'general', 'Europe/Podgorica', 'Europe/Podgorica', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1200, 'en', 'general', 'Europe/Prague', 'Europe/Prague', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1201, 'en', 'general', 'Europe/Riga', 'Europe/Riga', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1202, 'en', 'general', 'Europe/Rome', 'Europe/Rome', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1203, 'en', 'general', 'Europe/Samara', 'Europe/Samara', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1204, 'en', 'general', 'Europe/San_Marino', 'Europe/San_Marino', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1205, 'en', 'general', 'Europe/Sarajevo', 'Europe/Sarajevo', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1206, 'en', 'general', 'Europe/Saratov', 'Europe/Saratov', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1207, 'en', 'general', 'Europe/Simferopol', 'Europe/Simferopol', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1208, 'en', 'general', 'Europe/Skopje', 'Europe/Skopje', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1209, 'en', 'general', 'Europe/Sofia', 'Europe/Sofia', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1210, 'en', 'general', 'Europe/Stockholm', 'Europe/Stockholm', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1211, 'en', 'general', 'Europe/Tallinn', 'Europe/Tallinn', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1212, 'en', 'general', 'Europe/Tirane', 'Europe/Tirane', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1213, 'en', 'general', 'Europe/Ulyanovsk', 'Europe/Ulyanovsk', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1214, 'en', 'general', 'Europe/Uzhgorod', 'Europe/Uzhgorod', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1215, 'en', 'general', 'Europe/Vaduz', 'Europe/Vaduz', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1216, 'en', 'general', 'Europe/Vatican', 'Europe/Vatican', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1217, 'en', 'general', 'Europe/Vienna', 'Europe/Vienna', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1218, 'en', 'general', 'Europe/Vilnius', 'Europe/Vilnius', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1219, 'en', 'general', 'Europe/Volgograd', 'Europe/Volgograd', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1220, 'en', 'general', 'Europe/Warsaw', 'Europe/Warsaw', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1221, 'en', 'general', 'Europe/Zagreb', 'Europe/Zagreb', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1222, 'en', 'general', 'Europe/Zaporozhye', 'Europe/Zaporozhye', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1223, 'en', 'general', 'Europe/Zurich', 'Europe/Zurich', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1224, 'en', 'general', 'America/Adak', 'America/Adak', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1225, 'en', 'general', '(GMT/UTC -09:00)', '(GMT/UTC -09:00)', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1226, 'en', 'general', 'America/Anchorage', 'America/Anchorage', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1227, 'en', 'general', '(GMT/UTC -08:00)', '(GMT/UTC -08:00)', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1228, 'en', 'general', 'America/Anguilla', 'America/Anguilla', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1229, 'en', 'general', '(GMT/UTC -04:00)', '(GMT/UTC -04:00)', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1230, 'en', 'general', 'America/Antigua', 'America/Antigua', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1231, 'en', 'general', 'America/Araguaina', 'America/Araguaina', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1232, 'en', 'general', '(GMT/UTC -03:00)', '(GMT/UTC -03:00)', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1233, 'en', 'general', 'America/Argentina/Buenos_Aires', 'America/Argentina/Buenos_Aires', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1234, 'en', 'general', 'America/Argentina/Catamarca', 'America/Argentina/Catamarca', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1235, 'en', 'general', 'America/Argentina/Cordoba', 'America/Argentina/Cordoba', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1236, 'en', 'general', 'America/Argentina/Jujuy', 'America/Argentina/Jujuy', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1237, 'en', 'general', 'America/Argentina/La_Rioja', 'America/Argentina/La_Rioja', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1238, 'en', 'general', 'America/Argentina/Mendoza', 'America/Argentina/Mendoza', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1239, 'en', 'general', 'America/Argentina/Rio_Gallegos', 'America/Argentina/Rio_Gallegos', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1240, 'en', 'general', 'America/Argentina/Salta', 'America/Argentina/Salta', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1241, 'en', 'general', 'America/Argentina/San_Juan', 'America/Argentina/San_Juan', '2024-05-01 22:31:21', '2024-05-01 22:31:21'),
(1242, 'en', 'general', 'America/Argentina/San_Luis', 'America/Argentina/San_Luis', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1243, 'en', 'general', 'America/Argentina/Tucuman', 'America/Argentina/Tucuman', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1244, 'en', 'general', 'America/Argentina/Ushuaia', 'America/Argentina/Ushuaia', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1245, 'en', 'general', 'America/Aruba', 'America/Aruba', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1246, 'en', 'general', 'America/Asuncion', 'America/Asuncion', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1247, 'en', 'general', 'America/Atikokan', 'America/Atikokan', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1248, 'en', 'general', '(GMT/UTC -05:00)', '(GMT/UTC -05:00)', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1249, 'en', 'general', 'America/Bahia', 'America/Bahia', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1250, 'en', 'general', 'America/Bahia_Banderas', 'America/Bahia_Banderas', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1251, 'en', 'general', 'America/Barbados', 'America/Barbados', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1252, 'en', 'general', 'America/Belem', 'America/Belem', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1253, 'en', 'general', 'America/Belize', 'America/Belize', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1254, 'en', 'general', '(GMT/UTC -06:00)', '(GMT/UTC -06:00)', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1255, 'en', 'general', 'America/Blanc-Sablon', 'America/Blanc-Sablon', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1256, 'en', 'general', 'America/Boa_Vista', 'America/Boa_Vista', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1257, 'en', 'general', 'America/Bogota', 'America/Bogota', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1258, 'en', 'general', 'America/Boise', 'America/Boise', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1259, 'en', 'general', 'America/Cambridge_Bay', 'America/Cambridge_Bay', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1260, 'en', 'general', 'America/Campo_Grande', 'America/Campo_Grande', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1261, 'en', 'general', 'America/Cancun', 'America/Cancun', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1262, 'en', 'general', 'America/Caracas', 'America/Caracas', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1263, 'en', 'general', 'America/Cayenne', 'America/Cayenne', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1264, 'en', 'general', 'America/Cayman', 'America/Cayman', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1265, 'en', 'general', 'America/Chicago', 'America/Chicago', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1266, 'en', 'general', 'America/Chihuahua', 'America/Chihuahua', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1267, 'en', 'general', 'America/Costa_Rica', 'America/Costa_Rica', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1268, 'en', 'general', 'America/Creston', 'America/Creston', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1269, 'en', 'general', '(GMT/UTC -07:00)', '(GMT/UTC -07:00)', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1270, 'en', 'general', 'America/Cuiaba', 'America/Cuiaba', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1271, 'en', 'general', 'America/Curacao', 'America/Curacao', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1272, 'en', 'general', 'America/Danmarkshavn', 'America/Danmarkshavn', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1273, 'en', 'general', '(GMT/UTC +00:00)', '(GMT/UTC +00:00)', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1274, 'en', 'general', 'America/Dawson', 'America/Dawson', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1275, 'en', 'general', 'America/Dawson_Creek', 'America/Dawson_Creek', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1276, 'en', 'general', 'America/Denver', 'America/Denver', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1277, 'en', 'general', 'America/Detroit', 'America/Detroit', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1278, 'en', 'general', 'America/Dominica', 'America/Dominica', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1279, 'en', 'general', 'America/Edmonton', 'America/Edmonton', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1280, 'en', 'general', 'America/Eirunepe', 'America/Eirunepe', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1281, 'en', 'general', 'America/El_Salvador', 'America/El_Salvador', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1282, 'en', 'general', 'America/Fort_Nelson', 'America/Fort_Nelson', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1283, 'en', 'general', 'America/Fortaleza', 'America/Fortaleza', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1284, 'en', 'general', 'America/Glace_Bay', 'America/Glace_Bay', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1285, 'en', 'general', 'America/Goose_Bay', 'America/Goose_Bay', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1286, 'en', 'general', 'America/Grand_Turk', 'America/Grand_Turk', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1287, 'en', 'general', 'America/Grenada', 'America/Grenada', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1288, 'en', 'general', 'America/Guadeloupe', 'America/Guadeloupe', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1289, 'en', 'general', 'America/Guatemala', 'America/Guatemala', '2024-05-01 22:31:22', '2024-05-01 22:31:22'),
(1290, 'en', 'general', 'America/Guayaquil', 'America/Guayaquil', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1291, 'en', 'general', 'America/Guyana', 'America/Guyana', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1292, 'en', 'general', 'America/Halifax', 'America/Halifax', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1293, 'en', 'general', 'America/Havana', 'America/Havana', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1294, 'en', 'general', 'America/Hermosillo', 'America/Hermosillo', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1295, 'en', 'general', 'America/Indiana/Indianapolis', 'America/Indiana/Indianapolis', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1296, 'en', 'general', 'America/Indiana/Knox', 'America/Indiana/Knox', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1297, 'en', 'general', 'America/Indiana/Marengo', 'America/Indiana/Marengo', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1298, 'en', 'general', 'America/Indiana/Petersburg', 'America/Indiana/Petersburg', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1299, 'en', 'general', 'America/Indiana/Tell_City', 'America/Indiana/Tell_City', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1300, 'en', 'general', 'America/Indiana/Vevay', 'America/Indiana/Vevay', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1301, 'en', 'general', 'America/Indiana/Vincennes', 'America/Indiana/Vincennes', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1302, 'en', 'general', 'America/Indiana/Winamac', 'America/Indiana/Winamac', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1303, 'en', 'general', 'America/Inuvik', 'America/Inuvik', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1304, 'en', 'general', 'America/Iqaluit', 'America/Iqaluit', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1305, 'en', 'general', 'America/Jamaica', 'America/Jamaica', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1306, 'en', 'general', 'America/Juneau', 'America/Juneau', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1307, 'en', 'general', 'America/Kentucky/Louisville', 'America/Kentucky/Louisville', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1308, 'en', 'general', 'America/Kentucky/Monticello', 'America/Kentucky/Monticello', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1309, 'en', 'general', 'America/Kralendijk', 'America/Kralendijk', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1310, 'en', 'general', 'America/La_Paz', 'America/La_Paz', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1311, 'en', 'general', 'America/Lima', 'America/Lima', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1312, 'en', 'general', 'America/Los_Angeles', 'America/Los_Angeles', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1313, 'en', 'general', 'America/Lower_Princes', 'America/Lower_Princes', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1314, 'en', 'general', 'America/Maceio', 'America/Maceio', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1315, 'en', 'general', 'America/Managua', 'America/Managua', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1316, 'en', 'general', 'America/Manaus', 'America/Manaus', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1317, 'en', 'general', 'America/Marigot', 'America/Marigot', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1318, 'en', 'general', 'America/Martinique', 'America/Martinique', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1319, 'en', 'general', 'America/Matamoros', 'America/Matamoros', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1320, 'en', 'general', 'America/Mazatlan', 'America/Mazatlan', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1321, 'en', 'general', 'America/Menominee', 'America/Menominee', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1322, 'en', 'general', 'America/Merida', 'America/Merida', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1323, 'en', 'general', 'America/Metlakatla', 'America/Metlakatla', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1324, 'en', 'general', 'America/Mexico_City', 'America/Mexico_City', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1325, 'en', 'general', 'America/Miquelon', 'America/Miquelon', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1326, 'en', 'general', '(GMT/UTC -02:00)', '(GMT/UTC -02:00)', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1327, 'en', 'general', 'America/Moncton', 'America/Moncton', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1328, 'en', 'general', 'America/Monterrey', 'America/Monterrey', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1329, 'en', 'general', 'America/Montevideo', 'America/Montevideo', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1330, 'en', 'general', 'America/Montserrat', 'America/Montserrat', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1331, 'en', 'general', 'America/Nassau', 'America/Nassau', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1332, 'en', 'general', 'America/New_York', 'America/New_York', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1333, 'en', 'general', 'America/Nipigon', 'America/Nipigon', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1334, 'en', 'general', 'America/Nome', 'America/Nome', '2024-05-01 22:31:23', '2024-05-01 22:31:23'),
(1335, 'en', 'general', 'America/Noronha', 'America/Noronha', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1336, 'en', 'general', 'America/North_Dakota/Beulah', 'America/North_Dakota/Beulah', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1337, 'en', 'general', 'America/North_Dakota/Center', 'America/North_Dakota/Center', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1338, 'en', 'general', 'America/North_Dakota/New_Salem', 'America/North_Dakota/New_Salem', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1339, 'en', 'general', 'America/Nuuk', 'America/Nuuk', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1340, 'en', 'general', 'America/Ojinaga', 'America/Ojinaga', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1341, 'en', 'general', 'America/Panama', 'America/Panama', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1342, 'en', 'general', 'America/Pangnirtung', 'America/Pangnirtung', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1343, 'en', 'general', 'America/Paramaribo', 'America/Paramaribo', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1344, 'en', 'general', 'America/Phoenix', 'America/Phoenix', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1345, 'en', 'general', 'America/Port-au-Prince', 'America/Port-au-Prince', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1346, 'en', 'general', 'America/Port_of_Spain', 'America/Port_of_Spain', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1347, 'en', 'general', 'America/Porto_Velho', 'America/Porto_Velho', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1348, 'en', 'general', 'America/Puerto_Rico', 'America/Puerto_Rico', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1349, 'en', 'general', 'America/Punta_Arenas', 'America/Punta_Arenas', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1350, 'en', 'general', 'America/Rainy_River', 'America/Rainy_River', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1351, 'en', 'general', 'America/Rankin_Inlet', 'America/Rankin_Inlet', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1352, 'en', 'general', 'America/Recife', 'America/Recife', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1353, 'en', 'general', 'America/Regina', 'America/Regina', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1354, 'en', 'general', 'America/Resolute', 'America/Resolute', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1355, 'en', 'general', 'America/Rio_Branco', 'America/Rio_Branco', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1356, 'en', 'general', 'America/Santarem', 'America/Santarem', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1357, 'en', 'general', 'America/Santiago', 'America/Santiago', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1358, 'en', 'general', 'America/Santo_Domingo', 'America/Santo_Domingo', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1359, 'en', 'general', 'America/Sao_Paulo', 'America/Sao_Paulo', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1360, 'en', 'general', 'America/Scoresbysund', 'America/Scoresbysund', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1361, 'en', 'general', 'America/Sitka', 'America/Sitka', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1362, 'en', 'general', 'America/St_Barthelemy', 'America/St_Barthelemy', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1363, 'en', 'general', 'America/St_Johns', 'America/St_Johns', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1364, 'en', 'general', '(GMT/UTC -02:30)', '(GMT/UTC -02:30)', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1365, 'en', 'general', 'America/St_Kitts', 'America/St_Kitts', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1366, 'en', 'general', 'America/St_Lucia', 'America/St_Lucia', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1367, 'en', 'general', 'America/St_Thomas', 'America/St_Thomas', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1368, 'en', 'general', 'America/St_Vincent', 'America/St_Vincent', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1369, 'en', 'general', 'America/Swift_Current', 'America/Swift_Current', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1370, 'en', 'general', 'America/Tegucigalpa', 'America/Tegucigalpa', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1371, 'en', 'general', 'America/Thule', 'America/Thule', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1372, 'en', 'general', 'America/Thunder_Bay', 'America/Thunder_Bay', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1373, 'en', 'general', 'America/Tijuana', 'America/Tijuana', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1374, 'en', 'general', 'America/Toronto', 'America/Toronto', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1375, 'en', 'general', 'America/Tortola', 'America/Tortola', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1376, 'en', 'general', 'America/Vancouver', 'America/Vancouver', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1377, 'en', 'general', 'America/Whitehorse', 'America/Whitehorse', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1378, 'en', 'general', 'America/Winnipeg', 'America/Winnipeg', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1379, 'en', 'general', 'America/Yakutat', 'America/Yakutat', '2024-05-01 22:31:24', '2024-05-01 22:31:24'),
(1380, 'en', 'general', 'America/Yellowknife', 'America/Yellowknife', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1381, 'en', 'general', 'Indian/Antananarivo', 'Indian/Antananarivo', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1382, 'en', 'general', 'Indian/Chagos', 'Indian/Chagos', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1383, 'en', 'general', '(GMT/UTC +06:00)', '(GMT/UTC +06:00)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1384, 'en', 'general', 'Indian/Christmas', 'Indian/Christmas', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1385, 'en', 'general', '(GMT/UTC +07:00)', '(GMT/UTC +07:00)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1386, 'en', 'general', 'Indian/Cocos', 'Indian/Cocos', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1387, 'en', 'general', '(GMT/UTC +06:30)', '(GMT/UTC +06:30)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1388, 'en', 'general', 'Indian/Comoro', 'Indian/Comoro', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1389, 'en', 'general', 'Indian/Kerguelen', 'Indian/Kerguelen', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1390, 'en', 'general', '(GMT/UTC +05:00)', '(GMT/UTC +05:00)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1391, 'en', 'general', 'Indian/Mahe', 'Indian/Mahe', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1392, 'en', 'general', 'Indian/Maldives', 'Indian/Maldives', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1393, 'en', 'general', 'Indian/Mauritius', 'Indian/Mauritius', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1394, 'en', 'general', 'Indian/Mayotte', 'Indian/Mayotte', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1395, 'en', 'general', 'Indian/Reunion', 'Indian/Reunion', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1396, 'en', 'general', 'Australia/Adelaide', 'Australia/Adelaide', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1397, 'en', 'general', '(GMT/UTC +09:30)', '(GMT/UTC +09:30)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1398, 'en', 'general', 'Australia/Brisbane', 'Australia/Brisbane', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1399, 'en', 'general', '(GMT/UTC +10:00)', '(GMT/UTC +10:00)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1400, 'en', 'general', 'Australia/Broken_Hill', 'Australia/Broken_Hill', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1401, 'en', 'general', 'Australia/Darwin', 'Australia/Darwin', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1402, 'en', 'general', 'Australia/Eucla', 'Australia/Eucla', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1403, 'en', 'general', '(GMT/UTC +08:45)', '(GMT/UTC +08:45)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1404, 'en', 'general', 'Australia/Hobart', 'Australia/Hobart', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1405, 'en', 'general', 'Australia/Lindeman', 'Australia/Lindeman', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1406, 'en', 'general', 'Australia/Lord_Howe', 'Australia/Lord_Howe', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1407, 'en', 'general', '(GMT/UTC +10:30)', '(GMT/UTC +10:30)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1408, 'en', 'general', 'Australia/Melbourne', 'Australia/Melbourne', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1409, 'en', 'general', 'Australia/Perth', 'Australia/Perth', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1410, 'en', 'general', '(GMT/UTC +08:00)', '(GMT/UTC +08:00)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1411, 'en', 'general', 'Australia/Sydney', 'Australia/Sydney', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1412, 'en', 'general', 'Asia/Aden', 'Asia/Aden', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1413, 'en', 'general', 'Asia/Almaty', 'Asia/Almaty', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1414, 'en', 'general', 'Asia/Amman', 'Asia/Amman', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1415, 'en', 'general', 'Asia/Anadyr', 'Asia/Anadyr', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1416, 'en', 'general', '(GMT/UTC +12:00)', '(GMT/UTC +12:00)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1417, 'en', 'general', 'Asia/Aqtau', 'Asia/Aqtau', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1418, 'en', 'general', 'Asia/Aqtobe', 'Asia/Aqtobe', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1419, 'en', 'general', 'Asia/Ashgabat', 'Asia/Ashgabat', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1420, 'en', 'general', 'Asia/Atyrau', 'Asia/Atyrau', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1421, 'en', 'general', 'Asia/Baghdad', 'Asia/Baghdad', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1422, 'en', 'general', 'Asia/Bahrain', 'Asia/Bahrain', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1423, 'en', 'general', 'Asia/Baku', 'Asia/Baku', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1424, 'en', 'general', 'Asia/Bangkok', 'Asia/Bangkok', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1425, 'en', 'general', 'Asia/Barnaul', 'Asia/Barnaul', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1426, 'en', 'general', 'Asia/Beirut', 'Asia/Beirut', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1427, 'en', 'general', 'Asia/Bishkek', 'Asia/Bishkek', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1428, 'en', 'general', 'Asia/Brunei', 'Asia/Brunei', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1429, 'en', 'general', 'Asia/Chita', 'Asia/Chita', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1430, 'en', 'general', '(GMT/UTC +09:00)', '(GMT/UTC +09:00)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1431, 'en', 'general', 'Asia/Choibalsan', 'Asia/Choibalsan', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1432, 'en', 'general', 'Asia/Colombo', 'Asia/Colombo', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1433, 'en', 'general', '(GMT/UTC +05:30)', '(GMT/UTC +05:30)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1434, 'en', 'general', 'Asia/Damascus', 'Asia/Damascus', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1435, 'en', 'general', 'Asia/Dhaka', 'Asia/Dhaka', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1436, 'en', 'general', 'Asia/Dili', 'Asia/Dili', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1437, 'en', 'general', 'Asia/Dubai', 'Asia/Dubai', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1438, 'en', 'general', 'Asia/Dushanbe', 'Asia/Dushanbe', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1439, 'en', 'general', 'Asia/Famagusta', 'Asia/Famagusta', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1440, 'en', 'general', 'Asia/Gaza', 'Asia/Gaza', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1441, 'en', 'general', 'Asia/Hebron', 'Asia/Hebron', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1442, 'en', 'general', 'Asia/Ho_Chi_Minh', 'Asia/Ho_Chi_Minh', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1443, 'en', 'general', 'Asia/Hong_Kong', 'Asia/Hong_Kong', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1444, 'en', 'general', 'Asia/Hovd', 'Asia/Hovd', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1445, 'en', 'general', 'Asia/Irkutsk', 'Asia/Irkutsk', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1446, 'en', 'general', 'Asia/Jakarta', 'Asia/Jakarta', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1447, 'en', 'general', 'Asia/Jayapura', 'Asia/Jayapura', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1448, 'en', 'general', 'Asia/Jerusalem', 'Asia/Jerusalem', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1449, 'en', 'general', 'Asia/Kabul', 'Asia/Kabul', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1450, 'en', 'general', '(GMT/UTC +04:30)', '(GMT/UTC +04:30)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1451, 'en', 'general', 'Asia/Kamchatka', 'Asia/Kamchatka', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1452, 'en', 'general', 'Asia/Karachi', 'Asia/Karachi', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1453, 'en', 'general', 'Asia/Kathmandu', 'Asia/Kathmandu', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1454, 'en', 'general', '(GMT/UTC +05:45)', '(GMT/UTC +05:45)', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1455, 'en', 'general', 'Asia/Khandyga', 'Asia/Khandyga', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1456, 'en', 'general', 'Asia/Kolkata', 'Asia/Kolkata', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1457, 'en', 'general', 'Asia/Krasnoyarsk', 'Asia/Krasnoyarsk', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1458, 'en', 'general', 'Asia/Kuala_Lumpur', 'Asia/Kuala_Lumpur', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1459, 'en', 'general', 'Asia/Kuching', 'Asia/Kuching', '2024-05-01 22:31:25', '2024-05-01 22:31:25'),
(1460, 'en', 'general', 'Asia/Kuwait', 'Asia/Kuwait', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1461, 'en', 'general', 'Asia/Macau', 'Asia/Macau', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1462, 'en', 'general', 'Asia/Magadan', 'Asia/Magadan', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1463, 'en', 'general', '(GMT/UTC +11:00)', '(GMT/UTC +11:00)', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1464, 'en', 'general', 'Asia/Makassar', 'Asia/Makassar', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1465, 'en', 'general', 'Asia/Manila', 'Asia/Manila', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1466, 'en', 'general', 'Asia/Muscat', 'Asia/Muscat', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1467, 'en', 'general', 'Asia/Nicosia', 'Asia/Nicosia', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1468, 'en', 'general', 'Asia/Novokuznetsk', 'Asia/Novokuznetsk', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1469, 'en', 'general', 'Asia/Novosibirsk', 'Asia/Novosibirsk', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1470, 'en', 'general', 'Asia/Omsk', 'Asia/Omsk', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1471, 'en', 'general', 'Asia/Oral', 'Asia/Oral', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1472, 'en', 'general', 'Asia/Phnom_Penh', 'Asia/Phnom_Penh', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1473, 'en', 'general', 'Asia/Pontianak', 'Asia/Pontianak', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1474, 'en', 'general', 'Asia/Pyongyang', 'Asia/Pyongyang', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1475, 'en', 'general', 'Asia/Qatar', 'Asia/Qatar', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1476, 'en', 'general', 'Asia/Qostanay', 'Asia/Qostanay', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1477, 'en', 'general', 'Asia/Qyzylorda', 'Asia/Qyzylorda', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1478, 'en', 'general', 'Asia/Riyadh', 'Asia/Riyadh', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1479, 'en', 'general', 'Asia/Sakhalin', 'Asia/Sakhalin', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1480, 'en', 'general', 'Asia/Samarkand', 'Asia/Samarkand', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1481, 'en', 'general', 'Asia/Seoul', 'Asia/Seoul', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1482, 'en', 'general', 'Asia/Shanghai', 'Asia/Shanghai', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1483, 'en', 'general', 'Asia/Singapore', 'Asia/Singapore', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1484, 'en', 'general', 'Asia/Srednekolymsk', 'Asia/Srednekolymsk', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1485, 'en', 'general', 'Asia/Taipei', 'Asia/Taipei', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1486, 'en', 'general', 'Asia/Tashkent', 'Asia/Tashkent', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1487, 'en', 'general', 'Asia/Tbilisi', 'Asia/Tbilisi', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1488, 'en', 'general', 'Asia/Tehran', 'Asia/Tehran', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1489, 'en', 'general', 'Asia/Thimphu', 'Asia/Thimphu', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1490, 'en', 'general', 'Asia/Tokyo', 'Asia/Tokyo', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1491, 'en', 'general', 'Asia/Tomsk', 'Asia/Tomsk', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1492, 'en', 'general', 'Asia/Ulaanbaatar', 'Asia/Ulaanbaatar', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1493, 'en', 'general', 'Asia/Urumqi', 'Asia/Urumqi', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1494, 'en', 'general', 'Asia/Ust-Nera', 'Asia/Ust-Nera', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1495, 'en', 'general', 'Asia/Vientiane', 'Asia/Vientiane', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1496, 'en', 'general', 'Asia/Vladivostok', 'Asia/Vladivostok', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1497, 'en', 'general', 'Asia/Yakutsk', 'Asia/Yakutsk', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1498, 'en', 'general', 'Asia/Yangon', 'Asia/Yangon', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1499, 'en', 'general', 'Asia/Yekaterinburg', 'Asia/Yekaterinburg', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1500, 'en', 'general', 'Asia/Yerevan', 'Asia/Yerevan', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1501, 'en', 'general', 'Africa/Abidjan', 'Africa/Abidjan', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1502, 'en', 'general', 'Africa/Accra', 'Africa/Accra', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1503, 'en', 'general', 'Africa/Addis_Ababa', 'Africa/Addis_Ababa', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1504, 'en', 'general', 'Africa/Algiers', 'Africa/Algiers', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1505, 'en', 'general', 'Africa/Asmara', 'Africa/Asmara', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1506, 'en', 'general', 'Africa/Bamako', 'Africa/Bamako', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1507, 'en', 'general', 'Africa/Bangui', 'Africa/Bangui', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1508, 'en', 'general', 'Africa/Banjul', 'Africa/Banjul', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1509, 'en', 'general', 'Africa/Bissau', 'Africa/Bissau', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1510, 'en', 'general', 'Africa/Blantyre', 'Africa/Blantyre', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1511, 'en', 'general', 'Africa/Brazzaville', 'Africa/Brazzaville', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1512, 'en', 'general', 'Africa/Bujumbura', 'Africa/Bujumbura', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1513, 'en', 'general', 'Africa/Cairo', 'Africa/Cairo', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1514, 'en', 'general', 'Africa/Casablanca', 'Africa/Casablanca', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1515, 'en', 'general', 'Africa/Ceuta', 'Africa/Ceuta', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1516, 'en', 'general', 'Africa/Conakry', 'Africa/Conakry', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1517, 'en', 'general', 'Africa/Dakar', 'Africa/Dakar', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1518, 'en', 'general', 'Africa/Dar_es_Salaam', 'Africa/Dar_es_Salaam', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1519, 'en', 'general', 'Africa/Djibouti', 'Africa/Djibouti', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1520, 'en', 'general', 'Africa/Douala', 'Africa/Douala', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1521, 'en', 'general', 'Africa/El_Aaiun', 'Africa/El_Aaiun', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1522, 'en', 'general', 'Africa/Freetown', 'Africa/Freetown', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1523, 'en', 'general', 'Africa/Gaborone', 'Africa/Gaborone', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1524, 'en', 'general', 'Africa/Harare', 'Africa/Harare', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1525, 'en', 'general', 'Africa/Johannesburg', 'Africa/Johannesburg', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1526, 'en', 'general', 'Africa/Juba', 'Africa/Juba', '2024-05-01 22:31:26', '2024-05-01 22:31:26'),
(1527, 'en', 'general', 'Africa/Kampala', 'Africa/Kampala', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1528, 'en', 'general', 'Africa/Khartoum', 'Africa/Khartoum', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1529, 'en', 'general', 'Africa/Kigali', 'Africa/Kigali', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1530, 'en', 'general', 'Africa/Kinshasa', 'Africa/Kinshasa', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1531, 'en', 'general', 'Africa/Lagos', 'Africa/Lagos', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1532, 'en', 'general', 'Africa/Libreville', 'Africa/Libreville', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1533, 'en', 'general', 'Africa/Lome', 'Africa/Lome', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1534, 'en', 'general', 'Africa/Luanda', 'Africa/Luanda', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1535, 'en', 'general', 'Africa/Lubumbashi', 'Africa/Lubumbashi', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1536, 'en', 'general', 'Africa/Lusaka', 'Africa/Lusaka', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1537, 'en', 'general', 'Africa/Malabo', 'Africa/Malabo', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1538, 'en', 'general', 'Africa/Maputo', 'Africa/Maputo', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1539, 'en', 'general', 'Africa/Maseru', 'Africa/Maseru', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1540, 'en', 'general', 'Africa/Mbabane', 'Africa/Mbabane', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1541, 'en', 'general', 'Africa/Mogadishu', 'Africa/Mogadishu', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1542, 'en', 'general', 'Africa/Monrovia', 'Africa/Monrovia', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1543, 'en', 'general', 'Africa/Nairobi', 'Africa/Nairobi', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1544, 'en', 'general', 'Africa/Ndjamena', 'Africa/Ndjamena', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1545, 'en', 'general', 'Africa/Niamey', 'Africa/Niamey', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1546, 'en', 'general', 'Africa/Nouakchott', 'Africa/Nouakchott', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1547, 'en', 'general', 'Africa/Ouagadougou', 'Africa/Ouagadougou', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1548, 'en', 'general', 'Africa/Porto-Novo', 'Africa/Porto-Novo', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1549, 'en', 'general', 'Africa/Sao_Tome', 'Africa/Sao_Tome', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1550, 'en', 'general', 'Africa/Tripoli', 'Africa/Tripoli', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1551, 'en', 'general', 'Africa/Tunis', 'Africa/Tunis', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1552, 'en', 'general', 'Africa/Windhoek', 'Africa/Windhoek', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1553, 'en', 'general', 'Antarctica/Casey', 'Antarctica/Casey', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1554, 'en', 'general', 'Antarctica/Davis', 'Antarctica/Davis', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1555, 'en', 'general', 'Antarctica/DumontDUrville', 'Antarctica/DumontDUrville', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1556, 'en', 'general', 'Antarctica/Macquarie', 'Antarctica/Macquarie', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1557, 'en', 'general', 'Antarctica/Mawson', 'Antarctica/Mawson', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1558, 'en', 'general', 'Antarctica/McMurdo', 'Antarctica/McMurdo', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1559, 'en', 'general', 'Antarctica/Palmer', 'Antarctica/Palmer', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1560, 'en', 'general', 'Antarctica/Rothera', 'Antarctica/Rothera', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1561, 'en', 'general', 'Antarctica/Syowa', 'Antarctica/Syowa', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1562, 'en', 'general', 'Antarctica/Troll', 'Antarctica/Troll', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1563, 'en', 'general', 'Antarctica/Vostok', 'Antarctica/Vostok', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1564, 'en', 'general', 'Arctic/Longyearbyen', 'Arctic/Longyearbyen', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1565, 'en', 'general', 'Atlantic/Azores', 'Atlantic/Azores', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1566, 'en', 'general', 'Atlantic/Bermuda', 'Atlantic/Bermuda', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1567, 'en', 'general', 'Atlantic/Canary', 'Atlantic/Canary', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1568, 'en', 'general', 'Atlantic/Cape_Verde', 'Atlantic/Cape_Verde', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1569, 'en', 'general', '(GMT/UTC -01:00)', '(GMT/UTC -01:00)', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1570, 'en', 'general', 'Atlantic/Faroe', 'Atlantic/Faroe', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1571, 'en', 'general', 'Atlantic/Madeira', 'Atlantic/Madeira', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1572, 'en', 'general', 'Atlantic/Reykjavik', 'Atlantic/Reykjavik', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1573, 'en', 'general', 'Atlantic/South_Georgia', 'Atlantic/South_Georgia', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1574, 'en', 'general', 'Atlantic/St_Helena', 'Atlantic/St_Helena', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1575, 'en', 'general', 'Atlantic/Stanley', 'Atlantic/Stanley', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1576, 'en', 'general', 'Pacific/Apia', 'Pacific/Apia', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1577, 'en', 'general', '(GMT/UTC +13:00)', '(GMT/UTC +13:00)', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1578, 'en', 'general', 'Pacific/Auckland', 'Pacific/Auckland', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1579, 'en', 'general', 'Pacific/Bougainville', 'Pacific/Bougainville', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1580, 'en', 'general', 'Pacific/Chatham', 'Pacific/Chatham', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1581, 'en', 'general', '(GMT/UTC +12:45)', '(GMT/UTC +12:45)', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1582, 'en', 'general', 'Pacific/Chuuk', 'Pacific/Chuuk', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1583, 'en', 'general', 'Pacific/Easter', 'Pacific/Easter', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1584, 'en', 'general', 'Pacific/Efate', 'Pacific/Efate', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1585, 'en', 'general', 'Pacific/Fakaofo', 'Pacific/Fakaofo', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1586, 'en', 'general', 'Pacific/Fiji', 'Pacific/Fiji', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1587, 'en', 'general', 'Pacific/Funafuti', 'Pacific/Funafuti', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1588, 'en', 'general', 'Pacific/Galapagos', 'Pacific/Galapagos', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1589, 'en', 'general', 'Pacific/Gambier', 'Pacific/Gambier', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1590, 'en', 'general', 'Pacific/Guadalcanal', 'Pacific/Guadalcanal', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1591, 'en', 'general', 'Pacific/Guam', 'Pacific/Guam', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1592, 'en', 'general', 'Pacific/Honolulu', 'Pacific/Honolulu', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1593, 'en', 'general', '(GMT/UTC -10:00)', '(GMT/UTC -10:00)', '2024-05-01 22:31:27', '2024-05-01 22:31:27'),
(1594, 'en', 'general', 'Pacific/Kanton', 'Pacific/Kanton', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1595, 'en', 'general', 'Pacific/Kiritimati', 'Pacific/Kiritimati', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1596, 'en', 'general', '(GMT/UTC +14:00)', '(GMT/UTC +14:00)', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1597, 'en', 'general', 'Pacific/Kosrae', 'Pacific/Kosrae', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1598, 'en', 'general', 'Pacific/Kwajalein', 'Pacific/Kwajalein', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1599, 'en', 'general', 'Pacific/Majuro', 'Pacific/Majuro', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1600, 'en', 'general', 'Pacific/Marquesas', 'Pacific/Marquesas', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1601, 'en', 'general', '(GMT/UTC -09:30)', '(GMT/UTC -09:30)', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1602, 'en', 'general', 'Pacific/Midway', 'Pacific/Midway', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1603, 'en', 'general', '(GMT/UTC -11:00)', '(GMT/UTC -11:00)', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1604, 'en', 'general', 'Pacific/Nauru', 'Pacific/Nauru', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1605, 'en', 'general', 'Pacific/Niue', 'Pacific/Niue', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1606, 'en', 'general', 'Pacific/Norfolk', 'Pacific/Norfolk', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1607, 'en', 'general', 'Pacific/Noumea', 'Pacific/Noumea', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1608, 'en', 'general', 'Pacific/Pago_Pago', 'Pacific/Pago_Pago', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1609, 'en', 'general', 'Pacific/Palau', 'Pacific/Palau', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1610, 'en', 'general', 'Pacific/Pitcairn', 'Pacific/Pitcairn', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1611, 'en', 'general', 'Pacific/Pohnpei', 'Pacific/Pohnpei', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1612, 'en', 'general', 'Pacific/Port_Moresby', 'Pacific/Port_Moresby', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1613, 'en', 'general', 'Pacific/Rarotonga', 'Pacific/Rarotonga', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1614, 'en', 'general', 'Pacific/Saipan', 'Pacific/Saipan', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1615, 'en', 'general', 'Pacific/Tahiti', 'Pacific/Tahiti', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1616, 'en', 'general', 'Pacific/Tarawa', 'Pacific/Tarawa', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1617, 'en', 'general', 'Pacific/Tongatapu', 'Pacific/Tongatapu', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1618, 'en', 'general', 'Pacific/Wake', 'Pacific/Wake', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1619, 'en', 'general', 'Pacific/Wallis', 'Pacific/Wallis', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1620, 'en', 'general', '', '', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1621, 'en', 'alerts', 'Updated Successfully!', 'Updated Successfully!', '2024-05-01 22:31:28', '2024-05-01 22:31:28'),
(1622, 'en', 'general', 'FAQ’s', 'FAQ’s', '2024-05-01 22:37:41', '2024-05-01 22:37:41'),
(1623, 'en', 'general', 'There are no new FAQ’s', 'There are no new FAQ’s', '2024-05-01 22:37:41', '2024-05-01 22:37:41'),
(1624, 'en', 'general', 'This faq section will be updated shortly.', 'This faq section will be updated shortly.', '2024-05-01 22:37:41', '2024-05-01 22:37:41'),
(1625, 'en', 'general', 'Let’s get in Touch', 'Let’s get in Touch', '2024-05-01 22:37:49', '2024-05-01 22:37:49'),
(1626, 'en', 'general', 'Get OTP', 'Get OTP', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1627, 'en', 'general', 'Verify OTP', 'Verify OTP', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1628, 'en', 'general', 'Enter Otp', 'Enter Otp', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1629, 'en', 'general', 'I agree with', 'I agree with', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1630, 'en', 'general', 'Terms & Services', 'Terms & Services', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1631, 'en', 'general', 'An OTP (One Time Password) has been sent to your email ID. Please enter the OTP below to submit your guest ticket.', 'An OTP (One Time Password) has been sent to your email ID. Please enter the OTP below to submit your guest ticket.', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1632, 'en', 'errorpages', 'Access Denied', 'Access Denied', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1633, 'en', 'errorpages', 'It Seems Like You Are Not Authorized To Access This Page', 'It Seems Like You Are Not Authorized To Access This Page', '2024-05-01 22:37:54', '2024-05-01 22:37:54'),
(1634, 'en', 'general', 'Create new account', 'Create new account', '2024-05-01 22:38:09', '2024-05-01 22:38:09');
INSERT INTO `translates` (`id`, `lang_code`, `group_langname`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1635, 'en', 'general', 'Firstname', 'Firstname', '2024-05-01 22:38:09', '2024-05-01 22:38:09'),
(1636, 'en', 'general', 'Lastname', 'Lastname', '2024-05-01 22:38:09', '2024-05-01 22:38:09'),
(1637, 'en', 'general', 'Terms of services', 'Terms of services', '2024-05-01 22:38:09', '2024-05-01 22:38:09'),
(1638, 'en', 'general', 'Create Account', 'Create Account', '2024-05-01 22:38:09', '2024-05-01 22:38:09'),
(1639, 'en', 'general', 'Already have an account?', 'Already have an account?', '2024-05-01 22:38:09', '2024-05-01 22:38:09'),
(1640, 'en', 'menu', 'Create Account', 'Create Account', '2024-05-01 22:38:09', '2024-05-01 22:38:09'),
(1641, 'en', 'general', 'Knowledge', 'Knowledge', '2024-05-01 22:38:25', '2024-05-01 22:38:25'),
(1642, 'en', 'general', 'Home', 'Home', '2024-05-01 22:38:25', '2024-05-01 22:38:25'),
(1643, 'en', 'alerts', 'An OTP (One Time Password) has been sent to your email ID. Please enter the OTP below to submit your guest ticket', 'An OTP (One Time Password) has been sent to your email ID. Please enter the OTP below to submit your guest ticket', '2024-05-02 12:40:52', '2024-05-02 12:40:52'),
(1644, 'en', 'general', 'Note', 'Note', '2024-05-02 12:42:51', '2024-05-02 12:42:51'),
(1645, 'en', 'general', 'Mail Encryption', 'Mail Encryption', '2024-05-02 12:42:55', '2024-05-02 12:42:55'),
(1646, 'en', 'setting', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.', 'If you enable this \"All Users\" setting feature, the \"External Chat\" will appear to both the users, i.e., for registered users as well as for guest users on the \"Application.', '2024-05-02 12:53:01', '2024-05-02 12:53:01'),
(1647, 'en', 'setting', 'Only Registered Users', 'Only Registered Users', '2024-05-02 12:53:01', '2024-05-02 12:53:01'),
(1648, 'en', 'general', 'External Chat', 'External Chat', '2024-05-02 12:53:01', '2024-05-02 12:53:01'),
(1649, 'en', 'general', 'FAQ Answer', 'FAQ Answer', '2024-05-02 12:53:43', '2024-05-02 12:53:43'),
(1650, 'en', 'general', 'Email Template Fields', 'Email Template Fields', '2024-05-02 12:53:43', '2024-05-02 12:53:43'),
(1651, 'en', 'general', 'Announcement Settings', 'Announcement Settings', '2024-05-02 12:57:36', '2024-05-02 12:57:36'),
(1652, 'en', 'setting', 'If you enable this \"All Users\" setting feature, the \"Announcement\" will appear to both the users, i.e., for login users as well as non login users on the \"Application.', 'If you enable this \"All Users\" setting feature, the \"Announcement\" will appear to both the users, i.e., for login users as well as non login users on the \"Application.', '2024-05-02 12:57:36', '2024-05-02 12:57:36'),
(1653, 'en', 'setting', 'Only Login Users', 'Only Login Users', '2024-05-02 12:57:36', '2024-05-02 12:57:36'),
(1654, 'en', 'setting', 'If you enable this \"Only Login Users\" setting feature, the \"Announcement\" will appear only for the Login users on the \"Application.\"', 'If you enable this \"Only Login Users\" setting feature, the \"Announcement\" will appear only for the Login users on the \"Application.\"', '2024-05-02 12:57:36', '2024-05-02 12:57:36'),
(1655, 'en', 'setting', 'Non Login Users', 'Non Login Users', '2024-05-02 12:57:36', '2024-05-02 12:57:36'),
(1656, 'en', 'setting', 'If you enable this \"Non Logi Users\" setting feature, the \"Announcement\" will appear for the non login users on the \"Application.\"', 'If you enable this \"Non Logi Users\" setting feature, the \"Announcement\" will appear for the non login users on the \"Application.\"', '2024-05-02 12:57:36', '2024-05-02 12:57:36'),
(1657, 'en', 'general', 'Selected Day', 'Selected Day', '2024-05-02 12:57:36', '2024-05-02 12:57:36'),
(1658, 'en', 'general', 'Add Department', 'Add Department', '2024-05-02 12:59:06', '2024-05-02 12:59:06'),
(1659, 'en', 'general', 'Department name', 'Department name', '2024-05-02 12:59:06', '2024-05-02 12:59:06'),
(1660, 'en', 'general', 'Add New Department', 'Add New Department', '2024-05-02 12:59:06', '2024-05-02 12:59:06'),
(1661, 'en', 'general', 'Edit department', 'Edit department', '2024-05-02 12:59:06', '2024-05-02 12:59:06'),
(1662, 'en', 'general', 'Ex:- Web Developer', 'Ex:- Web Developer', '2024-05-02 12:59:06', '2024-05-02 12:59:06'),
(1663, 'en', 'alerts', 'This might restore your record', 'This might restore your record', '2024-05-02 13:11:00', '2024-05-02 13:11:00'),
(1664, 'en', 'alerts', 'This might delete your records permanently', 'This might delete your records permanently', '2024-05-02 13:11:00', '2024-05-02 13:11:00'),
(1665, 'en', 'alerts', 'Cache Clear Successfull', 'Cache Clear Successfull', '2024-05-02 13:12:12', '2024-05-02 13:12:12'),
(1666, 'en', 'alerts', 'Customer added as a voilated customer.', 'Customer added as a voilated customer.', '2024-05-02 13:18:40', '2024-05-02 13:18:40'),
(1667, 'en', 'general', 'Un-Voilation', 'Un-Voilation', '2024-05-02 13:18:40', '2024-05-02 13:18:40'),
(1668, 'en', 'alerts', 'Customer removed from voilated customer.', 'Customer removed from voilated customer.', '2024-05-02 13:18:45', '2024-05-02 13:18:45'),
(1669, 'en', 'alerts', 'Category name already exists0000000000', 'Category name already exists0000000000', '2024-05-02 13:35:15', '2024-05-02 13:35:15'),
(1670, 'en', 'alerts', 'The Department has been successfully updated.', 'The Department has been successfully updated.', '2024-05-03 13:42:57', '2024-05-03 13:42:57'),
(1671, 'en', 'general', 'Don’t have account?', 'Don’t have account?', '2024-05-17 14:12:26', '2024-05-17 14:12:26'),
(1672, 'en', 'general', 'Please enter the username', 'Please enter the username', '2024-05-17 14:12:26', '2024-05-17 14:12:26'),
(1673, 'en', 'general', 'Please enter the password.', 'Please enter the password.', '2024-05-17 14:12:26', '2024-05-17 14:12:26'),
(1674, 'en', 'alerts', 'The username or password you entered is incorrect. Please Check', 'The username or password you entered is incorrect. Please Check', '2024-05-17 14:12:26', '2024-05-17 14:12:26'),
(1675, 'en', 'alerts', 'Your Email is not verified yet. An email verification link was sent successfully. Please check and verify your email.', 'Your Email is not verified yet. An email verification link was sent successfully. Please check and verify your email.', '2024-05-17 14:12:26', '2024-05-17 14:12:26'),
(1676, 'en', 'alerts', 'Your account is currently inactive. Please contact the admin.', 'Your account is currently inactive. Please contact the admin.', '2024-05-17 14:12:26', '2024-05-17 14:12:26'),
(1677, 'en', 'alerts', 'Temporary Login disable', 'Temporary Login disable', '2024-05-17 14:12:26', '2024-05-17 14:12:26'),
(1678, 'en', 'general', 'Select Employee', 'Select Employee', '2024-05-17 14:22:35', '2024-05-17 14:22:35'),
(1679, 'en', 'general', 'The groupname has already been taken.', 'The groupname has already been taken.', '2024-07-06 13:43:21', '2024-07-06 13:43:21'),
(1680, 'en', 'menu', 'Create Page', 'Create Page', '2024-07-06 13:44:56', '2024-07-06 13:44:56'),
(1681, 'en', 'menu', 'Create Pages', 'Create Pages', '2024-07-06 13:44:56', '2024-07-06 13:44:56'),
(1682, 'en', 'alerts', 'The Page has been successfully updated.', 'The Page has been successfully updated.', '2024-07-06 13:45:12', '2024-07-06 13:45:12'),
(1683, 'en', 'general', 'The pagename has already been taken.', 'The pagename has already been taken.', '2024-07-06 13:45:13', '2024-07-06 13:45:13'),
(1684, 'en', 'alerts', 'Please select the view on header/footer/both.', 'Please select the view on header/footer/both.', '2024-07-06 13:49:58', '2024-07-06 13:49:58'),
(1685, 'en', 'general', 'The pagedescription field is required.', 'The pagedescription field is required.', '2024-07-06 13:50:18', '2024-07-06 13:50:18'),
(1686, 'en', 'alerts', 'The Department has been successfully deleted.', 'The Department has been successfully deleted.', '2024-07-07 12:05:13', '2024-07-07 12:05:13'),
(1687, 'en', 'menu', 'Plants', 'Plants', '2024-07-07 12:45:43', '2024-07-07 12:45:43'),
(1688, 'en', 'general', 'Address', 'Address', '2024-07-07 13:48:21', '2024-07-07 13:48:21'),
(1689, 'en', 'general', 'Installation Date', 'Installation Date', '2024-07-07 13:50:02', '2024-07-07 13:50:02'),
(1690, 'en', 'general', 'Add Plants', 'Add Plants', '2024-07-07 14:02:57', '2024-07-07 14:02:57'),
(1691, 'en', 'general', 'Plant ID', 'Plant ID', '2024-07-07 14:03:58', '2024-07-07 14:03:58'),
(1692, 'en', 'general', 'Ask Chat GPT', 'Ask Chat GPT', '2024-07-08 00:36:31', '2024-07-08 00:36:31'),
(1693, 'en', 'general', 'Type your query here', 'Type your query here', '2024-07-08 00:36:31', '2024-07-08 00:36:31'),
(1694, 'en', 'general', 'Generate Text', 'Generate Text', '2024-07-08 00:36:31', '2024-07-08 00:36:31'),
(1695, 'en', 'general', 'Generated text', 'Generated text', '2024-07-08 00:36:31', '2024-07-08 00:36:31'),
(1696, 'en', 'general', 'Copy Response', 'Copy Response', '2024-07-08 00:36:31', '2024-07-08 00:36:31'),
(1697, 'en', 'general', 'Feature Image', 'Feature Image', '2024-07-08 00:39:49', '2024-07-08 00:39:49'),
(1698, 'en', 'general', 'Tickets Summary', 'Tickets Summary', '2024-07-09 12:27:29', '2024-07-09 12:27:29'),
(1699, 'en', 'general', 'Create Ticket', 'Create Ticket', '2024-07-09 12:27:55', '2024-07-09 12:27:55'),
(1700, 'en', 'menu', 'Loading..', 'Loading..', '2024-07-09 12:27:55', '2024-07-09 12:27:55'),
(1701, 'en', 'general', 'Ticket View', 'Ticket View', '2024-07-09 12:28:42', '2024-07-09 12:28:42'),
(1702, 'en', 'general', 'Print', 'Print', '2024-07-09 12:28:42', '2024-07-09 12:28:42'),
(1703, 'en', 'general', 'The comment field is required.', 'The comment field is required.', '2024-07-09 12:29:10', '2024-07-09 12:29:10'),
(1704, 'en', 'general', 'Conversions', 'Conversions', '2024-07-09 12:29:35', '2024-07-09 12:29:35'),
(1705, 'en', 'alerts', 'Logout Successfull', 'Logout Successfull', '2024-07-09 12:33:58', '2024-07-09 12:33:58'),
(1706, 'en', 'general', 'Send Verification Link', 'Send Verification Link', '2024-07-09 12:35:14', '2024-07-09 12:35:14'),
(1707, 'en', 'menu', 'Role & Permissions', 'Role & Permissions', '2024-07-09 12:37:49', '2024-07-09 12:37:49'),
(1708, 'en', 'general', 'Category :', 'Category :', '2024-07-09 13:15:06', '2024-07-09 13:15:06'),
(1709, 'en', 'general', 'Category 1', 'Category 1', '2024-07-09 13:15:06', '2024-07-09 13:15:06'),
(1710, 'en', 'general', 'Category 2', 'Category 2', '2024-07-09 13:15:07', '2024-07-09 13:15:07'),
(1711, 'en', 'general', 'Category 3', 'Category 3', '2024-07-09 13:15:07', '2024-07-09 13:15:07'),
(1712, 'en', 'general', 'Image :', 'Image :', '2024-07-09 13:47:04', '2024-07-09 13:47:04'),
(1713, 'en', 'general', 'Icon :', 'Icon :', '2024-07-09 13:47:04', '2024-07-09 13:47:04'),
(1714, 'en', 'general', 'Upload Image :', 'Upload Image :', '2024-07-09 14:01:00', '2024-07-09 14:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `userratings`
--

CREATE TABLE `userratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratingstar` bigint(20) NOT NULL DEFAULT 0,
  `ratingcomment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `departments` varchar(255) DEFAULT NULL,
  `dashboard` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `skills` longtext DEFAULT NULL,
  `languagues` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `empid`, `name`, `gender`, `departments`, `dashboard`, `provider_id`, `email`, `phone`, `skills`, `languagues`, `status`, `image`, `verified`, `password`, `country`, `timezone`, `darkmode`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1', NULL, 'Admin 1', NULL, NULL, 'Admin', NULL, 'admin@admin.com', NULL, NULL, NULL, '1', NULL, 1, '$2y$10$7EHeCfiuHNyGUbZzUVDArOXY4eRUG6k2DDnIjO.ExLLXA1UWY1e8C', '', 'UTC', NULL, 'imD846Pk0fU7NDgsw0jfbtxm0Hz2kY1q7K3sHXYuXRgsW6yGEvEnkmzBSRC0', '2024-04-28 02:00:28', '2024-04-28 02:00:38'),
(2, 'Agent', 'Agent', NULL, 'Agent Agent', NULL, NULL, NULL, NULL, 'agent@agent.com', NULL, NULL, NULL, '1', NULL, 1, '$2y$10$I9h6t7EtK/93cgtVXAX7duI96Sd4g4zGMNcUUNHTX4UZ8QU/sWOO2', '', 'UTC', NULL, '', '2024-04-28 02:00:28', '2024-04-28 02:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `usersettings`
--

CREATE TABLE `usersettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_refresh` bigint(20) DEFAULT NULL,
  `emailnotifyon` tinyint(1) DEFAULT NULL,
  `star5` bigint(20) NOT NULL DEFAULT 0,
  `star4` bigint(20) NOT NULL DEFAULT 0,
  `star3` bigint(20) NOT NULL DEFAULT 0,
  `star2` bigint(20) NOT NULL DEFAULT 0,
  `star1` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usersettings`
--

INSERT INTO `usersettings` (`id`, `users_id`, `ticket_refresh`, `emailnotifyon`, `star5`, `star4`, `star3`, `star2`, `star1`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 0, 0, 0, 0, 0, '2024-04-28 02:00:28', '2024-04-28 02:00:28'),
(2, 2, NULL, NULL, 0, 0, 0, 0, 0, '2024-04-28 02:00:28', '2024-04-28 02:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `verify_otps`
--

CREATE TABLE `verify_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` varchar(255) DEFAULT NULL,
  `otp` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_otps`
--

INSERT INTO `verify_otps` (`id`, `cust_id`, `otp`, `type`, `created_at`, `updated_at`) VALUES
(1, 'adilamin177@gmail.com', '577866', 'guestotp', '2024-05-02 12:40:51', '2024-05-02 12:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `cust_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 3, 'e06fa2b9faaaea7f81a0f96cfec96d52b3570fe7', '2024-05-17 14:08:51', '2024-05-17 14:08:51'),
(3, 6, '6dcaf8f66a16bf06616daeb30b1fd4199910a28d', '2024-07-09 12:26:25', '2024-07-09 12:26:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apptitles`
--
ALTER TABLE `apptitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `articles_likes`
--
ALTER TABLE `articles_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_comments`
--
ALTER TABLE `article_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_replies`
--
ALTER TABLE `article_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bussinesshours`
--
ALTER TABLE `bussinesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `callactions`
--
ALTER TABLE `callactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cannedmessages`
--
ALTER TABLE `cannedmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_category_user`
--
ALTER TABLE `category_category_user`
  ADD PRIMARY KEY (`category_id`,`category_user_id`),
  ADD KEY `category_category_user_category_user_id_foreign` (`category_user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`ticket_id`),
  ADD KEY `comments_cust_id_foreign` (`cust_id`);

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customcssjs`
--
ALTER TABLE `customcssjs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `customer_settings`
--
ALTER TABLE `customer_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_settings_custs_id_foreign` (`custs_id`);

--
-- Indexes for table `customfields`
--
ALTER TABLE `customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customizeerrors`
--
ALTER TABLE `customizeerrors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeratings`
--
ALTER TABLE `employeeratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_list`
--
ALTER TABLE `faq_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_boxes`
--
ALTER TABLE `feature_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footertexts`
--
ALTER TABLE `footertexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_groupname_unique` (`groupname`);

--
-- Indexes for table `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD PRIMARY KEY (`group_id`,`category_id`),
  ADD KEY `groups_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD PRIMARY KEY (`groups_id`,`users_id`),
  ADD KEY `groups_users_users_id_foreign` (`users_id`);

--
-- Indexes for table `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_languagecode_unique` (`languagecode`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plants_plant_id_unique` (`plant_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`);

--
-- Indexes for table `projects_categories`
--
ALTER TABLE `projects_categories`
  ADD PRIMARY KEY (`projects_id`,`category_id`),
  ADD KEY `projects_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `ratingtokens`
--
ALTER TABLE `ratingtokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sendmails`
--
ALTER TABLE `sendmails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendmails_user_id_foreign` (`user_id`);

--
-- Indexes for table `senduserlists`
--
ALTER TABLE `senduserlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senduserlists_mail_id_foreign` (`mail_id`),
  ADD KEY `senduserlists_touser_id_foreign` (`touser_id`),
  ADD KEY `senduserlists_tocust_id_foreign` (`tocust_id`);

--
-- Indexes for table `seosettings`
--
ALTER TABLE `seosettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategoryschild`
--
ALTER TABLE `subcategoryschild`
  ADD PRIMARY KEY (`category_id`,`subcategory_id`),
  ADD KEY `subcategoryschild_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `subcategorysd`
--
ALTER TABLE `subcategorysd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketassignchildren`
--
ALTER TABLE `ticketassignchildren`
  ADD PRIMARY KEY (`toassignuser_id`,`ticket_id`),
  ADD KEY `ticketassignchildren_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `tickethistories`
--
ALTER TABLE `tickethistories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickethistories_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketnotes_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticketnotes_user_id_foreign` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`),
  ADD KEY `tickets_cust_id_foreign` (`cust_id`),
  ADD KEY `tickets_category_id_foreign` (`category_id`);

--
-- Indexes for table `ticketsccemails`
--
ALTER TABLE `ticketsccemails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_customfields`
--
ALTER TABLE `ticket_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translates_lang_code_foreign` (`lang_code`);

--
-- Indexes for table `userratings`
--
ALTER TABLE `userratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usersettings`
--
ALTER TABLE `usersettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersettings_users_id_foreign` (`users_id`);

--
-- Indexes for table `verify_otps`
--
ALTER TABLE `verify_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apptitles`
--
ALTER TABLE `apptitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `articles_likes`
--
ALTER TABLE `articles_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `article_comments`
--
ALTER TABLE `article_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_replies`
--
ALTER TABLE `article_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussinesshours`
--
ALTER TABLE `bussinesshours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `callactions`
--
ALTER TABLE `callactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cannedmessages`
--
ALTER TABLE `cannedmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `customcssjs`
--
ALTER TABLE `customcssjs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_settings`
--
ALTER TABLE `customer_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customfields`
--
ALTER TABLE `customfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customizeerrors`
--
ALTER TABLE `customizeerrors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `employeeratings`
--
ALTER TABLE `employeeratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_list`
--
ALTER TABLE `faq_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feature_boxes`
--
ALTER TABLE `feature_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footertexts`
--
ALTER TABLE `footertexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratingtokens`
--
ALTER TABLE `ratingtokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sendmails`
--
ALTER TABLE `sendmails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senduserlists`
--
ALTER TABLE `senduserlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seosettings`
--
ALTER TABLE `seosettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategorysd`
--
ALTER TABLE `subcategorysd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickethistories`
--
ALTER TABLE `tickethistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticketsccemails`
--
ALTER TABLE `ticketsccemails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket_customfields`
--
ALTER TABLE `ticket_customfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1715;

--
-- AUTO_INCREMENT for table `userratings`
--
ALTER TABLE `userratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usersettings`
--
ALTER TABLE `usersettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verify_otps`
--
ALTER TABLE `verify_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_category_user`
--
ALTER TABLE `category_category_user`
  ADD CONSTRAINT `category_category_user_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_category_user_category_user_id_foreign` FOREIGN KEY (`category_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_settings`
--
ALTER TABLE `customer_settings`
  ADD CONSTRAINT `customer_settings_custs_id_foreign` FOREIGN KEY (`custs_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD CONSTRAINT `groups_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_categories_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD CONSTRAINT `groups_users_groups_id_foreign` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_users_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects_categories`
--
ALTER TABLE `projects_categories`
  ADD CONSTRAINT `projects_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_categories_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sendmails`
--
ALTER TABLE `sendmails`
  ADD CONSTRAINT `sendmails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `senduserlists`
--
ALTER TABLE `senduserlists`
  ADD CONSTRAINT `senduserlists_mail_id_foreign` FOREIGN KEY (`mail_id`) REFERENCES `sendmails` (`id`),
  ADD CONSTRAINT `senduserlists_tocust_id_foreign` FOREIGN KEY (`tocust_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `senduserlists_touser_id_foreign` FOREIGN KEY (`touser_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategoryschild`
--
ALTER TABLE `subcategoryschild`
  ADD CONSTRAINT `subcategoryschild_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subcategoryschild_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategorysd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticketassignchildren`
--
ALTER TABLE `ticketassignchildren`
  ADD CONSTRAINT `ticketassignchildren_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticketassignchildren_toassignuser_id_foreign` FOREIGN KEY (`toassignuser_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickethistories`
--
ALTER TABLE `tickethistories`
  ADD CONSTRAINT `tickethistories_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD CONSTRAINT `ticketnotes_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticketnotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translates`
--
ALTER TABLE `translates`
  ADD CONSTRAINT `translates_lang_code_foreign` FOREIGN KEY (`lang_code`) REFERENCES `languages` (`languagecode`) ON DELETE CASCADE;

--
-- Constraints for table `usersettings`
--
ALTER TABLE `usersettings`
  ADD CONSTRAINT `usersettings_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
