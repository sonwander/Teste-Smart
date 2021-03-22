-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Mar-2021 às 02:40
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `medusa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_mucommentmeta`
--

CREATE TABLE `wp_mucommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_mucomments`
--

CREATE TABLE `wp_mucomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_mucomments`
--

INSERT INTO `wp_mucomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-20 11:23:56', '2021-03-20 14:23:56', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_mulinks`
--

CREATE TABLE `wp_mulinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_muoptions`
--

CREATE TABLE `wp_muoptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_muoptions`
--

INSERT INTO `wp_muoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'MEDUSA', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wandsondesilva@hotmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'medusa', 'yes'),
(41, 'stylesheet', 'medusa', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:3;a:4:{s:5:\"title\";s:12:\"Encontre-nos\";s:4:\"text\";s:174:\"<strong>Endereço</strong>\nAv. Paulista, 123456\nSão Paulo, SP, CEP: 01311-300\n\n<strong>Horário</strong>\nSegunda&mdash;sexta: 9h&ndash;17h\nSábados e domingos: 11h&ndash;15h\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:3:{i:1;a:0:{}i:2;a:8:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"link\";s:0:\"\";s:5:\"items\";i:10;s:5:\"error\";s:49:\"WP HTTP Error: Não foi fornecido um URL válido.\";s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1631802230', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_muuser_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'pt_BR', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:4;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:5;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:4:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:4;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:5;a:1:{s:5:\"title\";s:0:\"\";}i:8;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:6:{s:18:\"wm_footer_sidebar2\";a:3:{i:0;s:10:\"archives-3\";i:1;s:17:\"recent-comments-4\";i:2;s:12:\"categories-3\";}s:18:\"wm_footer_sidebar1\";a:4:{i:0;s:13:\"media_image-4\";i:1;s:17:\"recent-comments-5\";i:2;s:8:\"search-3\";i:3;s:6:\"meta-5\";}s:19:\"wp_inactive_widgets\";a:7:{i:0;s:6:\"text-3\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:10:\"wm_sidebar\";a:0:{}s:17:\"wm_footer_sidebar\";a:4:{i:0;s:13:\"media_image-2\";i:1;s:6:\"meta-8\";i:2;s:10:\"archives-4\";i:3;s:5:\"rss-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1616376240;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616379840;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616423037;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616423072;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616423076;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:3:{i:2;a:15:{s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:428;s:6:\"height\";i:140;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:1:\"#\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:29;s:3:\"url\";s:69:\"http://localhost/wordpress/wp-content/uploads/2021/03/logo-300x98.png\";s:5:\"title\";s:0:\"\";}i:4;a:15:{s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:428;s:6:\"height\";i:140;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:1:\"#\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:29;s:3:\"url\";s:69:\"http://localhost/wordpress/wp-content/uploads/2021/03/logo-300x98.png\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:2:{s:22:\"bOPLKrKmF6wpK3U0FPxmnz\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B/cQg.v0e7TWVfo.4.N.MoWftrlg3C1\";s:10:\"created_at\";i:1616252113;}s:22:\"ebTMIk77AtDdWBCub8auXr\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BY6/QYwdA8yZz/NnimkPF2ph/ALW240\";s:10:\"created_at\";i:1616352153;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616250719;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:9:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:8;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.4.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.4\";s:7:\"version\";s:5:\"5.4.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1616336673;s:15:\"version_checked\";s:5:\"5.3.6\";s:12:\"translations\";a:0:{}}', 'no'),
(128, '_site_transient_timeout_browser_72766ab2b1c85af98adbbb9683600fdf', '1616855074', 'no'),
(129, '_site_transient_browser_72766ab2b1c85af98adbbb9683600fdf', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_8c0181da100b1c7d1f637c18117d0149', '1616855074', 'no'),
(131, '_site_transient_php_check_8c0181da100b1c7d1f637c18117d0149', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(151, 'current_theme', 'MedUsa', 'yes'),
(152, 'theme_mods_medusa', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:3:\"top\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616256596;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:10:\"bm_sidebar\";a:0:{}s:16:\"bm_footersidebar\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:30;s:11:\"bb_facebook\";s:20:\"https://facebook.com\";s:12:\"bb_instagram\";s:22:\"https://instragram.com\";s:10:\"bb_youtube\";s:19:\"https://twitter.com\";s:10:\"wm_twitter\";s:19:\"https://twitter.com\";s:11:\"wm_facebook\";s:20:\"https://facebook.com\";s:12:\"wm_instagram\";s:21:\"https://instagram.com\";}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(154, 'recovery_mode_email_last_sent', '1616352151', 'yes'),
(159, '_transient_timeout_plugin_slugs', '1616340480', 'no'),
(160, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}', 'no'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(166, 'theme_mods_medusa-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:3:\"top\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616262962;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:10:\"wm_sidebar\";a:0:{}s:16:\"wm_footersidebar\";a:0:{}}}}', 'yes'),
(181, 'category_children', 'a:0:{}', 'yes'),
(199, '_site_transient_timeout_theme_roots', '1616338475', 'no'),
(200, '_site_transient_theme_roots', 'a:4:{s:6:\"medusa\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(201, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1616336676;s:7:\"checked\";a:4:{s:6:\"medusa\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(202, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616336677;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_mupostmeta`
--

