# WordPress MySQL database migration
#
# Generated: Wednesday 21. June 2017 06:58 UTC
# Hostname: localhost
# Database: `2k17_wp_examen`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `2k17_wp_examen_commentmeta`
#

DROP TABLE IF EXISTS `2k17_wp_examen_commentmeta`;


#
# Table structure of table `2k17_wp_examen_commentmeta`
#

CREATE TABLE `2k17_wp_examen_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_commentmeta`
#

#
# End of data contents of table `2k17_wp_examen_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_comments`
#

DROP TABLE IF EXISTS `2k17_wp_examen_comments`;


#
# Table structure of table `2k17_wp_examen_comments`
#

CREATE TABLE `2k17_wp_examen_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_comments`
#
INSERT INTO `2k17_wp_examen_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-20 12:12:59', '2017-06-20 10:12:59', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `2k17_wp_examen_comments`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_links`
#

DROP TABLE IF EXISTS `2k17_wp_examen_links`;


#
# Table structure of table `2k17_wp_examen_links`
#

CREATE TABLE `2k17_wp_examen_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_links`
#

#
# End of data contents of table `2k17_wp_examen_links`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_options`
#

DROP TABLE IF EXISTS `2k17_wp_examen_options`;


#
# Table structure of table `2k17_wp_examen_options`
#

