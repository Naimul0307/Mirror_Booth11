-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2024 at 01:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_web_app`
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
(1, 'PHOTO BOOTHS DUBAI', 1, '2024-09-10 08:13:38', '2024-09-10 08:13:38'),
(2, 'GAMES & INTERACTIVES', 1, '2024-09-10 08:37:13', '2024-09-10 08:37:13'),
(3, 'VIDEO BOOTHS DUBAI', 1, '2024-09-10 08:37:31', '2024-09-10 08:37:31');

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
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_08_154948_alter_users_table', 1),
(5, '2024_08_23_112616_create_categories_table', 1),
(6, '2024_08_23_132112_create_services_table', 1),
(7, '2024_09_10_104326_create_settings_table', 1),
(8, '2024_09_10_115300_create_featured_services_table', 1),
(9, '2024_09_10_115412_create_pages_table', 1),
(10, '2024_09_10_115611_create_blogs_table', 1),
(11, '2024_09_10_115706_create_comments_table', 1),
(12, '2024_09_10_115746_create_faq_table', 1),
(13, '2024_09_10_115811_create_temp_files_table', 1),
(14, '2024_09_12_062350_create_service_gallery_image_table', 2);

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
  `videos_link` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gallery_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `short_desc`, `description`, `status`, `image`, `additional_videos_links`, `videos_link`, `category_id`, `created_at`, `updated_at`, `gallery_images`) VALUES
(1, 'SKETCH ROBOT', 'The future is here! Guest portraits are quickly drawn by the robot.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The AI robot sketch artist, which is now available in Dubai, is a breakthrough new patent-pending technology that employs the most recent mesh of A.I. and machine. The&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">SketchRobots</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;analyze and draw guest portraits in less than 50 seconds to provide a unique, personalized takeaway. Our&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">SketchRobots</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;software is specially designed to produce outstanding sketched portraits in 30 to 50 seconds, which is more than three times faster than other sketching robots. Possibilities for branding and sharing.</span><br></p>', 1, 'service-1726217378-1.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/mvdE55-KzMM\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/1NjT-d8SGtQ\\\"]\"', 'https://youtu.be/gib09ZBJP50', 1, '2024-09-10 08:16:16', '2024-09-13 04:49:42', '[\"service-gallery-1-66e3fca411840.jpg\",\"service-gallery-1-66e3fca4bbb84.jpg\",\"service-gallery-1-66e3fca583ff0.jpg\"]'),
(2, 'AI GENERATIVE', 'AI Generative Photo Booth where the power of AI meets creativity', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The new&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">AI Generative Photo Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;- where the power of AI meets creativity! It will transform your event experience! Your visitors can design bespoke backgrounds, avatars, and adapt any AI scenario to meet your event with our cutting-edge technology. With our AI Generative Photo Booth the possibilities are truly limitless.</span><br></p>', 1, 'service-1726218019-2.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/v5HffKUi8jM\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/cvK_RkR-4Cs\\\"]\"', 'https://youtu.be/_1ZpivvXq4M', 1, '2024-09-10 08:48:31', '2024-09-13 05:00:23', '[\"service-gallery-2-66e3ff2573700.jpg\",\"service-gallery-2-66e3ff261e461.jpg\",\"service-gallery-2-66e3ff26cf8f2.jpg\"]'),
(3, 'AI BACKGROUND', 'Our AI system allows guests to choose from various background options without a green screen.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">No more green screens are required for our Artificial Intelligence (AI). Our AI background photo booth uses facial recognition technology for comprehensive analytics to aid in background removal, AI is critical in producing great new features that have made photo booths more entertaining for guests.&nbsp;</span><br></p>', 1, 'service-1726218437-3.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/S0YA0a6ENOA\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/S0YA0a6ENOA\\\"]\"', 'https://youtu.be/wRdsc4kqvHk', 1, '2024-09-10 08:51:59', '2024-09-13 05:15:44', '[\"service-gallery-3-66e400c5c4099.jpg\",\"service-gallery-3-66e400c67ea2e.jpg\",\"service-gallery-3-66e400c74f1d8.jpg\",\"service-gallery-3-66e400c7774a1.jpg\"]'),
(4, 'SELFIE COFFEE', 'Guest images are beautifully printed onto coffee using the most cutting-edge edible printer.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Take a selfie and go to the next level. It creates&nbsp;a beautified image of your&nbsp;face,&nbsp;see&nbsp;firsthand&nbsp;how we print your photo on top of your coffee, not only that we can also print your event branding, logos, beer, and cookies instantly.&nbsp;Because we use 100% unsweetened food color in our edible printing equipment, which is completely safe to drink.&nbsp;</span><br></p>', 1, 'service-1726218862-4.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Iqvny19f760\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/ZPGz3x9awZ0\\\"]\"', 'https://youtu.be/5vZEiqNroXg', 1, '2024-09-10 08:53:09', '2024-09-13 05:14:24', '[\"service-gallery-4-66e4026e7dadc.jpg\",\"service-gallery-4-66e4026f14f50.jpg\",\"service-gallery-4-66e4026f9fb89.jpg\",\"service-gallery-4-66e4026fa293f.jpg\"]'),
(5, 'MIRROR BOOTH', 'Magic Mirror captures a selfie with instant print, shareable photo and data collection', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Offering the only high quality genuine</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">&nbsp;Magic Mirror</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;in the UAE with signature, QR, AI, and green screen, and a slew of other custom features! It has a full red carpet setup as well as quick sharing and printing in 7 seconds.</span><br></p>', 1, 'service-1726220265-5.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/3gahfU22nvs\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/G9yE8v7sGH0\\\"]\"', 'https://youtu.be/0YNAcFUmDQ8', 1, '2024-09-10 08:57:42', '2024-09-13 05:37:49', '[\"service-gallery-5-66e407eb41c97.jpg\",\"service-gallery-5-66e407ec044ae.jpg\",\"service-gallery-5-66e407ec9dba1.jpg\"]'),
(6, 'CLASSIC PHOTO BOOTH', 'A mobile-shaped photobooth that captures a photo or video for an immediate print or share.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">We are renowned for providing industry-leading photo booth hire, where our superior service leaves our competitors behind. Our booths are jam-packed full of mind-blowing features that will keep your guest entertained for hours on end! We distinguish ourselves by incorporating cutting-edge photobooth technology into our photobooths. No corners get cut, and we only employ high-quality equipment to ensure that you are not disappointed.</span><br></p>', 1, 'service-1726220520-6.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/VvtBLF6ySVw\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/i1Bj-PyEnQI\\\"]\"', 'https://youtu.be/Jh7pDUgiZRc', 1, '2024-09-10 09:00:42', '2024-09-13 05:42:03', '[\"service-gallery-6-66e408ea12c57.jpg\",\"service-gallery-6-66e408eaca395.jpg\",\"service-gallery-6-66e408eb66a65.jpg\",\"service-gallery-6-66e408eb701e8.jpg\"]'),
(7, 'GREEN SCREEN PHOTO BOOTH', 'Photobooth with multiple background option using greenscreen background.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Green Screen Photo Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;can transport your guests to virtually any scene. Like the cover of a magazine or the thick of an African stampede. This is due to the fact that our technology allows us to remove the green background and replace it with one of our customized backgrounds. Fully customizable, with fast sharing and printing capabilities.</span><br></p>', 1, 'service-1726223641-7.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/DKyvfXN_GWo\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/SL-Uihj0urg\\\"]\"', 'https://youtu.be/vQprcoHgoQQ', 1, '2024-09-10 09:02:03', '2024-09-13 06:34:01', '[\"service-gallery-7-66e41519c5000.jpg\",\"service-gallery-7-66e41519c6e82.jpg\",\"service-gallery-7-66e41519cdda5.jpg\",\"service-gallery-7-66e41519d7cf6.jpg\"]'),
(8, 'PHYSICAL MOSAIC WALL', 'We construct an astonishing mosaic on a physical wall using the guests\' images.', '<span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">A live photo mosaic created by visitors, one photo at a time. Allow your followers, colleagues, or guests to participate in the creation of a large work of art. The mosaic gradually reveals the overall image, encouraging visitors and bystanders to join in the creation process.&nbsp;</span>', 1, 'service-1726221684-8.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Yg3t-kVEBCE\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/PsZN0BJTngQ\\\"]\"', 'https://youtu.be/waDk1svaAq8', 1, '2024-09-10 09:03:18', '2024-09-13 06:01:26', '[\"service-gallery-8-66e40d75b1819.jpg\",\"service-gallery-8-66e40d75c0bdf.jpg\",\"service-gallery-8-66e40d7656e50.jpg\"]'),
(9, 'DIGITAL MOSAIC', 'We use the guests\' photographs to create a stunning mosaic on a digital wall.', '<p><span style=\"color: rgb(87, 87, 87); font-family: Helvetica, arial, sans-serif; font-size: 24px; background-color: rgb(246, 246, 246);\">&nbsp;Our ground-breaking photo mosaic, creates jaw-dropping digital &amp; physical mosaics from live event photographs in real-time; using an exclusive, state-of-the-art algorithm.&nbsp;</span><br></p>', 1, 'service-1726221838-9.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/YLjeyvcfALA\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/YLjeyvcfALA\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/oKKnv3Il2N0\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/1MUpC0w8_ew\\\"]\"', 'https://youtu.be/YLjeyvcfALA', 1, '2024-09-10 09:03:51', '2024-09-13 06:53:43', '[\"service-gallery-9-66e40e0e4f0ef.jpg\",\"service-gallery-9-66e40e0e5f7a9.jpg\",\"service-gallery-9-66e40e0e934ac.jpg\",\"service-gallery-9-66e40e0eaae43.jpg\"]'),
(10, 'PHOTO FLIP', 'Combination of two photos to produce an incredible 3D illusion when flipped.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Photo flipping is the process of combining various images/photos utilizing creative resources to make your photo 3D. A fully customizable photo and photo cover that corresponds to your event\'s theme and brand.</span><br></p>', 1, 'service-1726223742-10.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/BNcFnor9EiY\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Vpt5gemiTjI\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/3CO7S5_DlIo\\\"]\"', 'https://youtu.be/9jcokf_zvdw', 1, '2024-09-10 09:04:29', '2024-09-13 06:53:14', '[\"service-gallery-10-66e4157ef247a.jpg\",\"service-gallery-10-66e4157f0e3a8.jpg\",\"service-gallery-10-66e4157f23f67.jpg\",\"service-gallery-10-66e4157f33f93.jpg\"]'),
(11, 'GLAM BOT', 'Glam Bot Robotic Arm for your upcoming event. Observing the enthusiasm of the audience', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">We are thrilled to introduce our brand-new, incredible GlamBot photobooth robotic arm for your upcoming event. Already adored by numerous well-known businesses, they reserved the GlamBot Dubai upon observing the enthusiasm of the audience. In the picture booth sector, brands and potential customers were eager for exhilarating encounters. For brand activation, please welcome the King of creative and viral content, the GlamBot Dubai.&nbsp;</span><br></p>', 1, 'service-1726221279-11.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/TdNl3eL_gP8\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/TdNl3eL_gP8\\\"]\"', 'https://youtu.be/tQvZ1vpx6Io', 3, '2024-09-10 09:16:52', '2024-09-13 05:54:42', '[\"service-gallery-11-66e40be05d787.jpg\",\"service-gallery-11-66e40be0e7c9e.jpg\",\"service-gallery-11-66e40be179f88.jpg\"]'),
(12, '360 LOOP VIDEO BOOTH', 'Change the background of your 360° video to a custom backdrop using our 360° loop.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Engage your customers with a fun and distinctive video capture with a virtual background.&nbsp;Our 360-degree loop provides an engaging video experience. Guests may instantly share their branded videos on social media with friends and followers, maximizing brand reach at your activation.</span><br></p>', 1, 'service-1726223120-12.jpg', '\"[null]\"', 'https://youtu.be/WcoTT-uO9mY', 3, '2024-09-10 09:17:25', '2024-09-13 06:25:21', '[\"service-gallery-12-66e41310a9558.jpg\",\"service-gallery-12-66e41310b2615.jpg\",\"service-gallery-12-66e41310c7a35.jpg\",\"service-gallery-12-66e41310ce8c1.jpg\"]'),
(13, 'CAPTION CAM', 'Write, draw, express your thoughts and receive a custom branded Video instantly', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Give your guests the freedom to express themselves with the Caption Cam video booth. Write, draw, express your thoughts and receive a custom branded Video instantly. Every output is ideal for sharing on social media, but it can also be used to create an in-person digital freedom wall! All outputs are generated in real time, and designs, end displays, and animations are completely adjustable. Instant awesomeness—no waiting, no post-processing.&nbsp;</span><br></p>', 1, 'service-1726221079-13.jpg', '\"[\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=bndxP1q_GUI\\\",\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=M92d1CY_D8U\\\"]\"', 'https://www.youtube.com/watch?v=zfzNJ0sBoZY', 3, '2024-09-10 09:18:18', '2024-09-13 05:51:20', '[\"service-gallery-13-66e40b1829752.jpg\",\"service-gallery-13-66e40b1831748.jpg\",\"service-gallery-13-66e40b1848692.jpg\"]'),
(14, 'SPIN 360 VIDEO BOOTH', 'Experience 360° SPIN video with beautify video effects shareable thru QR scanning or email.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Take your guests to the next level with the newest Interactive Amazing&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">360 Video Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">, which captures film from all angles! As the guests climb onto the branded platform, the slow-motion camera arm circles them. We specialize in creating unique 360-degree video activations for Dubai businesses, clients, and events of all sorts.</span><br></p>', 1, 'service-1726223243-14.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/e6NFmnLCQ1k\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/JNNH833rKxk\\\"]\"', 'https://youtu.be/2J1AYvWn49g', 3, '2024-09-10 09:18:53', '2024-09-13 06:27:26', '[\"service-gallery-14-66e4138cd9ca3.jpg\",\"service-gallery-14-66e4138d4e7f0.jpg\",\"service-gallery-14-66e4138ddc8a8.jpg\"]'),
(15, 'VOUGE BOOTH', 'A classy video experience with a classy booth enclosure to have a vibrant effect on guests.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Vogue Video Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;will&nbsp;captures video clips and gives them a glam feel by enclosing them in a light enclosure that adds magnificent MTV-style effects to each video capture.&nbsp;</span><br></p>', 1, 'service-1726223440-15.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/XXwctxZN_UY\\\"]\"', 'https://youtu.be/XXwctxZN_UY', 3, '2024-09-10 09:19:36', '2024-09-13 06:30:41', '[\"service-gallery-15-66e4145127cf9.jpg\",\"service-gallery-15-66e4145136b56.jpg\",\"service-gallery-15-66e4145145f95.jpg\"]'),
(16, 'TESTIMONIAL BOOTH', 'Personalized questions to your guests and then record their responses into branded HD video', '<p><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Testimonial Video Booth&nbsp;</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Dubai Propose personalized questions to your guests and then record their responses which are then instantly compiled into branded HD video clips. Capture guest testimonials, \"confessions\", or answers in a flash while branding and saving the content for your campaign.&nbsp;</span><br></p>', 1, 'service-1726226064-16.jpg', '\"[null]\"', 'https://youtu.be/-SGD6S42k6Q', 3, '2024-09-10 09:20:11', '2024-09-13 07:14:24', '[]'),
(17, 'INSTANT TATTOO', 'Print the events logos, text, or icons with the use of our innovative tattoo machine.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The UAE\'s first comprehensive temporary tattoo device. Allow users to apply any designs they want right to their skin. We make it possible to safely, swiftly, and easily put your personalized temporary tattoos to skin, as well as providing clients&nbsp;with a new creative tool for your brand expression.</span><br></p>', 1, 'service-1726226280-17.jpg', '\"[null]\"', 'https://youtu.be/uk0Zk_wXr54', 2, '2024-09-10 09:25:15', '2024-09-13 07:18:00', '[\"service-gallery-17-66e41f684e788.jpg\",\"service-gallery-17-66e41f685c2ff.jpg\",\"service-gallery-17-66e41f686df79.jpg\"]'),
(18, 'SMART VENDING', 'Get a gift from vending machine by taking a photo, playing a game, or uploading the event tag.', '<h4 role=\"heading\" aria-level=\"4\" data-ux=\"ContentCardHeading\" data-aid=\"ABOUT_HEADLINE_RENDERED0\" data-typography=\"HeadingDelta\" class=\"x-el x-el-h4 c1-1 c1-2 c1-1q c1-1f c1-7v c1-19 c1-17 c1-16 c1-18 c1-b c1-7w c1-64 c1-47 c1-66 c1-68 c1-69 c1-6a\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; margin-right: 0px; margin-left: 0px; overflow-wrap: break-word; font-size: 24px; max-width: 100%; line-height: 1.25; color: rgb(27, 27, 27); text-align: center; margin-bottom: 0px !important;\">state of the art smart vending machines. Machine that gives reward for data, market research, social engagement. Touchscreen and touch-less vending machine that is full packed of experiential marketing technology to help brands bridge the gap to their audiences.</h4>', 1, 'service-1726226319-18.jpg', '\"[null]\"', NULL, 2, '2024-09-10 09:26:27', '2024-09-13 07:18:40', '[\"service-gallery-18-66e41f9010ae8.jpg\",\"service-gallery-18-66e41f9014586.jpg\",\"service-gallery-18-66e41f90183b6.jpg\"]'),
(19, 'LIVE PRINTING', 'With ring booth or DIY design screen. reate sublimated souvenir gift for the guests.', '<p><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Live event printing&nbsp;</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">for event activation Ideas for trade shows | Event T-Shirt, Acrylic, Mugs, Tote Bags, and many more.</span><br></p>', 1, 'service-1726221962-19.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/1Sit1ARbMZQ\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/zv-VnOuyAB4\\\"]\"', 'https://youtu.be/2SJD5QHdoho', 2, '2024-09-10 09:27:12', '2024-09-13 06:06:04', '[\"service-gallery-19-66e40e8ab90df.jpg\",\"service-gallery-19-66e40e8ad3f4d.jpg\",\"service-gallery-19-66e40e8b6858c.jpg\",\"service-gallery-19-66e40e8bf4034.jpg\",\"service-gallery-19-66e40e8c0763c.jpg\",\"service-gallery-19-66e40e8c0bc1c.jpg\",\"service-gallery-19-66e40e8c0fe67.jpg\"]'),
(20, 'MOTION GAMES', 'With ring booth or DIY design screen. reate sublimated souvenir gift for the guests.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Branded motion sensor game, Various brand or event elements fly around on screen and players have to use their body and arms to try and slash them all to gain points while they are also avoiding negative obstacles within a 60 second timer.&nbsp;</span><br></p>', 1, 'service-1726226407-20.jpg', '\"[null]\"', 'https://youtu.be/JmzyPhYUpxI', 2, '2024-09-10 09:27:45', '2024-09-13 07:20:07', '[]'),
(21, 'POWER BIKES', 'Using our power bikes, build games for all of your guests to enjoy and engage in.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Dubai event activation is bringing players to ride on the pedal power bicycle generator and to challenge themselves to make electricity in order to bring the lights up for the logo. It is a fun challenge that everyone wants to challenge and see who lights the logo the longest period of time! pedal power bikes now available for event rental in Abu Dhabi and Dubai&nbsp;</span><br></p>', 1, 'service-1726220869-21.jpg', '\"[null]\"', 'https://youtu.be/zA378y_IcjI', 2, '2024-09-10 09:28:17', '2024-09-13 05:47:52', '[\"service-gallery-21-66e40a4777739.jpg\",\"service-gallery-21-66e40a478193c.jpg\",\"service-gallery-21-66e40a478a895.jpg\"]'),
(22, 'SPEED CATCH', 'Catch a falling rod and compete with your friends to see who has the best reaction time.', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\"><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; letter-spacing: inherit; text-transform: inherit; color: inherit; font-weight: 700; line-height: inherit; font-size: inherit !important;\">The Speed Catch Game</span>&nbsp;event activation is bringing guests to challenge themselves.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\">How fast is their reaction game? Put them to the test in this highly competitive, energetic and addictive corporate game!</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\">Comes with full branding options&nbsp;</span></p>', 1, 'service-1726222792-22.jpg', '\"[null]\"', 'https://youtu.be/oChldrdPVB4', 2, '2024-09-10 09:28:52', '2024-09-13 06:19:53', '[\"service-gallery-22-66e411c90d4aa.jpg\",\"service-gallery-22-66e411c90f2b1.jpg\",\"service-gallery-22-66e411c91ae1c.jpg\",\"service-gallery-22-66e411c926992.jpg\"]'),
(23, 'CLAW MACHINE', 'Claw machine is perfect for gifting guests, allowing visitors to connect with the brand.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 21px;\">For any show or event, Claw Machine Rental Dubai is a fantastic addition, sometimes referred to as a crane arcade machine and a grabber machine.</span><br></p>', 1, 'service-1726221184-23.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/9XmgTIIhvV0\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/yXTugcObDlo\\\"]\"', 'https://youtu.be/h9EZamWBqaI', 2, '2024-09-10 09:29:42', '2024-09-13 05:53:08', '[\"service-gallery-23-66e40b8233757.jpg\",\"service-gallery-23-66e40b82e26cf.jpeg\",\"service-gallery-23-66e40b838f6d3.jpg\"]'),
(24, 'MEMORY GAME', 'Memory Game Creating Impactful Digital & Personal Interaction With Your Customers', '<span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Interactive Memory Game done for ENOC at head office, was one of the most amazing way to engage the crowd with the brand.&nbsp;</span>', 1, 'service-1726226547-24.jpg', '\"[null]\"', 'https://youtu.be/rGsTWzvDELI', 2, '2024-09-10 09:30:34', '2024-09-13 07:22:27', '[]'),
(25, 'PLEDGE WALL', 'Customize a image and bring it to life with our pledge wall, and take part in an interactive artwork.', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\">Want to give your guests a chance to create living sketches featuring your brand story? We can make this happen by giving your guests a chance to be creative, write their message, and be part of an interactive living masterpiece made possible with Selfie Draw Alive !</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\">Everything about the Digital Pledge Wall is customizable from the theme, background, templates to sketch/write on, music, and animations.</span></p>', 1, 'service-1726222432-25.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/q2Sf39B5l3E\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/Q6auffG9gEI\\\"]\"', 'https://youtu.be/vVU_7nw3GYw', 2, '2024-09-10 09:31:23', '2024-09-13 06:13:56', '[\"service-gallery-25-66e4106291ebe.jpg\",\"service-gallery-25-66e4106348a0e.jpg\",\"service-gallery-25-66e41063f2322.jpg\",\"service-gallery-25-66e4106407547.jpg\"]'),
(26, 'SLING SHOT', 'With our slingshot shoot your shot onto the virtual screen, and leave a mark for everyone to see.', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\">With a fully customized&nbsp;<span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; letter-spacing: inherit; text-transform: inherit; color: inherit; font-weight: 700; line-height: inherit; font-size: inherit !important;\">Digital Sling Shot</span>&nbsp;Dubai</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\"><span style=\"box-sizing: inherit;\">Snap, Aim and Shoot! We brought back the slingshot with a little digital twist. Whether it is taking a photo and writing your message, or playing a fun game, our digital slingshot can do it all!</span></p>', 1, 'service-1726222519-26.jpg', '\"[\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/V1iWOx3yApk\\\",\\\"https:\\\\\\/\\\\\\/youtu.be\\\\\\/V1iWOx3yApk\\\"]\"', 'https://youtu.be/yPI7ruraTcs', 2, '2024-09-10 09:32:05', '2024-09-13 06:15:23', '[\"service-gallery-26-66e410b94d157.jpg\",\"service-gallery-26-66e410ba00882.jpg\",\"service-gallery-26-66e410bab68fd.jpg\"]'),
(27, 'FLAG GAME', 'Interactive games for brand activation create events that give people something to talk about', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Interactive GUESS THE FLAG GAME done for ENOC at head office, was one of the most amazing way to engage the crowd with the brand.&nbsp;</span><br></p>', 1, 'service-1726226610-27.jpg', '\"[null]\"', 'https://youtu.be/3gt1x5CaJog', 2, '2024-09-10 09:32:35', '2024-09-13 07:23:30', '[]'),
(28, 'PHOTO PUZZLE', 'Prepare to have some fun with these interesting time-measuring challenges. Photo puzzle.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 21px;\">Prepare to have some fun with these interesting time-measuring challenges. This is a quick-wit picture puzzle. The system will first have 10 seconds to take the players picture with the webcam. Following that picture, you\'ll see a jumbled puzzle piece that the player must organize. You have 120 seconds or two minutes to accomplish it, or else you will lose the game.</span><br></p>', 1, 'service-1726226617-28.jpg', '\"[null]\"', 'https://youtu.be/EC37vcIZ8rw', 2, '2024-09-10 09:33:21', '2024-09-13 07:23:38', '[]'),
(53, 'MAGAZINE BOOTH', 'Using our Photo Magazine Booth, take your event to the next level. And make your magazine.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">With our&nbsp;</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Picture Magazine Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">, you can take your event to the ultimate level. Make unique magazine covers and memories. Enter this one-of-a-kind booth. Choose your favorite magazine and change the headlines.</span><br></p>', 1, 'service-53.jpg', '[null]', 'https://youtu.be/a9bfmh2Qg-c', 1, '2024-09-13 05:58:02', '2024-09-13 05:58:06', '[\"service-gallery-53-66e40cac341a8.jpg\",\"service-gallery-53-66e40cacd73a2.jpg\",\"service-gallery-53-66e40cad8caf3.jpg\"]'),
(54, 'LIGHT PAINTING', 'We can build the event name, logo, or design using a neon light, with instant printing and sharing.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">The</span><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">&nbsp;Neon Light Paint Booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;shines&nbsp;vividly using&nbsp;glowing neon lights. Using electrified glass tubes or bulbs containing rarefied neon or other gases, we build imaginative and bright designs that will give your photo a pleasant color effect. With our neon light painting picture booth, we created an event module that is both entertaining for guests and offers unique branding chances.</span><br></p>', 1, 'service-54.jpg', '[\"https:\\/\\/youtu.be\\/-TKXNTjeU18\"]', 'https://youtu.be/8LdN0LZe9zA', 1, '2024-09-13 06:38:53', '2024-09-13 06:38:54', '[\"service-gallery-54-66e4163ddf549.jpg\",\"service-gallery-54-66e4163dedd1d.jpg\",\"service-gallery-54-66e4163e10cca.jpg\"]'),
(55, 'CLICK AND PRINT', 'A professional photographer with all the necessary equipment with instant printing onsite.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Our instant click and instant printing comes with a professional photographer who uses a professional camera and printing equipment. Printing photographs with your event branding on-site.</span><br></p>', 1, 'service-55.jpg', '[null]', 'https://youtu.be/ow442hB_xdo', 1, '2024-09-13 06:43:13', '2024-09-13 06:43:13', '[\"service-gallery-55-66e417419f304.jpg\",\"service-gallery-55-66e41741b6714.jpg\",\"service-gallery-55-66e41741ce76c.jpg\"]'),
(56, 'MAGNET PHOTO BOOTH', 'A photobooth or professional photographer with instant printing using magnetic photo paper.', '<p><span class=\"x-el x-el-span c1-1n c1-1o c1-b c1-7v c1-35 c1-7w c1-7x\" style=\"box-sizing: inherit; font-family: Helvetica, arial, sans-serif; color: rgb(94, 94, 94); font-size: 24px; font-weight: 700; line-height: inherit;\">Magnet photo booth</span><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">&nbsp;are the branded trade show giveaway you know will be kept. Our engaging team act as an extension of your team to drive traffic to your stand. Photographing attendees, we’ll have their photo magnet printed within minutes, giving your sales team the perfect opportunity to chat with potential leads.&nbsp;</span><br></p>', 1, 'service-56.jpg', '[null]', 'https://youtu.be/0P9BYca_41A', 1, '2024-09-13 06:44:58', '2024-09-13 06:44:58', NULL),
(57, 'AI SKETCH BOOTH', 'AI sketch transforms visitor\'s standard snapshot into an artistic drawing using AI technology.', '<p><b><span style=\"font-family: Arial;\">Want to reach more guests at your events faste</span></b><span style=\"font-family: Arial;\">﻿</span><b><span style=\"font-family: Arial;\">r yet still enjoy the sketch artist option? In this circumstance, the AI robot sketch artist photobooth shines.Avatar, Beauty Enhance, and other fantastic AI options are available.</span></b></p>', 1, 'service-57.jpg', '[null]', 'https://youtu.be/EBGKbe6cOVs', 1, '2024-09-13 06:49:18', '2024-09-13 06:49:18', '[\"service-gallery-57-66e418aeb8ecc.jpg\",\"service-gallery-57-66e418aebe7cd.jpg\",\"service-gallery-57-66e418aec3c31.jpg\"]'),
(58, 'TEXT SELFIE', 'Text Selfies incorporates event text branding into the images of guests.', '<p>This is a fantastic addition to any event, offering a new and fun alternative to the standard photo booth. YOUR TEXT - YOUR IMAGERY. With our text selfie photo booth, we create stunning selfies entirely from your own word content. Completely customizable, with email and printing options.<br></p>', 1, 'service-58.jpg', '[null]', 'https://youtu.be/aABodTihKYo', 1, '2024-09-13 06:51:25', '2024-09-13 06:51:26', '[\"service-gallery-58-66e4192e0c6dc.jpg\",\"service-gallery-58-66e4192e1e8b1.jpg\",\"service-gallery-58-66e4192e32aef.jpg\"]'),
(59, 'GRAFFITI TOUCH', 'Customize your pictures with emojis, branding, text, and all kinds of custom effects.', '<p><span style=\"color: rgb(94, 94, 94); font-family: Helvetica, arial, sans-serif; font-size: 24px;\">Our most recent iteration of the graffiti wall uses a touchscreen and lets guests paint with their fingers or with a graffiti-style marker. it brings people together with a fun, hands-on, interactive experience where anyone can give it a try and create their own art. It\'s brandable, sparks curiosity and always engages your crowd</span><br></p>', 1, 'service-59.jpg', '[null]', 'https://youtu.be/0o16IRPHkek', 1, '2024-09-13 06:55:28', '2024-09-13 06:55:28', NULL);

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
  `contact_card_one` text DEFAULT NULL,
  `contact_card_two` text DEFAULT NULL,
  `contact_card_three` text DEFAULT NULL,
  `copy` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tiktok_url` varchar(200) DEFAULT NULL,
  `linkedin_url` varchar(200) DEFAULT NULL,
  `youtube_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_title`, `email`, `phone`, `facebook_url`, `twitter_url`, `whatsapp_url`, `instagram_url`, `contact_card_one`, `contact_card_two`, `contact_card_three`, `copy`, `created_at`, `updated_at`, `tiktok_url`, `linkedin_url`, `youtube_url`) VALUES