CREATE TABLE `wp_mupostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_mupostmeta`
--

INSERT INTO `wp_mupostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2021/03/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2021/03/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(6, 5, '_customize_draft_post_name', 'o-novo-umoma-abre-suas-portas'),
(7, 6, '_thumbnail_id', '5'),
(8, 6, '_customize_draft_post_name', 'o-novo-umoma-abre-suas-portas'),
(9, 6, '_customize_changeset_uuid', '74ef3aaf-de0f-4b8d-a859-bb3e935d41e8'),
(10, 7, '_customize_draft_post_name', 'sobre'),
(11, 7, '_customize_changeset_uuid', '74ef3aaf-de0f-4b8d-a859-bb3e935d41e8'),
(12, 8, '_customize_draft_post_name', 'contato'),
(13, 8, '_customize_changeset_uuid', '74ef3aaf-de0f-4b8d-a859-bb3e935d41e8'),
(14, 9, '_customize_draft_post_name', 'blog'),
(15, 9, '_customize_changeset_uuid', '74ef3aaf-de0f-4b8d-a859-bb3e935d41e8'),
(16, 10, '_customize_restore_dismissed', '1'),
(35, 3, '_wp_trash_meta_status', 'draft'),
(36, 3, '_wp_trash_meta_time', '1616260422'),
(37, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(38, 2, '_wp_trash_meta_status', 'publish'),
(39, 2, '_wp_trash_meta_time', '1616260426'),
(40, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(41, 15, '_edit_lock', '1616260311:1'),
(42, 17, '_edit_lock', '1616260325:1'),
(43, 19, '_edit_lock', '1616260353:1'),
(44, 21, '_edit_lock', '1616260371:1'),
(45, 23, '_menu_item_type', 'post_type'),
(46, 23, '_menu_item_menu_item_parent', '0'),
(47, 23, '_menu_item_object_id', '21'),
(48, 23, '_menu_item_object', 'page'),
(49, 23, '_menu_item_target', ''),
(50, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 23, '_menu_item_xfn', ''),
(52, 23, '_menu_item_url', ''),
(54, 24, '_menu_item_type', 'post_type'),
(55, 24, '_menu_item_menu_item_parent', '0'),
(56, 24, '_menu_item_object_id', '19'),
(57, 24, '_menu_item_object', 'page'),
(58, 24, '_menu_item_target', ''),
(59, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 24, '_menu_item_xfn', ''),
(61, 24, '_menu_item_url', ''),
(63, 25, '_menu_item_type', 'post_type'),
(64, 25, '_menu_item_menu_item_parent', '0'),
(65, 25, '_menu_item_object_id', '17'),
(66, 25, '_menu_item_object', 'page'),
(67, 25, '_menu_item_target', ''),
(68, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 25, '_menu_item_xfn', ''),
(70, 25, '_menu_item_url', ''),
(72, 26, '_menu_item_type', 'post_type'),
(73, 26, '_menu_item_menu_item_parent', '0'),
(74, 26, '_menu_item_object_id', '15'),
(75, 26, '_menu_item_object', 'page'),
(76, 26, '_menu_item_target', ''),
(77, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 26, '_menu_item_xfn', ''),
(79, 26, '_menu_item_url', ''),
(81, 27, '_wp_trash_meta_status', 'publish'),
(82, 27, '_wp_trash_meta_time', '1616260604'),
(83, 28, '_wp_trash_meta_status', 'publish'),
(84, 28, '_wp_trash_meta_time', '1616264844'),
(85, 29, '_wp_attached_file', '2021/03/logo.png'),
(86, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:140;s:4:\"file\";s:16:\"2021/03/logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x98.png\";s:5:\"width\";i:300;s:6:\"height\";i:98;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 30, '_wp_attached_file', '2021/03/cropped-logo.png'),
(88, 30, '_wp_attachment_context', 'custom-logo'),
(89, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:140;s:4:\"file\";s:24:\"2021/03/cropped-logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-logo-300x98.png\";s:5:\"width\";i:300;s:6:\"height\";i:98;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 31, '_wp_trash_meta_status', 'publish'),
(91, 31, '_wp_trash_meta_time', '1616267673'),
(92, 32, '_edit_lock', '1616267790:1'),
(93, 32, '_wp_trash_meta_status', 'publish'),
(94, 32, '_wp_trash_meta_time', '1616267802'),
(96, 33, '_customize_restore_dismissed', '1'),
(97, 34, '_edit_lock', '1616271011:1'),
(98, 34, '_customize_restore_dismissed', '1'),
(99, 35, '_edit_lock', '1616333555:1'),
(100, 37, '_edit_lock', '1616334641:1'),
(101, 39, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0051X.jpg'),
(102, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:608;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0051X.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"MEDUSA_HOME_IMG0051X-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 40, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0011X.jpg'),
(104, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:990;s:6:\"height\";i:664;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0011X.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0011X-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0011X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0011X-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 41, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0021X.jpg'),
(106, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:610;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0021X.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0021X-266x300.jpg\";s:5:\"width\";i:266;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0021X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 42, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0031X.jpg'),
(108, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:750;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0031X.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"MEDUSA_HOME_IMG0031X-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 43, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0031X.png'),
(110, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:750;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0031X.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"MEDUSA_HOME_IMG0031X-1024x533.png\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-768x400.png\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 44, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0041X.jpg'),
(112, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:555;s:6:\"height\";i:480;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0041X.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-300x259.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 45, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0041X.png'),
(114, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:555;s:6:\"height\";i:480;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0041X.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-300x259.png\";s:5:\"width\";i:300;s:6:\"height\";i:259;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 46, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0051X-1.jpg'),
(116, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:608;s:4:\"file\";s:34:\"2021/03/MEDUSA_HOME_IMG0051X-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"MEDUSA_HOME_IMG0051X-1-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"MEDUSA_HOME_IMG0051X-1-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"MEDUSA_HOME_IMG0051X-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"MEDUSA_HOME_IMG0051X-1-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 47, '_wp_attached_file', '2021/03/MEDUSA_HOME_IMG0051X.png'),
(118, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:608;s:4:\"file\";s:32:\"2021/03/MEDUSA_HOME_IMG0051X.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"MEDUSA_HOME_IMG0051X-1024x432.png\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-768x324.png\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 48, '_wp_attached_file', '2021/03/MEDUSA_HOME_PARTNER_ICON_TEMP1X.jpg'),
(120, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:40;s:4:\"file\";s:43:\"2021/03/MEDUSA_HOME_PARTNER_ICON_TEMP1X.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 49, '_wp_attached_file', '2021/03/MEDUSA_HOME_PARTNER_ICON_TEMP1X.png'),
(122, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:40;s:4:\"file\";s:43:\"2021/03/MEDUSA_HOME_PARTNER_ICON_TEMP1X.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 50, '_wp_trash_meta_status', 'publish'),
(124, 50, '_wp_trash_meta_time', '1616358254'),
(125, 51, '_wp_trash_meta_status', 'publish'),
(126, 51, '_wp_trash_meta_time', '1616358337'),
(127, 52, '_wp_trash_meta_status', 'publish'),
(128, 52, '_wp_trash_meta_time', '1616359718'),
(129, 53, '_edit_lock', '1616371539:1'),
(130, 55, '_edit_lock', '1616371558:1'),
(131, 57, '_edit_lock', '1616371599:1'),
(132, 59, '_edit_lock', '1616371613:1'),
(133, 61, '_edit_lock', '1616371626:1'),
(134, 63, '_edit_lock', '1616371652:1'),
(135, 65, '_menu_item_type', 'post_type'),
(136, 65, '_menu_item_menu_item_parent', '0'),
(137, 65, '_menu_item_object_id', '55'),
(138, 65, '_menu_item_object', 'page'),
(139, 65, '_menu_item_target', ''),
(140, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 65, '_menu_item_xfn', ''),
(142, 65, '_menu_item_url', ''),
(144, 66, '_menu_item_type', 'post_type'),
(145, 66, '_menu_item_menu_item_parent', '0'),
(146, 66, '_menu_item_object_id', '53'),
(147, 66, '_menu_item_object', 'page'),
(148, 66, '_menu_item_target', ''),
(149, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 66, '_menu_item_xfn', ''),
(151, 66, '_menu_item_url', ''),
(153, 67, '_menu_item_type', 'post_type'),
(154, 67, '_menu_item_menu_item_parent', '0'),
(155, 67, '_menu_item_object_id', '59'),
(156, 67, '_menu_item_object', 'page'),
(157, 67, '_menu_item_target', ''),
(158, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 67, '_menu_item_xfn', ''),
(160, 67, '_menu_item_url', ''),
(162, 68, '_menu_item_type', 'post_type'),
(163, 68, '_menu_item_menu_item_parent', '0'),
(164, 68, '_menu_item_object_id', '57'),
(165, 68, '_menu_item_object', 'page'),
(166, 68, '_menu_item_target', ''),
(167, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 68, '_menu_item_xfn', ''),
(169, 68, '_menu_item_url', ''),
(171, 69, '_menu_item_type', 'post_type'),
(172, 69, '_menu_item_menu_item_parent', '0'),
(173, 69, '_menu_item_object_id', '63'),
(174, 69, '_menu_item_object', 'page'),
(175, 69, '_menu_item_target', ''),
(176, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 69, '_menu_item_xfn', ''),
(178, 69, '_menu_item_url', ''),
(180, 70, '_menu_item_type', 'post_type'),
(181, 70, '_menu_item_menu_item_parent', '0'),
(182, 70, '_menu_item_object_id', '61'),
(183, 70, '_menu_item_object', 'page'),
(184, 70, '_menu_item_target', ''),
(185, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(186, 70, '_menu_item_xfn', ''),
(187, 70, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_muposts`
--

