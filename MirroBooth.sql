-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2024 at 04:34 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MirroBooth`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PHOTO BOOTHS DUBAI', 1, '2024-09-10 22:13:38', '2024-09-10 22:13:38'),
(2, 'GAMES & INTERACTIVES', 1, '2024-09-10 22:37:13', '2024-09-10 22:37:13'),
(3, 'VIDEO BOOTHS DUBAI', 1, '2024-09-10 22:37:31', '2024-09-10 22:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_services`
--

CREATE TABLE `featured_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_services`
--

INSERT INTO `featured_services` (`id`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2024-11-04 15:53:20', '2024-11-04 15:53:20'),
(2, 3, 1, '2024-11-04 15:53:20', '2024-11-04 15:53:20'),
(3, 2, 2, '2024-11-04 15:53:20', '2024-11-04 15:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2024_08_23_112616_create_categories_table', 1),
(6, '2024_08_23_132112_create_services_table', 1),
(7, '2024_09_10_104326_create_settings_table', 1),
(8, '2024_09_10_115300_create_featured_services_table', 1),
(9, '2024_09_10_115412_create_pages_table', 1),
(10, '2024_09_10_115611_create_blogs_table', 1),
(11, '2024_09_10_115706_create_comments_table', 1),
(12, '2024_09_10_115746_create_faq_table', 1),
(13, '2024_09_10_115811_create_temp_files_table', 1),
(14, '2024_11_01_065734_create_reviews_table', 1),
(15, '2024_11_01_081551_clear', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `review_text` varchar(500) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'NULL',
  `rating` int(11) NOT NULL DEFAULT 5,
  `review_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL DEFAULT 'NULL',
  `additional_videos_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional_videos_links`)),
  `gallery_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gallery_images`)),
  `videos_link` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `short_desc`, `description`, `status`, `image`, `additional_videos_links`, `gallery_images`, `videos_link`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'SKETCH ROBOT', 'The future is here! Guest portraits are quickly drawn by the robot.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The AI robot sketch artist, which is now available in Dubai, is a breakthrough new patent-pending technology that employs the most recent mesh of A.I. and machine. The&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">SketchRobots</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;analyze and draw guest portraits in less than 50 seconds to provide a unique, personalized takeaway. Our&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">SketchRobots</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;software is specially designed to produce outstanding sketched portraits in 30 to 50 seconds, which is more than three times faster than other sketching robots. Possibilities for branding and sharing.</span><br></p>', 1, 'service-1726217378-1.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/mvdE55-KzMM\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/1NjT-d8SGtQ\\\"]\"', '[\"service-gallery-1-66e3fca411840.jpg\",\"service-gallery-1-66e3fca4bbb84.jpg\",\"service-gallery-1-66e3fca583ff0.jpg\"]', 'https://youtu.be/gib09ZBJP50', 1, '2024-09-11 05:16:16', '2024-09-14 01:49:42'),
(2, 'AI GENERATIVE', 'AI Generative Photo Booth where the power of AI meets creativity', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The new&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">AI Generative Photo Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;- where the power of AI meets creativity! It will transform your event experience! Your visitors can design bespoke backgrounds, avatars, and adapt any AI scenario to meet your event with our cutting-edge technology. With our AI Generative Photo Booth the possibilities are truly limitless.</span><br></p>', 1, 'service-1726218019-2.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/v5HffKUi8jM\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/cvK_RkR-4Cs\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/_1ZpivvXq4M\\\"]\"', '[\"service-gallery-2-66e3ff2573700.jpg\",\"service-gallery-2-66e3ff261e461.jpg\",\"service-gallery-2-66e3ff26cf8f2.jpg\"]', 'https://www.youtube.com/watch?v=T7je5LzzNw0&t=4s', 1, '2024-09-11 05:48:31', '2024-10-29 17:04:23'),
(3, 'AI BACKGROUND', 'Our AI system allows guests to choose from various background options without a green screen.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">No more green screens are required for our Artificial Intelligence (AI). Our AI background photo booth uses facial recognition technology for comprehensive analytics to aid in background removal, AI is critical in producing great new features that have made photo booths more entertaining for guests.&nbsp;</span><br></p>', 1, 'service-1726218437-3.jpg', '\"[\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=Hm6isxqDMtk\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/S0YA0a6ENOA\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/wRdsc4kqvHk\\\"]\"', '[\"service-gallery-3-66e400c5c4099.jpg\",\"service-gallery-3-66e400c67ea2e.jpg\",\"service-gallery-3-66e400c74f1d8.jpg\",\"service-gallery-3-66e400c7774a1.jpg\"]', 'https://www.youtube.com/watch?v=reDrDifG58k', 1, '2024-09-11 05:51:59', '2024-10-29 17:02:27'),
(4, 'MIRROR BOOTH', 'Magic Mirror captures a selfie with instant print, shareable photo and data collection', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Offering the only high quality genuine</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">&nbsp;Magic Mirror</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;in the UAE with signature, QR, AI, and green screen, and a slew of other custom features! It has a full red carpet setup as well as quick sharing and printing in 7 seconds.</span><br></p>', 1, 'service-1726220265-5.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/3gahfU22nvs\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/G9yE8v7sGH0\\\"]\"', '[\"service-gallery-5-66e407eb41c97.jpg\",\"service-gallery-5-66e407ec044ae.jpg\",\"service-gallery-5-66e407ec9dba1.jpg\"]', 'https://youtu.be/0YNAcFUmDQ8', 1, '2024-09-11 05:57:42', '2024-09-14 02:37:49'),
(5, 'CLASSIC PHOTO BOOTH', 'A mobile-shaped photobooth that captures a photo or video for an immediate print or share.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">We are renowned for providing industry-leading photo booth hire, where our superior service leaves our competitors behind. Our booths are jam-packed full of mind-blowing features that will keep your guest entertained for hours on end! We distinguish ourselves by incorporating cutting-edge photobooth technology into our photobooths. No corners get cut, and we only employ high-quality equipment to ensure that you are not disappointed.</span><br></p>', 1, 'service-1726220520-6.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/VvtBLF6ySVw\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/i1Bj-PyEnQI\\\"]\"', '[\"service-gallery-6-66e408ea12c57.jpg\",\"service-gallery-6-66e408eaca395.jpg\",\"service-gallery-6-66e408eb66a65.jpg\",\"service-gallery-6-66e408eb701e8.jpg\"]', 'https://youtu.be/Jh7pDUgiZRc', 1, '2024-09-11 06:00:42', '2024-09-14 02:42:03'),
(6, 'GREEN SCREEN PHOTO BOOTH', 'Photobooth with multiple background option using greenscreen background.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Green Screen Photo Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;can transport your guests to virtually any scene. Like the cover of a magazine or the thick of an African stampede. This is due to the fact that our technology allows us to remove the green background and replace it with one of our customized backgrounds. Fully customizable, with fast sharing and printing capabilities.</span><br></p>', 1, 'service-1726223641-7.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/DKyvfXN_GWo\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/SL-Uihj0urg\\\"]\"', '[\"service-gallery-7-66e41519c5000.jpg\",\"service-gallery-7-66e41519c6e82.jpg\",\"service-gallery-7-66e41519cdda5.jpg\",\"service-gallery-7-66e41519d7cf6.jpg\"]', 'https://youtu.be/vQprcoHgoQQ', 1, '2024-09-11 06:02:03', '2024-09-14 03:34:01'),
(7, 'SELFIE COFFEE', 'Guest images are beautifully printed onto coffee using the most cutting-edge edible printer.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Take a selfie and go to the next level. It creates&nbsp;a beautified image of your&nbsp;face,&nbsp;see&nbsp;firsthand&nbsp;how we print your photo on top of your coffee, not only that we can also print your event branding, logos, beer, and cookies instantly.&nbsp;Because we use 100% unsweetened food color in our edible printing equipment, which is completely safe to drink.&nbsp;</span><br></p>', 1, 'service-1726218862-4.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Iqvny19f760\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/ZPGz3x9awZ0\\\"]\"', '[\"service-gallery-4-66e4026e7dadc.jpg\",\"service-gallery-4-66e4026f14f50.jpg\",\"service-gallery-4-66e4026f9fb89.jpg\",\"service-gallery-4-66e4026fa293f.jpg\"]', 'https://youtu.be/5vZEiqNroXg', 1, '2024-09-11 05:53:09', '2024-09-14 02:14:24'),
(8, 'PHYSICAL MOSAIC WALL', 'We construct an astonishing mosaic on a physical wall using the guests\' images.', '<span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">A live photo mosaic created by visitors, one photo at a time. Allow your followers, colleagues, or guests to participate in the creation of a large work of art. The mosaic gradually reveals the overall image, encouraging visitors and bystanders to join in the creation process.&nbsp;</span>', 1, 'service-1726221684-8.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Yg3t-kVEBCE\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/PsZN0BJTngQ\\\"]\"', '[\"service-gallery-8-66e40d75b1819.jpg\",\"service-gallery-8-66e40d75c0bdf.jpg\",\"service-gallery-8-66e40d7656e50.jpg\"]', 'https://youtu.be/waDk1svaAq8', 1, '2024-09-11 06:03:18', '2024-09-14 03:01:26'),
(9, 'DIGITAL MOSAIC', 'We use the guests\' photographs to create a stunning mosaic on a digital wall.', '<p><span style=\"color: rgb(87, 87, 87); font-family: Helvetica, arial, sans-serif; font-size: 24px; background-color: rgb(246, 246, 246);\">&nbsp;Our ground-breaking photo mosaic, creates jaw-dropping digital &amp; physical mosaics from live event photographs in real-time; using an exclusive, state-of-the-art algorithm.&nbsp;</span><br></p>', 1, 'service-1726221838-9.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/YLjeyvcfALA\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/YLjeyvcfALA\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/oKKnv3Il2N0\\\"]\"', '[\"service-gallery-9-66e40e0e4f0ef.jpg\",\"service-gallery-9-66e40e0e5f7a9.jpg\",\"service-gallery-9-66e40e0e934ac.jpg\",\"service-gallery-9-66e40e0eaae43.jpg\"]', 'https://youtu.be/YLjeyvcfALA', 1, '2024-09-11 06:03:51', '2024-10-29 15:53:17'),
(10, 'PHOTO FLIP', 'Combination of two photos to produce an incredible 3D illusion when flipped.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Photo flipping is the process of combining various images/photos utilizing creative resources to make your photo 3D. A fully customizable photo and photo cover that corresponds to your event\'s theme and brand.</span><br></p>', 1, 'service-1726223742-10.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Vpt5gemiTjI\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/3CO7S5_DlIo\\\",\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=2V6e9t9Ofg4\\\"]\"', '[\"service-gallery-10-66e4157ef247a.jpg\",\"service-gallery-10-66e4157f0e3a8.jpg\",\"service-gallery-10-66e4157f23f67.jpg\",\"service-gallery-10-66e4157f33f93.jpg\"]', 'https://youtu.be/9jcokf_zvdw', 1, '2024-09-11 06:04:29', '2024-10-29 15:53:45'),
(11, 'GLAM BOT', 'Glam Bot Robotic Arm for your upcoming event. Observing the enthusiasm of the audience', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">We are thrilled to introduce our brand-new, incredible GlamBot photobooth robotic arm for your upcoming event. Already adored by numerous well-known businesses, they reserved the GlamBot Dubai upon observing the enthusiasm of the audience. In the picture booth sector, brands and potential customers were eager for exhilarating encounters. For brand activation, please welcome the King of creative and viral content, the GlamBot Dubai.&nbsp;</span><br></p>', 1, 'service-1730710570-11.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/TdNl3eL_gP8\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/gkvh_XI_lH0\\\",\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=cu7Bt1S7atw\\\"]\"', '[\"service-gallery-11-66e40be05d787.jpg\",\"service-gallery-11-66e40be0e7c9e.jpg\",\"service-gallery-11-66e40be179f88.jpg\"]', 'https://youtu.be/tQvZ1vpx6Io', 3, '2024-09-11 06:16:52', '2024-11-04 22:56:11'),
(12, 'CAPTION CAM', 'Write, draw, express your thoughts and receive a custom branded Video instantly', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Give your guests the freedom to express themselves with the Caption Cam video booth. Write, draw, express your thoughts and receive a custom branded Video instantly. Every output is ideal for sharing on social media, but it can also be used to create an in-person digital freedom wall! All outputs are generated in real time, and designs, end displays, and animations are completely adjustable. Instant awesomeness—no waiting, no post-processing.&nbsp;</span><br></p>', 1, 'service-1726221079-13.jpg', '\"[\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=bndxP1q_GUI\\\",\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=M92d1CY_D8U\\\",\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=AwIcEH0ZGhw\\\"]\"', '[\"service-gallery-13-66e40b1829752.jpg\",\"service-gallery-13-66e40b1831748.jpg\",\"service-gallery-13-66e40b1848692.jpg\"]', 'https://www.youtube.com/watch?v=5gRsrjcX2DE', 3, '2024-09-11 06:18:18', '2024-10-29 16:58:20'),
(13, 'SPIN 360 VIDEO BOOTH', 'Experience 360° SPIN video with beautify video effects shareable thru QR scanning or email.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Take your guests to the next level with the newest Interactive Amazing&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">360 Video Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">, which captures film from all angles! As the guests climb onto the branded platform, the slow-motion camera arm circles them. We specialize in creating unique 360-degree video activations for Dubai businesses, clients, and events of all sorts.</span><br></p>', 1, 'service-1726223243-14.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/JNNH833rKxk\\\",\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=PQ1KPIYl_MI\\\",\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=0N-r-9NgwvI\\\"]\"', '[\"service-gallery-14-66e4138cd9ca3.jpg\",\"service-gallery-14-66e4138d4e7f0.jpg\",\"service-gallery-14-66e4138ddc8a8.jpg\"]', 'https://youtu.be/2J1AYvWn49g', 3, '2024-09-11 06:18:53', '2024-10-29 15:54:40'),
(14, '360 LOOP VIDEO BOOTH', 'Change the background of your 360° video to a custom backdrop using our 360° loop.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Engage your customers with a fun and distinctive video capture with a virtual background.&nbsp;Our 360-degree loop provides an engaging video experience. Guests may instantly share their branded videos on social media with friends and followers, maximizing brand reach at your activation.</span><br></p>', 1, 'service-1730710614-12.jpg', '\"[null]\"', '[\"service-gallery-12-66e41310a9558.jpg\",\"service-gallery-12-66e41310b2615.jpg\",\"service-gallery-12-66e41310c7a35.jpg\",\"service-gallery-12-66e41310ce8c1.jpg\"]', 'https://youtu.be/WcoTT-uO9mY', 3, '2024-09-11 06:17:25', '2024-11-04 22:56:54'),
(15, 'VOUGE BOOTH', 'A classy video experience with a classy booth enclosure to have a vibrant effect on guests.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Vogue Video Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;will&nbsp;captures video clips and gives them a glam feel by enclosing them in a light enclosure that adds magnificent MTV-style effects to each video capture.&nbsp;</span><br></p>', 1, 'service-1726223440-15.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/XXwctxZN_UY\\\"]\"', '[\"service-gallery-15-66e4145127cf9.jpg\",\"service-gallery-15-66e4145136b56.jpg\",\"service-gallery-15-66e4145145f95.jpg\"]', 'https://youtu.be/XXwctxZN_UY', 3, '2024-09-11 06:19:36', '2024-09-14 03:30:41'),
(16, 'TESTIMONIAL BOOTH', 'Personalized questions to your guests and then record their responses into branded HD video', '<p><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Testimonial Video Booth&nbsp;</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Dubai Propose personalized questions to your guests and then record their responses which are then instantly compiled into branded HD video clips. Capture guest testimonials, \"confessions\", or answers in a flash while branding and saving the content for your campaign.&nbsp;</span><br></p>', 1, 'service-1726226064-16.jpg', '\"[null]\"', '[]', 'https://youtu.be/-SGD6S42k6Q', 3, '2024-09-11 06:20:11', '2024-09-14 04:14:24'),
(17, 'INSTANT TATTOO', 'Print the events logos, text, or icons with the use of our innovative tattoo machine.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The UAE\'s first comprehensive temporary tattoo device. Allow users to apply any designs they want right to their skin. We make it possible to safely, swiftly, and easily put your personalized temporary tattoos to skin, as well as providing clients&nbsp;with a new creative tool for your brand expression.</span><br></p>', 1, 'service-1726226280-17.jpg', '\"[null]\"', '[\"service-gallery-17-66e41f684e788.jpg\",\"service-gallery-17-66e41f685c2ff.jpg\",\"service-gallery-17-66e41f686df79.jpg\"]', 'https://youtu.be/uk0Zk_wXr54', 2, '2024-09-11 06:25:15', '2024-09-14 04:18:00'),
(18, 'POWER BIKES', 'Using our power bikes, build games for all of your guests to enjoy and engage in.', '<p><span style=\"font-family: Arial; font-size: 24px;\"><font color=\"#000000\">Dubai event activation is bringing players to ride on the pedal power bicycle generator and to challenge themselves to make electricity in order to bring the lights up for the logo. It is a fun challenge that everyone wants to challenge and see who lights the logo the longest period of time! pedal power bikes now available for event rental in Abu Dhabi and Dubai&nbsp;</font></span><br></p>', 1, 'service-1726220869-21.jpg', '\"[\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=U9kLwb4XFZE\\\"]\"', '[\"service-gallery-21-66e40a4777739.jpg\",\"service-gallery-21-66e40a478193c.jpg\",\"service-gallery-21-66e40a478a895.jpg\"]', 'https://youtu.be/zA378y_IcjI', 2, '2024-09-11 06:28:17', '2024-10-29 15:58:32'),
(19, 'SPEED CATCH', 'Catch a falling rod and compete with your friends to see who has the best reaction time.', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\"><font color=\"#000000\"><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; letter-spacing: inherit; text-transform: inherit; font-weight: 700; line-height: inherit; font-family: Arial; font-size: inherit !important;\">The Speed Catch Game</span><span style=\"font-family: Arial;\">&nbsp;event activation is bringing guests to challenge themselves.</span></font></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit; font-family: Arial;\"><font color=\"#000000\">How fast is their reaction game? Put them to the test in this highly competitive, energetic and addictive corporate game!</font></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit; font-family: Arial;\"><font color=\"#000000\">Comes with full branding options&nbsp;</font></span></p>', 1, 'service-1726222792-22.jpg', '\"[null]\"', '[\"service-gallery-22-66e411c90d4aa.jpg\",\"service-gallery-22-66e411c90f2b1.jpg\",\"service-gallery-22-66e411c91ae1c.jpg\",\"service-gallery-22-66e411c926992.jpg\"]', 'https://youtu.be/oChldrdPVB4', 2, '2024-09-11 06:28:52', '2024-10-29 15:59:06'),
(20, 'CLAW MACHINE', 'Claw machine is perfect for gifting guests, allowing visitors to connect with the brand.', '<p><span style=\"font-family: Arial; font-size: 21px;\"><font color=\"#000000\">For any show or event, Claw Machine Rental Dubai is a fantastic addition, sometimes referred to as a crane arcade machine and a grabber machine.</font></span><br></p>', 1, 'service-1726221184-23.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/9XmgTIIhvV0\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/yXTugcObDlo\\\"]\"', '[\"service-gallery-23-66e40b8233757.jpg\",\"service-gallery-23-66e40b838f6d3.jpg\",\"service-gallery-23-671f7f07a7d60.jpeg\"]', 'https://youtu.be/h9EZamWBqaI', 2, '2024-09-11 06:29:42', '2024-10-29 16:09:44'),
(21, 'MEMORY GAME', 'Memory Game Creating Impactful Digital & Personal Interaction With Your Customers', '<span style=\"font-family: Arial; font-size: 24px;\"><font color=\"#000000\">Interactive Memory Game done for ENOC at head office, was one of the most amazing way to engage the crowd with the brand.&nbsp;</font></span>', 1, 'service-1726226547-24.jpg', '\"[null]\"', '[]', 'https://youtu.be/rGsTWzvDELI', 2, '2024-09-11 06:30:34', '2024-10-29 16:08:13'),
(22, 'PLEDGE WALL', 'Customize a image and bring it to life with our pledge wall, and take part in an interactive artwork.', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><font color=\"#000000\"><span style=\"box-sizing: inherit; font-family: Arial;\">Want to give your guests a chance to create living sketches featuring your brand story? We can make this happen by giving your guests a chance to be creative, write their message, and be part of an interactive living masterpiece made possible with Selfie Draw Alive !&nbsp;</span><span style=\"font-family: Arial;\">Everything about the Digital Pledge Wall is customizable from the theme, background, templates to sketch/write on, music, and animations.</span></font></p>', 1, 'service-1726222432-25.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/q2Sf39B5l3E\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Q6auffG9gEI\\\"]\"', '[\"service-gallery-25-66e4106291ebe.jpg\",\"service-gallery-25-66e4106348a0e.jpg\",\"service-gallery-25-66e41063f2322.jpg\",\"service-gallery-25-66e4106407547.jpg\"]', 'https://youtu.be/vVU_7nw3GYw', 2, '2024-09-11 06:31:23', '2024-10-29 16:08:59'),
(23, 'SLING SHOT', 'With our slingshot shoot your shot onto the virtual screen, and leave a mark for everyone to see.', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><font color=\"#000000\"><span style=\"box-sizing: inherit;\"><span style=\"font-family: Arial;\">With a fully customized&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; letter-spacing: inherit; text-transform: inherit; font-weight: 700; line-height: inherit; font-family: Arial; font-size: inherit !important;\">Digital Sling Shot</span><span style=\"font-family: Arial;\">&nbsp;Dubai&nbsp;</span></span><span style=\"font-family: Arial;\">Snap, Aim and Shoot! We brought back the slingshot with a little digital twist. Whether it is taking a photo and writing your message, or playing a fun game, our digital slingshot can do it all!</span></font></p>', 1, 'service-1726222519-26.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/V1iWOx3yApk\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/V1iWOx3yApk\\\"]\"', '[\"service-gallery-26-66e410b94d157.jpg\",\"service-gallery-26-66e410ba00882.jpg\",\"service-gallery-26-66e410bab68fd.jpg\"]', 'https://youtu.be/yPI7ruraTcs', 2, '2024-09-11 06:32:05', '2024-10-29 16:09:21'),
(24, 'FLAG GAME', 'Interactive games for brand activation create events that give people something to talk about', '<p><span style=\"font-family: Arial; font-size: 24px;\"><font color=\"#000000\">Interactive GUESS THE FLAG GAME done for ENOC at head office, was one of the most amazing way to engage the crowd with the brand.&nbsp;</font></span><br></p>', 1, 'service-1726226610-27.jpg', '\"[null]\"', '[]', 'https://youtu.be/3gt1x5CaJog', 2, '2024-09-11 06:32:35', '2024-10-29 16:10:02'),
(25, 'PHOTO PUZZLE', 'Prepare to have some fun with these interesting time-measuring challenges. Photo puzzle.', '<p><span style=\"font-family: Arial; font-size: 21px;\"><font color=\"#000000\">Prepare to have some fun with these interesting time-measuring challenges. This is a quick-wit picture puzzle. The system will first have 10 seconds to take the players picture with the webcam. Following that picture, you\'ll see a jumbled puzzle piece that the player must organize. You have 120 seconds or two minutes to accomplish it, or else you will lose the game.</font></span><br></p>', 1, 'service-1726226617-28.jpg', '\"[null]\"', '[]', 'https://youtu.be/EC37vcIZ8rw', 2, '2024-09-11 06:33:21', '2024-10-29 16:10:20'),
(26, 'MAGAZINE BOOTH', 'Using our Photo Magazine Booth, take your event to the next level. And make your magazine.', '<p><font color=\"#000000\"><span style=\"font-family: Arial; font-size: 24px;\">With our&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Arial; font-size: 24px; font-weight: 700; line-height: inherit;\">Picture Magazine Booth</span><span style=\"font-family: Arial; font-size: 24px;\">, you can take your event to the ultimate level. Make unique magazine covers and memories. Enter this one-of-a-kind booth. Choose your favorite magazine and change the headlines.</span></font><br></p>', 1, 'service-1730710688-53.jpg', '\"[null]\"', '[\"service-gallery-53-67288ca0b3703.jpg\",\"service-gallery-53-67288ca11dc01.jpg\",\"service-gallery-53-67288ca17bd3d.jpg\"]', 'https://youtu.be/a9bfmh2Qg-c', 1, '2024-09-14 02:58:02', '2024-11-04 22:58:09'),
(27, 'SMART VENDING', 'Get a gift from vending machine by taking a photo, playing a game, or uploading the event tag.', '<span style=\"font-family: Tahoma;\">State of the art smart vending machines. Machine that gives reward for data, market research, social engagement. Touchscreen and touch-less vending machine that is full packed of experiential marketing technology to help brands bridge the gap to their audiences.</span>', 1, 'service-1726226319-18.jpg', '\"[null]\"', '[\"service-gallery-18-66e41f9010ae8.jpg\",\"service-gallery-18-66e41f9014586.jpg\",\"service-gallery-18-66e41f90183b6.jpg\"]', NULL, 2, '2024-09-11 06:26:27', '2024-10-29 15:56:27'),
(28, 'LIVE PRINTING', 'With ring booth or DIY design screen. reate sublimated souvenir gift for the guests.', '<p><font color=\"#000000\"><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Arial; font-size: 24px; font-weight: 700; line-height: inherit;\">Live event printing&nbsp;</span><span style=\"font-family: Arial; font-size: 24px;\">for event activation Ideas for trade shows | Event T-Shirt, Acrylic, Mugs, Tote Bags, and many more.</span></font><br></p>', 1, 'service-1726221962-19.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/1Sit1ARbMZQ\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/zv-VnOuyAB4\\\"]\"', '[\"service-gallery-19-66e40e8ab90df.jpg\",\"service-gallery-19-66e40e8ad3f4d.jpg\",\"service-gallery-19-66e40e8b6858c.jpg\",\"service-gallery-19-66e40e8bf4034.jpg\",\"service-gallery-19-66e40e8c0763c.jpg\",\"service-gallery-19-66e40e8c0bc1c.jpg\",\"service-gallery-19-66e40e8c0fe67.jpg\"]', 'https://youtu.be/2SJD5QHdoho', 2, '2024-09-11 06:27:12', '2024-10-29 15:56:57'),
(29, 'MOTION GAMES', 'With ring booth or DIY design screen. reate sublimated souvenir gift for the guests.', '<p><span style=\"font-family: Arial; font-size: 24px;\"><font color=\"#000000\">Branded motion sensor game, Various brand or event elements fly around on screen and players have to use their body and arms to try and slash them all to gain points while they are also avoiding negative obstacles within a 60 second timer.&nbsp;</font></span><br></p>', 1, 'service-1726226407-20.jpg', '\"[null]\"', '[]', 'https://youtu.be/JmzyPhYUpxI', 2, '2024-09-11 06:27:45', '2024-10-29 15:57:35'),
(30, 'LIGHT PAINTING', 'We can build the event name, logo, or design using a neon light, with instant printing and sharing.', '<p><font color=\"#000000\"><span style=\"font-family: Arial; font-size: 24px;\">The</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Arial; font-size: 24px; font-weight: 700; line-height: inherit;\">&nbsp;Neon Light Paint Booth</span><span style=\"font-family: Arial; font-size: 24px;\">&nbsp;shines&nbsp;vividly using&nbsp;glowing neon lights. Using electrified glass tubes or bulbs containing rarefied neon or other gases, we build imaginative and bright designs that will give your photo a pleasant color effect. With our neon light painting picture booth, we created an event module that is both entertaining for guests and offers unique branding chances.</span></font><br></p>', 1, 'service-54.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/-TKXNTjeU18\\\"]\"', '[\"service-gallery-54-66e4163ddf549.jpg\",\"service-gallery-54-66e4163dedd1d.jpg\",\"service-gallery-54-66e4163e10cca.jpg\"]', 'https://youtu.be/8LdN0LZe9zA', 1, '2024-09-14 03:38:53', '2024-10-29 16:10:55'),
(31, 'CLICK AND PRINT', 'A professional photographer with all the necessary equipment with instant printing onsite.', '<p><span style=\"font-family: Arial; font-size: 24px;\"><font color=\"#000000\">Our instant click and instant printing comes with a professional photographer who uses a professional camera and printing equipment. Printing photographs with your event branding on-site.</font></span><br></p>', 1, 'service-55.jpg', '\"[null]\"', '[\"service-gallery-55-66e417419f304.jpg\",\"service-gallery-55-66e41741b6714.jpg\",\"service-gallery-55-66e41741ce76c.jpg\"]', 'https://youtu.be/ow442hB_xdo', 1, '2024-09-14 03:43:13', '2024-10-29 16:11:51'),
(32, 'MAGNET PHOTO BOOTH', 'A photobooth or professional photographer with instant printing using magnetic photo paper.', '<p><font color=\"#000000\"><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Arial; font-size: 24px; font-weight: 700; line-height: inherit;\">Magnet photo booth</span><span style=\"font-family: Arial; font-size: 24px;\">&nbsp;are the branded trade show giveaway you know will be kept. Our engaging team act as an extension of your team to drive traffic to your stand. Photographing attendees, we’ll have their photo magnet printed within minutes, giving your sales team the perfect opportunity to chat with potential leads.&nbsp;</span></font><br></p>', 1, 'service-56.jpg', '\"[null]\"', '[]', 'https://youtu.be/0P9BYca_41A', 1, '2024-09-14 03:44:58', '2024-10-29 16:14:02'),
(33, 'AI SKETCH BOOTH', 'AI sketch transforms visitor\'s standard snapshot into an artistic drawing using AI technology.', '<p><font color=\"#000000\"><span style=\"font-family: Arial;\">Want to reach more guests at your events faste</span><span style=\"font-family: Arial;\">﻿</span><span style=\"font-family: Arial;\">r yet still enjoy the sketch artist option? In this circumstance, the AI robot sketch artist photobooth shines.Avatar, Beauty Enhance, and other fantastic AI options are available.</span></font></p>', 1, 'service-57.jpg', '\"[null]\"', '[\"service-gallery-57-66e418aeb8ecc.jpg\",\"service-gallery-57-66e418aebe7cd.jpg\",\"service-gallery-57-66e418aec3c31.jpg\"]', 'https://youtu.be/EBGKbe6cOVs', 1, '2024-09-14 03:49:18', '2024-10-29 16:14:21'),
(34, 'TEXT SELFIE', 'Text Selfies incorporates event text branding into the images of guests.', '<p>This is a fantastic addition to any event, offering a new and fun alternative to the standard photo booth. YOUR TEXT - YOUR IMAGERY. With our text selfie photo booth, we create stunning selfies entirely from your own word content. Completely customizable, with email and printing options.<br></p>', 1, 'service-58.jpg', '\"[null]\"', '[\"service-gallery-58-66e4192e0c6dc.jpg\",\"service-gallery-58-66e4192e1e8b1.jpg\",\"service-gallery-58-66e4192e32aef.jpg\"]', 'https://youtu.be/aABodTihKYo', 1, '2024-09-14 03:51:25', '2024-10-29 16:14:34'),
(35, 'GRAFFITI TOUCH', 'Customize your pictures with emojis, branding, text, and all kinds of custom effects.', '<p><span style=\"font-family: Arial; font-size: 24px;\"><font color=\"#000000\">Our most recent iteration of the graffiti wall uses a touchscreen and lets guests paint with their fingers or with a graffiti-style marker. it brings people together with a fun, hands-on, interactive experience where anyone can give it a try and create their own art. It\'s brandable, sparks curiosity and always engages your crowd</font></span><br></p>', 1, 'service-59.jpg', '\"[null]\"', '[]', 'https://youtu.be/0o16IRPHkek', 1, '2024-09-14 03:55:28', '2024-10-29 16:15:16'),
(36, 'FLIP BOOK', 'The guests\' video is transformed into images, which are then shown on a tidy flipbook.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Our awesome flip book is a short video clip that has been turned into a series of images that gradually change from one page to the next as you flip the book. Fully customizable flipbook cover to match your event theme or brand.</span></p>', 1, 'service-1730710752-60.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Vpt5gemiTjI\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/3CO7S5_DlIo\\\"]\"', '[\"service-gallery-60-671a18ff8245d.jpg\",\"service-gallery-60-671a18ff878c2.jpg\",\"service-gallery-60-671a18ffa581a.jpg\",\"service-gallery-60-671a18ffb8d04.jpg\",\"service-gallery-60-67288ce0b31ea.jpg\",\"service-gallery-60-67288ce0b48d0.jpg\",\"service-gallery-60-67288ce0cce6e.jpg\",\"service-gallery-60-67288ce0dc67c.jpg\"]', 'https://youtu.be/BNcFnor9EiY', 1, '2024-10-25 13:51:08', '2024-11-04 22:59:12'),
(37, 'VIRTUAL & HYBRID MOSAIC', 'Guests snap photos, which are uploaded to an online domain where the mosaic is created.', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><font color=\"#000000\"><span style=\"box-sizing: inherit; font-family: Arial;\">The \"Bigger Picture\" in Which Every Guest Is a Part of&nbsp;</span><span style=\"font-family: Arial;\">Engage Guests in Your Virtual Event&nbsp; Deliver Meaning and Impact / Create a “ virtual photo mosaic ” for Your Brand Make Your Digital Experience Interactive, Invite Guests to Participate Remotely in Dubai or around the world Collect Leads and Feedback, Have Your Guests Share on Social Media Celebrate togetherness with \"social distance\"</span></font></p>', 1, 'service-61.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/1MUpC0w8_ew\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/y2Yd9m89RC0\\\"]\"', '[]', 'https://youtu.be/oKKnv3Il2N0', 1, '2024-10-25 14:47:26', '2024-10-29 16:15:48'),
(38, 'Scream Game', 'This interactive Scream Game is a crowd drawer that gamifies sound to deliver your campaign objective. The game mechanics are fully customizable to make each execution unique, perfect for pop up events and activations.', '<p>This interactive Scream Game is a crowd drawer that gamifies sound to deliver your campaign objective. The game mechanics are fully customizable to make each execution unique, perfect for pop up events and activations.</p>', 1, 'service-1730118518-62.jpg', '\"[null]\"', '[\"service-gallery-62-671f83764664c.jpg\",\"service-gallery-62-671f837647b0e.jpg\",\"service-gallery-62-671f837648dd8.jpg\"]', 'https://www.youtube.com/watch?v=g05RCkpu-ZQ', 2, '2024-10-29 15:29:55', '2024-10-29 16:28:38'),
(39, 'Catch the letter', 'This´ is a lively and engaging activity designed to capture everyone’s attention and create a fun and interactive experience.', '<h5 class=\"\"><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span style=\"font-family: Arial; font-size: 14px;\">The Catch the letter! game allows players to catch specific words or phrases on the screen by pressing the catch button. The game aids in testing the player\'s timing for word recognition. The game features customizable phrases and logos, suitable for any occasion theme of your event, and is available in both Arabic and English versions.</span><font face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif\" style=\"\"><span style=\"font-size: 14px; font-family: Arial;\">The Catch the letter! game allows players to catch specific words or phrases on the screen by pressing the catch button. The game aids in testing the player\'s timing for word recognition. The game features customizable phrases and logos, suitable for any occasion theme of your event, and is available in both Arabic and English versions.</span></font></font></span></h5>', 1, 'service-1730118423-63.jpg', '\"[null]\"', '[\"service-gallery-63-671f8317c9d0b.jpg\",\"service-gallery-63-671f8317cb4fe.jpg\",\"service-gallery-63-671f8317cce0d.jpg\"]', 'https://www.youtube.com/watch?v=cCmECnZkVyY', 2, '2024-10-29 15:32:46', '2024-10-29 16:27:03'),
(40, 'Ai Ring Roamer photo booth', 'Our mobile photo booth opens up a new world of themed picture experiences by fusing our unrivaled photo booth expertise with the endless possibilities of Artificial Intelligence.', '<p><span style=\"font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space-collapse: preserve; background-color: rgba(255, 255, 255, 0.1);\"><font color=\"#000000\">Don\'t want to restrict the photo booth to one area of your event? \r\nWe have a solution for that try our brand-new Portable AI Roaming Photo Booth.\r\nOur mobile photo booth opens up a new world of themed picture experiences by fusing our unrivaled photo booth expertise with the endless possibilities of Artificial Intelligence. You can turn your visitors into anything from movie stars to sports players, zombies to superheroes. You can select from one of our pre-existing themes or get in touch with our team to see how we can transform your attendees into a persona or character that is exclusive to your occasion or business. \r\nFor more information on how to improve interaction, email Mirror Booth Dubai at info@mirrorboothdubai.com.</font></span></p>', 1, 'service-1730121433-64.jpg', '\"[null]\"', '[\"service-gallery-64-671f8ed99a01f.jpg\",\"service-gallery-64-671f8ed99b344.jpg\",\"service-gallery-64-671f8f2fa5a2d.jpg\"]', 'https://www.youtube.com/watch?v=TbuaOhBQW9U', 1, '2024-10-29 17:14:25', '2024-10-29 17:18:39'),
(41, 'Guess The Icon Game', 'Guess the Safety Icon\" game  Participants are shown various safety icons, such as hazard symbols, emergency signs, or protective equipment symbols, and they must guess what each icon represents.', '<p>The \"Guess the Safety Icon\" game at Wetex is an engaging activity aimed at raising awareness about safety practices. Participants are shown various safety icons, such as hazard symbols, emergency signs, or protective equipment symbols, and they must guess what each icon represents.</p>', 1, 'service-1730121975-65.jpg', '\"[null]\"', '[]', 'https://www.youtube.com/watch?v=Nj1nUP7d5_A', 2, '2024-10-29 17:22:28', '2024-10-29 17:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3qqqWrcgVTNspkXVVaGBR4PxwyfTlj0zTRu5KGoP', NULL, '2.57.122.239', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFlTR2JMZmt2UnZtNjdZMDRYbzdnaHRUNllWc0tsR0FiUlkzeTRvNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbWFpbC5kdWJhaS1waG90b2Jvb3RoLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730715589),
('CEl0ddUP7gHdRLutHshMr0QoKImmrUXvASeVZZEO', NULL, '91.73.21.225', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVFPVHNxUVc3TFRIdmR3MjNVVGpkVU9hdUxmWjdyNkJmcGhDcm8xTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vZHViYWktcGhvdG9ib290aC5jb20vY2F0ZWdvcnkvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730719955),
('DyAkyVoDzKo4NlVTMoxAIx5dgmTZapLRh1dW9arz', NULL, '2.57.122.239', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXVWUGcwejZoZU5UaGgwMUFoTHd5RnFscTc2T1BsdEJmTlFVdjVZUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LmR1YmFpLXBob3RvYm9vdGguY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730715589),
('KVULPT4smXIrwNUSMXsgw5aC0V1J4voAeR5Fe57F', NULL, '91.73.21.225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXBDcmFqOXdheElQVUZBdmVMRVA5enN6SWFNako1MDg4OWVRWmVTMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vZHViYWktcGhvdG9ib290aC5jb20vY2F0ZWdvcnkvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730711846),
('lTMq59nEehbXh6OD0uFZc70F3B2K27H7f74tEtak', NULL, '91.73.21.225', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRTdlejdFekhaajNvNHlnYnV1dk8xSGx0SEc4ZVdMZUpodHpRMGg2NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZHViYWktcGhvdG9ib290aC5jb20vYWRtaW4vZmFxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1730714245),
('MvwpscZsYtUbPpusMv3HXnb1DT01dXRpYCNGpYfA', NULL, '35.186.165.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUtRazJCUlRUbDBsaE5aN1AzdmRzRnhCYWUwRXZjcjExVGlqcXczaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vZHViYWktcGhvdG9ib290aC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730718943),
('xzCXi4b9bVWIF4rnS6Kul5We1R9m6SKsZINJkhjd', NULL, '43.135.138.128', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWJvbWVPS0Z1QUVqOXk3QXpZRmVYSXRKODR4Y3ZxTFFHUjZWRFpocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vZHViYWktcGhvdG9ib290aC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730718406),
('z6QU8ZLrgFhaA5CigSreHCvyqS7wjYxMzhBWLc5l', NULL, '2.57.122.239', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjZzaXlNRWdwem9BZUc1dEIyMUpyTFJ1Nms3SDRDdm9CeWRTcWZiViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vZHViYWktcGhvdG9ib290aC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730715589);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_title` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `facebook_url` varchar(200) DEFAULT NULL,
  `twitter_url` varchar(200) DEFAULT NULL,
  `whatsapp_url` varchar(200) DEFAULT NULL,
  `instagram_url` varchar(200) DEFAULT NULL,
  `tiktok_url` varchar(200) DEFAULT NULL,
  `linkedin_url` varchar(200) DEFAULT NULL,
  `youtube_url` varchar(200) DEFAULT NULL,
  `contact_card_one` text DEFAULT NULL,
  `contact_card_two` text DEFAULT NULL,
  `contact_card_three` text DEFAULT NULL,
  `copy` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_title`, `email`, `phone`, `facebook_url`, `twitter_url`, `whatsapp_url`, `instagram_url`, `tiktok_url`, `linkedin_url`, `youtube_url`, `contact_card_one`, `contact_card_two`, `contact_card_three`, `copy`, `created_at`, `updated_at`) VALUES
(1, 'Mirror Booth Dubai', 'info@mirrorboothdubai.com', '00971555531443', 'https://www.facebook.com/mirrorboothdubai/', NULL, NULL, 'https://www.instagram.com/mirrorboothdubaillc/', 'https://www.tiktok.com/@mirrorboothdubaillc', NULL, 'https://www.youtube.com/@MirrorBoothDubai', '<p data-ux=\"ContentText\" data-aid=\"CONTACT_INFO_ADDRESS_REND\" data-typography=\"BodyAlpha\" class=\"x-el x-el-p c1-1 c1-2 c1-1q c1-1f c1-52 c1-16 c1-7j c1-b c1-8d c1-c c1-47 c1-d c1-e c1-f c1-g\" style=\"box-sizing: inherit; margin-bottom: 24px; font-family: Helvetica, arial, sans-serif; font-size: 18px; overflow-wrap: break-word; line-height: 1.5; color: rgb(94, 94, 94);\">Mirror Booth Dubai, 3B Street - near Emirates Snack Foods LLC - Umm Ramool - Dubai</p><p data-ux=\"ContentText\" data-typography=\"BodyAlpha\" class=\"x-el x-el-p c1-1 c1-2 c1-1q c1-1f c1-52 c1-16 c1-7j c1-9i c1-b c1-8d c1-c c1-47 c1-d c1-e c1-f c1-g\" style=\"box-sizing: inherit; margin-bottom: 24px; white-space-collapse: preserve-breaks; font-family: Helvetica, arial, sans-serif; font-size: 18px; overflow-wrap: break-word; line-height: 1.5; color: rgb(94, 94, 94);\"><a rel=\"\" role=\"link\" aria-haspopup=\"false\" data-ux=\"Link\" data-aid=\"CONTACT_INFO_PHONE_REND\" href=\"tel:00971502664501\" data-typography=\"LinkAlpha\" class=\"x-el x-el-a c1-1n c1-1o c1-1p c1-1q c1-1f c1-1r c1-1s c1-b c1-72 c1-c c1-20 c1-9j c1-9k c1-d c1-e c1-f c1-g\" data-tccl=\"ux2.CONTACT.contact4.Content.Default.Link.Default.48295.click,click\" style=\"box-sizing: inherit; color: rgb(209, 19, 115); overflow-wrap: break-word; letter-spacing: inherit; text-transform: inherit; display: inline; cursor: pointer; font-weight: inherit;\">00971502664501</a>\r\n<a rel=\"\" role=\"link\" aria-haspopup=\"false\" data-ux=\"Link\" data-aid=\"CONTACT_INFO_PHONE_REND\" href=\"tel:00971555531443\" data-typography=\"LinkAlpha\" class=\"x-el x-el-a c1-1n c1-1o c1-1p c1-1q c1-1f c1-1r c1-1s c1-b c1-72 c1-c c1-20 c1-9j c1-9k c1-d c1-e c1-f c1-g\" data-tccl=\"ux2.CONTACT.contact4.Content.Default.Link.Default.48296.click,click\" style=\"box-sizing: inherit; color: rgb(209, 19, 115); overflow-wrap: break-word; letter-spacing: inherit; text-transform: inherit; display: inline; cursor: pointer; font-weight: inherit;\">00971555531443</a>\r\n<a rel=\"\" role=\"link\" aria-haspopup=\"false\" data-ux=\"Link\" data-aid=\"CONTACT_INFO_EMAIL_REND\" href=\"mailto:info@mirrorboothdubai.com\" data-typography=\"LinkAlpha\" class=\"x-el x-el-a c1-1n c1-1o c1-1p c1-1q c1-1f c1-1r c1-1s c1-b c1-72 c1-c c1-20 c1-9j c1-9k c1-d c1-e c1-f c1-g\" data-tccl=\"ux2.CONTACT.contact4.Content.Default.Link.Default.48297.click,click\" style=\"box-sizing: inherit; color: rgb(209, 19, 115); overflow-wrap: break-word; letter-spacing: inherit; text-transform: inherit; display: inline; cursor: pointer; font-weight: inherit;\">info@mirrorboothdubai.com</a></p>', NULL, NULL, 'Copyright © 2024 Mirror Booth LLC .', '2024-09-10 22:32:30', '2024-10-29 09:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `temp_files`
--

CREATE TABLE `temp_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_files`
--

INSERT INTO `temp_files` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', '2024-11-04 15:56:09', '2024-11-04 15:56:09'),
(2, '2.jpg', '2024-11-04 15:56:53', '2024-11-04 15:56:53'),
(3, '3.jpg', '2024-11-04 15:57:31', '2024-11-04 15:57:31'),
(4, '4.jpg', '2024-11-04 15:57:38', '2024-11-04 15:57:38'),
(5, '5.jpg', '2024-11-04 15:57:40', '2024-11-04 15:57:40'),
(6, '6.jpg', '2024-11-04 15:57:48', '2024-11-04 15:57:48'),
(7, '7.jpg', '2024-11-04 15:59:02', '2024-11-04 15:59:02'),
(8, '8.jpg', '2024-11-04 15:59:04', '2024-11-04 15:59:04'),
(9, '9.jpg', '2024-11-04 15:59:07', '2024-11-04 15:59:07'),
(10, '10.jpg', '2024-11-04 15:59:07', '2024-11-04 15:59:07'),
(11, '11.jpg', '2024-11-04 15:59:11', '2024-11-04 15:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('customer','admin') NOT NULL DEFAULT 'customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2024-09-10 22:01:56', '$2y$12$MwEhFzzguRDNcdV61i2NderrVHbxulmsyWjCDQ.Qdjhf.4OEeNyk2', 'admin', 'hvf0W0s3u41yKYKUdTZ5gKnSci3Send55w37uYDykmKF7YrZRBig3aOTMuxy', '2024-09-10 22:01:56', '2024-11-04 15:53:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_services`
--
ALTER TABLE `featured_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_files`
--
ALTER TABLE `temp_files`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_services`
--
ALTER TABLE `featured_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_files`
--
ALTER TABLE `temp_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
