/*
Navicat MySQL Data Transfer
 
Source Server Version : 50721 
Source Database       : tlg

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-08 21:30:50
*/

SET FOREIGN_KEY_CHECKS=0;
SET @@global.innodb_large_prefix = 1;
-- ----------------------------
-- Table structure for `companies`
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('1', 'test', 'test adress', 'www.test.com', 'res@ge.com', '2018-04-08 15:09:52', '2018-04-08 15:09:56');
INSERT INTO `companies` VALUES ('2', 'Company C', 'c address', 'c.co', 'info@c.com', '2018-04-02 15:10:00', '2018-04-04 15:10:04');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_06_01_000001_create_oauth_auth_codes_table', '2');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000002_create_oauth_access_tokens_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000003_create_oauth_refresh_tokens_table', '2');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000004_create_oauth_clients_table', '2');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000005_create_oauth_personal_access_clients_table', '2');
INSERT INTO `migrations` VALUES ('8', '2017_10_18_110400_create_companies_table', '3');
INSERT INTO `migrations` VALUES ('9', '2018_04_08_074906_create_todos_table', '3');
INSERT INTO `migrations` VALUES ('10', '2018_04_08_101909_laratrust_setup_tables', '4');

-- ----------------------------
-- Table structure for `oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('1cfff75b70270ddf0c80ce595f0df5763a16a8fd8e9dc9789c6cf56624c732894ec2830ca0bea80f', '1', '4', null, '[\"*\"]', '0', '2018-04-08 16:16:10', '2018-04-08 16:16:10', '2018-04-23 16:16:10');
INSERT INTO `oauth_access_tokens` VALUES ('3692f2ca091082118753cd4e1ebadc8924c4769cd2f80fe4d2ebe6ea95545ad40faff8dd46c9fcd5', '1', '4', null, '[\"*\"]', '0', '2018-04-08 10:45:39', '2018-04-08 10:45:39', '2018-04-23 10:45:39');
INSERT INTO `oauth_access_tokens` VALUES ('6b19fde380f2832073a572355213a88a684fae5eefbfd9fe8c030f6b11d89684f9fa4deaef6238e3', '1', '4', null, '[\"*\"]', '0', '2018-04-08 10:06:09', '2018-04-08 10:06:09', '2018-04-23 10:06:09');
INSERT INTO `oauth_access_tokens` VALUES ('d902228cedc287a8ae65a4b107cb24e87939c11c7af6c225780f3a7103704db20d7e107536b7c679', '1', '4', null, '[\"*\"]', '0', '2018-04-08 12:09:11', '2018-04-08 12:09:11', '2018-04-23 12:09:11');
INSERT INTO `oauth_access_tokens` VALUES ('db14f2e35df38e69276314f59864be5f94e11140ccb1387af3571bbcbc5e3a1df1a6d68893cb46a1', '1', '4', null, '[\"*\"]', '0', '2018-04-08 10:03:34', '2018-04-08 10:03:34', '2018-04-23 10:03:34');

-- ----------------------------
-- Table structure for `oauth_auth_codes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Personal Access Client', 'Tt5eqiJShpUFzVak8svTIBcot4EmQPT9WN0KKzsU', 'http://localhost', '1', '0', '0', '2018-04-07 08:07:08', '2018-04-07 08:07:08');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Password Grant Client', 'ssxKaLfhs5RnJoGXV1ukxymDFlHZ2ijjHUmaBN3e', 'http://localhost', '0', '1', '0', '2018-04-07 08:07:08', '2018-04-07 08:07:08');
INSERT INTO `oauth_clients` VALUES ('3', '2', 'owner', 'C78k6XV6H9ryEWSC39uWVGXUT0XnxeqW4Ph3YIXp', 'dashboard', '0', '0', '0', '2018-04-08 05:58:01', '2018-04-08 05:58:01');
INSERT INTO `oauth_clients` VALUES ('4', null, 'DMS Password Grant Client', 'eVMGbhfF7m99NhtKVoGXvM6yIQ4t9ptXbj04P8b2', 'http://localhost', '0', '1', '0', '2018-04-08 06:39:11', '2018-04-08 06:39:11');