CREATE TABLE `wp_muposts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_muposts`
--

INSERT INTO `wp_muposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-20 11:23:56', '2021-03-20 14:23:56', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-03-20 11:23:56', '2021-03-20 14:23:56', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-20 11:23:56', '2021-03-20 14:23:56', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-03-20 14:13:46', '2021-03-20 17:13:46', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-20 11:23:56', '2021-03-20 14:23:56', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2021-03-20 14:13:42', '2021-03-20 17:13:42', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-03-20 11:24:35', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-20 11:24:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2021-03-20 11:31:31', '0000-00-00 00:00:00', '', 'O novo UMoMA abre suas portas', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-03-20 11:31:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2021-03-20 11:31:31', '0000-00-00 00:00:00', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">O principal destino da arte moderna no norte da Suécia. Funciona todos os dias, das 10:00 às 18:00, durante os meses de verão.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Trabalhos e dias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1º de agosto - 1º de dezembro</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Leia mais</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Teatro de operações</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1º de outubro - 1º de dezembro</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Leia mais</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>A vida que eu mereço</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1º de agosto - 1º de dezembro</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Leia mais</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>De Signac para Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1º de outubro - 1º de dezembro</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Leia mais</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">”Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.”</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">Com sete andares de arquitetura impressionante, o UMoMA têm exibições de arte contemporânea internacional, algumas vezes com retrospectivas de história da arte. Questões existenciais, políticas e filosóficas são intrínsecas ao nosso programa. Como visitante, você será convidado para passeios guiados com palestras, exibições de filmes e outros eventos livres.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>As exibições são produzidas pelo UMoMA em colaboração com artistas e museus por todo o mundo, atraindo com frequência atenção internacional. O UMoMA recebeu uma comenda especial de Museu europeu do ano e esteve entre os principais candidatos ao Prêmio de museu sueco do ano, e ao Prêmio do conselho de museus da Europa.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Torne-se um membro e receba ofertas exclusivas!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Os membros têm acesso a exibições e vendas exclusivas. Nossa assinatura custa $99,99 e é cobrada anualmente.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Participe</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'O novo UMoMA abre suas portas', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-20 11:31:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-03-20 11:31:31', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Você pode ser um artista que queira se apresentar aqui, ou talvez queira descrever a missão da sua empresa.</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-20 11:31:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-03-20 11:31:31', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Esta é uma página com algumas informações básicas de contato, como um endereço e número de telefone. Você também pode experimentar usar um plugin para adicionar um formulário de contato.</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-20 11:31:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-03-20 11:31:31', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-20 11:31:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-03-20 11:31:31', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJTb2JyZSBlc3RlIHNpdGUiO3M6NDoidGV4dCI7czo4NjoiRXN0ZSBwb2RlIHNlciB1bSBib20gbHVnYXIgcGFyYSBzZSBhcHJlc2VudGFyLCBmYWxhciBkbyBzZXUgc2l0ZSBvdSBpbmNsdWlyIGNyw6lkaXRvcy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Sobre este site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c1bf96c14c9f66f627f7624efefed350\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiJFbmNvbnRyZS1ub3MiO3M6NDoidGV4dCI7czoxNzQ6IjxzdHJvbmc+RW5kZXJlw6dvPC9zdHJvbmc+CkF2LiBQYXVsaXN0YSwgMTIzNDU2ClPDo28gUGF1bG8sIFNQLCBDRVA6IDAxMzExLTMwMAoKPHN0cm9uZz5Ib3LDoXJpbzwvc3Ryb25nPgpTZWd1bmRhJm1kYXNoO3NleHRhOiA5aCZuZGFzaDsxN2gKU8OhYmFkb3MgZSBkb21pbmdvczogMTFoJm5kYXNoOzE1aCI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Encontre-nos\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"13fc79e9a596f22fb184fed8dc4077af\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Prim\\u00e1rio\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"P\\u00e1gina inicial\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Sobre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contato\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Prim\\u00e1rio\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"P\\u00e1gina inicial\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Sobre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contato\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu de links sociais\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 14:31:31\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '74ef3aaf-de0f-4b8d-a859-bb3e935d41e8', '', '', '2021-03-20 11:31:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=10', 0, 'customize_changeset', '', 0),
(13, 1, '2021-03-20 14:13:42', '2021-03-20 17:13:42', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-03-20 14:13:42', '2021-03-20 17:13:42', '', 3, 'http://localhost/wordpress/2021/03/20/3-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2021-03-20 14:13:46', '2021-03-20 17:13:46', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-03-20 14:13:46', '2021-03-20 17:13:46', '', 2, 'http://localhost/wordpress/2021/03/20/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2021-03-20 14:14:07', '2021-03-20 17:14:07', '', 'ABOUT', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-03-20 14:14:07', '2021-03-20 17:14:07', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-03-20 14:14:07', '2021-03-20 17:14:07', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-20 14:14:07', '2021-03-20 17:14:07', '', 15, 'http://localhost/wordpress/2021/03/20/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2021-03-20 14:14:26', '2021-03-20 17:14:26', '', 'SERVICE', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2021-03-20 14:14:26', '2021-03-20 17:14:26', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-03-20 14:14:26', '2021-03-20 17:14:26', '', 'SERVICE', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-20 14:14:26', '2021-03-20 17:14:26', '', 17, 'http://localhost/wordpress/2021/03/20/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2021-03-20 14:14:54', '2021-03-20 17:14:54', '', 'SOFTWARE', '', 'publish', 'closed', 'closed', '', 'software', '', '', '2021-03-20 14:14:54', '2021-03-20 17:14:54', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2021-03-20 14:14:54', '2021-03-20 17:14:54', '', 'SOFTWARE', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-03-20 14:14:54', '2021-03-20 17:14:54', '', 19, 'http://localhost/wordpress/2021/03/20/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2021-03-20 14:15:07', '2021-03-20 17:15:07', '', 'CONTACT US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-03-20 14:15:07', '2021-03-20 17:15:07', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2021-03-20 14:15:07', '2021-03-20 17:15:07', '', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-20 14:15:07', '2021-03-20 17:15:07', '', 21, 'http://localhost/wordpress/2021/03/20/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2021-03-20 14:15:48', '2021-03-20 17:15:48', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2021-03-20 22:31:48', '2021-03-21 01:31:48', '', 0, 'http://localhost/wordpress/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2021-03-20 14:15:48', '2021-03-20 17:15:48', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2021-03-20 22:31:48', '2021-03-21 01:31:48', '', 0, 'http://localhost/wordpress/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2021-03-20 14:15:49', '2021-03-20 17:15:49', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-03-20 22:31:48', '2021-03-21 01:31:48', '', 0, 'http://localhost/wordpress/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2021-03-20 14:15:49', '2021-03-20 17:15:49', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-03-20 22:31:48', '2021-03-21 01:31:48', '', 0, 'http://localhost/wordpress/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2021-03-20 14:16:43', '2021-03-20 17:16:43', '{\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/wordpress/contact-us/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"CONTACT US\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 17:16:43\"\n    },\n    \"nav_menu_item[24]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/wordpress/software/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"SOFTWARE\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 17:16:43\"\n    },\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/wordpress/service/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"SERVICE\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 17:16:43\"\n    },\n    \"nav_menu_item[26]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/wordpress/about/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"ABOUT\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 17:16:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4b3576e7-48fb-444e-98b1-7f808118ca4f', '', '', '2021-03-20 14:16:43', '2021-03-20 17:16:43', '', 0, 'http://localhost/wordpress/2021/03/20/4b3576e7-48fb-444e-98b1-7f808118ca4f/', 0, 'customize_changeset', '', 0),
(28, 1, '2021-03-20 15:27:24', '2021-03-20 18:27:24', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 18:27:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c5592d3b-a5f8-4f6a-8652-fa2dc96c1cfc', '', '', '2021-03-20 15:27:24', '2021-03-20 18:27:24', '', 0, 'http://localhost/wordpress/2021/03/20/c5592d3b-a5f8-4f6a-8652-fa2dc96c1cfc/', 0, 'customize_changeset', '', 0),
(29, 1, '2021-03-20 16:14:18', '2021-03-20 19:14:18', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-03-20 16:14:18', '2021-03-20 19:14:18', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/logo.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-03-20 16:14:27', '2021-03-20 19:14:27', 'http://localhost/wordpress/wp-content/uploads/2021/03/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2021-03-20 16:14:27', '2021-03-20 19:14:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-03-20 16:14:33', '2021-03-20 19:14:33', '{\n    \"medusa::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 19:14:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9f2f009-3bed-4279-a898-644e2232da6d', '', '', '2021-03-20 16:14:33', '2021-03-20 19:14:33', '', 0, 'http://localhost/wordpress/2021/03/20/c9f2f009-3bed-4279-a898-644e2232da6d/', 0, 'customize_changeset', '', 0),
(32, 1, '2021-03-20 16:16:42', '2021-03-20 19:16:42', '{\n    \"medusa::bb_facebook\": {\n        \"value\": \"https://facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 19:15:38\"\n    },\n    \"medusa::bb_instagram\": {\n        \"value\": \"https://instragram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 19:16:30\"\n    },\n    \"medusa::bb_youtube\": {\n        \"value\": \"https://twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 19:16:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb2532f4-09d6-48e1-9f29-4e3a2e46eec8', '', '', '2021-03-20 16:16:42', '2021-03-20 19:16:42', '', 0, 'http://localhost/wordpress/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2021-03-20 16:38:36', '0000-00-00 00:00:00', '[]', '', '', 'auto-draft', 'closed', 'closed', '', '2ac4ef66-fe10-4c48-905d-ec415c4cbf9b', '', '', '2021-03-20 16:38:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2021-03-20 17:01:37', '0000-00-00 00:00:00', '{\n    \"medusa::background_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-20 20:01:37\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '3cb7b98b-8491-4b34-a142-e8bc08c5d8c4', '', '', '2021-03-20 17:01:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2021-03-21 09:30:44', '2021-03-21 12:30:44', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2021-03-21 09:30:44', '2021-03-21 12:30:44', '', 0, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2021-03-21 09:30:44', '2021-03-21 12:30:44', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-03-21 09:30:44', '2021-03-21 12:30:44', '', 35, 'http://localhost/wordpress/2021/03/21/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2021-03-21 09:31:04', '2021-03-21 12:31:04', '', 'Terms of Service', '', 'publish', 'closed', 'closed', '', 'terms-of-service', '', '', '2021-03-21 09:31:04', '2021-03-21 12:31:04', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2021-03-21 09:31:04', '2021-03-21 12:31:04', '', 'Terms of Service', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-03-21 09:31:04', '2021-03-21 12:31:04', '', 37, 'http://localhost/wordpress/2021/03/21/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2021-03-21 10:28:27', '2021-03-21 13:28:27', '', 'MEDUSA_HOME_IMG005[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0051x', '', '', '2021-03-21 10:28:27', '2021-03-21 13:28:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0051X.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-03-21 10:28:44', '2021-03-21 13:28:44', '', 'MEDUSA_HOME_IMG001[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0011x', '', '', '2021-03-21 10:28:44', '2021-03-21 13:28:44', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0011X.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-03-21 10:28:45', '2021-03-21 13:28:45', '', 'MEDUSA_HOME_IMG002[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0021x', '', '', '2021-03-21 10:28:45', '2021-03-21 13:28:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0021X.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-03-21 10:28:47', '2021-03-21 13:28:47', '', 'MEDUSA_HOME_IMG003[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0031x', '', '', '2021-03-21 10:28:47', '2021-03-21 13:28:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0031X.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-03-21 10:28:49', '2021-03-21 13:28:49', '', 'MEDUSA_HOME_IMG003[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0031x-2', '', '', '2021-03-21 10:28:49', '2021-03-21 13:28:49', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0031X.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2021-03-21 10:28:52', '2021-03-21 13:28:52', '', 'MEDUSA_HOME_IMG004[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0041x', '', '', '2021-03-21 10:28:52', '2021-03-21 13:28:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0041X.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-03-21 10:28:54', '2021-03-21 13:28:54', '', 'MEDUSA_HOME_IMG004[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0041x-2', '', '', '2021-03-21 10:28:54', '2021-03-21 13:28:54', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0041X.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2021-03-21 10:28:55', '2021-03-21 13:28:55', '', 'MEDUSA_HOME_IMG005[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0051x-2', '', '', '2021-03-21 10:28:55', '2021-03-21 13:28:55', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0051X-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-03-21 10:28:57', '2021-03-21 13:28:57', '', 'MEDUSA_HOME_IMG005[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0051x-3', '', '', '2021-03-21 10:28:57', '2021-03-21 13:28:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_IMG0051X.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_muposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(48, 1, '2021-03-21 10:28:59', '2021-03-21 13:28:59', '', 'MEDUSA_HOME_PARTNER_ICON_TEMP[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_partner_icon_temp1x', '', '', '2021-03-21 10:28:59', '2021-03-21 13:28:59', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_PARTNER_ICON_TEMP1X.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-03-21 10:29:00', '2021-03-21 13:29:00', '', 'MEDUSA_HOME_PARTNER_ICON_TEMP[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_partner_icon_temp1x-2', '', '', '2021-03-21 10:29:00', '2021-03-21 13:29:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/03/MEDUSA_HOME_PARTNER_ICON_TEMP1X.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-03-21 17:24:13', '2021-03-21 20:24:13', '{\n    \"medusa::wm_twitter\": {\n        \"value\": \"https://twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 20:24:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fbaa2d38-b547-426c-bd9c-8ede0a697ea0', '', '', '2021-03-21 17:24:13', '2021-03-21 20:24:13', '', 0, 'http://localhost/wordpress/2021/03/21/fbaa2d38-b547-426c-bd9c-8ede0a697ea0/', 0, 'customize_changeset', '', 0),
(51, 1, '2021-03-21 17:25:36', '2021-03-21 20:25:36', '{\n    \"medusa::wm_facebook\": {\n        \"value\": \"https://facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 20:25:36\"\n    },\n    \"medusa::wm_instagram\": {\n        \"value\": \"https://instagram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 20:25:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3704d4b5-490f-4def-a74c-732443c56423', '', '', '2021-03-21 17:25:36', '2021-03-21 20:25:36', '', 0, 'http://localhost/wordpress/2021/03/21/3704d4b5-490f-4def-a74c-732443c56423/', 0, 'customize_changeset', '', 0),
(52, 1, '2021-03-21 17:48:38', '2021-03-21 20:48:38', '{\n    \"medusa::wm_twitter\": {\n        \"value\": \"https://twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 20:48:38\"\n    },\n    \"medusa::wm_facebook\": {\n        \"value\": \"https://facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 20:48:38\"\n    },\n    \"medusa::wm_instagram\": {\n        \"value\": \"https://instagram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-21 20:48:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd591600-5195-4e60-ac79-5cc8dcb52302', '', '', '2021-03-21 17:48:38', '2021-03-21 20:48:38', '', 0, 'http://localhost/wordpress/2021/03/21/bd591600-5195-4e60-ac79-5cc8dcb52302/', 0, 'customize_changeset', '', 0),
(53, 1, '2021-03-21 21:08:01', '2021-03-22 00:08:01', '', 'About MedUSA', '', 'publish', 'closed', 'closed', '', 'about-medusa', '', '', '2021-03-21 21:08:01', '2021-03-22 00:08:01', '', 0, 'http://localhost/wordpress/?page_id=53', 0, 'page', '', 0),
(54, 1, '2021-03-21 21:08:01', '2021-03-22 00:08:01', '', 'About MedUSA', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2021-03-21 21:08:01', '2021-03-22 00:08:01', '', 53, 'http://localhost/wordpress/2021/03/21/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2021-03-21 21:08:12', '2021-03-22 00:08:12', '', 'Case Studies', '', 'publish', 'closed', 'closed', '', 'case-studies', '', '', '2021-03-21 21:08:12', '2021-03-22 00:08:12', '', 0, 'http://localhost/wordpress/?page_id=55', 0, 'page', '', 0),
(56, 1, '2021-03-21 21:08:12', '2021-03-22 00:08:12', '', 'Case Studies', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-03-21 21:08:12', '2021-03-22 00:08:12', '', 55, 'http://localhost/wordpress/2021/03/21/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2021-03-21 21:08:58', '2021-03-22 00:08:58', '', 'Service', '', 'publish', 'closed', 'closed', '', 'service-2', '', '', '2021-03-21 21:08:58', '2021-03-22 00:08:58', '', 0, 'http://localhost/wordpress/?page_id=57', 0, 'page', '', 0),
(58, 1, '2021-03-21 21:08:58', '2021-03-22 00:08:58', '', 'Service', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-21 21:08:58', '2021-03-22 00:08:58', '', 57, 'http://localhost/wordpress/2021/03/21/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2021-03-21 21:09:12', '2021-03-22 00:09:12', '', 'Sorftware', '', 'publish', 'closed', 'closed', '', 'sorftware', '', '', '2021-03-21 21:09:12', '2021-03-22 00:09:12', '', 0, 'http://localhost/wordpress/?page_id=59', 0, 'page', '', 0),
(60, 1, '2021-03-21 21:09:12', '2021-03-22 00:09:12', '', 'Sorftware', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-03-21 21:09:12', '2021-03-22 00:09:12', '', 59, 'http://localhost/wordpress/2021/03/21/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2021-03-21 21:09:24', '2021-03-22 00:09:24', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-03-21 21:09:24', '2021-03-22 00:09:24', '', 0, 'http://localhost/wordpress/?page_id=61', 0, 'page', '', 0),
(62, 1, '2021-03-21 21:09:24', '2021-03-22 00:09:24', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-03-21 21:09:24', '2021-03-22 00:09:24', '', 61, 'http://localhost/wordpress/2021/03/21/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2021-03-21 21:09:38', '2021-03-22 00:09:38', '', 'Contact MedUSA', '', 'publish', 'closed', 'closed', '', 'contact-medusa', '', '', '2021-03-21 21:09:38', '2021-03-22 00:09:38', '', 0, 'http://localhost/wordpress/?page_id=63', 0, 'page', '', 0),
(64, 1, '2021-03-21 21:09:38', '2021-03-22 00:09:38', '', 'Contact MedUSA', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-03-21 21:09:38', '2021-03-22 00:09:38', '', 63, 'http://localhost/wordpress/2021/03/21/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2021-03-21 21:10:52', '2021-03-22 00:10:52', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2021-03-21 21:10:52', '2021-03-22 00:10:52', '', 0, 'http://localhost/wordpress/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2021-03-21 21:10:52', '2021-03-22 00:10:52', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2021-03-21 21:10:52', '2021-03-22 00:10:52', '', 0, 'http://localhost/wordpress/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2021-03-21 21:11:25', '2021-03-22 00:11:25', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2021-03-21 21:11:25', '2021-03-22 00:11:25', '', 0, 'http://localhost/wordpress/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2021-03-21 21:11:24', '2021-03-22 00:11:24', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2021-03-21 21:11:24', '2021-03-22 00:11:24', '', 0, 'http://localhost/wordpress/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2021-03-21 21:11:52', '2021-03-22 00:11:52', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2021-03-21 21:12:37', '2021-03-22 00:12:37', '', 0, 'http://localhost/wordpress/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2021-03-21 21:11:52', '2021-03-22 00:11:52', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2021-03-21 21:12:37', '2021-03-22 00:12:37', '', 0, 'http://localhost/wordpress/?p=70', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_mutermmeta`
--

