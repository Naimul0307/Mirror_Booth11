
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `blogs` (`id`, `name`, `slug`, `short_desc`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Web Development blog', NULL, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>The standard Lorem Ipsum passage, used since the 1500s</p><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</p><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>1914 translation by H. Rackham</p><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 'blog-1656862070-2.jpg', 1, '2022-07-03 09:29:15', '2022-07-10 06:10:04'),
(3, 'Sample Blog Heading One', NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis', '<p>The standard Lorem Ipsum passage, used since the 1500s</p><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</p><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>1914 translation by H. Rackham</p><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 'blog-3.jpg', 1, '2022-07-10 06:05:41', '2022-07-10 06:09:44'),
(4, 'Sample Blog Heading Two', NULL, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>The standard Lorem Ipsum passage, used since the 1500s</p><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</p><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>1914 translation by H. Rackham</p><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 'blog-4.jpg', 1, '2022-07-10 06:07:13', '2022-07-10 06:09:35'),
(5, 'Sample Blog Heading  Three', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>The standard Lorem Ipsum passage, used since the 1500s</p><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</p><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>1914 translation by H. Rackham</p><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 'blog-5.jpg', 1, '2022-07-10 06:07:56', '2022-07-10 06:09:26'),
(6, 'Sample Blog Heading four', 'sample-blog-heading-four', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>The standard Lorem Ipsum passage, used since the 1500s</p><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</p><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><p>1914 translation by H. Rackham</p><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 'blog-6.jpg', 1, '2022-07-10 06:08:56', '2022-08-14 05:35:22');


CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `comments` (`id`, `blog_id`, `name`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Mohit Singh', 'Dummy comment', 1, '2022-07-10 09:00:40', '2022-07-10 09:00:40'),
(2, 6, 'John Doe', 'But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', 1, '2022-07-10 09:06:25', '2022-07-10 09:06:25'),
(3, 6, 'Mohit Singh', 'But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', 1, '2022-07-10 09:09:30', '2022-07-10 09:09:30'),
(4, 6, 'Sachin', 'But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure', 1, '2022-07-10 09:14:19', '2022-07-10 09:14:19'),
(5, 6, 'John Doe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo', 1, '2022-07-10 09:17:05', '2022-07-10 09:17:05'),
(6, 6, 'Mark', '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', 1, '2022-07-10 09:18:14', '2022-07-10 09:18:14'),
(7, 5, 'John Doe', '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', 1, '2022-07-10 09:19:26', '2022-07-10 09:19:26');


CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `faq` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(2, 'What does LOREM mean?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum vitae, doloremque quaerat atque libero possimus veniam labore nam sint, expedita autem eius in? Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum vitae, doloremque quaerat atque libero possimus veniam labore nam sint, expedita autem eius in? Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.<br></p><p>\r\n</p>', 1, '2022-07-17 11:49:52', '2022-07-17 06:47:41'),
(4, 'Do I need to create an account to make an order?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum vitae, doloremque quaerat atque libero possimus veniam labore nam sint, expedita autem eius in? Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.</p><p>Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.<br></p><p>\r\n</p>', 1, '2022-07-17 12:18:07', NULL),
(5, 'Are you on Twitter, Facebook and other social media platforms?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum vitae, doloremque quaerat atque libero possimus veniam labore nam sint, expedita autem eius in? Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.</p><p>Doloremque quaerat atque libero possimus veniam labore nam sint, expedita autem eius in? Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.<br></p><p>\r\n</p>', 1, '2022-07-17 12:18:31', NULL),
(6, 'Can I order a free copy of a magazine to sample?', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum vitae, doloremque quaerat atque libero possimus veniam labore nam sint, expedita autem eius in? Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum vitae, doloremque quaerat atque libero possimus veniam labore nam sint, expedita autem eius in? Perferendis, commodi reprehenderit eaque porro magnam similique! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias in quisquam dignissimos omnis a perferendis, animi, eligendi quo labore rem quas. Accusamus quidem rem consequatur vero culpa nostrum, assumenda exercitationem.</p><ol><li>One&nbsp;</li><li>Two&nbsp;</li><li>Three</li></ol><p>\r\n</p>', 1, '2022-07-17 12:19:19', '2022-07-17 06:55:34');

CREATE TABLE `featured_services` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `featured_services` (`id`, `service_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 4, 0, '2022-10-07 07:58:54', '2022-10-07 07:58:54'),
(2, 5, 1, '2022-10-07 07:58:55', '2022-10-07 07:58:55'),
(3, 11, 2, '2022-10-07 07:58:55', '2022-10-07 07:58:55'),
(4, 9, 3, '2022-10-07 07:58:55', '2022-10-07 07:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_08_154948_alter_users_table', 2);


CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `pages` (`id`, `name`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(12, 'About Us', '<p>This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for your business and what makes you different from your competitors. Make your company stand out and show your visitors who you are.</p><p><span style=\"font-size: 1rem;\">This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. Tell your visitors the story of how you came up with the idea for your business and what makes you different from your competitors. Make your company stand out and show your visitors who you are.</span><br></p>', 'page-12.jpg', 1, '2022-08-13 13:18:14', '2022-08-13 14:01:34'),
(14, 'Terms & Conditions', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<br></p>', '', 1, '2022-08-13 13:41:11', '2022-08-13 14:25:25'),
(16, 'Privacy Policy', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 1, '2022-08-13 13:41:45', '2022-08-13 14:18:06');


CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `services` (`id`, `name`, `short_desc`, `description`, `status`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Web Development', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?\r\n\r\n', '<p>Dummy text</p>', 1, '2022-05-08 10:49:51', '2022-05-08 10:49:53', 'service-1.jpg'),
(2, 'Digital Marketing', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?\r\n\r\n', '<p>asdasdasdasdasd</p>', 1, '2022-05-08 10:51:08', '2022-05-08 10:51:09', 'service-2.jpg'),
(3, 'T-shirt Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?\r\n\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of </p><p>Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</p>', 1, '2022-05-08 10:56:03', '2022-06-19 01:01:01', 'service-1655620228-3.jpg'),
(4, 'Web Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?\r\n\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of</p><p>Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2022-06-12 04:51:34', '2022-06-19 01:02:01', 'service-1655620316-4.jpg'),
(5, 'Book Cover Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?\r\n\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of</p><p>Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2022-06-12 04:54:08', '2022-06-19 01:03:10', 'service-1655620386-5.jpg'),
(8, 'Logo Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?\r\n\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p><p>\r\n\r\n</p>', 1, '2022-06-19 00:54:10', '2022-06-19 00:54:59', 'service-1655619897-8.jpg'),
(9, 'Brochure Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus finibus tristique nunc eu auctor. Nulla et pulvinar massa. Duis nec libero felis. Donec tempus ligula enim, vitae venenatis tortor porta ut. Suspendisse non velit ex. Sed eget condimentum enim. Sed venenatis, nulla ut dapibus mollis, ex lorem vehicula sapien, eget facilisis velit mi sed quam. Aliquam erat volutpat. Integer non orci id dui iaculis elementum ac sit amet metus.\r\n\r\nNunc dignissim magna a purus finibus, ac lacinia nulla laoreet. </p><p>Phasellus id diam quis quam fringilla pellentesque. Curabitur ut erat eget nunc scelerisque efficitur vitae tincidunt eros. Duis consectetur ex a lobortis auctor. Etiam vel ultricies neque, nec pellentesque massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec quis bibendum ipsum, at ullamcorper odio. Mauris placerat mi posuere massa faucibus, vitae accumsan nisl consequat. Etiam consectetur faucibus arcu, nec euismod ipsum lobortis et. </p><p>Vestibulum molestie pharetra molestie. Nulla eget tincidunt urna.\r\n\r\nInteger vitae malesuada massa. Nullam semper ullamcorper lorem, vestibulum ultrices neque molestie eu. Morbi vel finibus urna. Aenean vestibulum ligula nisl, vitae congue nisi convallis eget. Sed mi lectus, rhoncus id sapien at, euismod volutpat justo. Donec tincidunt, nibh sit amet tempus porta, urna tellus vestibulum augue, sed semper libero nisi sit amet mauris. Etiam congue magna a dapibus vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae lobortis massa. Sed ut finibus mauris. Nunc sit amet sem eleifend, consectetur lacus maximus, congue nunc.\r\n\r\n</p>', 1, '2022-06-19 00:55:25', '2022-06-19 01:04:29', 'service-1655620463-9.jpg'),
(10, 'App Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus finibus tristique nunc eu auctor. Nulla et pulvinar massa. Duis nec libero felis. Donec tempus ligula enim, vitae venenatis tortor porta ut. Suspendisse non velit ex. Sed eget condimentum enim. Sed venenatis, nulla ut dapibus mollis, ex lorem vehicula sapien, eget facilisis velit mi sed quam. Aliquam erat volutpat. Integer non orci id dui iaculis elementum ac sit amet metus.</p><p>Nunc dignissim magna a purus finibus, ac lacinia nulla laoreet. Phasellus id diam quis quam fringilla pellentesque. Curabitur ut erat eget nunc scelerisque efficitur vitae tincidunt eros. Duis consectetur ex a lobortis auctor. Etiam vel ultricies neque, nec pellentesque massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec quis bibendum ipsum, at ullamcorper odio. Mauris placerat mi posuere massa faucibus, vitae accumsan nisl consequat. Etiam consectetur faucibus arcu, nec euismod ipsum lobortis et. Vestibulum molestie pharetra molestie. Nulla eget tincidunt urna.</p><p>Integer vitae malesuada massa. Nullam semper ullamcorper lorem, vestibulum ultrices neque molestie eu. Morbi vel finibus urna. Aenean vestibulum ligula nisl, vitae congue nisi convallis eget. Sed mi lectus, rhoncus id sapien at, euismod volutpat justo. Donec tincidunt, nibh sit amet tempus porta, urna tellus vestibulum augue, sed semper libero nisi sit amet mauris. Etiam congue magna a dapibus vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae lobortis massa. Sed ut finibus mauris. Nunc sit amet sem eleifend, consectetur lacus maximus, congue nunc.</p><p><br></p>', 1, '2022-06-19 01:05:42', '2022-06-20 13:43:06', 'service-10.jpg'),
(11, 'Content Writing', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi ipsum, odit velit exercitationem praesentium error id iusto dolorem expedita nostrum eius atque? Aliquam ab reprehenderit animi sapiente quasi, voluptate dolorum?', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus finibus tristique nunc eu auctor. Nulla et pulvinar massa. Duis nec libero felis. Donec tempus ligula enim, vitae venenatis tortor porta ut. Suspendisse non velit ex. Sed eget condimentum enim. Sed venenatis, nulla ut dapibus mollis, ex lorem vehicula sapien, eget facilisis velit mi sed quam. Aliquam erat volutpat. Integer non orci id dui iaculis elementum ac sit amet metus.</p><p>Nunc dignissim magna a purus finibus, ac lacinia nulla laoreet. Phasellus id diam quis quam fringilla pellentesque. Curabitur ut erat eget nunc scelerisque efficitur vitae tincidunt eros. Duis consectetur ex a lobortis auctor. Etiam vel ultricies neque, nec pellentesque massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec quis bibendum ipsum, at ullamcorper odio. Mauris placerat mi posuere massa faucibus, vitae accumsan nisl consequat. Etiam consectetur faucibus arcu, nec euismod ipsum lobortis et. Vestibulum molestie pharetra molestie. Nulla eget tincidunt urna.</p><p></p>', 0, '2022-06-19 01:07:37', '2022-06-20 14:49:08', 'service-11.jpg');

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `website_title` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `facebook_url` varchar(50) DEFAULT NULL,
  `twitter_url` varchar(50) DEFAULT NULL,
  `instagram_url` varchar(50) DEFAULT NULL,
  `contact_card_one` text DEFAULT NULL,
  `contact_card_two` text DEFAULT NULL,
  `contact_card_three` text DEFAULT NULL,
  `copy` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_title`, `email`, `phone`, `facebook_url`, `twitter_url`, `instagram_url`, `contact_card_one`, `contact_card_two`, `contact_card_three`, `copy`, `created_at`, `updated_at`) VALUES
(1, 'PHP TECH LIFE', 'phptechlife@gmail.com', '24234234', 'https://facebook.com/phptechlife', 'https://twitter.com/phptechlife', 'https://www.instagram.com/mohitsingh_techie/', '<h5 class=\"mb-3\">Customer Support</h5>\r\n<ul class=\"list-inline mb-0 text-white \">\r\n                        <!-- Address -->\r\n                        <li class=\"list-item mb-3\">\r\n                            <a href=\"#\"> <i class=\"fas fa-fw fa-map-marker-alt me-2 mt-1\"></i>Example Cop.  Park Street, MI 22222</a>\r\n                        </li>\r\n                        <!-- Phone number -->\r\n                        <li class=\"list-item mb-3\">\r\n                            <a href=\"#\"> <i class=\"fas fa-fw fa-phone-alt me-2\"></i>(XXX) XXX-XXXX </a>\r\n                        </li>\r\n                        <!-- Email id -->\r\n                        <li class=\"list-item mb-0\">\r\n                            <a href=\"#\"> <i class=\"far fa-fw fa-envelope me-2\"></i>example@email.com </a>\r\n                        </li>\r\n                    </ul>', '<h5 class=\"mb-3\">Contact Address</h5><ul class=\"list-inline mb-0\">\r\n                        <!-- Address -->\r\n                        <li class=\"list-item mb-3 h6 fw-light\">\r\n                            <a href=\"#\"> <i class=\"fas fa-fw fa-map-marker-alt me-2 mt-1\"></i>Example Cop.  Park Street, MI 22222</a>\r\n                        </li>\r\n                        <!-- Phone number -->\r\n                        <li class=\"list-item mb-3 h6 fw-light\">\r\n                            <a href=\"#\"> <i class=\"fas fa-fw fa-phone-alt me-2\"></i>+222-222-222 </a>\r\n                        </li>\r\n                        <!-- Email id -->\r\n                        <li class=\"list-item mb-0 h6 fw-light\">\r\n                            <a href=\"#\"> <i class=\"far fa-fw fa-envelope me-2\"></i>example22@email.com </a>\r\n                        </li>\r\n                    </ul>', '<h5 class=\"mb-3\">Main Office Address</h5><ul class=\"list-inline mb-0\">\r\n                        <!-- Address -->\r\n                        <li class=\"list-item mb-3 h6 fw-light\">\r\n                            <a href=\"#\"> <i class=\"fas fa-fw fa-map-marker-alt me-2 mt-1\"></i>My Example Cop.  Park Street, MI 22222</a>\r\n                        </li>\r\n                        <!-- Phone number -->\r\n                        <li class=\"list-item mb-3 h6 fw-light\">\r\n                            <a href=\"#\"> <i class=\"fas fa-fw fa-phone-alt me-2\"></i>(333) 333-333 </a>\r\n                        </li>\r\n                        <!-- Email id -->\r\n                        <li class=\"list-item mb-0 h6 fw-light\">\r\n                            <a href=\"#\"> <i class=\"far fa-fw fa-envelope me-2\"></i>example11@email.com </a>\r\n                        </li>\r\n                    </ul>', 'Copyright © 2022 php tech life', '2022-09-15 08:49:59', '2022-10-07 07:58:55');


CREATE TABLE `temp_files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `temp_files` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', '2022-05-08 10:49:48', '2022-05-08 10:49:48'),
(2, '2.jpg', '2022-05-08 10:51:05', '2022-05-08 10:51:05'),
(3, '3.jpg', '2022-05-08 10:55:57', '2022-05-08 10:55:57'),
(4, '4.jpg', '2022-06-12 04:51:33', '2022-06-12 04:51:33'),
(5, '5.jpg', '2022-06-12 04:54:06', '2022-06-12 04:54:07'),
(6, '6.jpg', '2022-06-12 04:54:31', '2022-06-12 04:54:31'),
(7, '7.jpg', '2022-06-12 09:57:11', '2022-06-12 09:57:11'),
(8, '8.jpg', '2022-06-12 10:00:40', '2022-06-12 10:00:40'),
(9, '9.jpg', '2022-06-12 10:07:54', '2022-06-12 10:07:54'),
(10, '10.jpg', '2022-06-12 10:11:43', '2022-06-12 10:11:44'),
(11, '11.jpg', '2022-06-12 10:12:44', '2022-06-12 10:12:44'),
(12, '12.jpg', '2022-06-12 10:20:06', '2022-06-12 10:20:06'),
(13, '13.jpg', '2022-06-19 00:54:08', '2022-06-19 00:54:09'),
(14, '14.jpg', '2022-06-19 00:54:55', '2022-06-19 00:54:55'),
(15, '15.jpg', '2022-06-19 00:55:22', '2022-06-19 00:55:22'),
(16, '16.jpg', '2022-06-19 01:00:24', '2022-06-19 01:00:24'),
(17, '17.jpg', '2022-06-19 01:01:50', '2022-06-19 01:01:50'),
(18, '18.jpg', '2022-06-19 01:02:57', '2022-06-19 01:02:57'),
(19, '19.jpg', '2022-06-19 01:03:52', '2022-06-19 01:03:52'),
(20, '20.jpg', '2022-06-19 01:05:39', '2022-06-19 01:05:40'),
(21, '21.jpg', '2022-06-19 01:07:34', '2022-06-19 01:07:35'),
(22, '22.jpg', '2022-07-03 09:19:37', '2022-07-03 09:19:37'),
(23, '23.jpg', '2022-07-03 09:25:41', '2022-07-03 09:25:41'),
(24, '24.jpg', '2022-07-03 09:28:56', '2022-07-03 09:28:56'),
(25, '25.jpg', '2022-07-03 09:29:13', '2022-07-03 09:29:13'),
(26, '26.jpg', '2022-07-03 09:57:46', '2022-07-03 09:57:46'),
(27, '27.jpg', '2022-07-10 06:04:40', '2022-07-10 06:04:40'),
(28, '28.jpg', '2022-07-10 06:05:33', '2022-07-10 06:05:33'),
(29, '29.jpg', '2022-07-10 06:06:10', '2022-07-10 06:06:10'),
(30, '30.jpg', '2022-07-10 06:07:11', '2022-07-10 06:07:12'),
(31, '31.jpg', '2022-07-10 06:07:53', '2022-07-10 06:07:53'),
(32, '32.jpg', '2022-07-10 06:08:23', '2022-07-10 06:08:23'),
(33, '33.jpg', '2022-07-10 06:08:52', '2022-07-10 06:08:52'),
(34, '34.jpg', '2022-08-13 12:15:21', '2022-08-13 12:15:22'),
(35, '35.jpg', '2022-08-13 12:51:10', '2022-08-13 12:51:10'),
(36, '36.jpg', '2022-08-13 13:10:49', '2022-08-13 13:10:49'),
(37, '37.jpg', '2022-08-13 13:11:43', '2022-08-13 13:11:43'),
(38, '38.jpg', '2022-08-13 13:13:37', '2022-08-13 13:13:37'),
(39, '39.jpg', '2022-08-13 13:14:47', '2022-08-13 13:14:47'),
(40, '40.jpg', '2022-08-13 13:16:39', '2022-08-13 13:16:40'),
(41, '41.jpg', '2022-08-13 13:18:44', '2022-08-13 13:18:45'),
(42, '42.jpg', '2022-08-13 13:40:22', '2022-08-13 13:40:22'),
(43, '43.jpg', '2022-08-13 13:41:09', '2022-08-13 13:41:09'),
(44, '44.jpg', '2022-08-13 13:41:31', '2022-08-13 13:41:31'),
(45, '45.jpg', '2022-08-13 13:42:51', '2022-08-13 13:42:51'),
(46, '46.jpg', '2022-08-13 13:50:22', '2022-08-13 13:50:22'),
(47, '47.jpg', '2022-08-13 14:01:29', '2022-08-13 14:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'admin@admin.com', NULL, '$2y$10$HG5sJwEsInvvIdF8nmH8ueB.fS.W4lsULl6fLYc44p0vyZZqt4p.q', NULL, '2022-04-09 08:58:33', '2022-04-09 08:58:33'),
(2, 'user', 'Mohit', 'phptechlife@gmail.com', NULL, '$2y$10$yUWmHt9Xl2R4/7a0i3bVB.wPmnNB09xXTX2oTGcndNz38tsO1P3om', NULL, '2022-04-09 09:00:05', '2022-04-09 09:00:05');


ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `featured_services`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);


ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `temp_files`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `featured_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `temp_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