(1, 'Mirror Booth Dubai', 'info@mirrorboothdubai.com', '00971555531443', 'https://www.facebook.com/mirrorboothdubai/', 'https://x.com/mirrorboothdxb', 'https://wa.me/971502664501', 'https://www.instagram.com/mirrorboothdubaillc/', '<p data-ux=\"ContentText\" data-aid=\"CONTACT_INFO_ADDRESS_REND\" data-typography=\"BodyAlpha\" class=\"x-el x-el-p c1-1 c1-2 c1-1q c1-1f c1-52 c1-16 c1-7j c1-b c1-8d c1-c c1-47 c1-d c1-e c1-f c1-g\" style=\"box-sizing: inherit; margin-bottom: 24px; font-family: Helvetica, arial, sans-serif; font-size: 18px; overflow-wrap: break-word; line-height: 1.5; color: rgb(94, 94, 94);\">Mirror Booth Dubai, 3B Street - near Emirates Snack Foods LLC - Umm Ramool - Dubai</p><p data-ux=\"ContentText\" data-typography=\"BodyAlpha\" class=\"x-el x-el-p c1-1 c1-2 c1-1q c1-1f c1-52 c1-16 c1-7j c1-9i c1-b c1-8d c1-c c1-47 c1-d c1-e c1-f c1-g\" style=\"box-sizing: inherit; margin-bottom: 24px; white-space-collapse: preserve-breaks; font-family: Helvetica, arial, sans-serif; font-size: 18px; overflow-wrap: break-word; line-height: 1.5; color: rgb(94, 94, 94);\"><a rel=\"\" role=\"link\" aria-haspopup=\"false\" data-ux=\"Link\" data-aid=\"CONTACT_INFO_PHONE_REND\" href=\"tel:00971502664501\" data-typography=\"LinkAlpha\" class=\"x-el x-el-a c1-1n c1-1o c1-1p c1-1q c1-1f c1-1r c1-1s c1-b c1-72 c1-c c1-20 c1-9j c1-9k c1-d c1-e c1-f c1-g\" data-tccl=\"ux2.CONTACT.contact4.Content.Default.Link.Default.48295.click,click\" style=\"box-sizing: inherit; color: rgb(209, 19, 115); overflow-wrap: break-word; letter-spacing: inherit; text-transform: inherit; display: inline; cursor: pointer; font-weight: inherit;\">00971502664501</a>\r\n<a rel=\"\" role=\"link\" aria-haspopup=\"false\" data-ux=\"Link\" data-aid=\"CONTACT_INFO_PHONE_REND\" href=\"tel:00971555531443\" data-typography=\"LinkAlpha\" class=\"x-el x-el-a c1-1n c1-1o c1-1p c1-1q c1-1f c1-1r c1-1s c1-b c1-72 c1-c c1-20 c1-9j c1-9k c1-d c1-e c1-f c1-g\" data-tccl=\"ux2.CONTACT.contact4.Content.Default.Link.Default.48296.click,click\" style=\"box-sizing: inherit; color: rgb(209, 19, 115); overflow-wrap: break-word; letter-spacing: inherit; text-transform: inherit; display: inline; cursor: pointer; font-weight: inherit;\">00971555531443</a>\r\n<a rel=\"\" role=\"link\" aria-haspopup=\"false\" data-ux=\"Link\" data-aid=\"CONTACT_INFO_EMAIL_REND\" href=\"mailto:info@mirrorboothdubai.com\" data-typography=\"LinkAlpha\" class=\"x-el x-el-a c1-1n c1-1o c1-1p c1-1q c1-1f c1-1r c1-1s c1-b c1-72 c1-c c1-20 c1-9j c1-9k c1-d c1-e c1-f c1-g\" data-tccl=\"ux2.CONTACT.contact4.Content.Default.Link.Default.48297.click,click\" style=\"box-sizing: inherit; color: rgb(209, 19, 115); overflow-wrap: break-word; letter-spacing: inherit; text-transform: inherit; display: inline; cursor: pointer; font-weight: inherit;\">info@mirrorboothdubai.com</a></p>', NULL, NULL, 'Copyright © 2023 Mirror Booth LLC - All Rights Reserved.', '2024-09-10 08:32:30', '2024-09-10 09:56:10', 'https://www.tiktok.com/@mirrorboothdubaillc', 'https://www.linkedin.com/company/mirrorbootdubai/', 'https://www.youtube.com/@MirrorBoothDubai');

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
(1, '1.jpg', '2024-09-10 08:13:48', '2024-09-10 08:13:48'),
(2, '2.jpg', '2024-09-10 08:14:24', '2024-09-10 08:14:24'),
(3, '3.jpg', '2024-09-10 08:16:13', '2024-09-10 08:16:13'),
(4, '4.jpg', '2024-09-10 08:48:00', '2024-09-10 08:48:00'),
(5, '5.jpg', '2024-09-10 08:50:47', '2024-09-10 08:50:47'),
(6, '6.jpg', '2024-09-10 08:54:20', '2024-09-10 08:54:20'),
(7, '7.jpg', '2024-09-12 03:28:13', '2024-09-12 03:28:13'),
(8, '8.jpg', '2024-09-12 03:31:52', '2024-09-12 03:31:52'),
(9, '9.jpg', '2024-09-12 03:31:58', '2024-09-12 03:31:58'),
(10, '10.jpg', '2024-09-12 03:31:59', '2024-09-12 03:31:59'),
(11, '11.jpg', '2024-09-12 03:31:59', '2024-09-12 03:31:59'),
(12, '12.jpg', '2024-09-12 03:31:59', '2024-09-12 03:31:59'),
(13, '13.jpg', '2024-09-12 03:47:33', '2024-09-12 03:47:33'),
(14, '14.jpg', '2024-09-12 03:53:28', '2024-09-12 03:53:28'),
(15, '15.jpg', '2024-09-12 03:57:21', '2024-09-12 03:57:21'),
(16, '16.jpg', '2024-09-12 03:59:18', '2024-09-12 03:59:18'),
(17, '17.jpg', '2024-09-12 03:59:25', '2024-09-12 03:59:25'),
(18, '18.jpg', '2024-09-12 03:59:25', '2024-09-12 03:59:25'),
(19, '19.jpg', '2024-09-12 03:59:25', '2024-09-12 03:59:25'),
(20, '20.jpg', '2024-09-12 03:59:25', '2024-09-12 03:59:25'),
(21, '21.jpg', '2024-09-12 04:01:07', '2024-09-12 04:01:07'),
(22, '22.jpg', '2024-09-12 04:01:11', '2024-09-12 04:01:11'),
(23, '23.jpg', '2024-09-12 04:01:12', '2024-09-12 04:01:12'),
(24, '24.jpg', '2024-09-12 04:01:12', '2024-09-12 04:01:12'),
(25, '25.jpg', '2024-09-12 04:01:12', '2024-09-12 04:01:12'),
(26, '26.jpg', '2024-09-12 04:03:08', '2024-09-12 04:03:08'),
(27, '27.jpg', '2024-09-12 04:03:12', '2024-09-12 04:03:12'),
(28, '28.jpg', '2024-09-12 04:03:13', '2024-09-12 04:03:13'),
(29, '29.jpg', '2024-09-12 04:03:13', '2024-09-12 04:03:13'),
(30, '30.jpg', '2024-09-12 04:03:13', '2024-09-12 04:03:13'),
(31, '31.jpg', '2024-09-12 04:05:58', '2024-09-12 04:05:58'),
(32, '32.jpg', '2024-09-12 04:06:03', '2024-09-12 04:06:03'),
(33, '33.jpg', '2024-09-12 04:06:03', '2024-09-12 04:06:03'),
(34, '34.jpg', '2024-09-12 04:06:03', '2024-09-12 04:06:03'),
(35, '35.jpg', '2024-09-12 04:06:03', '2024-09-12 04:06:03'),
(36, '36.jpg', '2024-09-12 04:15:29', '2024-09-12 04:15:29'),
(37, '37.jpg', '2024-09-12 04:15:35', '2024-09-12 04:15:35'),
(38, '38.webp', '2024-09-12 04:15:41', '2024-09-12 04:15:41'),
(39, '39.webp', '2024-09-12 04:16:04', '2024-09-12 04:16:04'),
(40, '40.webp', '2024-09-12 04:19:15', '2024-09-12 04:19:15'),
(41, '41.webp', '2024-09-12 04:19:48', '2024-09-12 04:19:48'),
(42, '42.jpg', '2024-09-12 04:25:03', '2024-09-12 04:25:03'),
(43, '43.jpg', '2024-09-12 04:25:47', '2024-09-12 04:25:47'),
(44, '44.jpg', '2024-09-12 04:25:47', '2024-09-12 04:25:47'),
(45, '45.jpg', '2024-09-12 04:25:47', '2024-09-12 04:25:47'),
(46, '46.jpg', '2024-09-12 04:25:47', '2024-09-12 04:25:47'),
(47, '47.jpg', '2024-09-12 04:25:47', '2024-09-12 04:25:47'),
(48, '48.jpg', '2024-09-12 04:26:15', '2024-09-12 04:26:15'),
(49, '49.jpg', '2024-09-12 04:38:00', '2024-09-12 04:38:00'),
(50, '50.jpg', '2024-09-12 04:38:00', '2024-09-12 04:38:00'),
(51, '51.jpg', '2024-09-12 04:38:00', '2024-09-12 04:38:00'),
(52, '52.jpg', '2024-09-12 04:38:00', '2024-09-12 04:38:00'),
(53, '53.jpg', '2024-09-12 04:38:20', '2024-09-12 04:38:20'),
(54, '54.jpg', '2024-09-12 04:38:26', '2024-09-12 04:38:26'),
(55, '55.jpg', '2024-09-12 04:39:05', '2024-09-12 04:39:05'),
(56, '56.jpg', '2024-09-12 04:39:10', '2024-09-12 04:39:10'),
(57, '57.jpg', '2024-09-12 04:39:47', '2024-09-12 04:39:47'),
(58, '58.jpg', '2024-09-12 04:39:47', '2024-09-12 04:39:47'),
(59, '59.jpg', '2024-09-12 04:39:47', '2024-09-12 04:39:47'),
(60, '60.jpg', '2024-09-12 04:39:47', '2024-09-12 04:39:47'),
(61, '61.jpg', '2024-09-12 04:44:48', '2024-09-12 04:44:48'),
(62, '62.jpg', '2024-09-12 04:44:48', '2024-09-12 04:44:48'),
(63, '63.jpg', '2024-09-12 04:44:48', '2024-09-12 04:44:48'),
(64, '64.jpg', '2024-09-12 04:54:28', '2024-09-12 04:54:28'),
(65, '65.jpg', '2024-09-12 04:58:09', '2024-09-12 04:58:09'),
(66, '66.jpg', '2024-09-12 04:58:09', '2024-09-12 04:58:09'),
(67, '67.jpg', '2024-09-12 04:58:09', '2024-09-12 04:58:09'),
(68, '68.webp', '2024-09-12 04:58:12', '2024-09-12 04:58:12'),
(69, '69.jpg', '2024-09-12 05:23:01', '2024-09-12 05:23:01'),
(70, '70.jpg', '2024-09-12 05:23:07', '2024-09-12 05:23:07'),
(71, '71.jpg', '2024-09-12 05:23:08', '2024-09-12 05:23:08'),
(72, '72.jpg', '2024-09-12 05:23:08', '2024-09-12 05:23:08'),
(73, '73.jpg', '2024-09-12 05:29:57', '2024-09-12 05:29:57'),
(74, '74.jpg', '2024-09-12 05:29:57', '2024-09-12 05:29:57'),
(75, '75.jpg', '2024-09-12 05:29:57', '2024-09-12 05:29:57'),
(76, '76.jpg', '2024-09-12 05:30:05', '2024-09-12 05:30:05'),
(77, '77.jpg', '2024-09-12 05:32:19', '2024-09-12 05:32:19'),
(78, '78.jpg', '2024-09-12 05:32:19', '2024-09-12 05:32:19'),
(79, '79.jpg', '2024-09-12 05:32:19', '2024-09-12 05:32:19'),
(80, '80.jpg', '2024-09-12 05:34:56', '2024-09-12 05:34:56'),
(81, '81.jpg', '2024-09-12 05:35:04', '2024-09-12 05:35:04'),
(82, '82.jpg', '2024-09-12 05:35:04', '2024-09-12 05:35:04'),
(83, '83.jpg', '2024-09-12 05:35:04', '2024-09-12 05:35:04'),
(84, '84.jpg', '2024-09-12 05:40:02', '2024-09-12 05:40:02'),
(85, '85.jpg', '2024-09-12 05:40:02', '2024-09-12 05:40:02'),
(86, '86.jpg', '2024-09-12 05:40:02', '2024-09-12 05:40:02'),
(87, '87.jpg', '2024-09-12 05:40:02', '2024-09-12 05:40:02'),
(88, '88.jpg', '2024-09-12 05:40:17', '2024-09-12 05:40:17'),
(89, '89.jpg', '2024-09-12 05:40:18', '2024-09-12 05:40:18'),
(90, '90.jpg', '2024-09-12 05:40:18', '2024-09-12 05:40:18'),
(91, '91.jpg', '2024-09-12 05:40:18', '2024-09-12 05:40:18'),
(92, '92.webp', '2024-09-12 05:40:23', '2024-09-12 05:40:23'),
(93, '93.jpg', '2024-09-12 05:41:07', '2024-09-12 05:41:07'),
(94, '94.jpg', '2024-09-12 05:41:07', '2024-09-12 05:41:07'),
(95, '95.jpg', '2024-09-12 05:41:07', '2024-09-12 05:41:07'),
(96, '96.jpg', '2024-09-12 05:42:58', '2024-09-12 05:42:58'),
(97, '97.jpg', '2024-09-12 05:42:58', '2024-09-12 05:42:58'),
(98, '98.jpg', '2024-09-12 05:42:59', '2024-09-12 05:42:59'),
(99, '99.jpg', '2024-09-12 05:42:59', '2024-09-12 05:42:59'),
(100, '100.jpg', '2024-09-12 05:49:32', '2024-09-12 05:49:32'),
(101, '101.jpg', '2024-09-12 05:49:32', '2024-09-12 05:49:32'),
(102, '102.jpg', '2024-09-12 05:49:32', '2024-09-12 05:49:32'),
(103, '103.jpg', '2024-09-12 05:49:33', '2024-09-12 05:49:33'),
(104, '104.jpg', '2024-09-12 06:15:53', '2024-09-12 06:15:53'),
(105, '105.jpg', '2024-09-12 06:15:53', '2024-09-12 06:15:54'),
(106, '106.jpg', '2024-09-12 06:15:54', '2024-09-12 06:15:54'),
(107, '107.jpg', '2024-09-12 06:16:10', '2024-09-12 06:16:10'),
(108, '108.jpg', '2024-09-12 06:16:10', '2024-09-12 06:16:10'),
(109, '109.jpg', '2024-09-12 06:16:10', '2024-09-12 06:16:10'),
(110, '110.jpg', '2024-09-12 06:22:11', '2024-09-12 06:22:11'),
(111, '111.jpg', '2024-09-12 06:22:12', '2024-09-12 06:22:12'),
(112, '112.jpg', '2024-09-12 06:22:12', '2024-09-12 06:22:12'),
(113, '113.jpg', '2024-09-12 06:22:12', '2024-09-12 06:22:12'),
(114, '114.jpg', '2024-09-12 06:31:16', '2024-09-12 06:31:16'),
(115, '115.jpg', '2024-09-12 06:31:16', '2024-09-12 06:31:16'),
(116, '116.jpg', '2024-09-12 06:31:16', '2024-09-12 06:31:16'),
(117, '117.jpg', '2024-09-12 06:31:17', '2024-09-12 06:31:17'),
(118, '118.jpg', '2024-09-12 06:31:17', '2024-09-12 06:31:17'),
(119, '119.jpg', '2024-09-12 06:35:51', '2024-09-12 06:35:51'),
(120, '120.jpg', '2024-09-12 06:35:51', '2024-09-12 06:35:51'),
(121, '121.jpg', '2024-09-12 06:35:51', '2024-09-12 06:35:51'),
(122, '122.jpg', '2024-09-12 06:35:51', '2024-09-12 06:35:51'),
(123, '123.jpg', '2024-09-12 06:36:53', '2024-09-12 06:36:53'),
(124, '124.jpg', '2024-09-12 06:36:53', '2024-09-12 06:36:53'),
(125, '125.jpg', '2024-09-12 06:36:53', '2024-09-12 06:36:53'),
(126, '126.jpg', '2024-09-12 06:36:54', '2024-09-12 06:36:54'),
(127, '127.jpg', '2024-09-12 06:37:34', '2024-09-12 06:37:34'),
(128, '128.jpg', '2024-09-12 06:38:00', '2024-09-12 06:38:00'),
(129, '129.jpg', '2024-09-12 06:38:01', '2024-09-12 06:38:01'),
(130, '130.jpg', '2024-09-12 06:38:01', '2024-09-12 06:38:01'),
(131, '131.jpg', '2024-09-12 06:38:01', '2024-09-12 06:38:01'),
(132, '132.jpg', '2024-09-12 06:38:01', '2024-09-12 06:38:01'),
(133, '133.jpg', '2024-09-12 06:38:01', '2024-09-12 06:38:01'),
(134, '134.jpg', '2024-09-12 06:39:56', '2024-09-12 06:39:57'),
(135, '135.jpg', '2024-09-13 04:46:36', '2024-09-13 04:46:36'),
(136, '136.jpg', '2024-09-13 04:49:30', '2024-09-13 04:49:30'),
(137, '137.jpg', '2024-09-13 04:49:34', '2024-09-13 04:49:34'),
(138, '138.jpg', '2024-09-13 04:49:34', '2024-09-13 04:49:34'),
(139, '139.jpg', '2024-09-13 04:49:35', '2024-09-13 04:49:35'),
(140, '140.jpg', '2024-09-13 05:00:11', '2024-09-13 05:00:11'),
(141, '141.jpg', '2024-09-13 05:00:16', '2024-09-13 05:00:16'),
(142, '142.jpg', '2024-09-13 05:00:17', '2024-09-13 05:00:17'),
(143, '143.jpg', '2024-09-13 05:00:17', '2024-09-13 05:00:17'),
(144, '144.jpg', '2024-09-13 05:07:10', '2024-09-13 05:07:10'),
(145, '145.jpg', '2024-09-13 05:07:15', '2024-09-13 05:07:15'),
(146, '146.jpg', '2024-09-13 05:07:16', '2024-09-13 05:07:16'),
(147, '147.jpg', '2024-09-13 05:07:16', '2024-09-13 05:07:16'),
(148, '148.jpg', '2024-09-13 05:07:16', '2024-09-13 05:07:16'),
(149, '149.jpg', '2024-09-13 05:14:16', '2024-09-13 05:14:16'),
(150, '150.jpg', '2024-09-13 05:14:19', '2024-09-13 05:14:19'),
(151, '151.jpg', '2024-09-13 05:14:20', '2024-09-13 05:14:20'),
(152, '152.jpg', '2024-09-13 05:14:20', '2024-09-13 05:14:20'),
(153, '153.jpg', '2024-09-13 05:14:20', '2024-09-13 05:14:20'),
(154, '154.jpg', '2024-09-13 05:37:38', '2024-09-13 05:37:38'),
(155, '155.jpg', '2024-09-13 05:37:43', '2024-09-13 05:37:43'),
(156, '156.jpg', '2024-09-13 05:37:44', '2024-09-13 05:37:44'),
(157, '157.jpg', '2024-09-13 05:37:44', '2024-09-13 05:37:44'),
(158, '158.jpg', '2024-09-13 05:41:54', '2024-09-13 05:41:54'),
(159, '159.jpg', '2024-09-13 05:41:57', '2024-09-13 05:41:57'),
(160, '160.jpg', '2024-09-13 05:41:58', '2024-09-13 05:41:58'),
(161, '161.jpg', '2024-09-13 05:41:58', '2024-09-13 05:41:58'),
(162, '162.jpg', '2024-09-13 05:41:58', '2024-09-13 05:41:58'),
(163, '163.jpg', '2024-09-13 05:46:22', '2024-09-13 05:46:22'),
(164, '164.jpg', '2024-09-13 05:46:25', '2024-09-13 05:46:25'),
(165, '165.jpg', '2024-09-13 05:46:25', '2024-09-13 05:46:25'),
(166, '166.jpg', '2024-09-13 05:46:25', '2024-09-13 05:46:25'),
(167, '167.jpg', '2024-09-13 05:46:25', '2024-09-13 05:46:25'),
(168, '168.jpg', '2024-09-13 05:47:43', '2024-09-13 05:47:43'),
(169, '169.jpg', '2024-09-13 05:47:48', '2024-09-13 05:47:48'),
(170, '170.jpg', '2024-09-13 05:47:48', '2024-09-13 05:47:48'),
(171, '171.jpg', '2024-09-13 05:47:49', '2024-09-13 05:47:49'),
(172, '172.jpg', '2024-09-13 05:51:15', '2024-09-13 05:51:15'),
(173, '173.jpg', '2024-09-13 05:51:18', '2024-09-13 05:51:18'),
(174, '174.jpg', '2024-09-13 05:51:18', '2024-09-13 05:51:18'),
(175, '175.jpg', '2024-09-13 05:51:18', '2024-09-13 05:51:18'),
(176, '176.jpg', '2024-09-13 05:53:00', '2024-09-13 05:53:00'),
(177, '177.jpg', '2024-09-13 05:53:03', '2024-09-13 05:53:03'),
(178, '178.jpeg', '2024-09-13 05:53:03', '2024-09-13 05:53:03'),
(179, '179.jpg', '2024-09-13 05:53:03', '2024-09-13 05:53:03'),
(180, '180.jpg', '2024-09-13 05:54:32', '2024-09-13 05:54:32'),
(181, '181.jpg', '2024-09-13 05:54:36', '2024-09-13 05:54:36'),
(182, '182.jpg', '2024-09-13 05:54:36', '2024-09-13 05:54:36'),
(183, '183.jpg', '2024-09-13 05:54:36', '2024-09-13 05:54:36'),
(184, '184.jpg', '2024-09-13 05:57:58', '2024-09-13 05:57:58'),
(185, '185.jpg', '2024-09-13 05:58:01', '2024-09-13 05:58:01'),
(186, '186.jpg', '2024-09-13 05:58:01', '2024-09-13 05:58:01'),
(187, '187.jpg', '2024-09-13 05:58:02', '2024-09-13 05:58:02'),
(188, '188.jpg', '2024-09-13 06:01:20', '2024-09-13 06:01:20'),
(189, '189.jpg', '2024-09-13 06:01:23', '2024-09-13 06:01:23'),
(190, '190.jpg', '2024-09-13 06:01:23', '2024-09-13 06:01:23'),
(191, '191.jpg', '2024-09-13 06:01:23', '2024-09-13 06:01:23'),
(192, '192.jpg', '2024-09-13 06:03:52', '2024-09-13 06:03:52'),
(193, '193.jpg', '2024-09-13 06:03:57', '2024-09-13 06:03:57'),
(194, '194.jpg', '2024-09-13 06:03:57', '2024-09-13 06:03:57'),
(195, '195.jpg', '2024-09-13 06:03:57', '2024-09-13 06:03:57'),
(196, '196.jpg', '2024-09-13 06:03:57', '2024-09-13 06:03:57'),
(197, '197.jpg', '2024-09-13 06:05:56', '2024-09-13 06:05:56'),
(198, '198.jpg', '2024-09-13 06:05:59', '2024-09-13 06:05:59'),
(199, '199.jpg', '2024-09-13 06:05:59', '2024-09-13 06:05:59'),
(200, '200.jpg', '2024-09-13 06:06:00', '2024-09-13 06:06:00'),
(201, '201.jpg', '2024-09-13 06:06:00', '2024-09-13 06:06:00'),
(202, '202.jpg', '2024-09-13 06:06:00', '2024-09-13 06:06:00'),
(203, '203.jpg', '2024-09-13 06:06:00', '2024-09-13 06:06:00'),
(204, '204.jpg', '2024-09-13 06:06:00', '2024-09-13 06:06:00'),
(205, '205.jpg', '2024-09-13 06:13:47', '2024-09-13 06:13:47'),
(206, '206.jpg', '2024-09-13 06:13:50', '2024-09-13 06:13:50'),
(207, '207.jpg', '2024-09-13 06:13:50', '2024-09-13 06:13:50'),
(208, '208.jpg', '2024-09-13 06:13:51', '2024-09-13 06:13:51'),
(209, '209.jpg', '2024-09-13 06:13:51', '2024-09-13 06:13:51'),
(210, '210.jpg', '2024-09-13 06:15:16', '2024-09-13 06:15:16'),
(211, '211.jpg', '2024-09-13 06:15:18', '2024-09-13 06:15:18'),
(212, '212.jpg', '2024-09-13 06:15:18', '2024-09-13 06:15:18'),
(213, '213.jpg', '2024-09-13 06:15:19', '2024-09-13 06:15:19'),
(214, '214.jpg', '2024-09-13 06:19:46', '2024-09-13 06:19:46'),
(215, '215.jpg', '2024-09-13 06:19:50', '2024-09-13 06:19:50'),
(216, '216.jpg', '2024-09-13 06:19:50', '2024-09-13 06:19:50'),
(217, '217.jpg', '2024-09-13 06:19:51', '2024-09-13 06:19:51'),
(218, '218.jpg', '2024-09-13 06:19:51', '2024-09-13 06:19:51'),
(219, '219.jpg', '2024-09-13 06:25:15', '2024-09-13 06:25:15'),
(220, '220.jpg', '2024-09-13 06:25:18', '2024-09-13 06:25:18'),
(221, '221.jpg', '2024-09-13 06:25:19', '2024-09-13 06:25:19'),
(222, '222.jpg', '2024-09-13 06:25:19', '2024-09-13 06:25:19'),
(223, '223.jpg', '2024-09-13 06:25:19', '2024-09-13 06:25:19'),
(224, '224.jpg', '2024-09-13 06:27:18', '2024-09-13 06:27:18'),
(225, '225.jpg', '2024-09-13 06:27:23', '2024-09-13 06:27:23'),
(226, '226.jpg', '2024-09-13 06:27:23', '2024-09-13 06:27:23'),
(227, '227.jpg', '2024-09-13 06:27:23', '2024-09-13 06:27:23'),
(228, '228.jpg', '2024-09-13 06:30:34', '2024-09-13 06:30:34'),
(229, '229.jpg', '2024-09-13 06:30:39', '2024-09-13 06:30:39'),
(230, '230.jpg', '2024-09-13 06:30:39', '2024-09-13 06:30:39'),
(231, '231.jpg', '2024-09-13 06:30:40', '2024-09-13 06:30:40'),
(232, '232.jpg', '2024-09-13 06:33:57', '2024-09-13 06:33:57'),
(233, '233.jpg', '2024-09-13 06:34:00', '2024-09-13 06:34:00'),
(234, '234.jpg', '2024-09-13 06:34:00', '2024-09-13 06:34:00'),
(235, '235.jpg', '2024-09-13 06:34:00', '2024-09-13 06:34:00'),
(236, '236.jpg', '2024-09-13 06:34:01', '2024-09-13 06:34:01'),
(237, '237.jpg', '2024-09-13 06:35:38', '2024-09-13 06:35:38'),
(238, '238.jpg', '2024-09-13 06:35:41', '2024-09-13 06:35:41'),
(239, '239.jpg', '2024-09-13 06:35:42', '2024-09-13 06:35:42'),
(240, '240.jpg', '2024-09-13 06:35:42', '2024-09-13 06:35:42'),
(241, '241.jpg', '2024-09-13 06:35:42', '2024-09-13 06:35:42'),
(242, '242.jpg', '2024-09-13 06:38:49', '2024-09-13 06:38:49'),
(243, '243.jpg', '2024-09-13 06:38:52', '2024-09-13 06:38:52'),
(244, '244.jpg', '2024-09-13 06:38:52', '2024-09-13 06:38:52'),
(245, '245.jpg', '2024-09-13 06:38:52', '2024-09-13 06:38:52'),
(246, '246.jpg', '2024-09-13 06:43:08', '2024-09-13 06:43:08'),
(247, '247.jpg', '2024-09-13 06:43:12', '2024-09-13 06:43:12'),
(248, '248.jpg', '2024-09-13 06:43:12', '2024-09-13 06:43:12'),
(249, '249.jpg', '2024-09-13 06:43:12', '2024-09-13 06:43:12'),
(250, '250.jpg', '2024-09-13 06:44:56', '2024-09-13 06:44:56'),
(251, '251.jpg', '2024-09-13 06:49:12', '2024-09-13 06:49:12'),
(252, '252.jpg', '2024-09-13 06:49:17', '2024-09-13 06:49:17'),
(253, '253.jpg', '2024-09-13 06:49:17', '2024-09-13 06:49:17'),
(254, '254.jpg', '2024-09-13 06:49:17', '2024-09-13 06:49:17'),
(255, '255.jpg', '2024-09-13 06:51:21', '2024-09-13 06:51:21'),
(256, '256.jpg', '2024-09-13 06:51:25', '2024-09-13 06:51:25'),
(257, '257.jpg', '2024-09-13 06:51:25', '2024-09-13 06:51:25'),
(258, '258.jpg', '2024-09-13 06:51:25', '2024-09-13 06:51:25'),
(259, '259.jpg', '2024-09-13 06:55:26', '2024-09-13 06:55:26'),
(260, '260.jpg', '2024-09-13 07:14:23', '2024-09-13 07:14:23'),
(261, '261.jpg', '2024-09-13 07:17:54', '2024-09-13 07:17:54'),
(262, '262.jpg', '2024-09-13 07:17:58', '2024-09-13 07:17:58'),
(263, '263.jpg', '2024-09-13 07:17:59', '2024-09-13 07:17:59'),
(264, '264.jpg', '2024-09-13 07:17:59', '2024-09-13 07:17:59'),
(265, '265.jpg', '2024-09-13 07:18:34', '2024-09-13 07:18:34'),
(266, '266.jpg', '2024-09-13 07:18:38', '2024-09-13 07:18:38'),
(267, '267.jpg', '2024-09-13 07:18:38', '2024-09-13 07:18:38'),
(268, '268.jpg', '2024-09-13 07:18:38', '2024-09-13 07:18:38'),
(269, '269.jpg', '2024-09-13 07:20:05', '2024-09-13 07:20:05'),
(270, '270.jpg', '2024-09-13 07:22:25', '2024-09-13 07:22:25'),
(271, '271.jpg', '2024-09-13 07:23:29', '2024-09-13 07:23:29'),
(272, '272.jpg', '2024-09-13 07:23:36', '2024-09-13 07:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'admin@gmail.com', '2024-09-10 08:01:56', '$2y$10$FTJOKWIcBMI65HW/nguNyefhyxI6KE3CKCkbzOQv/ycbddY8HjlF.', 'QhUSTBHK6GZstgsPgUHjVktCQ28dsMSPD4LDrCZjIde6qwsmHvugr0eLzO4j', '2024-09-10 08:01:56', '2024-09-10 08:01:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_category_id_foreign` (`category_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_files`
--
ALTER TABLE `temp_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

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

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