CREATE TABLE `2k17_wp_examen_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_options`
#
INSERT INTO `2k17_wp_examen_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/examen.web2', 'yes'),
(2, 'home', 'http://localhost:8888/examen.web2', 'yes'),
(3, 'blogname', 'Structures intérieures', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'stivyxx@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'montheme', 'yes'),
(41, 'stylesheet', 'montheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '52', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, '2k17_wp_examen_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"footer-widgets";a:0:{}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `2k17_wp_examen_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1498039980;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1498039999;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498041027;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497953656;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'FoundationPress', 'yes'),
(139, 'theme_mods_montheme', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:9:"top-bar-r";i:2;s:10:"mobile-nav";i:2;}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(145, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.8";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1497961359;s:7:"version";s:3:"4.8";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(146, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'acf_version', '4.4.11', 'yes'),
(156, 'cptui_new_install', 'false', 'yes'),
(165, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(225, 'category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `2k17_wp_examen_options`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_postmeta`
#

DROP TABLE IF EXISTS `2k17_wp_examen_postmeta`;


#
# Table structure of table `2k17_wp_examen_postmeta`
#

CREATE TABLE `2k17_wp_examen_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_postmeta`
#
INSERT INTO `2k17_wp_examen_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<div class="champ-formulaire">\n    <label>Votre Email <span class="obligatoire">*</span></label>\n    [email* your-email] \n</div>\n\n<div class="champ-formulaire">\n    <label>Sujet du message <span class="obligatoire">*</span></label>\n    [text* your-subject] \n</div>\n\n<div class="champ-formulaire">\n    <label>Votre Message <span class="obligatoire">*</span></label>\n    [textarea* your-message] \n</div>\n\n[submit "Envoyer"]'),
(3, 4, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:40:"Structures intérieures "[your-subject]"";s:6:"sender";s:31:"[your-name] <stivyxx@gmail.com>";s:9:"recipient";s:17:"stivyxx@gmail.com";s:4:"body";s:195:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Structures intérieures (http://localhost:8888/examen.web2)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:40:"Structures intérieures "[your-subject]"";s:6:"sender";s:43:"Structures intérieures <stivyxx@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:137:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Structures intérieures (http://localhost:8888/examen.web2)";s:18:"additional_headers";s:27:"Reply-To: stivyxx@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:90:"Une erreur s\'est produite lors de l\'envoi de votre message. Veuillez réessayer plus tard.";s:16:"validation_error";s:89:"Un ou plusieurs champs ont une erreur. S\'il vous plaît, vérifiez et essayez à nouveau.";s:4:"spam";s:90:"Une erreur s\'est produite lors de l\'envoi de votre message. Veuillez réessayer plus tard.";s:12:"accept_terms";s:75:"Vous devez accepter les termes et conditions avant d\'envoyer votre message.";s:16:"invalid_required";s:20:"Ce champ est requis.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:73:"Une erreur inconnue s’est produite lors de la mise en ligne du fichier.";s:24:"upload_file_type_invalid";s:67:"Vous n’êtes pas autorisé à mettre en ligne ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:64:"Une erreur s’est produite lors de la mise en ligne du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:39:"Le numéro de téléphone est invalide.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'fr_FR'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1497954625'),
(10, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(11, 6, '_edit_last', '1'),
(12, 6, '_edit_lock', '1497999508:1'),
(13, 6, '_wp_page_template', 'page-templates/page-accueil.php'),
(14, 8, '_wp_trash_meta_status', 'publish'),
(15, 8, '_wp_trash_meta_time', '1497954673'),
(34, 11, '_edit_last', '1'),
(35, 11, 'field_594931cee6112', 'a:11:{s:3:"key";s:19:"field_594931cee6112";s:5:"label";s:21:"Formulaire de contact";s:4:"name";s:18:"accueil-formulaire";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(37, 11, 'position', 'normal'),
(38, 11, 'layout', 'no_box'),
(39, 11, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(40, 11, '_edit_lock', '1497999481:1'),
(41, 12, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(42, 12, '_accueil-formulaire', 'field_594931cee6112'),
(43, 6, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(44, 6, '_accueil-formulaire', 'field_594931cee6112'),
(47, 11, 'field_594938e99a0c5', 'a:11:{s:3:"key";s:19:"field_594938e99a0c5";s:5:"label";s:23:"Informations de contact";s:4:"name";s:23:"informations_de_contact";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'),
(49, 13, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(50, 13, '_accueil-formulaire', 'field_594931cee6112'),
(51, 13, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32 &lt;br&gt;</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com &lt;br&gt;</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(52, 13, '_informations_de_contact', 'field_594938e99a0c5'),
(53, 6, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(54, 6, '_informations_de_contact', 'field_594938e99a0c5'),
(61, 15, 'accueil-formulaire', '[contact-form-7 id="14" title="Formulaire de contact_copy"]'),
(62, 15, '_accueil-formulaire', 'field_594931cee6112'),
(63, 15, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32 &lt;br&gt;</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com &lt;br&gt;</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(64, 15, '_informations_de_contact', 'field_594938e99a0c5'),
(65, 16, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(66, 16, '_accueil-formulaire', 'field_594931cee6112'),
(67, 16, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32 &lt;br&gt;</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com &lt;br&gt;</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(68, 16, '_informations_de_contact', 'field_594938e99a0c5'),
(85, 25, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(86, 25, '_accueil-formulaire', 'field_594931cee6112'),
(87, 25, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(88, 25, '_informations_de_contact', 'field_594938e99a0c5'),
(89, 26, '_edit_last', '1'),
(90, 26, '_edit_lock', '1497997823:1'),
(93, 28, '_wp_attached_file', '2017/06/etageres.jpg'),
(94, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:263;s:6:"height";i:263;s:4:"file";s:20:"2017/06/etageres.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"etageres-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:20:"etageres-263x200.jpg";s:5:"width";i:263;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 26, '_thumbnail_id', '28'),
(97, 1, '_wp_trash_meta_status', 'publish'),
(98, 1, '_wp_trash_meta_time', '1497987856'),
(99, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(100, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(101, 31, '_menu_item_type', 'custom'),
(102, 31, '_menu_item_menu_item_parent', '0'),
(103, 31, '_menu_item_object_id', '31'),
(104, 31, '_menu_item_object', 'custom'),
(105, 31, '_menu_item_target', ''),
(106, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(107, 31, '_menu_item_xfn', ''),
(108, 31, '_menu_item_url', '#'),
(110, 32, '_menu_item_type', 'post_type'),
(111, 32, '_menu_item_menu_item_parent', '31'),
(112, 32, '_menu_item_object_id', '26'),
(113, 32, '_menu_item_object', 'post'),
(114, 32, '_menu_item_target', ''),
(115, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 32, '_menu_item_xfn', ''),
(117, 32, '_menu_item_url', ''),
(119, 33, '_edit_last', '1'),
(120, 33, 'field_594982cf0b3d1', 'a:11:{s:3:"key";s:19:"field_594982cf0b3d1";s:5:"label";s:18:"image grand format";s:4:"name";s:18:"image_grand_format";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(122, 33, 'position', 'normal'),
(123, 33, 'layout', 'no_box'),
(124, 33, 'hide_on_screen', ''),
(125, 33, '_edit_lock', '1497991063:1'),
(126, 34, '_wp_attached_file', '2017/06/etageres-murale-grd.jpg'),
(127, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:646;s:4:"file";s:31:"2017/06/etageres-murale-grd.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"etageres-murale-grd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"etageres-murale-grd-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:31:"etageres-murale-grd-466x200.jpg";s:5:"width";i:466;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:31:"etageres-murale-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:31:"etageres-murale-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:31:"etageres-murale-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 35, 'image_grand_format', '34'),
(130, 35, '_image_grand_format', 'field_594982cf0b3d1'),
(131, 26, 'image_grand_format', '34'),
(132, 26, '_image_grand_format', 'field_594982cf0b3d1'),
(134, 33, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(136, 36, '_edit_last', '1'),
(137, 36, '_edit_lock', '1497997820:1'),
(138, 37, '_wp_attached_file', '2017/06/commode-angle.jpg'),
(139, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:263;s:6:"height";i:263;s:4:"file";s:25:"2017/06/commode-angle.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"commode-angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:25:"commode-angle-263x200.jpg";s:5:"width";i:263;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 38, '_wp_attached_file', '2017/06/commode-angle-grd.jpg'),
(141, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:567;s:4:"file";s:29:"2017/06/commode-angle-grd.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"commode-angle-grd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"commode-angle-grd-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:29:"commode-angle-grd-466x200.jpg";s:5:"width";i:466;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:29:"commode-angle-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:29:"commode-angle-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:29:"commode-angle-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(142, 36, '_thumbnail_id', '37'),
(144, 39, 'image_grand_format', '38'),
(145, 39, '_image_grand_format', 'field_594982cf0b3d1'),
(146, 36, 'image_grand_format', '38'),
(147, 36, '_image_grand_format', 'field_594982cf0b3d1'),
(148, 40, '_menu_item_type', 'post_type'),
(149, 40, '_menu_item_menu_item_parent', '31'),
(150, 40, '_menu_item_object_id', '36'),
(151, 40, '_menu_item_object', 'post'),
(152, 40, '_menu_item_target', ''),
(153, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 40, '_menu_item_xfn', '') ;
INSERT INTO `2k17_wp_examen_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(155, 40, '_menu_item_url', ''),
(157, 41, '_edit_last', '1'),
(158, 41, '_edit_lock', '1497997812:1'),
(159, 42, '_wp_attached_file', '2017/06/boite-vinyles.jpg'),
(160, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:263;s:6:"height";i:263;s:4:"file";s:25:"2017/06/boite-vinyles.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"boite-vinyles-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:25:"boite-vinyles-263x200.jpg";s:5:"width";i:263;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(161, 43, '_wp_attached_file', '2017/06/rack-a-vinyles-grd.jpg'),
(162, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:529;s:4:"file";s:30:"2017/06/rack-a-vinyles-grd.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"rack-a-vinyles-grd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"rack-a-vinyles-grd-264x300.jpg";s:5:"width";i:264;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:30:"rack-a-vinyles-grd-466x200.jpg";s:5:"width";i:466;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:30:"rack-a-vinyles-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:30:"rack-a-vinyles-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:30:"rack-a-vinyles-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 41, '_thumbnail_id', '42'),
(165, 44, 'image_grand_format', '43'),
(166, 44, '_image_grand_format', 'field_594982cf0b3d1'),
(167, 41, 'image_grand_format', '43'),
(168, 41, '_image_grand_format', 'field_594982cf0b3d1'),
(169, 45, '_edit_last', '1'),
(170, 45, '_edit_lock', '1497997807:1'),
(171, 46, '_wp_attached_file', '2017/06/enceinte-rose.jpg'),
(172, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:263;s:6:"height";i:263;s:4:"file";s:25:"2017/06/enceinte-rose.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"enceinte-rose-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:25:"enceinte-rose-263x200.jpg";s:5:"width";i:263;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 47, '_wp_attached_file', '2017/06/enceinte-rose-grd.jpg'),
(174, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:466;s:6:"height";i:567;s:4:"file";s:29:"2017/06/enceinte-rose-grd.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"enceinte-rose-grd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"enceinte-rose-grd-247x300.jpg";s:5:"width";i:247;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:29:"enceinte-rose-grd-466x200.jpg";s:5:"width";i:466;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:29:"enceinte-rose-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:29:"enceinte-rose-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:29:"enceinte-rose-grd-466x400.jpg";s:5:"width";i:466;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 45, '_thumbnail_id', '46'),
(177, 48, 'image_grand_format', '47'),
(178, 48, '_image_grand_format', 'field_594982cf0b3d1'),
(179, 45, 'image_grand_format', '47'),
(180, 45, '_image_grand_format', 'field_594982cf0b3d1'),
(181, 49, '_menu_item_type', 'post_type'),
(182, 49, '_menu_item_menu_item_parent', '31'),
(183, 49, '_menu_item_object_id', '41'),
(184, 49, '_menu_item_object', 'post'),
(185, 49, '_menu_item_target', ''),
(186, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(187, 49, '_menu_item_xfn', ''),
(188, 49, '_menu_item_url', ''),
(190, 50, '_menu_item_type', 'post_type'),
(191, 50, '_menu_item_menu_item_parent', '31'),
(192, 50, '_menu_item_object_id', '45'),
(193, 50, '_menu_item_object', 'post'),
(194, 50, '_menu_item_target', ''),
(195, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(196, 50, '_menu_item_xfn', ''),
(197, 50, '_menu_item_url', ''),
(199, 51, '_wp_attached_file', '2017/06/logo-structures-interieurs.png'),
(200, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:84;s:6:"height";i:84;s:4:"file";s:38:"2017/06/logo-structures-interieurs.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(201, 52, '_wp_attached_file', '2017/06/cropped-logo-structures-interieurs.png'),
(202, 52, '_wp_attachment_context', 'site-icon'),
(203, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:46:"2017/06/cropped-logo-structures-interieurs.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-512x200.png";s:5:"width";i:512;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:46:"cropped-logo-structures-interieurs-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:44:"cropped-logo-structures-interieurs-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(204, 53, '_wp_trash_meta_status', 'publish'),
(205, 53, '_wp_trash_meta_time', '1497992342'),
(206, 11, 'field_59498cb7bec05', 'a:14:{s:3:"key";s:19:"field_59498cb7bec05";s:5:"label";s:15:"Titre à propos";s:4:"name";s:15:"titre_à_propos";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(207, 11, 'field_59498ceabec06', 'a:11:{s:3:"key";s:19:"field_59498ceabec06";s:5:"label";s:15:"Texte à propos";s:4:"name";s:15:"texte_à_propos";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(208, 11, 'field_59498d23bec07', 'a:14:{s:3:"key";s:19:"field_59498d23bec07";s:5:"label";s:20:"Titre fonctionnement";s:4:"name";s:20:"titre_fonctionnement";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(209, 11, 'field_59498d44bec08', 'a:14:{s:3:"key";s:19:"field_59498d44bec08";s:5:"label";s:28:"Titre etape 1 fonctionnement";s:4:"name";s:28:"titre_etape_1_fonctionnement";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(210, 11, 'field_59498d5abec09', 'a:13:{s:3:"key";s:19:"field_59498d5abec09";s:5:"label";s:28:"Texte etape 1 fonctionnement";s:4:"name";s:28:"texte_etape_1_fonctionnement";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(211, 11, 'field_59498d79bec0a', 'a:14:{s:3:"key";s:19:"field_59498d79bec0a";s:5:"label";s:28:"Titre etape 2 fonctionnement";s:4:"name";s:28:"titre_etape_2_fonctionnement";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(212, 11, 'field_59498d8fbec0b', 'a:13:{s:3:"key";s:19:"field_59498d8fbec0b";s:5:"label";s:28:"Texte etape 2 fonctionnement";s:4:"name";s:28:"texte_etape_2_fonctionnement";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(213, 11, 'field_59498d9dbec0c', 'a:14:{s:3:"key";s:19:"field_59498d9dbec0c";s:5:"label";s:28:"Titre etape 3 fonctionnement";s:4:"name";s:28:"titre_etape_3_fonctionnement";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(214, 11, 'field_59498dafbec0d', 'a:13:{s:3:"key";s:19:"field_59498dafbec0d";s:5:"label";s:28:"Texte etape 3 fonctionnement";s:4:"name";s:28:"texte_etape_3_fonctionnement";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(216, 54, 'titre_à_propos', 'À propos de nous'),
(217, 54, '_titre_à_propos', 'field_59498cb7bec05'),
(218, 54, 'texte_à_propos', '<p class="text-left">Structures intérieurs est une entreprise de conception et de création de meubles et petits mobilier en bois. Nous réalisons également de l’aménagement sur mesure telle que des dressing, des bibliothèques ou des bureaux. Les pièces que nous réalisons sont produites à l’unité ou en très petites quantités. Tous nos produits sont fait main et sur mesure.</p>'),
(219, 54, '_texte_à_propos', 'field_59498ceabec06'),
(220, 54, 'titre_fonctionnement', 'Notre fonctionnement'),
(221, 54, '_titre_fonctionnement', 'field_59498d23bec07'),
(222, 54, 'titre_etape_1_fonctionnement', 'Définition du projet'),
(223, 54, '_titre_etape_1_fonctionnement', 'field_59498d44bec08'),
(224, 54, 'texte_etape_1_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(225, 54, '_texte_etape_1_fonctionnement', 'field_59498d5abec09'),
(226, 54, 'titre_etape_2_fonctionnement', 'Simulation 3D'),
(227, 54, '_titre_etape_2_fonctionnement', 'field_59498d79bec0a'),
(228, 54, 'texte_etape_2_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(229, 54, '_texte_etape_2_fonctionnement', 'field_59498d8fbec0b'),
(230, 54, 'titre_etape_3_fonctionnement', 'Livraison et installation'),
(231, 54, '_titre_etape_3_fonctionnement', 'field_59498d9dbec0c'),
(232, 54, 'texte_etape_3_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(233, 54, '_texte_etape_3_fonctionnement', 'field_59498dafbec0d'),
(234, 54, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(235, 54, '_accueil-formulaire', 'field_594931cee6112'),
(236, 54, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(237, 54, '_informations_de_contact', 'field_594938e99a0c5'),
(238, 6, 'titre_à_propos', 'À propos de nous'),
(239, 6, '_titre_à_propos', 'field_59498cb7bec05'),
(240, 6, 'texte_à_propos', '<p class="text-left">Structures intérieurs est une entreprise de conception et de création de meubles et petits mobilier en bois. Nous réalisons également de l’aménagement sur mesure telle que des dressing, des bibliothèques ou des bureaux. Les pièces que nous réalisons sont produites à l’unité ou en très petites quantités. Tous nos produits sont fait main et sur mesure.</p>'),
(241, 6, '_texte_à_propos', 'field_59498ceabec06'),
(242, 6, 'titre_fonctionnement', 'Notre fonctionnement'),
(243, 6, '_titre_fonctionnement', 'field_59498d23bec07'),
(244, 6, 'titre_etape_1_fonctionnement', 'Définition du projet'),
(245, 6, '_titre_etape_1_fonctionnement', 'field_59498d44bec08'),
(246, 6, 'texte_etape_1_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(247, 6, '_texte_etape_1_fonctionnement', 'field_59498d5abec09'),
(248, 6, 'titre_etape_2_fonctionnement', 'Simulation 3D'),
(249, 6, '_titre_etape_2_fonctionnement', 'field_59498d79bec0a'),
(250, 6, 'texte_etape_2_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(251, 6, '_texte_etape_2_fonctionnement', 'field_59498d8fbec0b'),
(252, 6, 'titre_etape_3_fonctionnement', 'Livraison et installation'),
(253, 6, '_titre_etape_3_fonctionnement', 'field_59498d9dbec0c'),
(254, 6, 'texte_etape_3_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(255, 6, '_texte_etape_3_fonctionnement', 'field_59498dafbec0d'),
(256, 55, '_edit_last', '1'),
(257, 55, '_edit_lock', '1497999561:1'),
(258, 56, '_edit_last', '1'),
(259, 56, '_edit_lock', '1497993561:1'),
(260, 56, '_wp_page_template', 'page-templates/page-contact.php') ;
INSERT INTO `2k17_wp_examen_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(270, 59, '_edit_last', '1'),
(272, 59, 'position', 'normal'),
(273, 59, 'layout', 'no_box'),
(274, 59, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(275, 59, '_edit_lock', '1498000355:1'),
(277, 59, 'field_594992a72d270', 'a:11:{s:3:"key";s:19:"field_594992a72d270";s:5:"label";s:18:"contact-formulaire";s:4:"name";s:18:"contact-formulaire";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(278, 59, 'field_5949928f2d26f', 'a:11:{s:3:"key";s:19:"field_5949928f2d26f";s:5:"label";s:23:"Informations de contact";s:4:"name";s:23:"informations_de_contact";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(280, 55, '_wp_page_template', 'page-templates/page-contact.php'),
(282, 55, 'contact-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(283, 55, '_contact-formulaire', 'field_594992a72d270'),
(284, 55, 'informations_de_contact', '<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>'),
(285, 55, '_informations_de_contact', 'field_5949928f2d26f'),
(286, 61, 'contact-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(287, 61, '_contact-formulaire', 'field_594992a72d270'),
(288, 61, 'informations_de_contact', '<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>'),
(289, 61, '_informations_de_contact', 'field_5949928f2d26f'),
(290, 56, '_wp_trash_meta_status', 'publish'),
(291, 56, '_wp_trash_meta_time', '1497994090'),
(292, 56, '_wp_desired_post_slug', 'contact'),
(293, 62, '_menu_item_type', 'post_type'),
(294, 62, '_menu_item_menu_item_parent', '0'),
(295, 62, '_menu_item_object_id', '55'),
(296, 62, '_menu_item_object', 'page'),
(297, 62, '_menu_item_target', ''),
(298, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(299, 62, '_menu_item_xfn', ''),
(300, 62, '_menu_item_url', ''),
(309, 26, '_encloseme', '1'),
(310, 11, 'field_5949a76187742', 'a:14:{s:3:"key";s:19:"field_5949a76187742";s:5:"label";s:15:"Titre principal";s:4:"name";s:15:"titre_principal";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(311, 11, 'field_5949a78a87743', 'a:14:{s:3:"key";s:19:"field_5949a78a87743";s:5:"label";s:20:"Sous Titre principal";s:4:"name";s:20:"sous_titre_principal";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(313, 63, 'titre_principal', 'Structures Intérieurs'),
(314, 63, '_titre_principal', 'field_5949a76187742'),
(315, 63, 'sous_titre_principal', 'Conception Création de mobilier bois'),
(316, 63, '_sous_titre_principal', 'field_5949a78a87743'),
(317, 63, 'titre_à_propos', 'À propos de nous'),
(318, 63, '_titre_à_propos', 'field_59498cb7bec05'),
(319, 63, 'texte_à_propos', '<p class="text-left">Structures intérieurs est une entreprise de conception et de création de meubles et petits mobilier en bois. Nous réalisons également de l’aménagement sur mesure telle que des dressing, des bibliothèques ou des bureaux. Les pièces que nous réalisons sont produites à l’unité ou en très petites quantités. Tous nos produits sont fait main et sur mesure.</p>'),
(320, 63, '_texte_à_propos', 'field_59498ceabec06'),
(321, 63, 'titre_fonctionnement', 'Notre fonctionnement'),
(322, 63, '_titre_fonctionnement', 'field_59498d23bec07'),
(323, 63, 'titre_etape_1_fonctionnement', 'Définition du projet'),
(324, 63, '_titre_etape_1_fonctionnement', 'field_59498d44bec08'),
(325, 63, 'texte_etape_1_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(326, 63, '_texte_etape_1_fonctionnement', 'field_59498d5abec09'),
(327, 63, 'titre_etape_2_fonctionnement', 'Simulation 3D'),
(328, 63, '_titre_etape_2_fonctionnement', 'field_59498d79bec0a'),
(329, 63, 'texte_etape_2_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(330, 63, '_texte_etape_2_fonctionnement', 'field_59498d8fbec0b'),
(331, 63, 'titre_etape_3_fonctionnement', 'Livraison et installation'),
(332, 63, '_titre_etape_3_fonctionnement', 'field_59498d9dbec0c'),
(333, 63, 'texte_etape_3_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(334, 63, '_texte_etape_3_fonctionnement', 'field_59498dafbec0d'),
(335, 63, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(336, 63, '_accueil-formulaire', 'field_594931cee6112'),
(337, 63, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(338, 63, '_informations_de_contact', 'field_594938e99a0c5'),
(339, 6, 'titre_principal', 'Structures Intérieurs'),
(340, 6, '_titre_principal', 'field_5949a76187742'),
(341, 6, 'sous_titre_principal', 'Conception Création de mobilier bois'),
(342, 6, '_sous_titre_principal', 'field_5949a78a87743'),
(343, 11, 'field_5949a82b5d46f', 'a:14:{s:3:"key";s:19:"field_5949a82b5d46f";s:5:"label";s:13:"Titre contact";s:4:"name";s:13:"titre_contact";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(344, 11, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(345, 64, 'titre_principal', 'Structures Intérieurs'),
(346, 64, '_titre_principal', 'field_5949a76187742'),
(347, 64, 'sous_titre_principal', 'Conception Création de mobilier bois'),
(348, 64, '_sous_titre_principal', 'field_5949a78a87743'),
(349, 64, 'titre_à_propos', 'À propos de nous'),
(350, 64, '_titre_à_propos', 'field_59498cb7bec05'),
(351, 64, 'texte_à_propos', '<p class="text-left">Structures intérieurs est une entreprise de conception et de création de meubles et petits mobilier en bois. Nous réalisons également de l’aménagement sur mesure telle que des dressing, des bibliothèques ou des bureaux. Les pièces que nous réalisons sont produites à l’unité ou en très petites quantités. Tous nos produits sont fait main et sur mesure.</p>'),
(352, 64, '_texte_à_propos', 'field_59498ceabec06'),
(353, 64, 'titre_fonctionnement', 'Notre fonctionnement'),
(354, 64, '_titre_fonctionnement', 'field_59498d23bec07'),
(355, 64, 'titre_etape_1_fonctionnement', 'Définition du projet'),
(356, 64, '_titre_etape_1_fonctionnement', 'field_59498d44bec08'),
(357, 64, 'texte_etape_1_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(358, 64, '_texte_etape_1_fonctionnement', 'field_59498d5abec09'),
(359, 64, 'titre_etape_2_fonctionnement', 'Simulation 3D'),
(360, 64, '_titre_etape_2_fonctionnement', 'field_59498d79bec0a'),
(361, 64, 'texte_etape_2_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(362, 64, '_texte_etape_2_fonctionnement', 'field_59498d8fbec0b'),
(363, 64, 'titre_etape_3_fonctionnement', 'Livraison et installation'),
(364, 64, '_titre_etape_3_fonctionnement', 'field_59498d9dbec0c'),
(365, 64, 'texte_etape_3_fonctionnement', 'Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus.'),
(366, 64, '_texte_etape_3_fonctionnement', 'field_59498dafbec0d'),
(367, 64, 'titre_contact', 'Contact'),
(368, 64, '_titre_contact', 'field_5949a82b5d46f'),
(369, 64, 'accueil-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(370, 64, '_accueil-formulaire', 'field_594931cee6112'),
(371, 64, 'informations_de_contact', '<div>\r\n<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>\r\n</div>'),
(372, 64, '_informations_de_contact', 'field_594938e99a0c5'),
(373, 6, 'titre_contact', 'Contact'),
(374, 6, '_titre_contact', 'field_5949a82b5d46f'),
(375, 59, 'field_5949a90f102b8', 'a:14:{s:3:"key";s:19:"field_5949a90f102b8";s:5:"label";s:13:"Titre contact";s:4:"name";s:13:"titre_contact";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(377, 65, 'titre_contact', 'Contactez nous !'),
(378, 65, '_titre_contact', 'field_5949a90f102b8'),
(379, 65, 'contact-formulaire', '[contact-form-7 id="4" title="Formulaire de contact"]'),
(380, 65, '_contact-formulaire', 'field_594992a72d270'),
(381, 65, 'informations_de_contact', '<div><strong>Téléphone :</strong> 06 74 86 02 32</div>\r\n<div><strong>Email :</strong> structures.intérieurs@gmail.com</div>\r\n<div><strong>Adresse :</strong> 3 rue de César Julien 67200 STRASBOURG</div>'),
(382, 65, '_informations_de_contact', 'field_5949928f2d26f'),
(383, 55, 'titre_contact', 'Contactez nous !') ;
INSERT INTO `2k17_wp_examen_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(384, 55, '_titre_contact', 'field_5949a90f102b8'),
(385, 59, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:31:"page-templates/page-contact.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}') ;

#
# End of data contents of table `2k17_wp_examen_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_posts`
#

DROP TABLE IF EXISTS `2k17_wp_examen_posts`;


#
# Table structure of table `2k17_wp_examen_posts`
#

CREATE TABLE `2k17_wp_examen_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_posts`
#
INSERT INTO `2k17_wp_examen_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-20 12:12:59', '2017-06-20 10:12:59', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2017-06-20 21:44:16', '2017-06-20 19:44:16', '', 0, 'http://localhost:8888/examen.web2/?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-20 12:12:59', '2017-06-20 10:12:59', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://localhost:8888/examen.web2/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2017-06-20 12:30:25', '2017-06-20 10:30:25', '', 0, 'http://localhost:8888/examen.web2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-06-20 12:13:19', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-20 12:13:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/examen.web2/?p=3', 0, 'post', '', 0),
(4, 1, '2017-06-20 12:22:39', '2017-06-20 10:22:39', '<div class="champ-formulaire">\r\n    <label>Votre Email <span class="obligatoire">*</span></label>\r\n    [email* your-email] \r\n</div>\r\n\r\n<div class="champ-formulaire">\r\n    <label>Sujet du message <span class="obligatoire">*</span></label>\r\n    [text* your-subject] \r\n</div>\r\n\r\n<div class="champ-formulaire">\r\n    <label>Votre Message <span class="obligatoire">*</span></label>\r\n    [textarea* your-message] \r\n</div>\r\n\r\n[submit "Envoyer"]\n1\nStructures intérieures "[your-subject]"\n[your-name] <stivyxx@gmail.com>\nstivyxx@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Structures intérieures (http://localhost:8888/examen.web2)\nReply-To: [your-email]\n\n\n\n\nStructures intérieures "[your-subject]"\nStructures intérieures <stivyxx@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Structures intérieures (http://localhost:8888/examen.web2)\nReply-To: stivyxx@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s\'est produite lors de l\'envoi de votre message. Veuillez réessayer plus tard.\nUn ou plusieurs champs ont une erreur. S\'il vous plaît, vérifiez et essayez à nouveau.\nUne erreur s\'est produite lors de l\'envoi de votre message. Veuillez réessayer plus tard.\nVous devez accepter les termes et conditions avant d\'envoyer votre message.\nCe champ est requis.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors de la mise en ligne du fichier.\nVous n’êtes pas autorisé à mettre en ligne ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors de la mise en ligne du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone est invalide.', 'Formulaire de contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-06-20 20:42:29', '2017-06-20 18:42:29', '', 0, 'http://localhost:8888/examen.web2/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2017-06-20 12:30:25', '2017-06-20 10:30:25', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://localhost:8888/examen.web2/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-06-20 12:30:25', '2017-06-20 10:30:25', '', 2, 'http://localhost:8888/examen.web2/2017/06/20/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-06-20 12:30:44', '2017-06-20 10:30:44', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2017-06-21 00:57:44', '2017-06-20 22:57:44', '', 0, 'http://localhost:8888/examen.web2/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-06-20 12:30:44', '2017-06-20 10:30:44', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-20 12:30:44', '2017-06-20 10:30:44', '', 6, 'http://localhost:8888/examen.web2/2017/06/20/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-06-20 12:31:13', '2017-06-20 10:31:13', '{"show_on_front":{"value":"page","type":"option","user_id":1},"page_on_front":{"value":"6","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '2127e853-da13-49b9-8e1a-f638f7342edf', '', '', '2017-06-20 12:31:13', '2017-06-20 10:31:13', '', 0, 'http://localhost:8888/examen.web2/2017/06/20/2127e853-da13-49b9-8e1a-f638f7342edf/', 0, 'customize_changeset', '', 0),
(11, 1, '2017-06-20 16:32:38', '2017-06-20 14:32:38', '', 'Page d\'accueil', '', 'publish', 'closed', 'closed', '', 'acf_page-daccueil', '', '', '2017-06-21 00:57:11', '2017-06-20 22:57:11', '', 0, 'http://localhost:8888/examen.web2/?post_type=acf&#038;p=11', 0, 'acf', '', 0),
(12, 1, '2017-06-20 16:32:54', '2017-06-20 14:32:54', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-20 16:32:54', '2017-06-20 14:32:54', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-06-20 17:04:18', '2017-06-20 15:04:18', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-20 17:04:18', '2017-06-20 15:04:18', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-06-20 19:15:44', '2017-06-20 17:15:44', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-20 19:15:44', '2017-06-20 17:15:44', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-06-20 19:22:09', '2017-06-20 17:22:09', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-20 19:22:09', '2017-06-20 17:22:09', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-06-20 21:00:53', '2017-06-20 19:00:53', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-20 21:00:53', '2017-06-20 19:00:53', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-06-20 21:44:04', '2017-06-20 19:44:04', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Étagères murales', '', 'publish', 'open', 'open', '', 'etageres-murales', '', '', '2017-06-21 00:30:23', '2017-06-20 22:30:23', '', 0, 'http://localhost:8888/examen.web2/?p=26', 0, 'post', '', 0),
(28, 1, '2017-06-20 21:43:49', '2017-06-20 19:43:49', '', 'etageres', '', 'inherit', 'open', 'closed', '', 'etageres', '', '', '2017-06-20 21:43:49', '2017-06-20 19:43:49', '', 26, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/etageres.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-06-20 21:44:04', '2017-06-20 19:44:04', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Étagères murales', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-20 21:44:04', '2017-06-20 19:44:04', '', 26, 'http://localhost:8888/examen.web2/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-06-20 21:44:16', '2017-06-20 19:44:16', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-20 21:44:16', '2017-06-20 19:44:16', '', 1, 'http://localhost:8888/examen.web2/1-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-06-20 21:45:52', '2017-06-20 19:45:52', '', 'Nos réalisations', '', 'publish', 'closed', 'closed', '', 'nos-realisations-v', '', '', '2017-06-20 23:28:45', '2017-06-20 21:28:45', '', 0, 'http://localhost:8888/examen.web2/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2017-06-20 21:45:52', '2017-06-20 19:45:52', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2017-06-20 23:28:45', '2017-06-20 21:28:45', '', 0, 'http://localhost:8888/examen.web2/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2017-06-20 22:19:03', '2017-06-20 20:19:03', '', 'Réalisations', '', 'publish', 'closed', 'closed', '', 'acf_realisations', '', '', '2017-06-20 22:25:27', '2017-06-20 20:25:27', '', 0, 'http://localhost:8888/examen.web2/?post_type=acf&#038;p=33', 0, 'acf', '', 0),
(34, 1, '2017-06-20 22:20:40', '2017-06-20 20:20:40', '', 'etageres-murale-grd', '', 'inherit', 'open', 'closed', '', 'etageres-murale-grd', '', '', '2017-06-20 22:20:40', '2017-06-20 20:20:40', '', 26, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/etageres-murale-grd.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2017-06-20 22:20:45', '2017-06-20 20:20:45', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Étagères murales', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-20 22:20:45', '2017-06-20 20:20:45', '', 26, 'http://localhost:8888/examen.web2/26-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-06-20 22:39:52', '2017-06-20 20:39:52', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Commode d’angle', '', 'publish', 'open', 'open', '', 'commode-dangle', '', '', '2017-06-21 00:30:20', '2017-06-20 22:30:20', '', 0, 'http://localhost:8888/examen.web2/?p=36', 0, 'post', '', 0),
(37, 1, '2017-06-20 22:37:30', '2017-06-20 20:37:30', '', 'commode-angle', '', 'inherit', 'open', 'closed', '', 'commode-angle', '', '', '2017-06-20 22:37:30', '2017-06-20 20:37:30', '', 36, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/commode-angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2017-06-20 22:39:33', '2017-06-20 20:39:33', '', 'commode-angle-grd', '', 'inherit', 'open', 'closed', '', 'commode-angle-grd', '', '', '2017-06-20 22:39:33', '2017-06-20 20:39:33', '', 36, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/commode-angle-grd.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2017-06-20 22:39:52', '2017-06-20 20:39:52', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Commode d’angle', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-06-20 22:39:52', '2017-06-20 20:39:52', '', 36, 'http://localhost:8888/examen.web2/36-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-06-20 22:40:18', '2017-06-20 20:40:18', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2017-06-20 23:28:45', '2017-06-20 21:28:45', '', 0, 'http://localhost:8888/examen.web2/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2017-06-20 22:44:22', '2017-06-20 20:44:22', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Boite à vinyles', '', 'publish', 'open', 'open', '', 'boite-a-vinyles', '', '', '2017-06-21 00:30:12', '2017-06-20 22:30:12', '', 0, 'http://localhost:8888/examen.web2/?p=41', 0, 'post', '', 0),
(42, 1, '2017-06-20 22:42:22', '2017-06-20 20:42:22', '', 'boite-vinyles', '', 'inherit', 'open', 'closed', '', 'boite-vinyles', '', '', '2017-06-20 22:42:22', '2017-06-20 20:42:22', '', 41, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/boite-vinyles.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-06-20 22:44:15', '2017-06-20 20:44:15', '', 'rack-a-vinyles-grd', '', 'inherit', 'open', 'closed', '', 'rack-a-vinyles-grd', '', '', '2017-06-20 22:44:15', '2017-06-20 20:44:15', '', 41, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/rack-a-vinyles-grd.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2017-06-20 22:44:22', '2017-06-20 20:44:22', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Boite à vinyles', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-06-20 22:44:22', '2017-06-20 20:44:22', '', 41, 'http://localhost:8888/examen.web2/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-06-20 22:46:22', '2017-06-20 20:46:22', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Enceinte rose', '', 'publish', 'open', 'open', '', 'enceinte-rose', '', '', '2017-06-21 00:30:07', '2017-06-20 22:30:07', '', 0, 'http://localhost:8888/examen.web2/?p=45', 0, 'post', '', 0),
(46, 1, '2017-06-20 22:44:52', '2017-06-20 20:44:52', '', 'enceinte-rose', '', 'inherit', 'open', 'closed', '', 'enceinte-rose', '', '', '2017-06-20 22:44:52', '2017-06-20 20:44:52', '', 45, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/enceinte-rose.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2017-06-20 22:46:17', '2017-06-20 20:46:17', '', 'enceinte-rose-grd', '', 'inherit', 'open', 'closed', '', 'enceinte-rose-grd', '', '', '2017-06-20 22:46:17', '2017-06-20 20:46:17', '', 45, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/enceinte-rose-grd.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2017-06-20 22:46:22', '2017-06-20 20:46:22', '<strong>Demande du client :</strong> Imperdiet rutrum nisl, non imperdiet sem ultrices vitae. In mattis nisi vel ligula dictum, vel convallis quam semper.\r\n\r\n<strong>Détails des travaux :</strong> Praesent rutrum risus a ex venenatis tempus. Praesent rutrum risus a ex venenatis tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis mi id arcu lacinia varius. Integer imperdiet dictum ipsum, vitae pharetra nibh porttitor sed.\r\n\r\n<strong>Temps de réalisation :</strong> 22h', 'Enceinte rose', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-06-20 22:46:22', '2017-06-20 20:46:22', '', 45, 'http://localhost:8888/examen.web2/45-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-06-20 22:46:40', '2017-06-20 20:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2017-06-20 23:28:45', '2017-06-20 21:28:45', '', 0, 'http://localhost:8888/examen.web2/?p=49', 4, 'nav_menu_item', '', 0),
(50, 1, '2017-06-20 22:46:40', '2017-06-20 20:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2017-06-20 23:28:45', '2017-06-20 21:28:45', '', 0, 'http://localhost:8888/examen.web2/?p=50', 5, 'nav_menu_item', '', 0),
(51, 1, '2017-06-20 22:58:50', '2017-06-20 20:58:50', '', 'logo-structures-interieurs', '', 'inherit', 'open', 'closed', '', 'logo-structures-interieurs', '', '', '2017-06-20 22:58:50', '2017-06-20 20:58:50', '', 0, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/logo-structures-interieurs.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2017-06-20 22:58:54', '2017-06-20 20:58:54', 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/cropped-logo-structures-interieurs.png', 'cropped-logo-structures-interieurs.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-structures-interieurs-png', '', '', '2017-06-20 22:58:54', '2017-06-20 20:58:54', '', 0, 'http://localhost:8888/examen.web2/wp-content/uploads/2017/06/cropped-logo-structures-interieurs.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2017-06-20 22:59:02', '2017-06-20 20:59:02', '{"site_icon":{"value":52,"type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'f0f17cdd-883e-4b9f-bf77-28ad99bf83e3', '', '', '2017-06-20 22:59:02', '2017-06-20 20:59:02', '', 0, 'http://localhost:8888/examen.web2/f0f17cdd-883e-4b9f-bf77-28ad99bf83e3/', 0, 'customize_changeset', '', 0),
(54, 1, '2017-06-20 23:05:46', '2017-06-20 21:05:46', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-20 23:05:46', '2017-06-20 21:05:46', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-06-20 23:26:23', '2017-06-20 21:26:23', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-2', '', '', '2017-06-21 01:01:10', '2017-06-20 23:01:10', '', 0, 'http://localhost:8888/examen.web2/?page_id=55', 0, 'page', '', 0),
(56, 1, '2017-06-20 23:21:42', '2017-06-20 21:21:42', '', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2017-06-20 23:28:10', '2017-06-20 21:28:10', '', 0, 'http://localhost:8888/examen.web2/?page_id=56', 0, 'page', '', 0),
(57, 1, '2017-06-20 23:21:42', '2017-06-20 21:21:42', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-06-20 23:21:42', '2017-06-20 21:21:42', '', 56, 'http://localhost:8888/examen.web2/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-06-20 23:24:19', '2017-06-20 21:24:19', '', 'Page contact', '', 'publish', 'closed', 'closed', '', 'acf_page-contact', '', '', '2017-06-21 01:01:27', '2017-06-20 23:01:27', '', 0, 'http://localhost:8888/examen.web2/?post_type=acf&#038;p=59', 0, 'acf', '', 0),
(60, 1, '2017-06-20 23:26:23', '2017-06-20 21:26:23', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-06-20 23:26:23', '2017-06-20 21:26:23', '', 55, 'http://localhost:8888/examen.web2/55-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-06-20 23:27:59', '2017-06-20 21:27:59', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-06-20 23:27:59', '2017-06-20 21:27:59', '', 55, 'http://localhost:8888/examen.web2/55-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-06-20 23:28:45', '2017-06-20 21:28:45', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2017-06-20 23:28:45', '2017-06-20 21:28:45', '', 0, 'http://localhost:8888/examen.web2/?p=62', 6, 'nav_menu_item', '', 0),
(63, 1, '2017-06-21 00:54:48', '2017-06-20 22:54:48', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-21 00:54:48', '2017-06-20 22:54:48', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-06-21 00:57:44', '2017-06-20 22:57:44', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-21 00:57:44', '2017-06-20 22:57:44', '', 6, 'http://localhost:8888/examen.web2/6-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-06-21 01:01:10', '2017-06-20 23:01:10', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-06-21 01:01:10', '2017-06-20 23:01:10', '', 55, 'http://localhost:8888/examen.web2/55-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `2k17_wp_examen_posts`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_term_relationships`
#

DROP TABLE IF EXISTS `2k17_wp_examen_term_relationships`;


#
# Table structure of table `2k17_wp_examen_term_relationships`
#

CREATE TABLE `2k17_wp_examen_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_term_relationships`
#
INSERT INTO `2k17_wp_examen_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 3, 0),
(31, 2, 0),
(32, 2, 0),
(36, 3, 0),
(40, 2, 0),
(41, 3, 0),
(45, 3, 0),
(49, 2, 0),
(50, 2, 0),
(62, 2, 0) ;

#
# End of data contents of table `2k17_wp_examen_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_term_taxonomy`
#

DROP TABLE IF EXISTS `2k17_wp_examen_term_taxonomy`;


#
# Table structure of table `2k17_wp_examen_term_taxonomy`
#

CREATE TABLE `2k17_wp_examen_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_term_taxonomy`
#
INSERT INTO `2k17_wp_examen_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 4) ;

#
# End of data contents of table `2k17_wp_examen_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_termmeta`
#

DROP TABLE IF EXISTS `2k17_wp_examen_termmeta`;


#
# Table structure of table `2k17_wp_examen_termmeta`
#

CREATE TABLE `2k17_wp_examen_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_termmeta`
#

#
# End of data contents of table `2k17_wp_examen_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_terms`
#

DROP TABLE IF EXISTS `2k17_wp_examen_terms`;


#
# Table structure of table `2k17_wp_examen_terms`
#

CREATE TABLE `2k17_wp_examen_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_terms`
#
INSERT INTO `2k17_wp_examen_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Principal', 'principal', 0),
(3, 'Réalisations', 'realisations', 0) ;

#
# End of data contents of table `2k17_wp_examen_terms`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_usermeta`
#

DROP TABLE IF EXISTS `2k17_wp_examen_usermeta`;


#
# Table structure of table `2k17_wp_examen_usermeta`
#

CREATE TABLE `2k17_wp_examen_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_usermeta`
#
INSERT INTO `2k17_wp_examen_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, '2k17_wp_examen_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, '2k17_wp_examen_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:2:{s:64:"9bde29a0dbc14d1f012d8222ed3dc8c113c339badb4040fa78eb8f2cfba2eb3c";a:4:{s:10:"expiration";i:1499163198;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497953598;}s:64:"b37042e18f0ad192ca13976d866823d2b850bc1fc99bae2002a8fc04afb0bc3d";a:4:{s:10:"expiration";i:1499188100;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497978500;}}'),
(16, 1, '2k17_wp_examen_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, '2k17_wp_examen_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce&hidetb=1'),
(21, 1, '2k17_wp_examen_user-settings-time', '1497978499'),
(22, 1, 'meta-box-order_post', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:61:"postimagediv,submitdiv,formatdiv,categorydiv,tagsdiv-post_tag";s:6:"normal";s:78:"acf_11,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_post', '2'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_acf', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}') ;

#
# End of data contents of table `2k17_wp_examen_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `2k17_wp_examen_users`
#

DROP TABLE IF EXISTS `2k17_wp_examen_users`;


#
# Table structure of table `2k17_wp_examen_users`
#

CREATE TABLE `2k17_wp_examen_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `2k17_wp_examen_users`
#
INSERT INTO `2k17_wp_examen_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BdnhMC4Zg6rmRVFkRArqpSC69oTbcd0', 'admin', 'stivyxx@gmail.com', '', '2017-06-20 10:12:59', '', 0, 'admin') ;

#
# End of data contents of table `2k17_wp_examen_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