CREATE TABLE `wp_mutermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_muterms`
--

CREATE TABLE `wp_muterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_muterms`
--

INSERT INTO `wp_muterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Principal', 'principal', 0),
(3, 'Topo', 'topo', 0),
(4, 'Menu Rodapé 1', 'menu-rodape-1', 0),
(5, 'Menu Rodapé 2', 'menu-rodape-2', 0),
(6, 'Menu Rodapé 3', 'menu-rodape-3', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_muterm_relationships`
--

CREATE TABLE `wp_muterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_muterm_relationships`
--

INSERT INTO `wp_muterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(65, 4, 0),
(66, 4, 0),
(67, 5, 0),
(68, 5, 0),
(69, 6, 0),
(70, 6, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_muterm_taxonomy`
--

CREATE TABLE `wp_muterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_muterm_taxonomy`
--

INSERT INTO `wp_muterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_muusermeta`
--

CREATE TABLE `wp_muusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_muusermeta`
--

INSERT INTO `wp_muusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_mucapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_muuser_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_mudashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '6'),
(21, 1, 'wp_muuser-settings', 'libraryContent=browse'),
(22, 1, 'wp_muuser-settings-time', '1616269183');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_muusers`
--

CREATE TABLE `wp_muusers` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_muusers`
--

INSERT INTO `wp_muusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3lDumerBrYwfwOhHk7sLtCfPGhIn//', 'admin', 'wandsondesilva@hotmail.com', '', '2021-03-20 14:23:55', '', 0, 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_mucommentmeta`
--
ALTER TABLE `wp_mucommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_mucomments`
--
ALTER TABLE `wp_mucomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_mulinks`
--
ALTER TABLE `wp_mulinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_muoptions`
--
ALTER TABLE `wp_muoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_mupostmeta`
--
ALTER TABLE `wp_mupostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_muposts`
--
ALTER TABLE `wp_muposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_mutermmeta`
--
ALTER TABLE `wp_mutermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_muterms`
--
ALTER TABLE `wp_muterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_muterm_relationships`
--
ALTER TABLE `wp_muterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_muterm_taxonomy`
--
ALTER TABLE `wp_muterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_muusermeta`
--
ALTER TABLE `wp_muusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_muusers`
--
ALTER TABLE `wp_muusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_mucommentmeta`
--
ALTER TABLE `wp_mucommentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_mucomments`
--
ALTER TABLE `wp_mucomments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_mulinks`
--
ALTER TABLE `wp_mulinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_muoptions`
--
ALTER TABLE `wp_muoptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT de tabela `wp_mupostmeta`
--
ALTER TABLE `wp_mupostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT de tabela `wp_muposts`
--
ALTER TABLE `wp_muposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `wp_mutermmeta`
--
ALTER TABLE `wp_mutermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_muterms`
--
ALTER TABLE `wp_muterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `wp_muterm_taxonomy`
--
ALTER TABLE `wp_muterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `wp_muusermeta`
--
ALTER TABLE `wp_muusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `wp_muusers`
--
ALTER TABLE `wp_muusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