-- ----------------------------
-- Table structure for `oauth_personal_access_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2018-04-07 08:07:08', '2018-04-07 08:07:08');

-- ----------------------------
-- Table structure for `oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('aabb58e183e13016ae70d8f360a3884684ac8fb8f60ba36c2ddf1f31e120e047c40a168988aead65', 'db14f2e35df38e69276314f59864be5f94e11140ccb1387af3571bbcbc5e3a1df1a6d68893cb46a1', '0', '2018-05-08 10:03:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('afe49834912cab48d25f82f3a78b618d79cf6296729dd7249ca005d131726f4e4c046024c632d2ae', '6b19fde380f2832073a572355213a88a684fae5eefbfd9fe8c030f6b11d89684f9fa4deaef6238e3', '0', '2018-05-08 10:06:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('cdb8eda3d23f046cb9bbc0249a132b49a9d6be7450ccc267924fc5cba35f6df58300071303e4235e', '1cfff75b70270ddf0c80ce595f0df5763a16a8fd8e9dc9789c6cf56624c732894ec2830ca0bea80f', '0', '2018-05-08 16:16:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('cf9da2c0bcf143eb1f663d0c24f961146129026f49caa4bce91ebb721009e72ab8395bbe52ca3e5f', 'd902228cedc287a8ae65a4b107cb24e87939c11c7af6c225780f3a7103704db20d7e107536b7c679', '0', '2018-05-08 12:09:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('f3a3eac1a12e192111a4e5d730813b81cb3e987ea947863e755bb6af0ed620e8e7e1d0edf14ea5b5', '3692f2ca091082118753cd4e1ebadc8924c4769cd2f80fe4d2ebe6ea95545ad40faff8dd46c9fcd5', '0', '2018-05-08 10:45:39');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for `permission_user`
-- ----------------------------
DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE `permission_user` (
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `permission_user_user_id_permission_id_user_type_team_id_unique` (`user_id`,`permission_id`,`user_type`,`team_id`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  KEY `permission_user_team_id_foreign` (`team_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_user
-- ----------------------------
INSERT INTO `permission_user` VALUES ('1', '1', 'App\\User', null);
INSERT INTO `permission_user` VALUES ('2', '1', 'App\\User', null);
INSERT INTO `permission_user` VALUES ('1', '2', 'App\\User', null);
INSERT INTO `permission_user` VALUES ('2', '2', 'App\\User', null);

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'create-post', 'Create Posts', 'create new blog posts', '2018-04-08 11:03:29', '2018-04-08 11:03:29');
INSERT INTO `permissions` VALUES ('2', 'edit-user', 'Edit Users', 'edit existing users', '2018-04-08 11:03:29', '2018-04-08 11:03:29');

-- ----------------------------
-- Table structure for `role_user`
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `role_user_user_id_role_id_user_type_team_id_unique` (`user_id`,`role_id`,`user_type`,`team_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_team_id_foreign` (`team_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '1', 'App\\User', null);
INSERT INTO `role_user` VALUES ('2', '1', 'App\\User', null);

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'owner', 'Project Owner', 'User is the owner of a given project', '2018-04-08 11:02:52', '2018-04-08 11:02:52');
INSERT INTO `roles` VALUES ('2', 'admin', 'User Administrator', 'User is allowed to manage and edit other users', '2018-04-08 11:02:52', '2018-04-08 11:02:52');

-- ----------------------------
-- Table structure for `teams`
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teams_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------

-- ----------------------------
-- Table structure for `todos`
-- ----------------------------
DROP TABLE IF EXISTS `todos`;
CREATE TABLE `todos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of todos
-- ----------------------------
INSERT INTO `todos` VALUES ('1', '2', 'test', '1', '2018-04-02 15:04:55', '2018-04-02 15:05:00');
INSERT INTO `todos` VALUES ('2', '3', 'Laravel P', '1', '2018-04-01 15:05:39', '2018-04-01 15:05:45');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Admin Project DMS', 'admin@me.com', '$2y$10$Nh8Tty/4X/XP1Pbzz6YlS.lKl89iLFQEpnwS8jY/p.YgoM5k0Zi.a', 'akRKwSJQxh34IcUGRNOVdZw0Zzem6Sq8bb4mW5Dtu96p3JZH37sQ94pzm6tL', '2018-04-08 06:07:36', '2018-04-08 06:07:36');
INSERT INTO `users` VALUES ('2', 'owner', 'owner@me.com', '$2y$10$Rl/rYGg2XZnXyJxXK3SapuTc1qbq4.nDwfThb5HMvn9gg1WJOUGSG', 'GJT8jjKOuWr4MWE6MkTPJQrm3tczVrTCpdxnanSbWlh1tVA4U4m16LwGNllD', '2018-04-08 06:08:10', '2018-04-08 06:08:10');
INSERT INTO `users` VALUES ('3', 'contractor', 'contractor@me.com', '$2y$10$8AYsnDsMdaeQzofQsvtSn.JaLymPop7r9yWcQRzFgY6uTrrRuF/Cy', 'HqvZAZKBZGvXMvxemLKQZUapCGAE1ZxSeOPL8DpSCFCtWSpUDDxyMI7joxB9', '2018-04-08 06:08:37', '2018-04-08 06:08:37');
