-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 jan. 2025 à 11:08
-- Version du serveur : 10.4.32-MariaDB-log
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `strapi`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `document_id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'egqwoog4j6h73y2jk8v8on3z', 'plugin::content-manager.explorer.create', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[]', '2025-01-17 14:50:29.507000', '2025-01-17 14:50:29.507000', '2025-01-17 14:50:29.507000', NULL, NULL, NULL),
(2, 'tmryv24dfnflbocdpyd1a62x', 'plugin::content-manager.explorer.create', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[]', '2025-01-17 14:50:29.521000', '2025-01-17 14:50:29.521000', '2025-01-17 14:50:29.521000', NULL, NULL, NULL),
(3, 'y8rwrxpx0990npsesas53kwe', 'plugin::content-manager.explorer.read', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[]', '2025-01-17 14:50:29.546000', '2025-01-17 14:50:29.546000', '2025-01-17 14:50:29.546000', NULL, NULL, NULL),
(4, 'lmco90grk3g31qqtxdms6gmf', 'plugin::content-manager.explorer.read', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[]', '2025-01-17 14:50:29.558000', '2025-01-17 14:50:29.558000', '2025-01-17 14:50:29.558000', NULL, NULL, NULL),
(5, 'vx4zyjciqi499a1llv2q6a4y', 'plugin::content-manager.explorer.update', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[]', '2025-01-17 14:50:29.568000', '2025-01-17 14:50:29.568000', '2025-01-17 14:50:29.568000', NULL, NULL, NULL),
(6, 'ax0eizqstnwrqsa9vs5o15h5', 'plugin::content-manager.explorer.update', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[]', '2025-01-17 14:50:29.578000', '2025-01-17 14:50:29.578000', '2025-01-17 14:50:29.578000', NULL, NULL, NULL),
(7, 'yu826fz22p3xwr4h9hhtuy7h', 'plugin::content-manager.explorer.delete', '{}', 'api::box.box', '{}', '[]', '2025-01-17 14:50:29.589000', '2025-01-17 14:50:29.589000', '2025-01-17 14:50:29.589000', NULL, NULL, NULL),
(8, 'gku6zj75phuub5flf25mi871', 'plugin::content-manager.explorer.delete', '{}', 'api::cable.cable', '{}', '[]', '2025-01-17 14:50:29.599000', '2025-01-17 14:50:29.599000', '2025-01-17 14:50:29.599000', NULL, NULL, NULL),
(9, 'olmphyxi2p0ezz6f07jsxdm7', 'plugin::content-manager.explorer.publish', '{}', 'api::box.box', '{}', '[]', '2025-01-17 14:50:29.608000', '2025-01-17 14:50:29.608000', '2025-01-17 14:50:29.608000', NULL, NULL, NULL),
(10, 'wv6r9vfpduxyoqhp1gxnq1w3', 'plugin::content-manager.explorer.publish', '{}', 'api::cable.cable', '{}', '[]', '2025-01-17 14:50:29.626000', '2025-01-17 14:50:29.626000', '2025-01-17 14:50:29.626000', NULL, NULL, NULL),
(11, 'aqi2ohkb2e0806chqht9dqaj', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.639000', '2025-01-17 14:50:29.639000', '2025-01-17 14:50:29.639000', NULL, NULL, NULL),
(12, 'hwj72hz21gnmi2zghjpnyqg6', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.650000', '2025-01-17 14:50:29.650000', '2025-01-17 14:50:29.650000', NULL, NULL, NULL),
(13, 'cduk2dm5j31y3dhrf4663uw7', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.662000', '2025-01-17 14:50:29.662000', '2025-01-17 14:50:29.662000', NULL, NULL, NULL),
(14, 'sghag569lrqt3xjudmka1tsa', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.674000', '2025-01-17 14:50:29.674000', '2025-01-17 14:50:29.675000', NULL, NULL, NULL),
(15, 'm5ebrb9pz4swe2j96sojo1sm', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.688000', '2025-01-17 14:50:29.688000', '2025-01-17 14:50:29.688000', NULL, NULL, NULL),
(16, 'rxllgjvld22y8qatr68nu264', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.702000', '2025-01-17 14:50:29.702000', '2025-01-17 14:50:29.702000', NULL, NULL, NULL),
(17, 'far0sckub36hkojavtrb8q21', 'plugin::content-manager.explorer.create', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.718000', '2025-01-17 14:50:29.718000', '2025-01-17 14:50:29.718000', NULL, NULL, NULL),
(18, 'kpggmra70suqk67oqzh33y9q', 'plugin::content-manager.explorer.create', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.730000', '2025-01-17 14:50:29.730000', '2025-01-17 14:50:29.730000', NULL, NULL, NULL),
(19, 'f9vzfr6qemnnr25tv0gfftb3', 'plugin::content-manager.explorer.read', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.742000', '2025-01-17 14:50:29.742000', '2025-01-17 14:50:29.742000', NULL, NULL, NULL),
(20, 'vyb1zhwd5l0x3b020q4yuax7', 'plugin::content-manager.explorer.read', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.753000', '2025-01-17 14:50:29.753000', '2025-01-17 14:50:29.754000', NULL, NULL, NULL),
(21, 'pisl5c6rome21cbbmszdp6c8', 'plugin::content-manager.explorer.update', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.764000', '2025-01-17 14:50:29.764000', '2025-01-17 14:50:29.764000', NULL, NULL, NULL),
(22, 'du1d0ae05fim64yed5r1p43z', 'plugin::content-manager.explorer.update', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.775000', '2025-01-17 14:50:29.775000', '2025-01-17 14:50:29.775000', NULL, NULL, NULL),
(23, 'i44h5fblh31509ca24marx42', 'plugin::content-manager.explorer.delete', '{}', 'api::box.box', '{}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.789000', '2025-01-17 14:50:29.789000', '2025-01-17 14:50:29.789000', NULL, NULL, NULL),
(24, 'b331qkwalodbwato332ld8q0', 'plugin::content-manager.explorer.delete', '{}', 'api::cable.cable', '{}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.800000', '2025-01-17 14:50:29.800000', '2025-01-17 14:50:29.800000', NULL, NULL, NULL),
(25, 'k73q8j4wux9db4q43etcvlhm', 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.810000', '2025-01-17 14:50:29.810000', '2025-01-17 14:50:29.810000', NULL, NULL, NULL),
(26, 'cv23y7l4oju72prdhzod1jtf', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.819000', '2025-01-17 14:50:29.819000', '2025-01-17 14:50:29.819000', NULL, NULL, NULL),
(27, 'jb6wln5vk22oa4b1ujz595uc', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.829000', '2025-01-17 14:50:29.829000', '2025-01-17 14:50:29.829000', NULL, NULL, NULL),
(28, 'ue7g7dpfl75rzhx22lmt1ez6', 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2025-01-17 14:50:29.840000', '2025-01-17 14:50:29.840000', '2025-01-17 14:50:29.840000', NULL, NULL, NULL),
(29, 'pvv93zdbiimv2mappj0etb1z', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.852000', '2025-01-17 14:50:29.852000', '2025-01-17 14:50:29.852000', NULL, NULL, NULL),
(30, 'iwj555iz9anp76zprmeypxvp', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2025-01-17 14:50:29.864000', '2025-01-17 14:50:29.864000', '2025-01-17 14:50:29.864000', NULL, NULL, NULL),
(31, 'wpv6lt3wu1ld48wb7nz4pqco', 'plugin::content-manager.explorer.create', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[]', '2025-01-17 14:50:29.901000', '2025-01-17 14:50:29.901000', '2025-01-17 14:50:29.901000', NULL, NULL, NULL),
(32, 'f1si4d5bvudvmor6lyzsazu1', 'plugin::content-manager.explorer.create', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[]', '2025-01-17 14:50:29.915000', '2025-01-17 14:50:29.915000', '2025-01-17 14:50:29.915000', NULL, NULL, NULL),
(33, 'rd6qccorka1tpamsjac9bdgr', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-01-17 14:50:29.929000', '2025-01-17 14:50:29.929000', '2025-01-17 14:50:29.929000', NULL, NULL, NULL),
(34, 'o31ph33wkmtm951nbslgia7k', 'plugin::content-manager.explorer.read', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[]', '2025-01-17 14:50:29.965000', '2025-01-17 14:50:29.965000', '2025-01-17 14:50:29.965000', NULL, NULL, NULL),
(35, 'zgw06tyb6g0z31oabpi8wdrq', 'plugin::content-manager.explorer.read', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[]', '2025-01-17 14:50:29.976000', '2025-01-17 14:50:29.976000', '2025-01-17 14:50:29.976000', NULL, NULL, NULL),
(36, 'lm2r6zv7vx8gqu23g7j4dqfw', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-01-17 14:50:29.986000', '2025-01-17 14:50:29.986000', '2025-01-17 14:50:29.986000', NULL, NULL, NULL),
(37, 'y7s0tty5bcogf46zb2atrapm', 'plugin::content-manager.explorer.update', '{}', 'api::box.box', '{\"fields\":[\"Active\",\"cable_id\",\"uid\"]}', '[]', '2025-01-17 14:50:29.996000', '2025-01-17 14:50:29.996000', '2025-01-17 14:50:29.997000', NULL, NULL, NULL),
(38, 'hqllvvqpey6hrb0qtxj2ytlm', 'plugin::content-manager.explorer.update', '{}', 'api::cable.cable', '{\"fields\":[\"reference\",\"idf\",\"idb\",\"qte\",\"project_name\"]}', '[]', '2025-01-17 14:50:30.007000', '2025-01-17 14:50:30.007000', '2025-01-17 14:50:30.008000', NULL, NULL, NULL),
(39, 'dxbyngpklptxbghofgeu75q6', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-01-17 14:50:30.018000', '2025-01-17 14:50:30.018000', '2025-01-17 14:50:30.018000', NULL, NULL, NULL),
(40, 'ydejtzwau0er512585kwc7gx', 'plugin::content-manager.explorer.delete', '{}', 'api::box.box', '{}', '[]', '2025-01-17 14:50:30.030000', '2025-01-17 14:50:30.030000', '2025-01-17 14:50:30.030000', NULL, NULL, NULL),
(41, 'h2xpr8h9nqz9isp01p53jvtq', 'plugin::content-manager.explorer.delete', '{}', 'api::cable.cable', '{}', '[]', '2025-01-17 14:50:30.040000', '2025-01-17 14:50:30.040000', '2025-01-17 14:50:30.040000', NULL, NULL, NULL),
(42, 'ci6dsoxjjl9ddnajxm3nkrlk', 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2025-01-17 14:50:30.050000', '2025-01-17 14:50:30.050000', '2025-01-17 14:50:30.050000', NULL, NULL, NULL),
(43, 'whxnx961vq4q8cti6h0314k4', 'plugin::content-manager.explorer.publish', '{}', 'api::box.box', '{}', '[]', '2025-01-17 14:50:30.060000', '2025-01-17 14:50:30.060000', '2025-01-17 14:50:30.060000', NULL, NULL, NULL),
(44, 'oa2m7qs4ynu8yoe7jgc5cu7o', 'plugin::content-manager.explorer.publish', '{}', 'api::cable.cable', '{}', '[]', '2025-01-17 14:50:30.070000', '2025-01-17 14:50:30.070000', '2025-01-17 14:50:30.070000', NULL, NULL, NULL),
(45, 'c43tnmo9v2tt6bklf1cxr7cd', 'plugin::content-manager.explorer.publish', '{}', 'plugin::users-permissions.user', '{}', '[]', '2025-01-17 14:50:30.080000', '2025-01-17 14:50:30.080000', '2025-01-17 14:50:30.080000', NULL, NULL, NULL),
(46, 'nfp3syz95owo6cop5511ihb1', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.092000', '2025-01-17 14:50:30.092000', '2025-01-17 14:50:30.092000', NULL, NULL, NULL),
(47, 'q39acqs14anilimw43ua7wi6', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.103000', '2025-01-17 14:50:30.103000', '2025-01-17 14:50:30.103000', NULL, NULL, NULL),
(48, 'wxgdvnnc9rwo804okpe9cpax', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.114000', '2025-01-17 14:50:30.114000', '2025-01-17 14:50:30.114000', NULL, NULL, NULL),
(49, 'u6jc2aiot79fgwpvjv49ehru', 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.124000', '2025-01-17 14:50:30.124000', '2025-01-17 14:50:30.124000', NULL, NULL, NULL),
(50, 'ma3fguviq8ihqc7mdzhtwfqf', 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.134000', '2025-01-17 14:50:30.134000', '2025-01-17 14:50:30.134000', NULL, NULL, NULL),
(51, 'uoj0xu2dubh6sgwqcnp95hyg', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.144000', '2025-01-17 14:50:30.144000', '2025-01-17 14:50:30.144000', NULL, NULL, NULL),
(52, 'cgg4z8xud8yiih8610ax9g2n', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.153000', '2025-01-17 14:50:30.153000', '2025-01-17 14:50:30.153000', NULL, NULL, NULL),
(53, 'zw0kcxvhp5j0de086b5r7msl', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.164000', '2025-01-17 14:50:30.164000', '2025-01-17 14:50:30.165000', NULL, NULL, NULL),
(54, 'g3dnyosgdkzzbm7l4xe5ml87', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.176000', '2025-01-17 14:50:30.176000', '2025-01-17 14:50:30.176000', NULL, NULL, NULL),
(55, 'v59tsq1irk79cx4689e7vg09', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.187000', '2025-01-17 14:50:30.187000', '2025-01-17 14:50:30.187000', NULL, NULL, NULL),
(56, 'prn1s080vrctu7xn6drc3rb4', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.199000', '2025-01-17 14:50:30.199000', '2025-01-17 14:50:30.199000', NULL, NULL, NULL),
(57, 'cok5c0mgwlp03nllx0h7uisr', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.210000', '2025-01-17 14:50:30.210000', '2025-01-17 14:50:30.210000', NULL, NULL, NULL),
(58, 'e7jmgyurtriwhcw2gy16ksvd', 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.221000', '2025-01-17 14:50:30.221000', '2025-01-17 14:50:30.221000', NULL, NULL, NULL),
(59, 'btg3go5lat2jotcomr1voj6b', 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.232000', '2025-01-17 14:50:30.232000', '2025-01-17 14:50:30.233000', NULL, NULL, NULL),
(60, 'e454iecom7w1k8gpimuksw1f', 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.244000', '2025-01-17 14:50:30.244000', '2025-01-17 14:50:30.244000', NULL, NULL, NULL),
(61, 'afvnk7hgf30sxya4lluo2s4d', 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.255000', '2025-01-17 14:50:30.255000', '2025-01-17 14:50:30.255000', NULL, NULL, NULL),
(62, 'eh0kzm631z75wkwoho9p5mig', 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.267000', '2025-01-17 14:50:30.267000', '2025-01-17 14:50:30.267000', NULL, NULL, NULL),
(63, 'cqbwskqt1r85iypuw4matrw2', 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.278000', '2025-01-17 14:50:30.278000', '2025-01-17 14:50:30.278000', NULL, NULL, NULL),
(64, 'ioke0jqr49ic2hcb4ouejr7o', 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.291000', '2025-01-17 14:50:30.291000', '2025-01-17 14:50:30.291000', NULL, NULL, NULL),
(65, 'mwvqewfz1xpwcxmfxzmy0did', 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.302000', '2025-01-17 14:50:30.302000', '2025-01-17 14:50:30.303000', NULL, NULL, NULL),
(66, 'ugty773a2pk3m9ms2jricpzg', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.313000', '2025-01-17 14:50:30.313000', '2025-01-17 14:50:30.313000', NULL, NULL, NULL),
(67, 'ltbph8zwi8dxa51lbhhv3gfd', 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.324000', '2025-01-17 14:50:30.324000', '2025-01-17 14:50:30.324000', NULL, NULL, NULL),
(68, 'y1v7iqjjz1e3slml1ii038lt', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.334000', '2025-01-17 14:50:30.334000', '2025-01-17 14:50:30.334000', NULL, NULL, NULL),
(69, 'rjaxg61xny3id9mxwria1ndh', 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.348000', '2025-01-17 14:50:30.348000', '2025-01-17 14:50:30.348000', NULL, NULL, NULL),
(70, 'r5tr51mb3slfe3pvw6hib6f5', 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.360000', '2025-01-17 14:50:30.360000', '2025-01-17 14:50:30.360000', NULL, NULL, NULL),
(71, 'gg77lafhjvv9i0brxzlz4tl0', 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.372000', '2025-01-17 14:50:30.372000', '2025-01-17 14:50:30.372000', NULL, NULL, NULL),
(72, 'k6dcypr73cvq63ajtqowkskf', 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.382000', '2025-01-17 14:50:30.382000', '2025-01-17 14:50:30.383000', NULL, NULL, NULL),
(73, 'hd9qnrt6zfjagqgcozbcfljs', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.393000', '2025-01-17 14:50:30.393000', '2025-01-17 14:50:30.393000', NULL, NULL, NULL),
(74, 'r42virhsj4vjp55c1ptkcosv', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.404000', '2025-01-17 14:50:30.404000', '2025-01-17 14:50:30.404000', NULL, NULL, NULL),
(75, 'fhmte2c1yj9s1yt95a7m07w2', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.415000', '2025-01-17 14:50:30.415000', '2025-01-17 14:50:30.416000', NULL, NULL, NULL),
(76, 'jxprmzhh6p04ry40mxx8ypi5', 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.427000', '2025-01-17 14:50:30.427000', '2025-01-17 14:50:30.427000', NULL, NULL, NULL),
(77, 'c8evln4d4ylzltqnyihxs0oo', 'admin::users.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.438000', '2025-01-17 14:50:30.438000', '2025-01-17 14:50:30.438000', NULL, NULL, NULL),
(78, 'my0onst5vddgopnsa1584xsq', 'admin::users.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.449000', '2025-01-17 14:50:30.449000', '2025-01-17 14:50:30.449000', NULL, NULL, NULL),
(79, 'yd23zrogv9520uk7nrzvfzkl', 'admin::users.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.459000', '2025-01-17 14:50:30.459000', '2025-01-17 14:50:30.460000', NULL, NULL, NULL),
(80, 'zkc9asfrl9pydo83v6d0tntt', 'admin::users.delete', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.470000', '2025-01-17 14:50:30.470000', '2025-01-17 14:50:30.470000', NULL, NULL, NULL),
(81, 'sozuez3t1hl0ifwkkazengz2', 'admin::roles.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.480000', '2025-01-17 14:50:30.480000', '2025-01-17 14:50:30.480000', NULL, NULL, NULL),
(82, 'x2ajnpc5lazrzscqz0a6rbn7', 'admin::roles.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.491000', '2025-01-17 14:50:30.491000', '2025-01-17 14:50:30.491000', NULL, NULL, NULL),
(83, 'bpsvz4xi338gyby93y8hhehe', 'admin::roles.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.502000', '2025-01-17 14:50:30.502000', '2025-01-17 14:50:30.502000', NULL, NULL, NULL),
(84, 'lcvzzpycm0zkqfil70qi6rez', 'admin::roles.delete', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.512000', '2025-01-17 14:50:30.512000', '2025-01-17 14:50:30.513000', NULL, NULL, NULL),
(85, 'moila7elegruuvqqpkxsy9y5', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.524000', '2025-01-17 14:50:30.524000', '2025-01-17 14:50:30.524000', NULL, NULL, NULL),
(86, 'f225kd7mlbteavlmw5tb7nck', 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.539000', '2025-01-17 14:50:30.539000', '2025-01-17 14:50:30.539000', NULL, NULL, NULL),
(87, 't0k0cyrftvhi7cwce94oq8rp', 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.549000', '2025-01-17 14:50:30.549000', '2025-01-17 14:50:30.549000', NULL, NULL, NULL),
(88, 'o7rva3azk8cqbukrg6c9mn41', 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.559000', '2025-01-17 14:50:30.559000', '2025-01-17 14:50:30.559000', NULL, NULL, NULL),
(89, 'ay0l6b3k4sjr31o970frtc9c', 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.569000', '2025-01-17 14:50:30.569000', '2025-01-17 14:50:30.569000', NULL, NULL, NULL),
(90, 'xf0djpdi42dasr9evtbo2ov0', 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.579000', '2025-01-17 14:50:30.579000', '2025-01-17 14:50:30.580000', NULL, NULL, NULL),
(91, 'quehitaj56823x7gme5nut13', 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.591000', '2025-01-17 14:50:30.591000', '2025-01-17 14:50:30.591000', NULL, NULL, NULL),
(92, 'rpy4tuhcsfocany2qzt7iivf', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.603000', '2025-01-17 14:50:30.603000', '2025-01-17 14:50:30.603000', NULL, NULL, NULL),
(93, 'w7k49dxmze8hhdz1z5insl08', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.612000', '2025-01-17 14:50:30.612000', '2025-01-17 14:50:30.612000', NULL, NULL, NULL),
(94, 'idwq36nwezdl9j2dg9ibtnov', 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.623000', '2025-01-17 14:50:30.623000', '2025-01-17 14:50:30.624000', NULL, NULL, NULL),
(95, 'bvag2m4gi1muimu0gj41myc3', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.634000', '2025-01-17 14:50:30.634000', '2025-01-17 14:50:30.634000', NULL, NULL, NULL),
(96, 'uk88s4qthi1h0crz125ei432', 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.644000', '2025-01-17 14:50:30.644000', '2025-01-17 14:50:30.644000', NULL, NULL, NULL),
(97, 'iydc3ehay4o83j0rcy02t071', 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.656000', '2025-01-17 14:50:30.656000', '2025-01-17 14:50:30.656000', NULL, NULL, NULL),
(98, 'px9e8sub672h4rmohajurmha', 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2025-01-17 14:50:30.667000', '2025-01-17 14:50:30.667000', '2025-01-17 14:50:30.668000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_permissions_role_lnk`
--

CREATE TABLE `admin_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin_permissions_role_lnk`
--

INSERT INTO `admin_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 2, 7),
(8, 8, 2, 8),
(9, 9, 2, 9),
(10, 10, 2, 10),
(11, 11, 2, 11),
(12, 12, 2, 12),
(13, 13, 2, 13),
(14, 14, 2, 14),
(15, 15, 2, 15),
(16, 16, 2, 16),
(17, 17, 3, 1),
(18, 18, 3, 2),
(19, 19, 3, 3),
(20, 20, 3, 4),
(21, 21, 3, 5),
(22, 22, 3, 6),
(23, 23, 3, 7),
(24, 24, 3, 8),
(25, 25, 3, 9),
(26, 26, 3, 10),
(27, 27, 3, 11),
(28, 28, 3, 12),
(29, 29, 3, 13),
(30, 30, 3, 14),
(31, 31, 1, 1),
(32, 32, 1, 2),
(33, 33, 1, 3),
(34, 34, 1, 4),
(35, 35, 1, 5),
(36, 36, 1, 6),
(37, 37, 1, 7),
(38, 38, 1, 8),
(39, 39, 1, 9),
(40, 40, 1, 10),
(41, 41, 1, 11),
(42, 42, 1, 12),
(43, 43, 1, 13),
(44, 44, 1, 14),
(45, 45, 1, 15),
(46, 46, 1, 16),
(47, 47, 1, 17),
(48, 48, 1, 18),
(49, 49, 1, 19),
(50, 50, 1, 20),
(51, 51, 1, 21),
(52, 52, 1, 22),
(53, 53, 1, 23),
(54, 54, 1, 24),
(55, 55, 1, 25),
(56, 56, 1, 26),
(57, 57, 1, 27),
(58, 58, 1, 28),
(59, 59, 1, 29),
(60, 60, 1, 30),
(61, 61, 1, 31),
(62, 62, 1, 32),
(63, 63, 1, 33),
(64, 64, 1, 34),
(65, 65, 1, 35),
(66, 66, 1, 36),
(67, 67, 1, 37),
(68, 68, 1, 38),
(69, 69, 1, 39),
(70, 70, 1, 40),
(71, 71, 1, 41),
(72, 72, 1, 42),
(73, 73, 1, 43),
(74, 74, 1, 44),
(75, 75, 1, 45),
(76, 76, 1, 46),
(77, 77, 1, 47),
(78, 78, 1, 48),
(79, 79, 1, 49),
(80, 80, 1, 50),
(81, 81, 1, 51),
(82, 82, 1, 52),
(83, 83, 1, 53),
(84, 84, 1, 54),
(85, 85, 1, 55),
(86, 86, 1, 56),
(87, 87, 1, 57),
(88, 88, 1, 58),
(89, 89, 1, 59),
(90, 90, 1, 60),
(91, 91, 1, 61),
(92, 92, 1, 62),
(93, 93, 1, 63),
(94, 94, 1, 64),
(95, 95, 1, 65),
(96, 96, 1, 66),
(97, 97, 1, 67),
(98, 98, 1, 68);

-- --------------------------------------------------------

--
-- Structure de la table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `document_id`, `name`, `code`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'an141hkauksjvx2akcnqeqh4', 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2025-01-17 14:50:29.470000', '2025-01-17 14:50:29.470000', '2025-01-17 14:50:29.470000', NULL, NULL, NULL),
(2, 'zlq4scm6d4an0nb6kbfsybci', 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2025-01-17 14:50:29.483000', '2025-01-17 14:50:29.483000', '2025-01-17 14:50:29.483000', NULL, NULL, NULL),
(3, 'y00ybrfnz7zvv9b6eifcw2mf', 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2025-01-17 14:50:29.497000', '2025-01-17 14:50:29.497000', '2025-01-17 14:50:29.497000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `document_id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'mem3gmvw7g1q0bgnet1h8khn', 'fakhri', 'haj mbarek', NULL, 'fakkreddine10@gmail.com', '$2a$10$rMhApBq9wRfS3UnN3etMI.tNNmmsjJYAJpBYwALH99BlV3MX8qFIG', NULL, NULL, 1, 0, NULL, '2025-01-17 14:52:27.254000', '2025-01-17 14:52:27.254000', '2025-01-17 14:52:27.255000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_users_roles_lnk`
--

CREATE TABLE `admin_users_roles_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_ord` double UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin_users_roles_lnk`
--

INSERT INTO `admin_users_roles_lnk` (`id`, `user_id`, `role_id`, `role_ord`, `user_ord`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `boxes`
--

CREATE TABLE `boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boxes`
--

INSERT INTO `boxes` (`id`, `document_id`, `active`, `uid`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'm7817ekvjm676vv1zle995qd', 1, '238314431-07', '2025-01-18 14:51:16.855000', '2025-01-18 14:51:16.855000', NULL, NULL, NULL, NULL),
(2, 'kzs17ydyrcy6jlks5xp0w1b3', 0, '238314431-07', '2025-01-18 14:51:16.855000', '2025-01-22 10:32:16.478000', NULL, NULL, NULL, NULL),
(3, 'hyjk2pul2k594j5nkzfwuqgg', 1, '238314432-07', '2025-01-18 14:51:16.856000', '2025-01-18 14:51:16.856000', NULL, NULL, NULL, NULL),
(4, 'tqrfnmjr6uef5wvvazsi2wg6', 1, '154000535-07', '2025-01-18 14:51:16.856000', '2025-01-18 14:51:16.856000', NULL, NULL, NULL, NULL),
(5, 'ggqrlr93q6rapaxxnw0c15of', 1, '154000535-07', '2025-01-18 14:51:16.861000', '2025-01-18 14:51:16.861000', NULL, NULL, NULL, NULL),
(6, 'mky8w9ysgg1oirj1wtyov9vt', 1, '154000535-07', '2025-01-18 14:51:16.862000', '2025-01-18 14:51:16.862000', NULL, NULL, NULL, NULL),
(7, 'iti7jqw5u8dya999bzfu36y3', 1, '132004420-07', '2025-01-18 14:51:16.864000', '2025-01-18 14:51:16.864000', NULL, NULL, NULL, NULL),
(8, 'vxf51wckqn1na2n3hoj7bbzi', 1, '132004450-07', '2025-01-18 14:51:16.863000', '2025-01-18 14:51:16.863000', NULL, NULL, NULL, NULL),
(9, 'a2qv11u1xemxi3wjetlqlsjt', 1, '132008212-07', '2025-01-18 14:51:16.865000', '2025-01-18 14:51:16.865000', NULL, NULL, NULL, NULL),
(10, 'w815a5r3z5uzo0cah0z83c1d', 1, '132004420-07', '2025-01-18 14:51:16.865000', '2025-01-18 14:51:16.865000', NULL, NULL, NULL, NULL),
(12, 'hyjk2pul2k594j5nkzfwuqgg', 1, '238314432-07', '2025-01-18 14:51:16.856000', '2025-01-18 14:51:16.856000', '2025-01-18 14:51:16.893000', NULL, NULL, NULL),
(13, 'm7817ekvjm676vv1zle995qd', 1, '238314431-07', '2025-01-18 14:51:16.855000', '2025-01-18 14:51:16.855000', '2025-01-18 14:51:16.894000', NULL, NULL, NULL),
(14, 'tqrfnmjr6uef5wvvazsi2wg6', 1, '154000535-07', '2025-01-18 14:51:16.856000', '2025-01-18 14:51:16.856000', '2025-01-18 14:51:16.895000', NULL, NULL, NULL),
(15, 'mky8w9ysgg1oirj1wtyov9vt', 1, '154000535-07', '2025-01-18 14:51:16.862000', '2025-01-18 14:51:16.862000', '2025-01-18 14:51:16.896000', NULL, NULL, NULL),
(16, 'ggqrlr93q6rapaxxnw0c15of', 1, '154000535-07', '2025-01-18 14:51:16.861000', '2025-01-18 14:51:16.861000', '2025-01-18 14:51:16.896000', NULL, NULL, NULL),
(17, 'iti7jqw5u8dya999bzfu36y3', 1, '132004420-07', '2025-01-18 14:51:16.864000', '2025-01-18 14:51:16.864000', '2025-01-18 14:51:16.899000', NULL, NULL, NULL),
(18, 'vxf51wckqn1na2n3hoj7bbzi', 1, '132004450-07', '2025-01-18 14:51:16.863000', '2025-01-18 14:51:16.863000', '2025-01-18 14:51:16.900000', NULL, NULL, NULL),
(19, 'w815a5r3z5uzo0cah0z83c1d', 1, '132004420-07', '2025-01-18 14:51:16.865000', '2025-01-18 14:51:16.865000', '2025-01-18 14:51:16.900000', NULL, NULL, NULL),
(20, 'a2qv11u1xemxi3wjetlqlsjt', 1, '132008212-07', '2025-01-18 14:51:16.865000', '2025-01-18 14:51:16.865000', '2025-01-18 14:51:16.906000', NULL, NULL, NULL),
(21, 'pqh0y0yy35mi81x81o5urv17', 1, '132008212-07', '2025-01-18 14:51:16.984000', '2025-01-18 14:51:16.984000', NULL, NULL, NULL, NULL),
(22, 'cyz4us6zcm9koku1wtf8z34m', 1, '132008212-07', '2025-01-18 14:51:16.984000', '2025-01-18 14:51:16.984000', NULL, NULL, NULL, NULL),
(23, 'xbtygjoqwkyj98l38018d8pz', 1, '447001220-07', '2025-01-18 14:51:16.985000', '2025-01-18 14:51:16.985000', NULL, NULL, NULL, NULL),
(24, 'mz7pi75nsk4i9sc29t5k0pxm', 1, '447001220-07', '2025-01-18 14:51:16.991000', '2025-01-18 14:51:16.991000', NULL, NULL, NULL, NULL),
(25, 'flw0zgdj3pmfautsipojjn1e', 1, '447001220-07', '2025-01-18 14:51:16.992000', '2025-01-18 14:51:16.992000', NULL, NULL, NULL, NULL),
(26, 'viordwtq087ulxvc4ara0cfx', 1, '447000900-07', '2025-01-18 14:51:16.993000', '2025-01-18 14:51:16.993000', NULL, NULL, NULL, NULL),
(27, 'g4s5lg28xkq6lmdqunacx9sz', 1, '447300691-07', '2025-01-18 14:51:16.993000', '2025-01-18 14:51:16.993000', NULL, NULL, NULL, NULL),
(28, 'hihh34n21rm9wxrlz50rujdx', 1, '447000704-07', '2025-01-18 14:51:16.994000', '2025-01-18 14:51:16.994000', NULL, NULL, NULL, NULL),
(29, 'jxuc9gle50nh5irmktt6vqp5', 1, '447300691-07', '2025-01-18 14:51:16.995000', '2025-01-18 14:51:16.995000', NULL, NULL, NULL, NULL),
(30, 'a26myxl5nig752sjlzrcgp8x', 1, '447000900-07', '2025-01-18 14:51:17.001000', '2025-01-18 14:51:17.001000', NULL, NULL, NULL, NULL),
(31, 'xbtygjoqwkyj98l38018d8pz', 1, '447001220-07', '2025-01-18 14:51:16.985000', '2025-01-18 14:51:16.985000', '2025-01-18 14:51:17.008000', NULL, NULL, NULL),
(32, 'cyz4us6zcm9koku1wtf8z34m', 1, '132008212-07', '2025-01-18 14:51:16.984000', '2025-01-18 14:51:16.984000', '2025-01-18 14:51:17.013000', NULL, NULL, NULL),
(33, 'pqh0y0yy35mi81x81o5urv17', 1, '132008212-07', '2025-01-18 14:51:16.984000', '2025-01-18 14:51:16.984000', '2025-01-18 14:51:17.019000', NULL, NULL, NULL),
(34, 'mz7pi75nsk4i9sc29t5k0pxm', 1, '447001220-07', '2025-01-18 14:51:16.991000', '2025-01-18 14:51:16.991000', '2025-01-18 14:51:17.023000', NULL, NULL, NULL),
(35, 'flw0zgdj3pmfautsipojjn1e', 1, '447001220-07', '2025-01-18 14:51:16.992000', '2025-01-18 14:51:16.992000', '2025-01-18 14:51:17.024000', NULL, NULL, NULL),
(36, 'viordwtq087ulxvc4ara0cfx', 1, '447000900-07', '2025-01-18 14:51:16.993000', '2025-01-18 14:51:16.993000', '2025-01-18 14:51:17.028000', NULL, NULL, NULL),
(37, 'g4s5lg28xkq6lmdqunacx9sz', 1, '447300691-07', '2025-01-18 14:51:16.993000', '2025-01-18 14:51:16.993000', '2025-01-18 14:51:17.029000', NULL, NULL, NULL),
(38, 'hihh34n21rm9wxrlz50rujdx', 1, '447000704-07', '2025-01-18 14:51:16.994000', '2025-01-18 14:51:16.994000', '2025-01-18 14:51:17.030000', NULL, NULL, NULL),
(39, 'jxuc9gle50nh5irmktt6vqp5', 1, '447300691-07', '2025-01-18 14:51:16.995000', '2025-01-18 14:51:16.995000', '2025-01-18 14:51:17.030000', NULL, NULL, NULL),
(40, 'a26myxl5nig752sjlzrcgp8x', 1, '447000900-07', '2025-01-18 14:51:17.001000', '2025-01-18 14:51:17.001000', '2025-01-18 14:51:17.045000', NULL, NULL, NULL),
(41, 'srb9drgu6ybt1votp5duayar', 1, '447000704-07', '2025-01-18 14:51:17.112000', '2025-01-18 14:51:17.112000', NULL, NULL, NULL, NULL),
(42, 'ljeykxjjdhephjsa5xvpq9ei', 1, '390052130-07', '2025-01-18 14:51:17.124000', '2025-01-18 14:51:17.124000', NULL, NULL, NULL, NULL),
(43, 'u6x9pwz7a2lpoe9600kgiznn', 1, '390052130-07', '2025-01-18 14:51:17.193000', '2025-01-18 14:51:17.193000', NULL, NULL, NULL, NULL),
(44, 'dftvup9rt45jxphhbylmieyg', 1, '390052130-07', '2025-01-18 14:51:17.202000', '2025-01-18 14:51:17.202000', NULL, NULL, NULL, NULL),
(45, 'eqa342iun7ia64ph6p7eunql', 1, '390052130-07', '2025-01-18 14:51:17.203000', '2025-01-18 14:51:17.203000', NULL, NULL, NULL, NULL),
(46, 'c4w9z3h0s7novstkt6lac36o', 1, '390052130-07', '2025-01-18 14:51:17.213000', '2025-01-18 14:51:17.213000', NULL, NULL, NULL, NULL),
(47, 'srb9drgu6ybt1votp5duayar', 1, '447000704-07', '2025-01-18 14:51:17.112000', '2025-01-18 14:51:17.112000', '2025-01-18 14:51:17.183000', NULL, NULL, NULL),
(48, 'ljeykxjjdhephjsa5xvpq9ei', 1, '390052130-07', '2025-01-18 14:51:17.124000', '2025-01-18 14:51:17.124000', '2025-01-18 14:51:17.193000', NULL, NULL, NULL),
(49, 'ei8alj9hr7sjg1zndzhulssm', 1, '390052130-07', '2025-01-18 14:51:17.216000', '2025-01-18 14:51:17.216000', NULL, NULL, NULL, NULL),
(50, 'u6x9pwz7a2lpoe9600kgiznn', 1, '390052130-07', '2025-01-18 14:51:17.193000', '2025-01-18 14:51:17.193000', '2025-01-18 14:51:17.229000', NULL, NULL, NULL),
(51, 'dftvup9rt45jxphhbylmieyg', 1, '390052130-07', '2025-01-18 14:51:17.202000', '2025-01-18 14:51:17.202000', '2025-01-18 14:51:17.249000', NULL, NULL, NULL),
(52, 'eqa342iun7ia64ph6p7eunql', 1, '390052130-07', '2025-01-18 14:51:17.203000', '2025-01-18 14:51:17.203000', '2025-01-18 14:51:17.250000', NULL, NULL, NULL),
(53, 'c4w9z3h0s7novstkt6lac36o', 1, '390052130-07', '2025-01-18 14:51:17.213000', '2025-01-18 14:51:17.213000', '2025-01-18 14:51:17.263000', NULL, NULL, NULL),
(54, 'ei8alj9hr7sjg1zndzhulssm', 1, '390052130-07', '2025-01-18 14:51:17.216000', '2025-01-18 14:51:17.216000', '2025-01-18 14:51:17.272000', NULL, NULL, NULL),
(55, 'o2l4wkbn0s79iu7z4ijkvatf', 1, '390052130-07', '2025-01-18 14:51:17.311000', '2025-01-18 14:51:17.311000', NULL, NULL, NULL, NULL),
(56, 's96j3ksikj6pbkhuy8lxhxz0', 1, '390052130-07', '2025-01-18 14:51:17.316000', '2025-01-18 14:51:17.316000', NULL, NULL, NULL, NULL),
(57, 't7gwzylzxhhj49ym1j78fc7k', 1, '390052130-07', '2025-01-18 14:51:17.321000', '2025-01-18 14:51:17.321000', NULL, NULL, NULL, NULL),
(58, 'uudtky2j093gir0ec2p0zrlc', 1, '390052130-07', '2025-01-18 14:51:17.322000', '2025-01-18 14:51:17.322000', NULL, NULL, NULL, NULL),
(59, 'fhrmwc6phtrkj2sox1334vlb', 1, '132004450-07', '2025-01-18 14:51:17.322000', '2025-01-18 14:51:17.322000', NULL, NULL, NULL, NULL),
(60, 'r9nq2guxj2l7ltcmi3cp6yfl', 1, '132004450-07', '2025-01-18 14:51:17.347000', '2025-01-18 14:51:17.347000', NULL, NULL, NULL, NULL),
(61, 'z1gtabqqkw1yw77jgasomfjj', 1, '390052130-07', '2025-01-18 14:51:17.355000', '2025-01-18 14:51:17.355000', NULL, NULL, NULL, NULL),
(62, 'zawga7tyv55f3h3r98pqgenz', 1, '450510002-07', '2025-01-18 14:51:17.365000', '2025-01-18 14:51:17.365000', NULL, NULL, NULL, NULL),
(63, 'wqfqtsfdivkmd8321q65rmj9', 1, '132004450-07', '2025-01-18 14:51:17.367000', '2025-01-18 14:51:17.367000', NULL, NULL, NULL, NULL),
(64, 'xkh78f5qatb5uwc1cplacfj8', 1, '450510002-07', '2025-01-18 14:51:17.374000', '2025-01-18 14:51:17.374000', NULL, NULL, NULL, NULL),
(65, 'o2l4wkbn0s79iu7z4ijkvatf', 1, '390052130-07', '2025-01-18 14:51:17.311000', '2025-01-18 14:51:17.311000', '2025-01-18 14:51:17.354000', NULL, NULL, NULL),
(66, 's96j3ksikj6pbkhuy8lxhxz0', 1, '390052130-07', '2025-01-18 14:51:17.316000', '2025-01-18 14:51:17.316000', '2025-01-18 14:51:17.367000', NULL, NULL, NULL),
(67, 'uudtky2j093gir0ec2p0zrlc', 1, '390052130-07', '2025-01-18 14:51:17.322000', '2025-01-18 14:51:17.322000', '2025-01-18 14:51:17.371000', NULL, NULL, NULL),
(68, 'fhrmwc6phtrkj2sox1334vlb', 1, '132004450-07', '2025-01-18 14:51:17.322000', '2025-01-18 14:51:17.322000', '2025-01-18 14:51:17.372000', NULL, NULL, NULL),
(69, 't7gwzylzxhhj49ym1j78fc7k', 1, '390052130-07', '2025-01-18 14:51:17.321000', '2025-01-18 14:51:17.321000', '2025-01-18 14:51:17.375000', NULL, NULL, NULL),
(70, 'r9nq2guxj2l7ltcmi3cp6yfl', 1, '132004450-07', '2025-01-18 14:51:17.347000', '2025-01-18 14:51:17.347000', '2025-01-18 14:51:17.402000', NULL, NULL, NULL),
(71, 'z1gtabqqkw1yw77jgasomfjj', 1, '390052130-07', '2025-01-18 14:51:17.355000', '2025-01-18 14:51:17.355000', '2025-01-18 14:51:17.403000', NULL, NULL, NULL),
(72, 'wqfqtsfdivkmd8321q65rmj9', 1, '132004450-07', '2025-01-18 14:51:17.367000', '2025-01-18 14:51:17.367000', '2025-01-18 14:51:17.410000', NULL, NULL, NULL),
(73, 'zawga7tyv55f3h3r98pqgenz', 1, '450510002-07', '2025-01-18 14:51:17.365000', '2025-01-18 14:51:17.365000', '2025-01-18 14:51:17.411000', NULL, NULL, NULL),
(74, 'xkh78f5qatb5uwc1cplacfj8', 1, '450510002-07', '2025-01-18 14:51:17.374000', '2025-01-18 14:51:17.374000', '2025-01-18 14:51:17.416000', NULL, NULL, NULL),
(75, 'jk7ahuorrv8987td179uz0sj', 1, '450510005-07', '2025-01-18 14:51:17.461000', '2025-01-18 14:51:17.461000', NULL, NULL, NULL, NULL),
(76, 'oklni3i0q2qo24fdzyh72jxg', 1, '450510002-07', '2025-01-18 14:51:17.469000', '2025-01-18 14:51:17.469000', NULL, NULL, NULL, NULL),
(77, 'y2xvemj39oi9te1gxqmkrcry', 1, '450510005-07', '2025-01-18 14:51:17.473000', '2025-01-18 14:51:17.473000', NULL, NULL, NULL, NULL),
(78, 'jdlejpntbdt5n6otaw737zpo', 1, '450510005-07', '2025-01-18 14:51:17.474000', '2025-01-18 14:51:17.474000', NULL, NULL, NULL, NULL),
(79, 'mzh5s75j2ky3tb26yraz01dp', 1, '450510005-07', '2025-01-18 14:51:17.490000', '2025-01-18 14:51:17.490000', NULL, NULL, NULL, NULL),
(80, 'ni7gfkfhoa66watadgdwizk0', 1, '450510005-07', '2025-01-18 14:51:17.516000', '2025-01-18 14:51:17.516000', NULL, NULL, NULL, NULL),
(81, 'z55lwmqmkfyvfpnbccwu7gn3', 1, '450510005-07', '2025-01-18 14:51:17.523000', '2025-01-18 14:51:17.523000', NULL, NULL, NULL, NULL),
(82, 'orl49jcjbk4fmusdjtnkq7ts', 1, '450510005-07', '2025-01-18 14:51:17.523000', '2025-01-18 14:51:17.523000', NULL, NULL, NULL, NULL),
(83, 'jk7ahuorrv8987td179uz0sj', 1, '450510005-07', '2025-01-18 14:51:17.461000', '2025-01-18 14:51:17.461000', '2025-01-18 14:51:17.515000', NULL, NULL, NULL),
(84, 'oklni3i0q2qo24fdzyh72jxg', 1, '450510002-07', '2025-01-18 14:51:17.469000', '2025-01-18 14:51:17.469000', '2025-01-18 14:51:17.521000', NULL, NULL, NULL),
(85, 'ces13k1304j9orcwq6xh4gxe', 1, '450516301-07', '2025-01-18 14:51:17.546000', '2025-01-18 14:51:17.546000', NULL, NULL, NULL, NULL),
(86, 'y2xvemj39oi9te1gxqmkrcry', 1, '450510005-07', '2025-01-18 14:51:17.473000', '2025-01-18 14:51:17.473000', '2025-01-18 14:51:17.525000', NULL, NULL, NULL),
(87, 'jdlejpntbdt5n6otaw737zpo', 1, '450510005-07', '2025-01-18 14:51:17.474000', '2025-01-18 14:51:17.474000', '2025-01-18 14:51:17.529000', NULL, NULL, NULL),
(88, 'rg52vthdamd20hg3psz70pet', 1, '450535417-07', '2025-01-18 14:51:17.550000', '2025-01-18 14:51:17.550000', NULL, NULL, NULL, NULL),
(89, 'mzh5s75j2ky3tb26yraz01dp', 1, '450510005-07', '2025-01-18 14:51:17.490000', '2025-01-18 14:51:17.490000', '2025-01-18 14:51:17.548000', NULL, NULL, NULL),
(90, 'ni7gfkfhoa66watadgdwizk0', 1, '450510005-07', '2025-01-18 14:51:17.516000', '2025-01-18 14:51:17.516000', '2025-01-18 14:51:17.553000', NULL, NULL, NULL),
(91, 'z55lwmqmkfyvfpnbccwu7gn3', 1, '450510005-07', '2025-01-18 14:51:17.523000', '2025-01-18 14:51:17.523000', '2025-01-18 14:51:17.561000', NULL, NULL, NULL),
(92, 'orl49jcjbk4fmusdjtnkq7ts', 1, '450510005-07', '2025-01-18 14:51:17.523000', '2025-01-18 14:51:17.523000', '2025-01-18 14:51:17.562000', NULL, NULL, NULL),
(93, 'wbr45iw77vlu6e7id1wvgh2y', 1, '450535417-07', '2025-01-18 14:51:17.604000', '2025-01-18 14:51:17.604000', NULL, NULL, NULL, NULL),
(94, 'armolddmdqomx8eyclrasasa', 1, '231009269-07', '2025-01-18 14:51:17.606000', '2025-01-18 14:51:17.606000', NULL, NULL, NULL, NULL),
(95, 'wg6u6h0hi73ds7twlg1he872', 1, '231032123-07', '2025-01-18 14:51:17.612000', '2025-01-18 14:51:17.612000', NULL, NULL, NULL, NULL),
(96, 'ldx0pyeldp8ykhuyq06p08jz', 1, '231740022-07', '2025-01-18 14:51:17.615000', '2025-01-18 14:51:17.615000', NULL, NULL, NULL, NULL),
(97, 'ces13k1304j9orcwq6xh4gxe', 1, '450516301-07', '2025-01-18 14:51:17.546000', '2025-01-18 14:51:17.546000', '2025-01-18 14:51:17.597000', NULL, NULL, NULL),
(98, 'rg52vthdamd20hg3psz70pet', 1, '450535417-07', '2025-01-18 14:51:17.550000', '2025-01-18 14:51:17.550000', '2025-01-18 14:51:17.603000', NULL, NULL, NULL),
(99, 'p61lhf4q6sr4lxjmtk0aoxsm', 1, '450510002-07', '2025-01-18 14:51:17.637000', '2025-01-18 14:51:17.637000', NULL, NULL, NULL, NULL),
(100, 'j36upshqu6irtb70m3vakw06', 1, '390052130-07', '2025-01-18 14:51:17.645000', '2025-01-18 14:51:17.645000', NULL, NULL, NULL, NULL),
(101, 'kfgiaonmgjmttv0jot48zy6k', 1, '450510002-07', '2025-01-18 14:51:17.659000', '2025-01-18 14:51:17.659000', NULL, NULL, NULL, NULL),
(102, 'psdhfxk823s2m9mgxkvdu5xf', 1, '390052130-07', '2025-01-18 14:51:17.665000', '2025-01-18 14:51:17.665000', NULL, NULL, NULL, NULL),
(103, 'wbr45iw77vlu6e7id1wvgh2y', 1, '450535417-07', '2025-01-18 14:51:17.604000', '2025-01-18 14:51:17.604000', '2025-01-18 14:51:17.648000', NULL, NULL, NULL),
(104, 'armolddmdqomx8eyclrasasa', 1, '231009269-07', '2025-01-18 14:51:17.606000', '2025-01-18 14:51:17.606000', '2025-01-18 14:51:17.649000', NULL, NULL, NULL),
(105, 'zuk23nbxa1mkj0x0bgb500ub', 1, '390052130-07', '2025-01-18 14:51:17.677000', '2025-01-18 14:51:17.677000', NULL, NULL, NULL, NULL),
(106, 'wg6u6h0hi73ds7twlg1he872', 1, '231032123-07', '2025-01-18 14:51:17.612000', '2025-01-18 14:51:17.612000', '2025-01-18 14:51:17.655000', NULL, NULL, NULL),
(107, 'ldx0pyeldp8ykhuyq06p08jz', 1, '231740022-07', '2025-01-18 14:51:17.615000', '2025-01-18 14:51:17.615000', '2025-01-18 14:51:17.656000', NULL, NULL, NULL),
(108, 'rhsf2v2rzbrzst3amwqaas8i', 1, '450516301-07', '2025-01-18 14:51:17.681000', '2025-01-18 14:51:17.681000', NULL, NULL, NULL, NULL),
(109, 'p61lhf4q6sr4lxjmtk0aoxsm', 1, '450510002-07', '2025-01-18 14:51:17.637000', '2025-01-18 14:51:17.637000', '2025-01-18 14:51:17.680000', NULL, NULL, NULL),
(110, 'j36upshqu6irtb70m3vakw06', 1, '390052130-07', '2025-01-18 14:51:17.645000', '2025-01-18 14:51:17.645000', '2025-01-18 14:51:17.687000', NULL, NULL, NULL),
(111, 'kfgiaonmgjmttv0jot48zy6k', 1, '450510002-07', '2025-01-18 14:51:17.659000', '2025-01-18 14:51:17.659000', '2025-01-18 14:51:17.697000', NULL, NULL, NULL),
(112, 'o61om5btuh9i9mhosugqumt3', 1, '231758040-07', '2025-01-18 14:51:17.730000', '2025-01-18 14:51:17.730000', NULL, NULL, NULL, NULL),
(113, 'pwexopop7hb7kwf3a1zhi8q2', 1, '231740022-07', '2025-01-18 14:51:17.734000', '2025-01-18 14:51:17.734000', NULL, NULL, NULL, NULL),
(114, 'psdhfxk823s2m9mgxkvdu5xf', 1, '390052130-07', '2025-01-18 14:51:17.665000', '2025-01-18 14:51:17.665000', '2025-01-18 14:51:17.707000', NULL, NULL, NULL),
(115, 'zuk23nbxa1mkj0x0bgb500ub', 1, '390052130-07', '2025-01-18 14:51:17.677000', '2025-01-18 14:51:17.677000', '2025-01-18 14:51:17.716000', NULL, NULL, NULL),
(116, 'lckdi3yxwg1qhn78b192247e', 1, '231758040-07', '2025-01-18 14:51:17.736000', '2025-01-18 14:51:17.736000', NULL, NULL, NULL, NULL),
(117, 'o2cerg91ndoalk9u3mxdwd37', 1, '231008645-07', '2025-01-18 14:51:17.740000', '2025-01-18 14:51:17.740000', NULL, NULL, NULL, NULL),
(118, 'rhsf2v2rzbrzst3amwqaas8i', 1, '450516301-07', '2025-01-18 14:51:17.681000', '2025-01-18 14:51:17.681000', '2025-01-18 14:51:17.725000', NULL, NULL, NULL),
(119, 'ewnrwli8682gi17ur5y4c000', 1, '231008645-07', '2025-01-18 14:51:17.767000', '2025-01-18 14:51:17.767000', NULL, NULL, NULL, NULL),
(120, 'nrdg347k35828l55ipiy58mc', 1, '231008645-07', '2025-01-18 14:51:17.786000', '2025-01-18 14:51:17.786000', NULL, NULL, NULL, NULL),
(121, 'fgovs3yp7cdzgadw4mrf8ri2', 1, '231008645-07', '2025-01-18 14:51:17.802000', '2025-01-18 14:51:17.802000', NULL, NULL, NULL, NULL),
(122, 'o61om5btuh9i9mhosugqumt3', 1, '231758040-07', '2025-01-18 14:51:17.730000', '2025-01-18 14:51:17.730000', '2025-01-18 14:51:17.783000', NULL, NULL, NULL),
(123, 'ucbisfcdngfst7hbarzy55pe', 1, '231008645-07', '2025-01-18 14:51:17.806000', '2025-01-18 14:51:17.806000', NULL, NULL, NULL, NULL),
(124, 'tzx42l1onwlrwv9iw7k8h9n4', 1, '231088053-07', '2025-01-18 14:51:17.810000', '2025-01-18 14:51:17.810000', NULL, NULL, NULL, NULL),
(125, 'pwexopop7hb7kwf3a1zhi8q2', 1, '231740022-07', '2025-01-18 14:51:17.734000', '2025-01-18 14:51:17.734000', '2025-01-18 14:51:17.787000', NULL, NULL, NULL),
(126, 'lckdi3yxwg1qhn78b192247e', 1, '231758040-07', '2025-01-18 14:51:17.736000', '2025-01-18 14:51:17.736000', '2025-01-18 14:51:17.790000', NULL, NULL, NULL),
(127, 'cg0i47s7srzizrzapq97xioh', 1, '231088053-07', '2025-01-18 14:51:17.813000', '2025-01-18 14:51:17.813000', NULL, NULL, NULL, NULL),
(128, 'o2cerg91ndoalk9u3mxdwd37', 1, '231008645-07', '2025-01-18 14:51:17.740000', '2025-01-18 14:51:17.740000', '2025-01-18 14:51:17.792000', NULL, NULL, NULL),
(129, 'ewnrwli8682gi17ur5y4c000', 1, '231008645-07', '2025-01-18 14:51:17.767000', '2025-01-18 14:51:17.767000', '2025-01-18 14:51:17.815000', NULL, NULL, NULL),
(130, 'nrdg347k35828l55ipiy58mc', 1, '231008645-07', '2025-01-18 14:51:17.786000', '2025-01-18 14:51:17.786000', '2025-01-18 14:51:17.821000', NULL, NULL, NULL),
(131, 'auezecfznvxqcdq9vdsbgeb3', 1, '231088053-07', '2025-01-18 14:51:17.858000', '2025-01-18 14:51:17.858000', NULL, NULL, NULL, NULL),
(132, 'fgovs3yp7cdzgadw4mrf8ri2', 1, '231008645-07', '2025-01-18 14:51:17.802000', '2025-01-18 14:51:17.802000', '2025-01-18 14:51:17.836000', NULL, NULL, NULL),
(133, 'ucbisfcdngfst7hbarzy55pe', 1, '231008645-07', '2025-01-18 14:51:17.806000', '2025-01-18 14:51:17.806000', '2025-01-18 14:51:17.840000', NULL, NULL, NULL),
(134, 'h46p08asq7rpct124lx0fhu5', 1, '231008645-07', '2025-01-18 14:51:17.866000', '2025-01-18 14:51:17.866000', NULL, NULL, NULL, NULL),
(135, 'tzx42l1onwlrwv9iw7k8h9n4', 1, '231088053-07', '2025-01-18 14:51:17.810000', '2025-01-18 14:51:17.810000', '2025-01-18 14:51:17.844000', NULL, NULL, NULL),
(136, 'u2ak0k7nady0g0qlnpvplvlo', 1, '231088053-07', '2025-01-18 14:51:17.870000', '2025-01-18 14:51:17.870000', NULL, NULL, NULL, NULL),
(137, 'tsdkeiiam162l1jj78gzjwu9', 1, '231088053-07', '2025-01-18 14:51:17.870000', '2025-01-18 14:51:17.870000', NULL, NULL, NULL, NULL),
(138, 'cg0i47s7srzizrzapq97xioh', 1, '231088053-07', '2025-01-18 14:51:17.813000', '2025-01-18 14:51:17.813000', '2025-01-18 14:51:17.854000', NULL, NULL, NULL),
(139, 'lxhs8moeq88hi81br53d0tty', 1, '231088053-07', '2025-01-18 14:51:17.895000', '2025-01-18 14:51:17.895000', NULL, NULL, NULL, NULL),
(140, 'bgu2iicmbvdkutkb9gy8q295', 1, '231088053-07', '2025-01-18 14:51:17.914000', '2025-01-18 14:51:17.914000', NULL, NULL, NULL, NULL),
(141, 'g2d4x9vag8p4bvgi55c6zunc', 1, '231088053-07', '2025-01-18 14:51:17.929000', '2025-01-18 14:51:17.929000', NULL, NULL, NULL, NULL),
(142, 'auezecfznvxqcdq9vdsbgeb3', 1, '231088053-07', '2025-01-18 14:51:17.858000', '2025-01-18 14:51:17.858000', '2025-01-18 14:51:17.903000', NULL, NULL, NULL),
(143, 'f6o0s12z8w4nvr6y9oivfeme', 1, '231072053-07', '2025-01-18 14:51:17.932000', '2025-01-18 14:51:17.932000', NULL, NULL, NULL, NULL),
(144, 'tc3vw2cw6tjz2f5ov4ev77ff', 1, '231072053-07', '2025-01-18 14:51:17.933000', '2025-01-18 14:51:17.933000', NULL, NULL, NULL, NULL),
(145, 'h46p08asq7rpct124lx0fhu5', 1, '231008645-07', '2025-01-18 14:51:17.866000', '2025-01-18 14:51:17.866000', '2025-01-18 14:51:17.916000', NULL, NULL, NULL),
(146, 'xmfcepi4px5qxzdhuri5bi42', 1, '231072053-07', '2025-01-18 14:51:17.939000', '2025-01-18 14:51:17.939000', NULL, NULL, NULL, NULL),
(147, 'tsdkeiiam162l1jj78gzjwu9', 1, '231088053-07', '2025-01-18 14:51:17.870000', '2025-01-18 14:51:17.870000', '2025-01-18 14:51:17.919000', NULL, NULL, NULL),
(148, 'u2ak0k7nady0g0qlnpvplvlo', 1, '231088053-07', '2025-01-18 14:51:17.870000', '2025-01-18 14:51:17.870000', '2025-01-18 14:51:17.919000', NULL, NULL, NULL),
(149, 'lxhs8moeq88hi81br53d0tty', 1, '231088053-07', '2025-01-18 14:51:17.895000', '2025-01-18 14:51:17.895000', '2025-01-18 14:51:17.947000', NULL, NULL, NULL),
(150, 'bgu2iicmbvdkutkb9gy8q295', 1, '231088053-07', '2025-01-18 14:51:17.914000', '2025-01-18 14:51:17.914000', '2025-01-18 14:51:17.951000', NULL, NULL, NULL),
(151, 'z7foe1tskyjc5cwg2kmrl3h4', 1, '231072053-07', '2025-01-18 14:51:17.989000', '2025-01-18 14:51:17.989000', NULL, NULL, NULL, NULL),
(152, 'g2d4x9vag8p4bvgi55c6zunc', 1, '231088053-07', '2025-01-18 14:51:17.929000', '2025-01-18 14:51:17.929000', '2025-01-18 14:51:17.964000', NULL, NULL, NULL),
(153, 'tc3vw2cw6tjz2f5ov4ev77ff', 1, '231072053-07', '2025-01-18 14:51:17.933000', '2025-01-18 14:51:17.933000', '2025-01-18 14:51:17.969000', NULL, NULL, NULL),
(154, 'qir0fjbj5obehind6bogw3by', 1, '231072053-07', '2025-01-18 14:51:17.992000', '2025-01-18 14:51:17.992000', NULL, NULL, NULL, NULL),
(155, 'f6o0s12z8w4nvr6y9oivfeme', 1, '231072053-07', '2025-01-18 14:51:17.932000', '2025-01-18 14:51:17.932000', '2025-01-18 14:51:17.974000', NULL, NULL, NULL),
(156, 'e91yge8jmp78xfn53tmke1x1', 1, '231072053-07', '2025-01-18 14:51:17.999000', '2025-01-18 14:51:17.999000', NULL, NULL, NULL, NULL),
(157, 'hfq2ngs3lfhz5pgywdqwlxde', 1, '231072053-07', '2025-01-18 14:51:18.000000', '2025-01-18 14:51:18.000000', NULL, NULL, NULL, NULL),
(158, 'xmfcepi4px5qxzdhuri5bi42', 1, '231072053-07', '2025-01-18 14:51:17.939000', '2025-01-18 14:51:17.939000', '2025-01-18 14:51:17.980000', NULL, NULL, NULL),
(159, 'c0n7ezgl7zy2t1gfpkxpp20g', 1, '231035365-07', '2025-01-18 14:51:18.031000', '2025-01-18 14:51:18.031000', NULL, NULL, NULL, NULL),
(160, 't68pkonkpqvgrir9xx01z914', 1, '231035365-07', '2025-01-18 14:51:18.040000', '2025-01-18 14:51:18.040000', NULL, NULL, NULL, NULL),
(161, 'zvgs1ethcrx019hxuz730bf5', 1, '231035365-07', '2025-01-18 14:51:18.051000', '2025-01-18 14:51:18.051000', NULL, NULL, NULL, NULL),
(162, 'ygjoxufcfq8ul8dpfx2rr040', 1, '231035365-07', '2025-01-18 14:51:18.055000', '2025-01-18 14:51:18.055000', NULL, NULL, NULL, NULL),
(163, 'z7foe1tskyjc5cwg2kmrl3h4', 1, '231072053-07', '2025-01-18 14:51:17.989000', '2025-01-18 14:51:17.989000', '2025-01-18 14:51:18.029000', NULL, NULL, NULL),
(164, 'qir0fjbj5obehind6bogw3by', 1, '231072053-07', '2025-01-18 14:51:17.992000', '2025-01-18 14:51:17.992000', '2025-01-18 14:51:18.036000', NULL, NULL, NULL),
(165, 'stjwxz375jr1yer0h2gjwchh', 1, '231035365-07', '2025-01-18 14:51:18.060000', '2025-01-18 14:51:18.060000', NULL, NULL, NULL, NULL),
(166, 'wo349p3w9x1urb5j2vlepi7f', 1, '231035365-07', '2025-01-18 14:51:18.066000', '2025-01-18 14:51:18.066000', NULL, NULL, NULL, NULL),
(167, 'hfq2ngs3lfhz5pgywdqwlxde', 1, '231072053-07', '2025-01-18 14:51:18.000000', '2025-01-18 14:51:18.000000', '2025-01-18 14:51:18.045000', NULL, NULL, NULL),
(168, 'e91yge8jmp78xfn53tmke1x1', 1, '231072053-07', '2025-01-18 14:51:17.999000', '2025-01-18 14:51:17.999000', '2025-01-18 14:51:18.050000', NULL, NULL, NULL),
(169, 'c0n7ezgl7zy2t1gfpkxpp20g', 1, '231035365-07', '2025-01-18 14:51:18.031000', '2025-01-18 14:51:18.031000', '2025-01-18 14:51:18.072000', NULL, NULL, NULL),
(170, 't68pkonkpqvgrir9xx01z914', 1, '231035365-07', '2025-01-18 14:51:18.040000', '2025-01-18 14:51:18.040000', '2025-01-18 14:51:18.077000', NULL, NULL, NULL),
(171, 'rtogbn8wjy8se0bcce4zrtne', 1, '231035365-07', '2025-01-18 14:51:18.114000', '2025-01-18 14:51:18.114000', NULL, NULL, NULL, NULL),
(172, 'zvgs1ethcrx019hxuz730bf5', 1, '231035365-07', '2025-01-18 14:51:18.051000', '2025-01-18 14:51:18.051000', '2025-01-18 14:51:18.087000', NULL, NULL, NULL),
(173, 'ygjoxufcfq8ul8dpfx2rr040', 1, '231035365-07', '2025-01-18 14:51:18.055000', '2025-01-18 14:51:18.055000', '2025-01-18 14:51:18.088000', NULL, NULL, NULL),
(174, 'b9hku3cmfrpuyqgepp2rj9s5', 1, '231035365-07', '2025-01-18 14:51:18.121000', '2025-01-18 14:51:18.121000', NULL, NULL, NULL, NULL),
(175, 'stjwxz375jr1yer0h2gjwchh', 1, '231035365-07', '2025-01-18 14:51:18.060000', '2025-01-18 14:51:18.060000', '2025-01-18 14:51:18.095000', NULL, NULL, NULL),
(176, 'zj3jnqkj303paurel4ctq399', 1, '231035365-07', '2025-01-18 14:51:18.125000', '2025-01-18 14:51:18.125000', NULL, NULL, NULL, NULL),
(177, 'wo349p3w9x1urb5j2vlepi7f', 1, '231035365-07', '2025-01-18 14:51:18.066000', '2025-01-18 14:51:18.066000', '2025-01-18 14:51:18.102000', NULL, NULL, NULL),
(178, 'pp84ujj87iuscuyiwqd6a2bq', 1, '231035365-07', '2025-01-18 14:51:18.128000', '2025-01-18 14:51:18.128000', NULL, NULL, NULL, NULL),
(179, 'rjwd9p90fvm3mfhovyy9k8ew', 1, '231035365-07', '2025-01-18 14:51:18.169000', '2025-01-18 14:51:18.169000', NULL, NULL, NULL, NULL),
(180, 'f0ks4ebx2w9ztow0m8cg5e1v', 1, '231035365-07', '2025-01-18 14:51:18.170000', '2025-01-18 14:51:18.170000', NULL, NULL, NULL, NULL),
(181, 'x9wkef3qtgh91stpjgmucsyy', 1, '231035365-07', '2025-01-18 14:51:18.178000', '2025-01-18 14:51:18.178000', NULL, NULL, NULL, NULL),
(182, 'zj5ezjimql6lp5malis5hqvr', 1, '231035365-07', '2025-01-18 14:51:18.182000', '2025-01-18 14:51:18.182000', NULL, NULL, NULL, NULL),
(183, 'rtogbn8wjy8se0bcce4zrtne', 1, '231035365-07', '2025-01-18 14:51:18.114000', '2025-01-18 14:51:18.114000', '2025-01-18 14:51:18.157000', NULL, NULL, NULL),
(184, 'b9hku3cmfrpuyqgepp2rj9s5', 1, '231035365-07', '2025-01-18 14:51:18.121000', '2025-01-18 14:51:18.121000', '2025-01-18 14:51:18.165000', NULL, NULL, NULL),
(185, 'noioou4u9gtdx5a0e1bqzalx', 1, '231398301-07', '2025-01-18 14:51:18.189000', '2025-01-18 14:51:18.189000', NULL, NULL, NULL, NULL),
(186, 'c6om2bjq39wqtaykhkpfolof', 1, '231398301-07', '2025-01-18 14:51:18.192000', '2025-01-18 14:51:18.192000', NULL, NULL, NULL, NULL),
(187, 'zj3jnqkj303paurel4ctq399', 1, '231035365-07', '2025-01-18 14:51:18.125000', '2025-01-18 14:51:18.125000', '2025-01-18 14:51:18.174000', NULL, NULL, NULL),
(188, 'pp84ujj87iuscuyiwqd6a2bq', 1, '231035365-07', '2025-01-18 14:51:18.128000', '2025-01-18 14:51:18.128000', '2025-01-18 14:51:18.181000', NULL, NULL, NULL),
(189, 'rjwd9p90fvm3mfhovyy9k8ew', 1, '231035365-07', '2025-01-18 14:51:18.169000', '2025-01-18 14:51:18.169000', '2025-01-18 14:51:18.213000', NULL, NULL, NULL),
(190, 'umc8umsyhddofxudrp1p0z9b', 1, '231398301-07', '2025-01-18 14:51:18.277000', '2025-01-18 14:51:18.277000', NULL, NULL, NULL, NULL),
(191, 'f0ks4ebx2w9ztow0m8cg5e1v', 1, '231035365-07', '2025-01-18 14:51:18.170000', '2025-01-18 14:51:18.170000', '2025-01-18 14:51:18.223000', NULL, NULL, NULL),
(192, 'x9wkef3qtgh91stpjgmucsyy', 1, '231035365-07', '2025-01-18 14:51:18.178000', '2025-01-18 14:51:18.178000', '2025-01-18 14:51:18.224000', NULL, NULL, NULL),
(193, 'zj5ezjimql6lp5malis5hqvr', 1, '231035365-07', '2025-01-18 14:51:18.182000', '2025-01-18 14:51:18.182000', '2025-01-18 14:51:18.233000', NULL, NULL, NULL),
(194, 'fluka9ejysbh8ns5yp9hlod4', 1, '231398301-07', '2025-01-18 14:51:18.286000', '2025-01-18 14:51:18.286000', NULL, NULL, NULL, NULL),
(195, 'noioou4u9gtdx5a0e1bqzalx', 1, '231398301-07', '2025-01-18 14:51:18.189000', '2025-01-18 14:51:18.189000', '2025-01-18 14:51:18.245000', NULL, NULL, NULL),
(196, 'c6om2bjq39wqtaykhkpfolof', 1, '231398301-07', '2025-01-18 14:51:18.192000', '2025-01-18 14:51:18.192000', '2025-01-18 14:51:18.245000', NULL, NULL, NULL),
(197, 's7chpvuu21k7xt3dki43r8pl', 1, '231398301-07', '2025-01-18 14:51:18.293000', '2025-01-18 14:51:18.293000', NULL, NULL, NULL, NULL),
(198, 'gbgt9i87ki34sagj847lfwsv', 1, '231008645-07', '2025-01-18 14:51:18.301000', '2025-01-18 14:51:18.301000', NULL, NULL, NULL, NULL),
(199, 'i5517k2oqaq572r13hzr4t9q', 1, '231398301-07', '2025-01-18 14:51:18.364000', '2025-01-18 14:51:18.364000', NULL, NULL, NULL, NULL),
(200, 'naqg6jgwtwzbynmp3qaib8g0', 1, '231398301-07', '2025-01-18 14:51:18.366000', '2025-01-18 14:51:18.366000', NULL, NULL, NULL, NULL),
(201, 'umc8umsyhddofxudrp1p0z9b', 1, '231398301-07', '2025-01-18 14:51:18.277000', '2025-01-18 14:51:18.277000', '2025-01-18 14:51:18.339000', NULL, NULL, NULL),
(202, 'knff65y6dkmrluoxmr9hqhq5', 1, '231037448-07', '2025-01-18 14:51:18.378000', '2025-01-18 14:51:18.378000', NULL, NULL, NULL, NULL),
(203, 'tz6n5mrbttbo26ccm1fj26g9', 1, '231037448-07', '2025-01-18 14:51:18.379000', '2025-01-18 14:51:18.379000', NULL, NULL, NULL, NULL),
(204, 'rf6b5xmukjjdhk2fku91e0ie', 1, '231037448-07', '2025-01-18 14:51:18.396000', '2025-01-18 14:51:18.396000', NULL, NULL, NULL, NULL),
(205, 'fluka9ejysbh8ns5yp9hlod4', 1, '231398301-07', '2025-01-18 14:51:18.286000', '2025-01-18 14:51:18.286000', '2025-01-18 14:51:18.359000', NULL, NULL, NULL),
(206, 'v7jv4lj934v76adg81wj9fja', 1, '231037448-07', '2025-01-18 14:51:18.402000', '2025-01-18 14:51:18.402000', NULL, NULL, NULL, NULL),
(207, 'gbgt9i87ki34sagj847lfwsv', 1, '231008645-07', '2025-01-18 14:51:18.301000', '2025-01-18 14:51:18.301000', '2025-01-18 14:51:18.384000', NULL, NULL, NULL),
(208, 's7chpvuu21k7xt3dki43r8pl', 1, '231398301-07', '2025-01-18 14:51:18.293000', '2025-01-18 14:51:18.293000', '2025-01-18 14:51:18.388000', NULL, NULL, NULL),
(209, 'jq72xqqcgj9r02nnenpco9sy', 1, '231398301-07', '2025-01-18 14:51:18.448000', '2025-01-18 14:51:18.448000', NULL, NULL, NULL, NULL),
(210, 'i5517k2oqaq572r13hzr4t9q', 1, '231398301-07', '2025-01-18 14:51:18.364000', '2025-01-18 14:51:18.364000', '2025-01-18 14:51:18.429000', NULL, NULL, NULL),
(211, 'naqg6jgwtwzbynmp3qaib8g0', 1, '231398301-07', '2025-01-18 14:51:18.366000', '2025-01-18 14:51:18.366000', '2025-01-18 14:51:18.430000', NULL, NULL, NULL),
(212, 'knff65y6dkmrluoxmr9hqhq5', 1, '231037448-07', '2025-01-18 14:51:18.378000', '2025-01-18 14:51:18.378000', '2025-01-18 14:51:18.431000', NULL, NULL, NULL),
(213, 'tz6n5mrbttbo26ccm1fj26g9', 1, '231037448-07', '2025-01-18 14:51:18.379000', '2025-01-18 14:51:18.379000', '2025-01-18 14:51:18.431000', NULL, NULL, NULL),
(214, 'dnujyytpkefth3qev9whe0o2', 1, '231037448-07', '2025-01-18 14:51:18.501000', '2025-01-18 14:51:18.501000', NULL, NULL, NULL, NULL),
(215, 'ef5me9vzehzjmystr5xtzhmi', 1, '231037448-07', '2025-01-18 14:51:18.502000', '2025-01-18 14:51:18.502000', NULL, NULL, NULL, NULL),
(216, 'rf6b5xmukjjdhk2fku91e0ie', 1, '231037448-07', '2025-01-18 14:51:18.396000', '2025-01-18 14:51:18.396000', '2025-01-18 14:51:18.469000', NULL, NULL, NULL),
(217, 'v7jv4lj934v76adg81wj9fja', 1, '231037448-07', '2025-01-18 14:51:18.402000', '2025-01-18 14:51:18.402000', '2025-01-18 14:51:18.469000', NULL, NULL, NULL),
(218, 'tdkjtr4huvaxwcucjl6nhnd1', 1, '231037448-07', '2025-01-18 14:51:18.512000', '2025-01-18 14:51:18.512000', NULL, NULL, NULL, NULL),
(219, 'vr650jc44xd4cl8fn2baeurz', 1, '231037448-07', '2025-01-18 14:51:18.537000', '2025-01-18 14:51:18.537000', NULL, NULL, NULL, NULL),
(220, 'vasdfixd7mda81v4ama9wls5', 1, '231037448-07', '2025-01-18 14:51:18.541000', '2025-01-18 14:51:18.541000', NULL, NULL, NULL, NULL),
(221, 'jq72xqqcgj9r02nnenpco9sy', 1, '231398301-07', '2025-01-18 14:51:18.448000', '2025-01-18 14:51:18.448000', '2025-01-18 14:51:18.519000', NULL, NULL, NULL),
(222, 'cb3sh30r1x9a69hah0303d27', 1, '231037448-07', '2025-01-18 14:51:18.545000', '2025-01-18 14:51:18.545000', NULL, NULL, NULL, NULL),
(223, 'yjrpvo0n4zm4x3ukm4kgw2op', 1, '231037448-07', '2025-01-18 14:51:18.546000', '2025-01-18 14:51:18.546000', NULL, NULL, NULL, NULL),
(224, 'v132cl4ms5qv0k5tmw1bk2hf', 1, '231037448-07', '2025-01-18 14:51:18.574000', '2025-01-18 14:51:18.574000', NULL, NULL, NULL, NULL),
(225, 'goe61uufdbtmzekff5mgpjwk', 1, '231037448-07', '2025-01-18 14:51:18.574000', '2025-01-18 14:51:18.574000', NULL, NULL, NULL, NULL),
(226, 'dnujyytpkefth3qev9whe0o2', 1, '231037448-07', '2025-01-18 14:51:18.501000', '2025-01-18 14:51:18.501000', '2025-01-18 14:51:18.553000', NULL, NULL, NULL),
(227, 'ef5me9vzehzjmystr5xtzhmi', 1, '231037448-07', '2025-01-18 14:51:18.502000', '2025-01-18 14:51:18.502000', '2025-01-18 14:51:18.553000', NULL, NULL, NULL),
(228, 'tdkjtr4huvaxwcucjl6nhnd1', 1, '231037448-07', '2025-01-18 14:51:18.512000', '2025-01-18 14:51:18.512000', '2025-01-18 14:51:18.558000', NULL, NULL, NULL),
(229, 'ipf4z2llwd07b9e010ag6tcw', 1, '231037448-07', '2025-01-18 14:51:18.618000', '2025-01-18 14:51:18.618000', NULL, NULL, NULL, NULL),
(230, 'vr650jc44xd4cl8fn2baeurz', 1, '231037448-07', '2025-01-18 14:51:18.537000', '2025-01-18 14:51:18.537000', '2025-01-18 14:51:18.585000', NULL, NULL, NULL),
(231, 'vasdfixd7mda81v4ama9wls5', 1, '231037448-07', '2025-01-18 14:51:18.541000', '2025-01-18 14:51:18.541000', '2025-01-18 14:51:18.586000', NULL, NULL, NULL),
(232, 'cb3sh30r1x9a69hah0303d27', 1, '231037448-07', '2025-01-18 14:51:18.545000', '2025-01-18 14:51:18.545000', '2025-01-18 14:51:18.597000', NULL, NULL, NULL),
(233, 'yjrpvo0n4zm4x3ukm4kgw2op', 1, '231037448-07', '2025-01-18 14:51:18.546000', '2025-01-18 14:51:18.546000', '2025-01-18 14:51:18.597000', NULL, NULL, NULL),
(234, 'bkz8jzhuyfrsus3tjc7f8p0x', 1, '231037448-07', '2025-01-18 14:51:18.670000', '2025-01-18 14:51:18.670000', NULL, NULL, NULL, NULL),
(235, 'r3347l8xyi61wliay7nc9cm6', 1, '231037448-07', '2025-01-18 14:51:18.672000', '2025-01-18 14:51:18.672000', NULL, NULL, NULL, NULL),
(236, 'v132cl4ms5qv0k5tmw1bk2hf', 1, '231037448-07', '2025-01-18 14:51:18.574000', '2025-01-18 14:51:18.574000', '2025-01-18 14:51:18.637000', NULL, NULL, NULL),
(237, 'goe61uufdbtmzekff5mgpjwk', 1, '231037448-07', '2025-01-18 14:51:18.574000', '2025-01-18 14:51:18.574000', '2025-01-18 14:51:18.637000', NULL, NULL, NULL),
(238, 'fbd0vdwvo1uyyjxtpexe2ims', 1, '231037448-07', '2025-01-18 14:51:18.678000', '2025-01-18 14:51:18.678000', NULL, NULL, NULL, NULL),
(239, 'g0t7u6l4j5t3oprzaskrzcrj', 1, '231037448-07', '2025-01-18 14:51:18.707000', '2025-01-18 14:51:18.707000', NULL, NULL, NULL, NULL),
(240, 'gw9s0oc8n6lr9rrpg1j1m7z1', 1, '231037448-07', '2025-01-18 14:51:18.710000', '2025-01-18 14:51:18.710000', NULL, NULL, NULL, NULL),
(241, 'ipf4z2llwd07b9e010ag6tcw', 1, '231037448-07', '2025-01-18 14:51:18.618000', '2025-01-18 14:51:18.618000', '2025-01-18 14:51:18.685000', NULL, NULL, NULL),
(242, 'bhyk4i406kn308607mlfj4r2', 1, '231037448-07', '2025-01-18 14:51:18.714000', '2025-01-18 14:51:18.714000', NULL, NULL, NULL, NULL),
(243, 'iglr5rfcvk9rtkmyaix2rbf8', 1, '460106982-07', '2025-01-18 14:51:18.714000', '2025-01-18 14:51:18.714000', NULL, NULL, NULL, NULL),
(244, 'crp2823tv0a3ih7yk2nkhihw', 1, '297940051-07', '2025-01-18 14:51:18.738000', '2025-01-18 14:51:18.738000', NULL, NULL, NULL, NULL),
(245, 'r3347l8xyi61wliay7nc9cm6', 1, '231037448-07', '2025-01-18 14:51:18.672000', '2025-01-18 14:51:18.672000', '2025-01-18 14:51:18.718000', NULL, NULL, NULL),
(246, 'bkz8jzhuyfrsus3tjc7f8p0x', 1, '231037448-07', '2025-01-18 14:51:18.670000', '2025-01-18 14:51:18.670000', '2025-01-18 14:51:18.719000', NULL, NULL, NULL),
(247, 'lartlgezro9kqo42hj0o1rd5', 1, '297271011-07', '2025-01-18 14:51:18.747000', '2025-01-18 14:51:18.747000', NULL, NULL, NULL, NULL),
(248, 'fbd0vdwvo1uyyjxtpexe2ims', 1, '231037448-07', '2025-01-18 14:51:18.678000', '2025-01-18 14:51:18.678000', '2025-01-18 14:51:18.728000', NULL, NULL, NULL),
(249, 'd5lpk0js7s2biab07hbyahy9', 1, '297198011-07', '2025-01-18 14:51:18.773000', '2025-01-18 14:51:18.773000', NULL, NULL, NULL, NULL),
(250, 'g0t7u6l4j5t3oprzaskrzcrj', 1, '231037448-07', '2025-01-18 14:51:18.707000', '2025-01-18 14:51:18.707000', '2025-01-18 14:51:18.752000', NULL, NULL, NULL),
(251, 'gw9s0oc8n6lr9rrpg1j1m7z1', 1, '231037448-07', '2025-01-18 14:51:18.710000', '2025-01-18 14:51:18.710000', '2025-01-18 14:51:18.753000', NULL, NULL, NULL),
(252, 'bhyk4i406kn308607mlfj4r2', 1, '231037448-07', '2025-01-18 14:51:18.714000', '2025-01-18 14:51:18.714000', '2025-01-18 14:51:18.760000', NULL, NULL, NULL),
(253, 'iglr5rfcvk9rtkmyaix2rbf8', 1, '460106982-07', '2025-01-18 14:51:18.714000', '2025-01-18 14:51:18.714000', '2025-01-18 14:51:18.761000', NULL, NULL, NULL),
(254, 'f2agtbrmt1hjtni9rl8cf0w9', 1, '297271011-07', '2025-01-18 14:51:18.807000', '2025-01-18 14:51:18.807000', NULL, NULL, NULL, NULL),
(255, 'crp2823tv0a3ih7yk2nkhihw', 1, '297940051-07', '2025-01-18 14:51:18.738000', '2025-01-18 14:51:18.738000', '2025-01-18 14:51:18.786000', NULL, NULL, NULL),
(256, 'xf6p2o2eg6jk63v2bugd0qbg', 1, '297940051-07', '2025-01-18 14:51:18.812000', '2025-01-18 14:51:18.812000', NULL, NULL, NULL, NULL),
(257, 'lartlgezro9kqo42hj0o1rd5', 1, '297271011-07', '2025-01-18 14:51:18.747000', '2025-01-18 14:51:18.747000', '2025-01-18 14:51:18.791000', NULL, NULL, NULL),
(258, 'd5lpk0js7s2biab07hbyahy9', 1, '297198011-07', '2025-01-18 14:51:18.773000', '2025-01-18 14:51:18.773000', '2025-01-18 14:51:18.820000', NULL, NULL, NULL),
(259, 'v17ymb5xkales1p2v3j040rb', 1, '297940051-07', '2025-01-18 14:51:18.859000', '2025-01-18 14:51:18.859000', NULL, NULL, NULL, NULL),
(260, 'f2agtbrmt1hjtni9rl8cf0w9', 1, '297271011-07', '2025-01-18 14:51:18.807000', '2025-01-18 14:51:18.807000', '2025-01-18 14:51:18.848000', NULL, NULL, NULL),
(261, 'crmsvmn4yat11ahd6s5hdzhn', 1, '297940051-07', '2025-01-18 14:51:18.870000', '2025-01-18 14:51:18.870000', NULL, NULL, NULL, NULL),
(262, 'bvwxjrj3k7ypqo629rjayv6q', 1, '297904041-07', '2025-01-18 14:51:18.870000', '2025-01-18 14:51:18.870000', NULL, NULL, NULL, NULL),
(263, 'xf6p2o2eg6jk63v2bugd0qbg', 1, '297940051-07', '2025-01-18 14:51:18.812000', '2025-01-18 14:51:18.812000', '2025-01-18 14:51:18.855000', NULL, NULL, NULL),
(264, 'dmlrd1m7vl4camxx9hj1r4yo', 1, '297940051-07', '2025-01-18 14:51:18.889000', '2025-01-18 14:51:18.889000', NULL, NULL, NULL, NULL),
(265, 'gpxe2czf1uqbyhnkcfv86ftj', 1, '297940031-07', '2025-01-18 14:51:18.892000', '2025-01-18 14:51:18.892000', NULL, NULL, NULL, NULL),
(266, 'v2gk5gxd9f3r1pcwmweo2s8s', 1, '297904041-07', '2025-01-18 14:51:18.893000', '2025-01-18 14:51:18.893000', NULL, NULL, NULL, NULL),
(267, 'kceb8tgehitlocw3mysbcfjj', 1, '297940031-07', '2025-01-18 14:51:18.896000', '2025-01-18 14:51:18.896000', NULL, NULL, NULL, NULL),
(268, 'aslmo2rpmphsgcbs7p7zyzcr', 1, '297940031-07', '2025-01-18 14:51:18.906000', '2025-01-18 14:51:18.906000', NULL, NULL, NULL, NULL),
(269, 'v17ymb5xkales1p2v3j040rb', 1, '297940051-07', '2025-01-18 14:51:18.859000', '2025-01-18 14:51:18.859000', '2025-01-18 14:51:18.902000', NULL, NULL, NULL),
(270, 'wzxu3inmrgyzrrbgo4l2czh7', 1, '297997011-07', '2025-01-18 14:51:18.928000', '2025-01-18 14:51:18.928000', NULL, NULL, NULL, NULL),
(271, 'crmsvmn4yat11ahd6s5hdzhn', 1, '297940051-07', '2025-01-18 14:51:18.870000', '2025-01-18 14:51:18.870000', '2025-01-18 14:51:18.905000', NULL, NULL, NULL),
(272, 'bvwxjrj3k7ypqo629rjayv6q', 1, '297904041-07', '2025-01-18 14:51:18.870000', '2025-01-18 14:51:18.870000', '2025-01-18 14:51:18.911000', NULL, NULL, NULL),
(273, 'plksot4kse4om4w0nyx6vg7z', 1, '297741011-07', '2025-01-18 14:51:18.932000', '2025-01-18 14:51:18.932000', NULL, NULL, NULL, NULL),
(274, 'dmlrd1m7vl4camxx9hj1r4yo', 1, '297940051-07', '2025-01-18 14:51:18.889000', '2025-01-18 14:51:18.889000', '2025-01-18 14:51:18.931000', NULL, NULL, NULL),
(275, 'v2gk5gxd9f3r1pcwmweo2s8s', 1, '297904041-07', '2025-01-18 14:51:18.893000', '2025-01-18 14:51:18.893000', '2025-01-18 14:51:18.931000', NULL, NULL, NULL),
(276, 'gpxe2czf1uqbyhnkcfv86ftj', 1, '297940031-07', '2025-01-18 14:51:18.892000', '2025-01-18 14:51:18.892000', '2025-01-18 14:51:18.934000', NULL, NULL, NULL),
(277, 'kceb8tgehitlocw3mysbcfjj', 1, '297940031-07', '2025-01-18 14:51:18.896000', '2025-01-18 14:51:18.896000', '2025-01-18 14:51:18.935000', NULL, NULL, NULL),
(278, 'aslmo2rpmphsgcbs7p7zyzcr', 1, '297940031-07', '2025-01-18 14:51:18.906000', '2025-01-18 14:51:18.906000', '2025-01-18 14:51:18.945000', NULL, NULL, NULL),
(279, 'uy2srt0cg5vr2orx0vsu02k7', 1, '297940031-07', '2025-01-18 14:51:18.979000', '2025-01-18 14:51:18.979000', NULL, NULL, NULL, NULL),
(280, 'l230kmeb9bswb9ksr2mze4le', 1, '297940031-07', '2025-01-18 14:51:18.983000', '2025-01-18 14:51:18.983000', NULL, NULL, NULL, NULL),
(281, 'wzxu3inmrgyzrrbgo4l2czh7', 1, '297997011-07', '2025-01-18 14:51:18.928000', '2025-01-18 14:51:18.928000', '2025-01-18 14:51:18.968000', NULL, NULL, NULL),
(282, 'kqgrmo0jv3lz755bh8tgb2pc', 1, '297741011-07', '2025-01-18 14:51:18.988000', '2025-01-18 14:51:18.988000', NULL, NULL, NULL, NULL),
(283, 'plksot4kse4om4w0nyx6vg7z', 1, '297741011-07', '2025-01-18 14:51:18.932000', '2025-01-18 14:51:18.932000', '2025-01-18 14:51:18.970000', NULL, NULL, NULL),
(284, 'c7ung0nr4segrch9923haxln', 1, '297997011-07', '2025-01-18 14:51:19.019000', '2025-01-18 14:51:19.019000', NULL, NULL, NULL, NULL),
(285, 'wqzju2s5hdre9icaju7jtcht', 1, '297997011-07', '2025-01-18 14:51:19.021000', '2025-01-18 14:51:19.021000', NULL, NULL, NULL, NULL),
(286, 'x13aq4lr24hbn9bas2a7un6u', 1, '297997021-07', '2025-01-18 14:51:19.022000', '2025-01-18 14:51:19.022000', NULL, NULL, NULL, NULL),
(287, 'gh9a2qrv18efem127bn0pr80', 1, '297997021-07', '2025-01-18 14:51:19.023000', '2025-01-18 14:51:19.023000', NULL, NULL, NULL, NULL),
(288, 'v6f2d06vixbv2wiq1sla1mpx', 1, '297997021-07', '2025-01-18 14:51:19.027000', '2025-01-18 14:51:19.027000', NULL, NULL, NULL, NULL),
(289, 'uy2srt0cg5vr2orx0vsu02k7', 1, '297940031-07', '2025-01-18 14:51:18.979000', '2025-01-18 14:51:18.979000', '2025-01-18 14:51:19.025000', NULL, NULL, NULL),
(290, 'l230kmeb9bswb9ksr2mze4le', 1, '297940031-07', '2025-01-18 14:51:18.983000', '2025-01-18 14:51:18.983000', '2025-01-18 14:51:19.029000', NULL, NULL, NULL),
(291, 'mjxp9io8y6z9sp3tultr02c6', 1, '297940011-07', '2025-01-18 14:51:19.054000', '2025-01-18 14:51:19.054000', NULL, NULL, NULL, NULL),
(292, 'kqgrmo0jv3lz755bh8tgb2pc', 1, '297741011-07', '2025-01-18 14:51:18.988000', '2025-01-18 14:51:18.988000', '2025-01-18 14:51:19.031000', NULL, NULL, NULL),
(293, 'uvj021oie16fmci36cakuofw', 1, '297997011-07', '2025-01-18 14:51:19.060000', '2025-01-18 14:51:19.060000', NULL, NULL, NULL, NULL),
(294, 'c7ung0nr4segrch9923haxln', 1, '297997011-07', '2025-01-18 14:51:19.019000', '2025-01-18 14:51:19.019000', '2025-01-18 14:51:19.059000', NULL, NULL, NULL),
(295, 'x13aq4lr24hbn9bas2a7un6u', 1, '297997021-07', '2025-01-18 14:51:19.022000', '2025-01-18 14:51:19.022000', '2025-01-18 14:51:19.062000', NULL, NULL, NULL),
(296, 'gh9a2qrv18efem127bn0pr80', 1, '297997021-07', '2025-01-18 14:51:19.023000', '2025-01-18 14:51:19.023000', '2025-01-18 14:51:19.062000', NULL, NULL, NULL),
(297, 'wqzju2s5hdre9icaju7jtcht', 1, '297997011-07', '2025-01-18 14:51:19.021000', '2025-01-18 14:51:19.021000', '2025-01-18 14:51:19.065000', NULL, NULL, NULL),
(298, 'v6f2d06vixbv2wiq1sla1mpx', 1, '297997021-07', '2025-01-18 14:51:19.027000', '2025-01-18 14:51:19.027000', '2025-01-18 14:51:19.066000', NULL, NULL, NULL),
(299, 'tj4bk1swahy9zh6bv5o8tmzv', 1, '297997011-07', '2025-01-18 14:51:19.103000', '2025-01-18 14:51:19.103000', NULL, NULL, NULL, NULL),
(300, 'bteo8scj14tmg4f7l8bewupi', 1, '297997021-07', '2025-01-18 14:51:19.106000', '2025-01-18 14:51:19.106000', NULL, NULL, NULL, NULL),
(301, 'qc9p44z4m4sne9q7on9p53l2', 1, '297997021-07', '2025-01-18 14:51:19.113000', '2025-01-18 14:51:19.113000', NULL, NULL, NULL, NULL),
(302, 'mjxp9io8y6z9sp3tultr02c6', 1, '297940011-07', '2025-01-18 14:51:19.054000', '2025-01-18 14:51:19.054000', '2025-01-18 14:51:19.095000', NULL, NULL, NULL),
(303, 'uvj021oie16fmci36cakuofw', 1, '297997011-07', '2025-01-18 14:51:19.060000', '2025-01-18 14:51:19.060000', '2025-01-18 14:51:19.101000', NULL, NULL, NULL),
(304, 's4h1c6t6ey51depbxkl4uagd', 1, '297997021-07', '2025-01-18 14:51:19.145000', '2025-01-18 14:51:19.145000', NULL, NULL, NULL, NULL),
(305, 'kmifofhqynwb9e6ah6fbymfp', 1, '297940011-07', '2025-01-18 14:51:19.147000', '2025-01-18 14:51:19.147000', NULL, NULL, NULL, NULL),
(306, 'cib1glgn0fw64xi1vb2er1ct', 1, '297940081-07', '2025-01-18 14:51:19.151000', '2025-01-18 14:51:19.151000', NULL, NULL, NULL, NULL),
(307, 'due4yiy3s5x6ejt8z9a1xyb0', 1, '297940081-07', '2025-01-18 14:51:19.153000', '2025-01-18 14:51:19.153000', NULL, NULL, NULL, NULL),
(308, 'uudguclap3iajjnpikwe1ctw', 1, '297940011-07', '2025-01-18 14:51:19.154000', '2025-01-18 14:51:19.154000', NULL, NULL, NULL, NULL),
(309, 'tj4bk1swahy9zh6bv5o8tmzv', 1, '297997011-07', '2025-01-18 14:51:19.103000', '2025-01-18 14:51:19.103000', '2025-01-18 14:51:19.149000', NULL, NULL, NULL),
(310, 'bteo8scj14tmg4f7l8bewupi', 1, '297997021-07', '2025-01-18 14:51:19.106000', '2025-01-18 14:51:19.106000', '2025-01-18 14:51:19.153000', NULL, NULL, NULL),
(311, 'rbye1nb6f0njh2ns2x3oxxcg', 1, '297940081-07', '2025-01-18 14:51:19.181000', '2025-01-18 14:51:19.181000', NULL, NULL, NULL, NULL),
(312, 'qc9p44z4m4sne9q7on9p53l2', 1, '297997021-07', '2025-01-18 14:51:19.113000', '2025-01-18 14:51:19.113000', '2025-01-18 14:51:19.159000', NULL, NULL, NULL),
(313, 'yfsxouimbx1151knagk6km2j', 1, '297940011-07', '2025-01-18 14:51:19.185000', '2025-01-18 14:51:19.185000', NULL, NULL, NULL, NULL),
(314, 's4h1c6t6ey51depbxkl4uagd', 1, '297997021-07', '2025-01-18 14:51:19.145000', '2025-01-18 14:51:19.145000', '2025-01-18 14:51:19.185000', NULL, NULL, NULL),
(315, 'kmifofhqynwb9e6ah6fbymfp', 1, '297940011-07', '2025-01-18 14:51:19.147000', '2025-01-18 14:51:19.147000', '2025-01-18 14:51:19.188000', NULL, NULL, NULL),
(316, 'cib1glgn0fw64xi1vb2er1ct', 1, '297940081-07', '2025-01-18 14:51:19.151000', '2025-01-18 14:51:19.151000', '2025-01-18 14:51:19.189000', NULL, NULL, NULL),
(317, 'due4yiy3s5x6ejt8z9a1xyb0', 1, '297940081-07', '2025-01-18 14:51:19.153000', '2025-01-18 14:51:19.153000', '2025-01-18 14:51:19.192000', NULL, NULL, NULL),
(318, 'uudguclap3iajjnpikwe1ctw', 1, '297940011-07', '2025-01-18 14:51:19.154000', '2025-01-18 14:51:19.154000', '2025-01-18 14:51:19.192000', NULL, NULL, NULL),
(319, 'cc59dv3mwg7cwwd2mbbz3t7h', 1, '297940011-07', '2025-01-18 14:51:19.231000', '2025-01-18 14:51:19.231000', NULL, NULL, NULL, NULL),
(320, 'b45lean8rwvte8qfd91531nz', 1, '297940081-07', '2025-01-18 14:51:19.234000', '2025-01-18 14:51:19.234000', NULL, NULL, NULL, NULL),
(321, 'wfjbubwn24k83092e4l3bjms', 1, '297940071-07', '2025-01-18 14:51:19.240000', '2025-01-18 14:51:19.240000', NULL, NULL, NULL, NULL),
(322, 'rbye1nb6f0njh2ns2x3oxxcg', 1, '297940081-07', '2025-01-18 14:51:19.181000', '2025-01-18 14:51:19.181000', '2025-01-18 14:51:19.223000', NULL, NULL, NULL),
(323, 'yfsxouimbx1151knagk6km2j', 1, '297940011-07', '2025-01-18 14:51:19.185000', '2025-01-18 14:51:19.185000', '2025-01-18 14:51:19.229000', NULL, NULL, NULL),
(324, 'w90d1oby6rzivwbc18kbxqdo', 1, '297940081-07', '2025-01-18 14:51:19.274000', '2025-01-18 14:51:19.274000', NULL, NULL, NULL, NULL),
(325, 'jbqaq6l5qd22rw27gexhylq3', 1, '297940041-07', '2025-01-18 14:51:19.278000', '2025-01-18 14:51:19.278000', NULL, NULL, NULL, NULL),
(326, 'dt1rj3vi0z2clno2n6o6cr2r', 1, '297940071-07', '2025-01-18 14:51:19.282000', '2025-01-18 14:51:19.282000', NULL, NULL, NULL, NULL),
(327, 'oja70jqphp52b03wdjwbeg98', 1, '297940041-07', '2025-01-18 14:51:19.285000', '2025-01-18 14:51:19.285000', NULL, NULL, NULL, NULL),
(328, 'kv8n964gxtf2f3aea18nn25b', 1, '297904051-07', '2025-01-18 14:51:19.287000', '2025-01-18 14:51:19.287000', NULL, NULL, NULL, NULL),
(329, 'cc59dv3mwg7cwwd2mbbz3t7h', 1, '297940011-07', '2025-01-18 14:51:19.231000', '2025-01-18 14:51:19.231000', '2025-01-18 14:51:19.284000', NULL, NULL, NULL),
(330, 'b45lean8rwvte8qfd91531nz', 1, '297940081-07', '2025-01-18 14:51:19.234000', '2025-01-18 14:51:19.234000', '2025-01-18 14:51:19.285000', NULL, NULL, NULL),
(331, 'chjelnov4zbcke1e2zehr7sv', 1, '297940071-07', '2025-01-18 14:51:19.316000', '2025-01-18 14:51:19.316000', NULL, NULL, NULL, NULL),
(332, 'wfjbubwn24k83092e4l3bjms', 1, '297940071-07', '2025-01-18 14:51:19.240000', '2025-01-18 14:51:19.240000', '2025-01-18 14:51:19.291000', NULL, NULL, NULL),
(333, 'qr11o7kk1oi9qryjph0x9v2j', 1, '297940071-07', '2025-01-18 14:51:19.322000', '2025-01-18 14:51:19.322000', NULL, NULL, NULL, NULL),
(334, 'w90d1oby6rzivwbc18kbxqdo', 1, '297940081-07', '2025-01-18 14:51:19.274000', '2025-01-18 14:51:19.274000', '2025-01-18 14:51:19.322000', NULL, NULL, NULL),
(335, 'jbqaq6l5qd22rw27gexhylq3', 1, '297940041-07', '2025-01-18 14:51:19.278000', '2025-01-18 14:51:19.278000', '2025-01-18 14:51:19.325000', NULL, NULL, NULL),
(336, 'dt1rj3vi0z2clno2n6o6cr2r', 1, '297940071-07', '2025-01-18 14:51:19.282000', '2025-01-18 14:51:19.282000', '2025-01-18 14:51:19.325000', NULL, NULL, NULL),
(337, 'kv8n964gxtf2f3aea18nn25b', 1, '297904051-07', '2025-01-18 14:51:19.287000', '2025-01-18 14:51:19.287000', '2025-01-18 14:51:19.326000', NULL, NULL, NULL),
(338, 'oja70jqphp52b03wdjwbeg98', 1, '297940041-07', '2025-01-18 14:51:19.285000', '2025-01-18 14:51:19.285000', '2025-01-18 14:51:19.330000', NULL, NULL, NULL);
INSERT INTO `boxes` (`id`, `document_id`, `active`, `uid`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(339, 'bx42k166537faeqjffhlo8o2', 1, '297940041-07', '2025-01-18 14:51:19.367000', '2025-01-18 14:51:19.367000', NULL, NULL, NULL, NULL),
(340, 'nsnma19wlua776ugsyyzzwt2', 1, '297940071-07', '2025-01-18 14:51:19.374000', '2025-01-18 14:51:19.374000', NULL, NULL, NULL, NULL),
(341, 'l674v2zbybn0qcvl8s9ylgm2', 1, '297997011-07', '2025-01-18 14:51:19.377000', '2025-01-18 14:51:19.377000', NULL, NULL, NULL, NULL),
(342, 'chjelnov4zbcke1e2zehr7sv', 1, '297940071-07', '2025-01-18 14:51:19.316000', '2025-01-18 14:51:19.316000', '2025-01-18 14:51:19.364000', NULL, NULL, NULL),
(343, 'qr11o7kk1oi9qryjph0x9v2j', 1, '297940071-07', '2025-01-18 14:51:19.322000', '2025-01-18 14:51:19.322000', '2025-01-18 14:51:19.365000', NULL, NULL, NULL),
(344, 'gynhuxp6yyh8smu6h5hk97g8', 1, '297904051-07', '2025-01-18 14:51:19.411000', '2025-01-18 14:51:19.411000', NULL, NULL, NULL, NULL),
(345, 'yal2oh8q6qlidn4uwhyszvas', 1, '297689021-07', '2025-01-18 14:51:19.422000', '2025-01-18 14:51:19.422000', NULL, NULL, NULL, NULL),
(346, 'ero40ithbnzpzseoqgykrpfb', 1, '297904071-07', '2025-01-18 14:51:19.424000', '2025-01-18 14:51:19.424000', NULL, NULL, NULL, NULL),
(347, 'msm02aut3d7ccdrqa0re8glq', 1, '297893011-07', '2025-01-18 14:51:19.426000', '2025-01-18 14:51:19.426000', NULL, NULL, NULL, NULL),
(348, 'ljnf5sdaklz79cln8x01f8qp', 1, '297680011-07', '2025-01-18 14:51:19.427000', '2025-01-18 14:51:19.427000', NULL, NULL, NULL, NULL),
(349, 'bx42k166537faeqjffhlo8o2', 1, '297940041-07', '2025-01-18 14:51:19.367000', '2025-01-18 14:51:19.367000', '2025-01-18 14:51:19.417000', NULL, NULL, NULL),
(350, 'nsnma19wlua776ugsyyzzwt2', 1, '297940071-07', '2025-01-18 14:51:19.374000', '2025-01-18 14:51:19.374000', '2025-01-18 14:51:19.428000', NULL, NULL, NULL),
(351, 'l674v2zbybn0qcvl8s9ylgm2', 1, '297997011-07', '2025-01-18 14:51:19.377000', '2025-01-18 14:51:19.377000', '2025-01-18 14:51:19.435000', NULL, NULL, NULL),
(352, 'hwab2twfy4epi2m5wz0lameq', 1, '297904071-07', '2025-01-18 14:51:19.458000', '2025-01-18 14:51:19.458000', NULL, NULL, NULL, NULL),
(353, 'qa4methavrpp5duguszbbqij', 1, '297773011-07', '2025-01-18 14:51:19.459000', '2025-01-18 14:51:19.459000', NULL, NULL, NULL, NULL),
(354, 'gynhuxp6yyh8smu6h5hk97g8', 1, '297904051-07', '2025-01-18 14:51:19.411000', '2025-01-18 14:51:19.411000', '2025-01-18 14:51:19.458000', NULL, NULL, NULL),
(355, 'yal2oh8q6qlidn4uwhyszvas', 1, '297689021-07', '2025-01-18 14:51:19.422000', '2025-01-18 14:51:19.422000', '2025-01-18 14:51:19.466000', NULL, NULL, NULL),
(356, 'ero40ithbnzpzseoqgykrpfb', 1, '297904071-07', '2025-01-18 14:51:19.424000', '2025-01-18 14:51:19.424000', '2025-01-18 14:51:19.467000', NULL, NULL, NULL),
(357, 'ljnf5sdaklz79cln8x01f8qp', 1, '297680011-07', '2025-01-18 14:51:19.427000', '2025-01-18 14:51:19.427000', '2025-01-18 14:51:19.470000', NULL, NULL, NULL),
(358, 'msm02aut3d7ccdrqa0re8glq', 1, '297893011-07', '2025-01-18 14:51:19.426000', '2025-01-18 14:51:19.426000', '2025-01-18 14:51:19.470000', NULL, NULL, NULL),
(359, 'lrua9fpesizc0x1p0t71imza', 1, '297025011-07', '2025-01-18 14:51:19.502000', '2025-01-18 14:51:19.502000', NULL, NULL, NULL, NULL),
(360, 'azpq3f61yknpz2hgubguy0a3', 1, '297707011-07', '2025-01-18 14:51:19.512000', '2025-01-18 14:51:19.512000', NULL, NULL, NULL, NULL),
(361, 'd4rzik7rurjarxwy9iz1ryjs', 1, '297025011-07', '2025-01-18 14:51:19.521000', '2025-01-18 14:51:19.521000', NULL, NULL, NULL, NULL),
(362, 'hwab2twfy4epi2m5wz0lameq', 1, '297904071-07', '2025-01-18 14:51:19.458000', '2025-01-18 14:51:19.458000', '2025-01-18 14:51:19.501000', NULL, NULL, NULL),
(363, 'qa4methavrpp5duguszbbqij', 1, '297773011-07', '2025-01-18 14:51:19.459000', '2025-01-18 14:51:19.459000', '2025-01-18 14:51:19.504000', NULL, NULL, NULL),
(364, 'duytj332xbpgsfco639e8xol', 1, '297025011-07', '2025-01-18 14:51:19.543000', '2025-01-18 14:51:19.543000', NULL, NULL, NULL, NULL),
(365, 'lrua9fpesizc0x1p0t71imza', 1, '297025011-07', '2025-01-18 14:51:19.502000', '2025-01-18 14:51:19.502000', '2025-01-18 14:51:19.547000', NULL, NULL, NULL),
(366, 'azpq3f61yknpz2hgubguy0a3', 1, '297707011-07', '2025-01-18 14:51:19.512000', '2025-01-18 14:51:19.512000', '2025-01-18 14:51:19.558000', NULL, NULL, NULL),
(367, 'd4rzik7rurjarxwy9iz1ryjs', 1, '297025011-07', '2025-01-18 14:51:19.521000', '2025-01-18 14:51:19.521000', '2025-01-18 14:51:19.566000', NULL, NULL, NULL),
(368, 'i44kej7lvr9s60381fojumno', 1, '297940041-07', '2025-01-18 14:51:19.606000', '2025-01-18 14:51:19.606000', NULL, NULL, NULL, NULL),
(369, 'jhzobd6xzfegypd1eyf130i7', 1, '297025011-07', '2025-01-18 14:51:19.609000', '2025-01-18 14:51:19.609000', NULL, NULL, NULL, NULL),
(370, 'duytj332xbpgsfco639e8xol', 1, '297025011-07', '2025-01-18 14:51:19.543000', '2025-01-18 14:51:19.543000', '2025-01-18 14:51:19.593000', NULL, NULL, NULL),
(371, 'ovjdrc5vp6ay0bp2s84e71d8', 1, '297025011-07', '2025-01-18 14:51:19.624000', '2025-01-18 14:51:19.624000', NULL, NULL, NULL, NULL),
(372, 'fxm1fbhhki5vtwt6porjtn5u', 1, '297940041-07', '2025-01-18 14:51:19.628000', '2025-01-18 14:51:19.628000', NULL, NULL, NULL, NULL),
(373, 'z4863lfubmoq39rsv94oguw1', 1, '297025011-07', '2025-01-18 14:51:19.632000', '2025-01-18 14:51:19.632000', NULL, NULL, NULL, NULL),
(374, 'jhzobd6xzfegypd1eyf130i7', 1, '297025011-07', '2025-01-18 14:51:19.609000', '2025-01-18 14:51:19.609000', '2025-01-18 14:51:19.651000', NULL, NULL, NULL),
(375, 'i44kej7lvr9s60381fojumno', 1, '297940041-07', '2025-01-18 14:51:19.606000', '2025-01-18 14:51:19.606000', '2025-01-18 14:51:19.657000', NULL, NULL, NULL),
(376, 'ovjdrc5vp6ay0bp2s84e71d8', 1, '297025011-07', '2025-01-18 14:51:19.624000', '2025-01-18 14:51:19.624000', '2025-01-18 14:51:19.662000', NULL, NULL, NULL),
(377, 'fxm1fbhhki5vtwt6porjtn5u', 1, '297940041-07', '2025-01-18 14:51:19.628000', '2025-01-18 14:51:19.628000', '2025-01-18 14:51:19.667000', NULL, NULL, NULL),
(378, 'z4863lfubmoq39rsv94oguw1', 1, '297025011-07', '2025-01-18 14:51:19.632000', '2025-01-18 14:51:19.632000', '2025-01-18 14:51:19.668000', NULL, NULL, NULL),
(379, 'kzs17ydyrcy6jlks5xp0w1b3', 0, '238314431-07', '2025-01-18 14:51:16.855000', '2025-01-22 10:32:16.478000', '2025-01-22 10:32:16.491000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `boxes_cable_id_lnk`
--

CREATE TABLE `boxes_cable_id_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `box_id` int(10) UNSIGNED DEFAULT NULL,
  `cable_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boxes_cable_id_lnk`
--

INSERT INTO `boxes_cable_id_lnk` (`id`, `box_id`, `cable_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 6),
(6, 6, 5),
(7, 7, 8),
(8, 8, 7),
(9, 9, 11),
(10, 10, 10),
(12, 12, 380),
(13, 13, 9),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 20),
(18, 18, 17),
(19, 19, 23),
(20, 20, 21),
(21, 21, 19),
(22, 22, 18),
(23, 23, 22),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 29),
(28, 28, 32),
(29, 29, 28),
(30, 30, 27),
(31, 31, 33),
(32, 32, 30),
(33, 33, 31),
(34, 34, 34),
(35, 35, 36),
(36, 36, 37),
(37, 37, 41),
(38, 38, 42),
(39, 39, 35),
(40, 40, 38),
(41, 41, 39),
(42, 42, 40),
(43, 43, 43),
(44, 44, 44),
(45, 45, 47),
(46, 46, 46),
(47, 47, 51),
(48, 48, 52),
(49, 49, 45),
(50, 50, 379),
(51, 51, 54),
(52, 52, 57),
(53, 53, 56),
(54, 54, 55),
(55, 55, 48),
(56, 56, 50),
(57, 57, 49),
(58, 58, 59),
(59, 59, 62),
(60, 60, 63),
(61, 61, 65),
(62, 62, 66),
(63, 63, 64),
(64, 64, 67),
(65, 65, 58),
(66, 66, 60),
(67, 67, 69),
(68, 68, 72),
(69, 69, 61),
(70, 70, 73),
(71, 71, 75),
(72, 72, 74),
(73, 73, 76),
(74, 74, 77),
(75, 75, 70),
(76, 76, 68),
(77, 77, 71),
(78, 78, 78),
(79, 79, 82),
(80, 80, 84),
(81, 81, 85),
(82, 82, 83),
(83, 83, 80),
(84, 84, 79),
(85, 85, 86),
(86, 86, 81),
(87, 87, 91),
(88, 88, 87),
(89, 89, 92),
(90, 90, 93),
(91, 91, 95),
(92, 92, 94),
(93, 93, 88),
(94, 94, 89),
(95, 95, 90),
(96, 96, 98),
(97, 97, 96),
(98, 98, 97),
(99, 99, 102),
(100, 100, 101),
(101, 101, 106),
(102, 102, 104),
(103, 103, 99),
(104, 104, 100),
(105, 105, 105),
(106, 106, 103),
(107, 107, 111),
(108, 108, 107),
(109, 109, 113),
(110, 110, 112),
(111, 111, 114),
(112, 112, 109),
(113, 113, 108),
(114, 114, 115),
(115, 115, 116),
(116, 116, 110),
(117, 117, 120),
(118, 118, 117),
(119, 119, 122),
(120, 120, 121),
(121, 121, 125),
(122, 122, 119),
(123, 123, 124),
(124, 124, 127),
(125, 125, 118),
(126, 126, 123),
(127, 127, 128),
(128, 128, 131),
(129, 129, 133),
(130, 130, 132),
(131, 131, 129),
(132, 132, 135),
(133, 133, 134),
(134, 134, 126),
(135, 135, 136),
(136, 136, 130),
(137, 137, 140),
(138, 138, 138),
(139, 139, 144),
(140, 140, 143),
(141, 141, 142),
(142, 142, 139),
(143, 143, 146),
(144, 144, 145),
(145, 145, 137),
(146, 146, 147),
(147, 147, 151),
(148, 148, 141),
(149, 149, 154),
(150, 150, 153),
(151, 151, 148),
(152, 152, 152),
(153, 153, 155),
(154, 154, 149),
(155, 155, 156),
(156, 156, 150),
(157, 157, 161),
(158, 158, 157),
(159, 159, 162),
(160, 160, 163),
(161, 161, 165),
(162, 162, 164),
(163, 163, 158),
(164, 164, 159),
(165, 165, 166),
(166, 166, 167),
(167, 167, 171),
(168, 168, 160),
(169, 169, 172),
(170, 170, 173),
(171, 171, 168),
(172, 172, 175),
(173, 173, 174),
(174, 174, 170),
(175, 175, 176),
(176, 176, 169),
(177, 177, 177),
(178, 178, 181),
(179, 179, 182),
(180, 180, 183),
(181, 181, 185),
(182, 182, 184),
(183, 183, 178),
(184, 184, 180),
(185, 185, 186),
(186, 186, 189),
(187, 187, 179),
(188, 188, 191),
(189, 189, 192),
(190, 190, 188),
(191, 191, 193),
(192, 192, 195),
(193, 193, 194),
(194, 194, 187),
(195, 195, 196),
(196, 196, 198),
(197, 197, 190),
(198, 198, 201),
(199, 199, 204),
(200, 200, 203),
(201, 201, 199),
(202, 202, 208),
(203, 203, 205),
(205, 204, 209),
(206, 205, 197),
(204, 206, 221),
(207, 207, 211),
(208, 208, 200),
(209, 209, 202),
(210, 210, 212),
(211, 211, 214),
(212, 212, 218),
(213, 213, 215),
(214, 214, 206),
(215, 215, 207),
(216, 216, 219),
(217, 217, 231),
(218, 218, 210),
(219, 219, 222),
(220, 220, 224),
(221, 221, 213),
(222, 222, 223),
(223, 223, 225),
(224, 224, 228),
(225, 225, 229),
(226, 226, 216),
(227, 227, 217),
(228, 228, 220),
(229, 229, 227),
(230, 230, 232),
(231, 231, 234),
(232, 232, 233),
(233, 233, 235),
(234, 234, 226),
(235, 235, 230),
(236, 236, 238),
(237, 237, 239),
(238, 238, 241),
(239, 239, 244),
(240, 240, 243),
(241, 241, 237),
(242, 242, 242),
(243, 243, 245),
(244, 244, 249),
(245, 245, 240),
(246, 246, 236),
(247, 247, 247),
(248, 248, 251),
(249, 249, 246),
(250, 250, 254),
(251, 251, 252),
(252, 252, 253),
(253, 253, 255),
(254, 254, 248),
(255, 255, 259),
(256, 256, 250),
(257, 257, 257),
(258, 258, 256),
(259, 259, 261),
(260, 260, 258),
(261, 261, 262),
(262, 262, 263),
(263, 263, 260),
(264, 264, 265),
(265, 265, 274),
(266, 266, 264),
(267, 267, 272),
(268, 268, 275),
(269, 269, 266),
(270, 270, 278),
(271, 271, 267),
(272, 272, 268),
(273, 273, 277),
(275, 274, 270),
(274, 275, 269),
(276, 276, 280),
(277, 277, 281),
(278, 278, 284),
(279, 279, 271),
(280, 280, 273),
(281, 281, 287),
(282, 282, 276),
(283, 283, 286),
(284, 284, 279),
(285, 285, 289),
(286, 286, 293),
(287, 287, 291),
(288, 288, 296),
(289, 289, 282),
(290, 290, 283),
(291, 291, 297),
(292, 292, 285),
(293, 293, 298),
(294, 294, 288),
(295, 295, 301),
(296, 296, 302),
(297, 297, 299),
(298, 298, 306),
(299, 299, 290),
(300, 300, 295),
(301, 301, 292),
(302, 302, 307),
(303, 303, 308),
(304, 304, 294),
(305, 305, 309),
(306, 306, 313),
(307, 307, 315),
(308, 308, 310),
(309, 309, 300),
(310, 310, 305),
(311, 311, 314),
(312, 312, 303),
(313, 313, 311),
(314, 314, 304),
(315, 315, 319),
(316, 316, 320),
(317, 317, 325),
(318, 318, 322),
(319, 319, 312),
(320, 320, 317),
(321, 321, 318),
(322, 322, 321),
(323, 323, 323),
(324, 324, 316),
(325, 325, 335),
(326, 326, 333),
(327, 327, 334),
(328, 328, 337),
(329, 329, 324),
(330, 330, 327),
(331, 331, 329),
(332, 332, 328),
(333, 333, 331),
(334, 334, 326),
(335, 335, 341),
(336, 336, 344),
(337, 337, 347),
(338, 338, 345),
(339, 339, 336),
(340, 340, 332),
(341, 341, 330),
(342, 342, 339),
(343, 343, 343),
(344, 344, 338),
(345, 345, 349),
(346, 346, 353),
(347, 347, 350),
(348, 348, 351),
(349, 349, 346),
(350, 350, 340),
(351, 351, 342),
(352, 352, 352),
(353, 353, 354),
(354, 354, 348),
(355, 355, 359),
(356, 356, 364),
(357, 357, 362),
(358, 358, 361),
(359, 359, 356),
(360, 360, 355),
(361, 361, 357),
(362, 362, 363),
(363, 363, 365),
(364, 364, 358),
(365, 365, 367),
(366, 366, 366),
(367, 367, 360),
(368, 368, 373),
(369, 369, 369),
(370, 370, 368),
(371, 371, 371),
(372, 372, 372),
(373, 373, 370),
(374, 374, 375),
(375, 375, 374),
(376, 376, 377),
(377, 377, 378),
(378, 378, 376),
(379, 379, 382);

-- --------------------------------------------------------

--
-- Structure de la table `cables`
--

CREATE TABLE `cables` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `idf` varchar(255) DEFAULT NULL,
  `idb` varchar(255) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cables`
--

INSERT INTO `cables` (`id`, `document_id`, `reference`, `idf`, `idb`, `qte`, `project_name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'ytlg19fsex9i2pu35jk6gy76', '238314431-07', '238314431-07-1', '9020198', 0, 'ETO', '2025-01-18 14:51:13.551000', '2025-01-18 14:51:13.551000', NULL, NULL, NULL, NULL),
(2, 'sq6tzejmhj7985e3kcfg5skf', '238314431-07', '238314431-07-2', '9020198', 900, 'ETO', '2025-01-18 14:51:13.573000', '2025-01-22 10:07:34.488000', NULL, NULL, NULL, NULL),
(3, 'gs4hj9uj97hgy0tmnllqhjpy', '238314432-07', '238314432-07-1', '9020198', 50, 'ETO', '2025-01-18 14:51:13.790000', '2025-01-19 20:04:13.235000', NULL, NULL, NULL, NULL),
(4, 'pl2tl7xdz0lvpn6gq6c44b77', '154000535-07', '154000535-07-1', '9000111', 0, 'APAG', '2025-01-18 14:51:13.839000', '2025-01-18 14:51:13.839000', NULL, NULL, NULL, NULL),
(5, 'ue9m4pi84rgn0mfw4tkxjqu3', '154000535-07', '154000535-07-2', '9000774', 0, 'APAG', '2025-01-18 14:51:13.872000', '2025-01-18 14:51:13.872000', NULL, NULL, NULL, NULL),
(6, 'srx3u2cyuzx6368kkblj5k3p', '154000535-07', '154000535-07-3', '9000615', 0, 'APAG', '2025-01-18 14:51:13.917000', '2025-01-18 14:51:13.917000', NULL, NULL, NULL, NULL),
(7, 'omrcpeoupji17heky3o4cz75', '132004450-07', '132004450-07-1', '9002715', 0, 'Johnson Electric', '2025-01-18 14:51:13.943000', '2025-01-18 14:51:13.943000', NULL, NULL, NULL, NULL),
(8, 'st2ovwbxwvyw5rtpekuqr8oc', '132004420-07', '132004420-07-1', '9002470', 0, 'Johnson Electric', '2025-01-18 14:51:13.950000', '2025-01-18 14:51:13.950000', NULL, NULL, NULL, NULL),
(9, 'ytlg19fsex9i2pu35jk6gy76', '238314431-07', '238314431-07-1', '9020198', 0, 'ETO', '2025-01-18 14:51:13.551000', '2025-01-18 14:51:13.551000', '2025-01-18 14:51:13.966000', NULL, NULL, NULL),
(10, 'ikgzk1drqpxv6u238fpuacff', '132004420-07', '132004420-07-2', '9002469', 0, 'Johnson Electric', '2025-01-18 14:51:13.996000', '2025-01-18 14:51:13.996000', NULL, NULL, NULL, NULL),
(11, 'ufsmrjhlflzvhzyemyot2k9t', '132008212-07', '132008212-07-1', '9010360', 0, 'Johnson Electric', '2025-01-18 14:51:13.998000', '2025-01-18 14:51:13.998000', NULL, NULL, NULL, NULL),
(14, 'pl2tl7xdz0lvpn6gq6c44b77', '154000535-07', '154000535-07-1', '9000111', 0, 'APAG', '2025-01-18 14:51:13.839000', '2025-01-18 14:51:13.839000', '2025-01-18 14:51:14.021000', NULL, NULL, NULL),
(15, 'ue9m4pi84rgn0mfw4tkxjqu3', '154000535-07', '154000535-07-2', '9000774', 0, 'APAG', '2025-01-18 14:51:13.872000', '2025-01-18 14:51:13.872000', '2025-01-18 14:51:14.023000', NULL, NULL, NULL),
(16, 'srx3u2cyuzx6368kkblj5k3p', '154000535-07', '154000535-07-3', '9000615', 0, 'APAG', '2025-01-18 14:51:13.917000', '2025-01-18 14:51:13.917000', '2025-01-18 14:51:14.032000', NULL, NULL, NULL),
(17, 'omrcpeoupji17heky3o4cz75', '132004450-07', '132004450-07-1', '9002715', 0, 'Johnson Electric', '2025-01-18 14:51:13.943000', '2025-01-18 14:51:13.943000', '2025-01-18 14:51:14.034000', NULL, NULL, NULL),
(18, 'syz1q2982432o8ga2guwjcxu', '132008212-07', '132008212-07-2', '9000821', 0, 'Johnson Electric', '2025-01-18 14:51:14.037000', '2025-01-18 14:51:14.037000', NULL, NULL, NULL, NULL),
(19, 'z3imxexdbtrqkmlili8xlb20', '132008212-07', '132008212-07-3', '9010377', 0, 'Johnson Electric', '2025-01-18 14:51:14.039000', '2025-01-18 14:51:14.039000', NULL, NULL, NULL, NULL),
(20, 'st2ovwbxwvyw5rtpekuqr8oc', '132004420-07', '132004420-07-1', '9002470', 0, 'Johnson Electric', '2025-01-18 14:51:13.950000', '2025-01-18 14:51:13.950000', '2025-01-18 14:51:14.040000', NULL, NULL, NULL),
(21, 'ufsmrjhlflzvhzyemyot2k9t', '132008212-07', '132008212-07-1', '9010360', 0, 'Johnson Electric', '2025-01-18 14:51:13.998000', '2025-01-18 14:51:13.998000', '2025-01-18 14:51:14.047000', NULL, NULL, NULL),
(22, 'ytzoss53hz0vc2in81i19714', '447001220-07', '447001220-07-1', '9010377', 0, 'Switch-it', '2025-01-18 14:51:14.054000', '2025-01-18 14:51:14.054000', NULL, NULL, NULL, NULL),
(23, 'ikgzk1drqpxv6u238fpuacff', '132004420-07', '132004420-07-2', '9002469', 0, 'Johnson Electric', '2025-01-18 14:51:13.996000', '2025-01-18 14:51:13.996000', '2025-01-18 14:51:14.057000', NULL, NULL, NULL),
(24, 'kudcs18dlhj10tdpupo9d3je', '447001220-07', '447001220-07-2', '9000821', 0, 'Switch-it', '2025-01-18 14:51:14.071000', '2025-01-18 14:51:14.071000', NULL, NULL, NULL, NULL),
(25, 'rugl0lgq5n8wf5xut96e5w5w', '447001220-07', '447001220-07-3', '9010360', 0, 'Switch-it', '2025-01-18 14:51:14.073000', '2025-01-18 14:51:14.073000', NULL, NULL, NULL, NULL),
(26, 'bo6zkfq6xk0lmuvng40wd680', '447000900-07', '447000900-07-1', '9002704', 0, 'switch-it', '2025-01-18 14:51:14.094000', '2025-01-18 14:51:14.094000', NULL, NULL, NULL, NULL),
(27, 'mqd6l4jqs6me97nccvkm0hbj', '447000900-07', '447000900-07-2', '9000615', 0, 'switch-it', '2025-01-18 14:51:14.097000', '2025-01-18 14:51:14.097000', NULL, NULL, NULL, NULL),
(28, 'l3lrr7m3qvxzqbs9fy1ugmid', '447300691-07', '447300691-07-1', '9000613', 0, 'switch-it', '2025-01-18 14:51:14.175000', '2025-01-18 14:51:14.175000', NULL, NULL, NULL, NULL),
(29, 'jah3wseq45rpkhbeqoxo6wrx', '447300691-07', '447300691-07-2', '9000615', 0, 'switch-it', '2025-01-18 14:51:14.177000', '2025-01-18 14:51:14.177000', NULL, NULL, NULL, NULL),
(30, 'syz1q2982432o8ga2guwjcxu', '132008212-07', '132008212-07-2', '9000821', 0, 'Johnson Electric', '2025-01-18 14:51:14.037000', '2025-01-18 14:51:14.037000', '2025-01-18 14:51:14.200000', NULL, NULL, NULL),
(31, 'z3imxexdbtrqkmlili8xlb20', '132008212-07', '132008212-07-3', '9010377', 0, 'Johnson Electric', '2025-01-18 14:51:14.039000', '2025-01-18 14:51:14.039000', '2025-01-18 14:51:14.214000', NULL, NULL, NULL),
(32, 'euacjb7ptimnmz8jfa226woa', '447000704-07', '447000704-07-1', '9000615', 0, 'Switch-it', '2025-01-18 14:51:14.217000', '2025-01-18 14:51:14.217000', NULL, NULL, NULL, NULL),
(33, 'ytzoss53hz0vc2in81i19714', '447001220-07', '447001220-07-1', '9010377', 0, 'Switch-it', '2025-01-18 14:51:14.054000', '2025-01-18 14:51:14.054000', '2025-01-18 14:51:14.259000', NULL, NULL, NULL),
(34, 'kudcs18dlhj10tdpupo9d3je', '447001220-07', '447001220-07-2', '9000821', 0, 'Switch-it', '2025-01-18 14:51:14.071000', '2025-01-18 14:51:14.071000', '2025-01-18 14:51:14.268000', NULL, NULL, NULL),
(35, 'l3lrr7m3qvxzqbs9fy1ugmid', '447300691-07', '447300691-07-1', '9000613', 0, 'switch-it', '2025-01-18 14:51:14.175000', '2025-01-18 14:51:14.175000', '2025-01-18 14:51:14.277000', NULL, NULL, NULL),
(36, 'rugl0lgq5n8wf5xut96e5w5w', '447001220-07', '447001220-07-3', '9010360', 0, 'Switch-it', '2025-01-18 14:51:14.073000', '2025-01-18 14:51:14.073000', '2025-01-18 14:51:14.283000', NULL, NULL, NULL),
(37, 'bo6zkfq6xk0lmuvng40wd680', '447000900-07', '447000900-07-1', '9002704', 0, 'switch-it', '2025-01-18 14:51:14.094000', '2025-01-18 14:51:14.094000', '2025-01-18 14:51:14.294000', NULL, NULL, NULL),
(38, 'mqd6l4jqs6me97nccvkm0hbj', '447000900-07', '447000900-07-2', '9000615', 0, 'switch-it', '2025-01-18 14:51:14.097000', '2025-01-18 14:51:14.097000', '2025-01-18 14:51:14.296000', NULL, NULL, NULL),
(39, 'mec4orfhgrn04xfehyih1ixg', '447000704-07', '447000704-07-2', '9002704', 0, 'Switch-it', '2025-01-18 14:51:14.307000', '2025-01-18 14:51:14.307000', NULL, NULL, NULL, NULL),
(40, 'xxfmtuc1s2ok6kafmv5h8tjv', '390052130-07', '390052130-07-1', '9010458', 0, 'Grammer', '2025-01-18 14:51:14.323000', '2025-01-18 14:51:14.323000', NULL, NULL, NULL, NULL),
(41, 'jah3wseq45rpkhbeqoxo6wrx', '447300691-07', '447300691-07-2', '9000615', 0, 'switch-it', '2025-01-18 14:51:14.177000', '2025-01-18 14:51:14.177000', '2025-01-18 14:51:14.325000', NULL, NULL, NULL),
(42, 'euacjb7ptimnmz8jfa226woa', '447000704-07', '447000704-07-1', '9000615', 0, 'Switch-it', '2025-01-18 14:51:14.217000', '2025-01-18 14:51:14.217000', '2025-01-18 14:51:14.335000', NULL, NULL, NULL),
(43, 'zxjvxnw3bdf3i6flb0ddx7qh', '390052130-07', '390052130-07-2', '9010154', 50, 'Grammer', '2025-01-18 14:51:14.338000', '2025-01-18 14:51:37.258000', NULL, NULL, NULL, NULL),
(44, 'lf2r1qjpoozbd1habtji1hoo', '390052130-07', '390052130-07-3', '9007608', 0, 'Grammer', '2025-01-18 14:51:14.340000', '2025-01-18 14:51:14.340000', NULL, NULL, NULL, NULL),
(45, 'xminjeykl2qy0yayf8b9q8dk', '390052130-07', '390052130-07-sp1', '9010458', 0, 'Grammer', '2025-01-18 14:51:14.358000', '2025-01-18 14:51:14.358000', NULL, NULL, NULL, NULL),
(46, 'siuifwnba649v0jceqsog0gg', '390052130-07', '390052130-07-sp1', '9010154', 0, 'Grammer', '2025-01-18 14:51:14.360000', '2025-01-18 14:51:14.360000', NULL, NULL, NULL, NULL),
(47, 'pll1u1aevguktqsvp92ffyyr', '390052130-07', '390052130-07-sp1', '9007608', 0, 'Grammer', '2025-01-18 14:51:14.363000', '2025-01-18 14:51:14.363000', NULL, NULL, NULL, NULL),
(48, 'l7gd4z9cq18gjw1p80ayhz9w', '390052130-07', '390052130-07-4', '9010244', 0, 'Grammer', '2025-01-18 14:51:14.364000', '2025-01-18 14:51:14.364000', NULL, NULL, NULL, NULL),
(49, 'zy90dmrbueh3wxvnxk456njc', '390052130-07', '390052130-07-5', '9080305', 0, 'Grammer', '2025-01-18 14:51:14.392000', '2025-01-18 14:51:14.392000', NULL, NULL, NULL, NULL),
(50, 'wvb2xxlkhi14709dwu82inkj', '390052130-07', '390052130-07-sp2', '9010244', 0, 'Grammer', '2025-01-18 14:51:14.394000', '2025-01-18 14:51:14.394000', NULL, NULL, NULL, NULL),
(51, 'mec4orfhgrn04xfehyih1ixg', '447000704-07', '447000704-07-2', '9002704', 0, 'Switch-it', '2025-01-18 14:51:14.307000', '2025-01-18 14:51:14.307000', '2025-01-18 14:51:14.397000', NULL, NULL, NULL),
(52, 'xxfmtuc1s2ok6kafmv5h8tjv', '390052130-07', '390052130-07-1', '9010458', 0, 'Grammer', '2025-01-18 14:51:14.323000', '2025-01-18 14:51:14.323000', '2025-01-18 14:51:14.406000', NULL, NULL, NULL),
(54, 'lf2r1qjpoozbd1habtji1hoo', '390052130-07', '390052130-07-3', '9007608', 0, 'Grammer', '2025-01-18 14:51:14.340000', '2025-01-18 14:51:14.340000', '2025-01-18 14:51:14.416000', NULL, NULL, NULL),
(55, 'xminjeykl2qy0yayf8b9q8dk', '390052130-07', '390052130-07-sp1', '9010458', 0, 'Grammer', '2025-01-18 14:51:14.358000', '2025-01-18 14:51:14.358000', '2025-01-18 14:51:14.418000', NULL, NULL, NULL),
(56, 'siuifwnba649v0jceqsog0gg', '390052130-07', '390052130-07-sp1', '9010154', 0, 'Grammer', '2025-01-18 14:51:14.360000', '2025-01-18 14:51:14.360000', '2025-01-18 14:51:14.420000', NULL, NULL, NULL),
(57, 'pll1u1aevguktqsvp92ffyyr', '390052130-07', '390052130-07-sp1', '9007608', 0, 'Grammer', '2025-01-18 14:51:14.363000', '2025-01-18 14:51:14.363000', '2025-01-18 14:51:14.421000', NULL, NULL, NULL),
(58, 'l7gd4z9cq18gjw1p80ayhz9w', '390052130-07', '390052130-07-4', '9010244', 0, 'Grammer', '2025-01-18 14:51:14.364000', '2025-01-18 14:51:14.364000', '2025-01-18 14:51:14.423000', NULL, NULL, NULL),
(59, 'bbdkx6pc8bxd52ydw0yxawhw', '390052130-07', '390052130-07-sp2', '9080305', 0, 'Grammer', '2025-01-18 14:51:14.430000', '2025-01-18 14:51:14.430000', NULL, NULL, NULL, NULL),
(60, 'wvb2xxlkhi14709dwu82inkj', '390052130-07', '390052130-07-sp2', '9010244', 0, 'Grammer', '2025-01-18 14:51:14.394000', '2025-01-18 14:51:14.394000', '2025-01-18 14:51:14.453000', NULL, NULL, NULL),
(61, 'zy90dmrbueh3wxvnxk456njc', '390052130-07', '390052130-07-5', '9080305', 0, 'Grammer', '2025-01-18 14:51:14.392000', '2025-01-18 14:51:14.392000', '2025-01-18 14:51:14.454000', NULL, NULL, NULL),
(62, 'fmd0vtzn4z0g2nd8mg5wxg2b', '132004450-07', '132004450-07-2', '9002470', 0, 'Johnson Electric', '2025-01-18 14:51:14.490000', '2025-01-18 14:51:14.490000', NULL, NULL, NULL, NULL),
(63, 'loqhhshpmk8gekzzt1tour9i', '132004450-07', '132004450-07-3', '9002468', 0, 'Johnson Electric', '2025-01-18 14:51:14.541000', '2025-01-18 14:51:14.541000', NULL, NULL, NULL, NULL),
(64, 'r93j1bvqoqw471f1pnhqw2wy', '132004450-07', '132004450-07-4', '9002469', 0, 'Johnson Electric', '2025-01-18 14:51:14.583000', '2025-01-18 14:51:14.583000', NULL, NULL, NULL, NULL),
(65, 'yzv5mfnaj6b0atcoijzkzbvr', '390052130-07', '390052130-07-6', '9007509', 0, 'Grammer', '2025-01-18 14:51:14.591000', '2025-01-18 14:51:14.591000', NULL, NULL, NULL, NULL),
(66, 'y0nkcnyuam72jewy8n54efie', '450510002-07', '450510002-07-2', '9007569', 0, 'ISRI', '2025-01-18 14:51:14.592000', '2025-01-18 14:51:14.592000', NULL, NULL, NULL, NULL),
(67, 'p50b2yj5h1qg3hfssob5s378', '450510002-07', '450510002-07-4', '9080305', 0, 'ISRI', '2025-01-18 14:51:14.604000', '2025-01-18 14:51:14.604000', NULL, NULL, NULL, NULL),
(68, 'oqod5oxms2p8atak3lx7auy5', '450510002-07', '450510002-07-5', '9010102', 0, 'ISRI', '2025-01-18 14:51:14.605000', '2025-01-18 14:51:14.605000', NULL, NULL, NULL, NULL),
(69, 'bbdkx6pc8bxd52ydw0yxawhw', '390052130-07', '390052130-07-sp2', '9080305', 0, 'Grammer', '2025-01-18 14:51:14.430000', '2025-01-18 14:51:14.430000', '2025-01-18 14:51:14.614000', NULL, NULL, NULL),
(70, 'vowck1yqgywnxesisobk3br5', '450510005-07', '450510005-07-1', '9010057', 0, 'ISRI', '2025-01-18 14:51:14.618000', '2025-01-18 14:51:14.618000', NULL, NULL, NULL, NULL),
(71, 'cpjw9psfx2c1i66t5buqsmwi', '450510005-07', '450510005-07-2', '9007570', 0, 'ISRI', '2025-01-18 14:51:14.620000', '2025-01-18 14:51:14.620000', NULL, NULL, NULL, NULL),
(72, 'fmd0vtzn4z0g2nd8mg5wxg2b', '132004450-07', '132004450-07-2', '9002470', 0, 'Johnson Electric', '2025-01-18 14:51:14.490000', '2025-01-18 14:51:14.490000', '2025-01-18 14:51:14.632000', NULL, NULL, NULL),
(73, 'loqhhshpmk8gekzzt1tour9i', '132004450-07', '132004450-07-3', '9002468', 0, 'Johnson Electric', '2025-01-18 14:51:14.541000', '2025-01-18 14:51:14.541000', '2025-01-18 14:51:14.638000', NULL, NULL, NULL),
(74, 'r93j1bvqoqw471f1pnhqw2wy', '132004450-07', '132004450-07-4', '9002469', 0, 'Johnson Electric', '2025-01-18 14:51:14.583000', '2025-01-18 14:51:14.583000', '2025-01-18 14:51:14.641000', NULL, NULL, NULL),
(75, 'yzv5mfnaj6b0atcoijzkzbvr', '390052130-07', '390052130-07-6', '9007509', 0, 'Grammer', '2025-01-18 14:51:14.591000', '2025-01-18 14:51:14.591000', '2025-01-18 14:51:14.642000', NULL, NULL, NULL),
(76, 'y0nkcnyuam72jewy8n54efie', '450510002-07', '450510002-07-2', '9007569', 0, 'ISRI', '2025-01-18 14:51:14.592000', '2025-01-18 14:51:14.592000', '2025-01-18 14:51:14.645000', NULL, NULL, NULL),
(77, 'p50b2yj5h1qg3hfssob5s378', '450510002-07', '450510002-07-4', '9080305', 0, 'ISRI', '2025-01-18 14:51:14.604000', '2025-01-18 14:51:14.604000', '2025-01-18 14:51:14.652000', NULL, NULL, NULL),
(78, 'qh5snzy2gwx2iml2nuvo0qwo', '450510005-07', '450510005-07-3', '9007570', 0, 'ISRI', '2025-01-18 14:51:14.655000', '2025-01-18 14:51:14.655000', NULL, NULL, NULL, NULL),
(79, 'oqod5oxms2p8atak3lx7auy5', '450510002-07', '450510002-07-5', '9010102', 0, 'ISRI', '2025-01-18 14:51:14.605000', '2025-01-18 14:51:14.605000', '2025-01-18 14:51:14.656000', NULL, NULL, NULL),
(80, 'vowck1yqgywnxesisobk3br5', '450510005-07', '450510005-07-1', '9010057', 0, 'ISRI', '2025-01-18 14:51:14.618000', '2025-01-18 14:51:14.618000', '2025-01-18 14:51:14.663000', NULL, NULL, NULL),
(81, 'cpjw9psfx2c1i66t5buqsmwi', '450510005-07', '450510005-07-2', '9007570', 0, 'ISRI', '2025-01-18 14:51:14.620000', '2025-01-18 14:51:14.620000', '2025-01-18 14:51:14.666000', NULL, NULL, NULL),
(82, 'kzm9pire49in043kvbryyynq', '450510005-07', '450510005-07-4', '9007571', 0, 'ISRI', '2025-01-18 14:51:14.669000', '2025-01-18 14:51:14.669000', NULL, NULL, NULL, NULL),
(83, 'b8098tgazht4i0apyyb962og', '450510005-07', '450510005-07-5', '9007571', 0, 'ISRI', '2025-01-18 14:51:14.686000', '2025-01-18 14:51:14.686000', NULL, NULL, NULL, NULL),
(84, 'wbbnd78sbxutee1gd4a8xx6f', '450510005-07', '450510005-07-6', '9010133', 0, 'ISRI', '2025-01-18 14:51:14.687000', '2025-01-18 14:51:14.687000', NULL, NULL, NULL, NULL),
(85, 'kyoenggf1mhv3zupvkm0misg', '450510005-07', '450510005-07-7', '9010455', 0, 'ISRI', '2025-01-18 14:51:14.689000', '2025-01-18 14:51:14.689000', NULL, NULL, NULL, NULL),
(86, 'pkv07wnph3fcvo1vu7r6ynvi', '450516301-07', '450516301-07-1', '9010455', 0, 'ISRI', '2025-01-18 14:51:14.712000', '2025-01-18 14:51:14.712000', NULL, NULL, NULL, NULL),
(87, 'd8eduafi0m3ylc1g1svvj2k6', '450535417-07', '450535417-07-1', '9010095', 0, 'ISRI', '2025-01-18 14:51:14.714000', '2025-01-18 14:51:14.714000', NULL, NULL, NULL, NULL),
(88, 'mjngmjzfwjz8swdrnjruhbm1', '450535417-07', '450535417-07-2', '9010445', 0, 'ISRI', '2025-01-18 14:51:14.749000', '2025-01-18 14:51:14.749000', NULL, NULL, NULL, NULL),
(89, 'wu46ugumqh8xumunus8ye3vh', '231009269-07', '231009269-07-1', '9004070', 0, 'BCS 1', '2025-01-18 14:51:14.753000', '2025-01-18 14:51:14.753000', NULL, NULL, NULL, NULL),
(90, 'picy8o7f70renh3qilrkjjzo', '231032123-07', '231032123-07-1', '9004070', 0, 'BCS 1', '2025-01-18 14:51:14.754000', '2025-01-18 14:51:14.754000', NULL, NULL, NULL, NULL),
(91, 'qh5snzy2gwx2iml2nuvo0qwo', '450510005-07', '450510005-07-3', '9007570', 0, 'ISRI', '2025-01-18 14:51:14.655000', '2025-01-18 14:51:14.655000', '2025-01-18 14:51:14.777000', NULL, NULL, NULL),
(92, 'kzm9pire49in043kvbryyynq', '450510005-07', '450510005-07-4', '9007571', 0, 'ISRI', '2025-01-18 14:51:14.669000', '2025-01-18 14:51:14.669000', '2025-01-18 14:51:14.801000', NULL, NULL, NULL),
(93, 'wbbnd78sbxutee1gd4a8xx6f', '450510005-07', '450510005-07-6', '9010133', 0, 'ISRI', '2025-01-18 14:51:14.687000', '2025-01-18 14:51:14.687000', '2025-01-18 14:51:14.802000', NULL, NULL, NULL),
(94, 'b8098tgazht4i0apyyb962og', '450510005-07', '450510005-07-5', '9007571', 0, 'ISRI', '2025-01-18 14:51:14.686000', '2025-01-18 14:51:14.686000', '2025-01-18 14:51:14.809000', NULL, NULL, NULL),
(95, 'kyoenggf1mhv3zupvkm0misg', '450510005-07', '450510005-07-7', '9010455', 0, 'ISRI', '2025-01-18 14:51:14.689000', '2025-01-18 14:51:14.689000', '2025-01-18 14:51:14.819000', NULL, NULL, NULL),
(96, 'pkv07wnph3fcvo1vu7r6ynvi', '450516301-07', '450516301-07-1', '9010455', 0, 'ISRI', '2025-01-18 14:51:14.712000', '2025-01-18 14:51:14.712000', '2025-01-18 14:51:14.826000', NULL, NULL, NULL),
(97, 'd8eduafi0m3ylc1g1svvj2k6', '450535417-07', '450535417-07-1', '9010095', 0, 'ISRI', '2025-01-18 14:51:14.714000', '2025-01-18 14:51:14.714000', '2025-01-18 14:51:14.837000', NULL, NULL, NULL),
(98, 't51tuzu1518aj4akd0nwvkvy', '231740022-07', '231740022-07-1', '9011184', 0, 'BCS 1', '2025-01-18 14:51:14.841000', '2025-01-18 14:51:14.841000', NULL, NULL, NULL, NULL),
(99, 'mjngmjzfwjz8swdrnjruhbm1', '450535417-07', '450535417-07-2', '9010445', 0, 'ISRI', '2025-01-18 14:51:14.749000', '2025-01-18 14:51:14.749000', '2025-01-18 14:51:14.847000', NULL, NULL, NULL),
(100, 'wu46ugumqh8xumunus8ye3vh', '231009269-07', '231009269-07-1', '9004070', 0, 'BCS 1', '2025-01-18 14:51:14.753000', '2025-01-18 14:51:14.753000', '2025-01-18 14:51:14.850000', NULL, NULL, NULL),
(101, 'qjpimordt355tnm4yx4d9mcv', '390052130-07', '390052130-07-7', '9007510', 0, 'Grammer', '2025-01-18 14:51:14.871000', '2025-01-18 14:51:14.871000', NULL, NULL, NULL, NULL),
(102, 'sjb6hermypbine8i7us808mj', '450510002-07', '450510002-07-1', '9010445', 0, 'ISRI', '2025-01-18 14:51:14.873000', '2025-01-18 14:51:14.873000', NULL, NULL, NULL, NULL),
(103, 'picy8o7f70renh3qilrkjjzo', '231032123-07', '231032123-07-1', '9004070', 0, 'BCS 1', '2025-01-18 14:51:14.754000', '2025-01-18 14:51:14.754000', '2025-01-18 14:51:14.875000', NULL, NULL, NULL),
(104, 'e1ba3brrbol9gpkjori5pps1', '390052130-07', '390052130-07-8', '9007511', 0, 'Grammer', '2025-01-18 14:51:14.906000', '2025-01-18 14:51:14.906000', NULL, NULL, NULL, NULL),
(105, 'raadi6lxvmwurjyfj6ilycl1', '390052130-07', '390052130-07-sp2', '9007509', 0, 'Grammer', '2025-01-18 14:51:14.908000', '2025-01-18 14:51:14.908000', NULL, NULL, NULL, NULL),
(106, 'jwv49d3g94u8kdt1silfgj17', '450510002-07', '450510002-07-3', '9010672', 0, 'ISRI', '2025-01-18 14:51:14.932000', '2025-01-18 14:51:14.932000', NULL, NULL, NULL, NULL),
(107, 'rfnn6d9lgx8koyw5qi7btrbn', '450516301-07', '450516301-07-2', '9010455', 0, 'ISRI', '2025-01-18 14:51:14.934000', '2025-01-18 14:51:14.934000', NULL, NULL, NULL, NULL),
(108, 'xo2dboadoigs38ndx78n12d7', '231740022-07', '231740022-07-2', '9002469', 0, 'BCS 1', '2025-01-18 14:51:14.953000', '2025-01-18 14:51:14.953000', NULL, NULL, NULL, NULL),
(109, 'p2hzalh7257g7ugvxatq7us9', '231758040-07', '231758040-07-1', '9004517', 0, 'BCS 1', '2025-01-18 14:51:14.955000', '2025-01-18 14:51:14.955000', NULL, NULL, NULL, NULL),
(110, 'nz681ml7h8uqg9tve2312mqr', '231758040-07', '231758040-07-2', '9004070', 0, 'BCS 1', '2025-01-18 14:51:14.972000', '2025-01-18 14:51:14.972000', NULL, NULL, NULL, NULL),
(111, 't51tuzu1518aj4akd0nwvkvy', '231740022-07', '231740022-07-1', '9011184', 0, 'BCS 1', '2025-01-18 14:51:14.841000', '2025-01-18 14:51:14.841000', '2025-01-18 14:51:14.976000', NULL, NULL, NULL),
(112, 'qjpimordt355tnm4yx4d9mcv', '390052130-07', '390052130-07-7', '9007510', 0, 'Grammer', '2025-01-18 14:51:14.871000', '2025-01-18 14:51:14.871000', '2025-01-18 14:51:14.980000', NULL, NULL, NULL),
(113, 'sjb6hermypbine8i7us808mj', '450510002-07', '450510002-07-1', '9010445', 0, 'ISRI', '2025-01-18 14:51:14.873000', '2025-01-18 14:51:14.873000', '2025-01-18 14:51:14.983000', NULL, NULL, NULL),
(114, 'jwv49d3g94u8kdt1silfgj17', '450510002-07', '450510002-07-3', '9010672', 0, 'ISRI', '2025-01-18 14:51:14.932000', '2025-01-18 14:51:14.932000', '2025-01-18 14:51:14.985000', NULL, NULL, NULL),
(115, 'e1ba3brrbol9gpkjori5pps1', '390052130-07', '390052130-07-8', '9007511', 0, 'Grammer', '2025-01-18 14:51:14.906000', '2025-01-18 14:51:14.906000', '2025-01-18 14:51:14.989000', NULL, NULL, NULL),
(116, 'raadi6lxvmwurjyfj6ilycl1', '390052130-07', '390052130-07-sp2', '9007509', 0, 'Grammer', '2025-01-18 14:51:14.908000', '2025-01-18 14:51:14.908000', '2025-01-18 14:51:14.993000', NULL, NULL, NULL),
(117, 'rfnn6d9lgx8koyw5qi7btrbn', '450516301-07', '450516301-07-2', '9010455', 0, 'ISRI', '2025-01-18 14:51:14.934000', '2025-01-18 14:51:14.934000', '2025-01-18 14:51:15.000000', NULL, NULL, NULL),
(118, 'xo2dboadoigs38ndx78n12d7', '231740022-07', '231740022-07-2', '9002469', 0, 'BCS 1', '2025-01-18 14:51:14.953000', '2025-01-18 14:51:14.953000', '2025-01-18 14:51:15.002000', NULL, NULL, NULL),
(119, 'p2hzalh7257g7ugvxatq7us9', '231758040-07', '231758040-07-1', '9004517', 0, 'BCS 1', '2025-01-18 14:51:14.955000', '2025-01-18 14:51:14.955000', '2025-01-18 14:51:15.004000', NULL, NULL, NULL),
(120, 'igbg3xinns00asr7hq542lmx', '231008645-07', '231008645-07-1', '9002802', 0, 'BCS 2', '2025-01-18 14:51:15.014000', '2025-01-18 14:51:15.014000', NULL, NULL, NULL, NULL),
(121, 'q7tbidp4loanqcwx59nrjsl5', '231008645-07', '231008645-07-2', '9002803', 0, 'BCS 2', '2025-01-18 14:51:15.017000', '2025-01-18 14:51:15.017000', NULL, NULL, NULL, NULL),
(122, 'jxftvbuui3moh36d8f9zti6i', '231008645-07', '231008645-07-4', '9002805', 0, 'BCS 2', '2025-01-18 14:51:15.018000', '2025-01-18 14:51:15.018000', NULL, NULL, NULL, NULL),
(123, 'nz681ml7h8uqg9tve2312mqr', '231758040-07', '231758040-07-2', '9004070', 0, 'BCS 1', '2025-01-18 14:51:14.972000', '2025-01-18 14:51:14.972000', '2025-01-18 14:51:15.020000', NULL, NULL, NULL),
(124, 'ad84wingz0an93yadx0ptmgq', '231008645-07', '231008645-07-5', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.037000', '2025-01-18 14:51:15.037000', NULL, NULL, NULL, NULL),
(125, 'y49xapd69jw8pzk1ouck17k8', '231008645-07', '231008645-07-6', '9002806', 0, 'BCS 2', '2025-01-18 14:51:15.039000', '2025-01-18 14:51:15.039000', NULL, NULL, NULL, NULL),
(126, 'u4bkcz6kh4iszvqhqmsnk828', '231008645-07', '231008645-07-7', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.040000', '2025-01-18 14:51:15.040000', NULL, NULL, NULL, NULL),
(127, 'lof3dfuurz8q13o9w5g9grry', '231088053-07', '231088053-07-1', '9002802', 0, 'BCS 2', '2025-01-18 14:51:15.058000', '2025-01-18 14:51:15.058000', NULL, NULL, NULL, NULL),
(128, 'nkpcstd2hre4rimnylabr48f', '231088053-07', '231088053-07-2', '9002803', 0, 'BCS 2', '2025-01-18 14:51:15.060000', '2025-01-18 14:51:15.060000', NULL, NULL, NULL, NULL),
(129, 'ys92q6ozfgw5ofszbq1nvc79', '231088053-07', '231088053-07-3', '9002804', 0, 'BCS 2', '2025-01-18 14:51:15.074000', '2025-01-18 14:51:15.074000', NULL, NULL, NULL, NULL),
(130, 'yo7a4gwrw4lxdhcvfvzyklj5', '231088053-07', '231088053-07-4', '9002805', 0, 'BCS 2', '2025-01-18 14:51:15.093000', '2025-01-18 14:51:15.093000', NULL, NULL, NULL, NULL),
(131, 'igbg3xinns00asr7hq542lmx', '231008645-07', '231008645-07-1', '9002802', 0, 'BCS 2', '2025-01-18 14:51:15.014000', '2025-01-18 14:51:15.014000', '2025-01-18 14:51:15.098000', NULL, NULL, NULL),
(132, 'q7tbidp4loanqcwx59nrjsl5', '231008645-07', '231008645-07-2', '9002803', 0, 'BCS 2', '2025-01-18 14:51:15.017000', '2025-01-18 14:51:15.017000', '2025-01-18 14:51:15.100000', NULL, NULL, NULL),
(133, 'jxftvbuui3moh36d8f9zti6i', '231008645-07', '231008645-07-4', '9002805', 0, 'BCS 2', '2025-01-18 14:51:15.018000', '2025-01-18 14:51:15.018000', '2025-01-18 14:51:15.101000', NULL, NULL, NULL),
(134, 'ad84wingz0an93yadx0ptmgq', '231008645-07', '231008645-07-5', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.037000', '2025-01-18 14:51:15.037000', '2025-01-18 14:51:15.107000', NULL, NULL, NULL),
(135, 'y49xapd69jw8pzk1ouck17k8', '231008645-07', '231008645-07-6', '9002806', 0, 'BCS 2', '2025-01-18 14:51:15.039000', '2025-01-18 14:51:15.039000', '2025-01-18 14:51:15.108000', NULL, NULL, NULL),
(136, 'lof3dfuurz8q13o9w5g9grry', '231088053-07', '231088053-07-1', '9002802', 0, 'BCS 2', '2025-01-18 14:51:15.058000', '2025-01-18 14:51:15.058000', '2025-01-18 14:51:15.111000', NULL, NULL, NULL),
(137, 'u4bkcz6kh4iszvqhqmsnk828', '231008645-07', '231008645-07-7', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.040000', '2025-01-18 14:51:15.040000', '2025-01-18 14:51:15.113000', NULL, NULL, NULL),
(138, 'nkpcstd2hre4rimnylabr48f', '231088053-07', '231088053-07-2', '9002803', 0, 'BCS 2', '2025-01-18 14:51:15.060000', '2025-01-18 14:51:15.060000', '2025-01-18 14:51:15.118000', NULL, NULL, NULL),
(139, 'ys92q6ozfgw5ofszbq1nvc79', '231088053-07', '231088053-07-3', '9002804', 0, 'BCS 2', '2025-01-18 14:51:15.074000', '2025-01-18 14:51:15.074000', '2025-01-18 14:51:15.120000', NULL, NULL, NULL),
(140, 'r4igd1hgperi1qh6smpw1eks', '231088053-07', '231088053-07-5', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.127000', '2025-01-18 14:51:15.127000', NULL, NULL, NULL, NULL),
(141, 'yo7a4gwrw4lxdhcvfvzyklj5', '231088053-07', '231088053-07-4', '9002805', 0, 'BCS 2', '2025-01-18 14:51:15.093000', '2025-01-18 14:51:15.093000', '2025-01-18 14:51:15.131000', NULL, NULL, NULL),
(142, 're6mug98n8v3t9e292ox8m8w', '231088053-07', '231088053-07-6', '9002806', 0, 'BCS 2', '2025-01-18 14:51:15.140000', '2025-01-18 14:51:15.140000', NULL, NULL, NULL, NULL),
(143, 'njpgwlp9ljcmn17vnb464cgl', '231088053-07', '231088053-07-7', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.142000', '2025-01-18 14:51:15.142000', NULL, NULL, NULL, NULL),
(144, 'm4kmxnufjotpj0lw8yymrbzn', '231088053-07', '231088053-07-8', '9003294', 0, 'BCS 2', '2025-01-18 14:51:15.143000', '2025-01-18 14:51:15.143000', NULL, NULL, NULL, NULL),
(145, 'our2zbn1od9g3cdkz23pe0un', '231072053-07', '231072053-07-1', '9002802', 0, 'BCS 2', '2025-01-18 14:51:15.145000', '2025-01-18 14:51:15.145000', NULL, NULL, NULL, NULL),
(146, 'd9dh11yh7saulbkyptkhsk5w', '231072053-07', '231072053-07-2', '9002803', 0, 'BCS 2', '2025-01-18 14:51:15.165000', '2025-01-18 14:51:15.165000', NULL, NULL, NULL, NULL),
(147, 'h9wbe2wkb8vujuaipwj2gmbq', '231072053-07', '231072053-07-3', '9002804', 0, 'BCS 2', '2025-01-18 14:51:15.167000', '2025-01-18 14:51:15.167000', NULL, NULL, NULL, NULL),
(148, 'ua3xs96r6k29shn6a50irs04', '231072053-07', '231072053-07-4', '9002805', 0, 'BCS 2', '2025-01-18 14:51:15.169000', '2025-01-18 14:51:15.169000', NULL, NULL, NULL, NULL),
(149, 'joy8ujhztilu43ng5wxr331w', '231072053-07', '231072053-07-5', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.186000', '2025-01-18 14:51:15.186000', NULL, NULL, NULL, NULL),
(150, 'moy5al6o9fi93lmpstdbtubj', '231072053-07', '231072053-07-6', '9002806', 0, 'BCS 2', '2025-01-18 14:51:15.198000', '2025-01-18 14:51:15.198000', NULL, NULL, NULL, NULL),
(151, 'r4igd1hgperi1qh6smpw1eks', '231088053-07', '231088053-07-5', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.127000', '2025-01-18 14:51:15.127000', '2025-01-18 14:51:15.206000', NULL, NULL, NULL),
(152, 're6mug98n8v3t9e292ox8m8w', '231088053-07', '231088053-07-6', '9002806', 0, 'BCS 2', '2025-01-18 14:51:15.140000', '2025-01-18 14:51:15.140000', '2025-01-18 14:51:15.208000', NULL, NULL, NULL),
(153, 'njpgwlp9ljcmn17vnb464cgl', '231088053-07', '231088053-07-7', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.142000', '2025-01-18 14:51:15.142000', '2025-01-18 14:51:15.209000', NULL, NULL, NULL),
(154, 'm4kmxnufjotpj0lw8yymrbzn', '231088053-07', '231088053-07-8', '9003294', 0, 'BCS 2', '2025-01-18 14:51:15.143000', '2025-01-18 14:51:15.143000', '2025-01-18 14:51:15.211000', NULL, NULL, NULL),
(155, 'our2zbn1od9g3cdkz23pe0un', '231072053-07', '231072053-07-1', '9002802', 0, 'BCS 2', '2025-01-18 14:51:15.145000', '2025-01-18 14:51:15.145000', '2025-01-18 14:51:15.213000', NULL, NULL, NULL),
(156, 'd9dh11yh7saulbkyptkhsk5w', '231072053-07', '231072053-07-2', '9002803', 0, 'BCS 2', '2025-01-18 14:51:15.165000', '2025-01-18 14:51:15.165000', '2025-01-18 14:51:15.217000', NULL, NULL, NULL),
(157, 'h9wbe2wkb8vujuaipwj2gmbq', '231072053-07', '231072053-07-3', '9002804', 0, 'BCS 2', '2025-01-18 14:51:15.167000', '2025-01-18 14:51:15.167000', '2025-01-18 14:51:15.218000', NULL, NULL, NULL),
(158, 'ua3xs96r6k29shn6a50irs04', '231072053-07', '231072053-07-4', '9002805', 0, 'BCS 2', '2025-01-18 14:51:15.169000', '2025-01-18 14:51:15.169000', '2025-01-18 14:51:15.220000', NULL, NULL, NULL),
(159, 'joy8ujhztilu43ng5wxr331w', '231072053-07', '231072053-07-5', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.186000', '2025-01-18 14:51:15.186000', '2025-01-18 14:51:15.227000', NULL, NULL, NULL),
(160, 'moy5al6o9fi93lmpstdbtubj', '231072053-07', '231072053-07-6', '9002806', 0, 'BCS 2', '2025-01-18 14:51:15.198000', '2025-01-18 14:51:15.198000', '2025-01-18 14:51:15.232000', NULL, NULL, NULL),
(161, 'f75pw562m0bxlr7kswlkude0', '231072053-07', '231072053-07-7', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.241000', '2025-01-18 14:51:15.241000', NULL, NULL, NULL, NULL),
(162, 'ccuow1zauhifhrsrg65qmgoj', '231035365-07', '231035365-07-1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.243000', '2025-01-18 14:51:15.243000', NULL, NULL, NULL, NULL),
(163, 'vh3a5om8l0b7ya61mx6a7zs4', '231035365-07', '231035365-07-2', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.245000', '2025-01-18 14:51:15.245000', NULL, NULL, NULL, NULL),
(164, 'ri3sht4337i6ycemq0l2ig4g', '231035365-07', '231035365-07-3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.246000', '2025-01-18 14:51:15.246000', NULL, NULL, NULL, NULL),
(165, 'h6ukj52rpxf6p04dabakqbqq', '231035365-07', '231035365-07-sp1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.266000', '2025-01-18 14:51:15.266000', NULL, NULL, NULL, NULL),
(166, 'vfmxzaet4y5t31c808zps70l', '231035365-07', '231035365-07-sp1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.268000', '2025-01-18 14:51:15.268000', NULL, NULL, NULL, NULL),
(167, 'nuwvkhq0sosg9wfedjxdcudw', '231035365-07', '231035365-07-sp1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.269000', '2025-01-18 14:51:15.269000', NULL, NULL, NULL, NULL),
(168, 'xn3hfabfc1bqijq9pojh4wlq', '231035365-07', '231035365-07-4', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.272000', '2025-01-18 14:51:15.272000', NULL, NULL, NULL, NULL),
(169, 'ygxwed76qqf4ym9mzuoclpqq', '231035365-07', '231035365-07-5', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.287000', '2025-01-18 14:51:15.287000', NULL, NULL, NULL, NULL),
(170, 'qrsu48g821vp3iddu0lowob1', '231035365-07', '231035365-07-6', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.298000', '2025-01-18 14:51:15.298000', NULL, NULL, NULL, NULL),
(171, 'f75pw562m0bxlr7kswlkude0', '231072053-07', '231072053-07-7', '9002801', 0, 'BCS 2', '2025-01-18 14:51:15.241000', '2025-01-18 14:51:15.241000', '2025-01-18 14:51:15.311000', NULL, NULL, NULL),
(172, 'ccuow1zauhifhrsrg65qmgoj', '231035365-07', '231035365-07-1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.243000', '2025-01-18 14:51:15.243000', '2025-01-18 14:51:15.313000', NULL, NULL, NULL),
(173, 'vh3a5om8l0b7ya61mx6a7zs4', '231035365-07', '231035365-07-2', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.245000', '2025-01-18 14:51:15.245000', '2025-01-18 14:51:15.314000', NULL, NULL, NULL),
(174, 'ri3sht4337i6ycemq0l2ig4g', '231035365-07', '231035365-07-3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.246000', '2025-01-18 14:51:15.246000', '2025-01-18 14:51:15.319000', NULL, NULL, NULL),
(175, 'h6ukj52rpxf6p04dabakqbqq', '231035365-07', '231035365-07-sp1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.266000', '2025-01-18 14:51:15.266000', '2025-01-18 14:51:15.322000', NULL, NULL, NULL),
(176, 'vfmxzaet4y5t31c808zps70l', '231035365-07', '231035365-07-sp1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.268000', '2025-01-18 14:51:15.268000', '2025-01-18 14:51:15.323000', NULL, NULL, NULL),
(177, 'nuwvkhq0sosg9wfedjxdcudw', '231035365-07', '231035365-07-sp1', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.269000', '2025-01-18 14:51:15.269000', '2025-01-18 14:51:15.324000', NULL, NULL, NULL),
(178, 'xn3hfabfc1bqijq9pojh4wlq', '231035365-07', '231035365-07-4', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.272000', '2025-01-18 14:51:15.272000', '2025-01-18 14:51:15.326000', NULL, NULL, NULL),
(179, 'ygxwed76qqf4ym9mzuoclpqq', '231035365-07', '231035365-07-5', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.287000', '2025-01-18 14:51:15.287000', '2025-01-18 14:51:15.330000', NULL, NULL, NULL),
(180, 'qrsu48g821vp3iddu0lowob1', '231035365-07', '231035365-07-6', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.298000', '2025-01-18 14:51:15.298000', '2025-01-18 14:51:15.333000', NULL, NULL, NULL),
(181, 'w5fphz3r4eaj07wuejoysgyd', '231035365-07', '231035365-07-sp2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.340000', '2025-01-18 14:51:15.340000', NULL, NULL, NULL, NULL),
(182, 'l2bq3b9qk87aa4jgwfy1rowt', '231035365-07', '231035365-07-sp2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.350000', '2025-01-18 14:51:15.350000', NULL, NULL, NULL, NULL),
(183, 'neot3yz1pr6i4dfglwnw9spt', '231035365-07', '231035365-07-sp2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.352000', '2025-01-18 14:51:15.352000', NULL, NULL, NULL, NULL),
(184, 'vjmewi80gt3shuxs2ze1l7cr', '231035365-07', '231035365-07-7', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.369000', '2025-01-18 14:51:15.369000', NULL, NULL, NULL, NULL),
(185, 'xqcds3tokmnxzjmhzbxae5v3', '231035365-07', '231035365-07-8', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.370000', '2025-01-18 14:51:15.370000', NULL, NULL, NULL, NULL),
(186, 'u3ftrq9u0b7jjr5spfc0pqym', '231398301-07', '231398301-07-1', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.372000', '2025-01-18 14:51:15.372000', NULL, NULL, NULL, NULL),
(187, 'yuggrz3xq0yitrvu2exk64ur', '231398301-07', '231398301-07-2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.373000', '2025-01-18 14:51:15.373000', NULL, NULL, NULL, NULL),
(188, 'cjazno5hsa0gkol6zjm4dr88', '231398301-07', '231398301-07-3', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.374000', '2025-01-18 14:51:15.374000', NULL, NULL, NULL, NULL),
(189, 'fvskvszudhtm5zudyx0w6w5b', '231398301-07', '231398301-07-sp', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.378000', '2025-01-18 14:51:15.378000', NULL, NULL, NULL, NULL),
(190, 'tii8xk435t3ciofsip4dl06o', '231398301-07', '231398301-07-sp', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.400000', '2025-01-18 14:51:15.400000', NULL, NULL, NULL, NULL),
(191, 'w5fphz3r4eaj07wuejoysgyd', '231035365-07', '231035365-07-sp2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.340000', '2025-01-18 14:51:15.340000', '2025-01-18 14:51:15.411000', NULL, NULL, NULL),
(192, 'l2bq3b9qk87aa4jgwfy1rowt', '231035365-07', '231035365-07-sp2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.350000', '2025-01-18 14:51:15.350000', '2025-01-18 14:51:15.414000', NULL, NULL, NULL),
(193, 'neot3yz1pr6i4dfglwnw9spt', '231035365-07', '231035365-07-sp2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.352000', '2025-01-18 14:51:15.352000', '2025-01-18 14:51:15.418000', NULL, NULL, NULL),
(194, 'vjmewi80gt3shuxs2ze1l7cr', '231035365-07', '231035365-07-7', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.369000', '2025-01-18 14:51:15.369000', '2025-01-18 14:51:15.420000', NULL, NULL, NULL),
(195, 'xqcds3tokmnxzjmhzbxae5v3', '231035365-07', '231035365-07-8', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.370000', '2025-01-18 14:51:15.370000', '2025-01-18 14:51:15.421000', NULL, NULL, NULL),
(196, 'u3ftrq9u0b7jjr5spfc0pqym', '231398301-07', '231398301-07-1', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.372000', '2025-01-18 14:51:15.372000', '2025-01-18 14:51:15.422000', NULL, NULL, NULL),
(197, 'yuggrz3xq0yitrvu2exk64ur', '231398301-07', '231398301-07-2', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.373000', '2025-01-18 14:51:15.373000', '2025-01-18 14:51:15.423000', NULL, NULL, NULL),
(198, 'fvskvszudhtm5zudyx0w6w5b', '231398301-07', '231398301-07-sp', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.378000', '2025-01-18 14:51:15.378000', '2025-01-18 14:51:15.425000', NULL, NULL, NULL),
(199, 'cjazno5hsa0gkol6zjm4dr88', '231398301-07', '231398301-07-3', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.374000', '2025-01-18 14:51:15.374000', '2025-01-18 14:51:15.425000', NULL, NULL, NULL),
(200, 'tii8xk435t3ciofsip4dl06o', '231398301-07', '231398301-07-sp', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.400000', '2025-01-18 14:51:15.400000', '2025-01-18 14:51:15.430000', NULL, NULL, NULL),
(201, 'yhca5jqspvjh04radcddn4k1', '231008645-07', '231008645-07-3', '9002804', 0, 'BCS 2', '2025-01-18 14:51:15.441000', '2025-01-18 14:51:15.441000', NULL, NULL, NULL, NULL),
(202, 'tzl5ctrizz5lk66oap2vkmr0', '231398301-07', '231398301-07-sp', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.455000', '2025-01-18 14:51:15.455000', NULL, NULL, NULL, NULL),
(203, 'kvc1uwpp5rfjt5osgy0v4zxf', '231398301-07', '231398301-07-4', '9000615', 0, 'BCS 3', '2025-01-18 14:51:15.457000', '2025-01-18 14:51:15.457000', NULL, NULL, NULL, NULL),
(204, 'i676ifptdtwpctvnaxmp583p', '231398301-07', '231398301-07-5', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.459000', '2025-01-18 14:51:15.459000', NULL, NULL, NULL, NULL),
(205, 'udrzr2ndrfqqm2fbg390ghjp', '231037448-07', '231037448-07-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.460000', '2025-01-18 14:51:15.460000', NULL, NULL, NULL, NULL),
(206, 'fyywrx9198sj8pem7cd5v9k6', '231037448-07', '231037448-07-2', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.461000', '2025-01-18 14:51:15.461000', NULL, NULL, NULL, NULL),
(207, 't3tthww7jjaot0izic32blzc', '231037448-07', '231037448-07-3', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.463000', '2025-01-18 14:51:15.463000', NULL, NULL, NULL, NULL),
(208, 'tjy23le489bji3fc2fbb41z5', '231037448-07', '231037448-07-sp-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.492000', '2025-01-18 14:51:15.492000', NULL, NULL, NULL, NULL),
(209, 'qwnuy3nhqrfospt3r74xvjzx', '231037448-07', '231037448-07-sp-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.493000', '2025-01-18 14:51:15.493000', NULL, NULL, NULL, NULL),
(210, 'dkgp5n80vrbgztrnky89zrt4', '231037448-07', '231037448-07-sp-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.495000', '2025-01-18 14:51:15.495000', NULL, NULL, NULL, NULL),
(211, 'yhca5jqspvjh04radcddn4k1', '231008645-07', '231008645-07-3', '9002804', 0, 'BCS 2', '2025-01-18 14:51:15.441000', '2025-01-18 14:51:15.441000', '2025-01-18 14:51:15.514000', NULL, NULL, NULL),
(212, 'i676ifptdtwpctvnaxmp583p', '231398301-07', '231398301-07-5', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.459000', '2025-01-18 14:51:15.459000', '2025-01-18 14:51:15.516000', NULL, NULL, NULL),
(213, 'tzl5ctrizz5lk66oap2vkmr0', '231398301-07', '231398301-07-sp', '9002469', 0, 'BCS 3', '2025-01-18 14:51:15.455000', '2025-01-18 14:51:15.455000', '2025-01-18 14:51:15.520000', NULL, NULL, NULL),
(214, 'kvc1uwpp5rfjt5osgy0v4zxf', '231398301-07', '231398301-07-4', '9000615', 0, 'BCS 3', '2025-01-18 14:51:15.457000', '2025-01-18 14:51:15.457000', '2025-01-18 14:51:15.522000', NULL, NULL, NULL),
(215, 'udrzr2ndrfqqm2fbg390ghjp', '231037448-07', '231037448-07-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.460000', '2025-01-18 14:51:15.460000', '2025-01-18 14:51:15.523000', NULL, NULL, NULL),
(216, 'fyywrx9198sj8pem7cd5v9k6', '231037448-07', '231037448-07-2', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.461000', '2025-01-18 14:51:15.461000', '2025-01-18 14:51:15.525000', NULL, NULL, NULL),
(217, 't3tthww7jjaot0izic32blzc', '231037448-07', '231037448-07-3', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.463000', '2025-01-18 14:51:15.463000', '2025-01-18 14:51:15.528000', NULL, NULL, NULL),
(218, 'tjy23le489bji3fc2fbb41z5', '231037448-07', '231037448-07-sp-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.492000', '2025-01-18 14:51:15.492000', '2025-01-18 14:51:15.531000', NULL, NULL, NULL),
(219, 'qwnuy3nhqrfospt3r74xvjzx', '231037448-07', '231037448-07-sp-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.493000', '2025-01-18 14:51:15.493000', '2025-01-18 14:51:15.533000', NULL, NULL, NULL),
(220, 'dkgp5n80vrbgztrnky89zrt4', '231037448-07', '231037448-07-sp-1', '9002470', 0, 'BCS 3', '2025-01-18 14:51:15.495000', '2025-01-18 14:51:15.495000', '2025-01-18 14:51:15.536000', NULL, NULL, NULL),
(221, 'k46qo25m18kaj3jc9b0tc9zn', '231037448-07', '231037448-07-4', '9000093', 0, 'BCS 3', '2025-01-18 14:51:15.544000', '2025-01-18 14:51:15.544000', NULL, NULL, NULL, NULL),
(222, 'c7n0zw4w2xfgx1g2dmladenw', '231037448-07', '231037448-07-5', '9002834', 0, 'BCS 3', '2025-01-18 14:51:15.556000', '2025-01-18 14:51:15.556000', NULL, NULL, NULL, NULL),
(223, 'blkyjjws4u7qpphlem3hthvf', '231037448-07', '231037448-07-6', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.558000', '2025-01-18 14:51:15.558000', NULL, NULL, NULL, NULL),
(224, 'siiqekafne1tg1joyk2vp7yu', '231037448-07', '231037448-07-7', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.560000', '2025-01-18 14:51:15.560000', NULL, NULL, NULL, NULL),
(225, 'mkbirvmwnw6gxk53gb9usuwp', '231037448-07', '231037448-07-8', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.561000', '2025-01-18 14:51:15.561000', NULL, NULL, NULL, NULL),
(226, 'c8md8873pn8lcngbxi44ngyo', '231037448-07', '231037448-07-sp2', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.582000', '2025-01-18 14:51:15.582000', NULL, NULL, NULL, NULL),
(227, 'yp2i3nrufeltpxpajpepegv9', '231037448-07', '231037448-07-sp2', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.584000', '2025-01-18 14:51:15.584000', NULL, NULL, NULL, NULL),
(228, 'umfie3t7ddj46xdyu4gdhkmd', '231037448-07', '231037448-07-sp2', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.586000', '2025-01-18 14:51:15.586000', NULL, NULL, NULL, NULL),
(229, 'bkj7xun9z4rsl7adswimnftl', '231037448-07', '231037448-07-9', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.587000', '2025-01-18 14:51:15.587000', NULL, NULL, NULL, NULL),
(230, 'yqv9ln70nmhnwox2ffs1k7ds', '231037448-07', '231037448-07-10', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.588000', '2025-01-18 14:51:15.588000', NULL, NULL, NULL, NULL),
(231, 'k46qo25m18kaj3jc9b0tc9zn', '231037448-07', '231037448-07-4', '9000093', 0, 'BCS 3', '2025-01-18 14:51:15.544000', '2025-01-18 14:51:15.544000', '2025-01-18 14:51:15.619000', NULL, NULL, NULL),
(232, 'c7n0zw4w2xfgx1g2dmladenw', '231037448-07', '231037448-07-5', '9002834', 0, 'BCS 3', '2025-01-18 14:51:15.556000', '2025-01-18 14:51:15.556000', '2025-01-18 14:51:15.626000', NULL, NULL, NULL),
(233, 'blkyjjws4u7qpphlem3hthvf', '231037448-07', '231037448-07-6', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.558000', '2025-01-18 14:51:15.558000', '2025-01-18 14:51:15.627000', NULL, NULL, NULL),
(234, 'siiqekafne1tg1joyk2vp7yu', '231037448-07', '231037448-07-7', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.560000', '2025-01-18 14:51:15.560000', '2025-01-18 14:51:15.628000', NULL, NULL, NULL),
(235, 'mkbirvmwnw6gxk53gb9usuwp', '231037448-07', '231037448-07-8', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.561000', '2025-01-18 14:51:15.561000', '2025-01-18 14:51:15.631000', NULL, NULL, NULL),
(236, 'c8md8873pn8lcngbxi44ngyo', '231037448-07', '231037448-07-sp2', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.582000', '2025-01-18 14:51:15.582000', '2025-01-18 14:51:15.634000', NULL, NULL, NULL),
(237, 'yp2i3nrufeltpxpajpepegv9', '231037448-07', '231037448-07-sp2', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.584000', '2025-01-18 14:51:15.584000', '2025-01-18 14:51:15.635000', NULL, NULL, NULL),
(238, 'umfie3t7ddj46xdyu4gdhkmd', '231037448-07', '231037448-07-sp2', '9002917', 0, 'BCS 3', '2025-01-18 14:51:15.586000', '2025-01-18 14:51:15.586000', '2025-01-18 14:51:15.636000', NULL, NULL, NULL),
(239, 'bkj7xun9z4rsl7adswimnftl', '231037448-07', '231037448-07-9', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.587000', '2025-01-18 14:51:15.587000', '2025-01-18 14:51:15.638000', NULL, NULL, NULL),
(240, 'yqv9ln70nmhnwox2ffs1k7ds', '231037448-07', '231037448-07-10', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.588000', '2025-01-18 14:51:15.588000', '2025-01-18 14:51:15.639000', NULL, NULL, NULL),
(241, 'i4z9abdjr2zdnl3jixuii0b5', '231037448-07', '231037448-07-11', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.645000', '2025-01-18 14:51:15.645000', NULL, NULL, NULL, NULL),
(242, 'm4zwjxhlmz3noexhljmw7lei', '231037448-07', '231037448-07-sp3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.655000', '2025-01-18 14:51:15.655000', NULL, NULL, NULL, NULL),
(243, 'oa0usxd5vwnovrqztn0ptbfx', '231037448-07', '231037448-07-sp3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.668000', '2025-01-18 14:51:15.668000', NULL, NULL, NULL, NULL),
(244, 'emp0h6vd594cqiqc4ybew2jb', '231037448-07', '231037448-07-sp3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.670000', '2025-01-18 14:51:15.670000', NULL, NULL, NULL, NULL),
(245, 'chtro1wju851li13pew1x1ei', '460106982-07', '460106982-07-1', '9005231', 0, 'Mayser 4', '2025-01-18 14:51:15.671000', '2025-01-18 14:51:15.671000', NULL, NULL, NULL, NULL),
(246, 'x0dw4mdfyghjp0uy4y0yhptg', '297198011-07', '297198011-07-1', '9002270', 0, 'MAQ 3', '2025-01-18 14:51:15.692000', '2025-01-18 14:51:15.692000', NULL, NULL, NULL, NULL),
(247, 'm97uuex57qjkhlp4cit6htlz', '297271011-07', '297271011-07-1', '9007289', 0, 'MAQ 3', '2025-01-18 14:51:15.694000', '2025-01-18 14:51:15.694000', NULL, NULL, NULL, NULL),
(248, 'fszedccu7m1r353m9hr7fjzd', '297271011-07', '297271011-07-2', '9003306', 0, 'MAQ 3', '2025-01-18 14:51:15.695000', '2025-01-18 14:51:15.695000', NULL, NULL, NULL, NULL),
(249, 'fhecik0obe3ttvdg445joo8n', '297940051-07', '297940051-07-1', '9006672', 0, 'MAQ 4', '2025-01-18 14:51:15.697000', '2025-01-18 14:51:15.697000', NULL, NULL, NULL, NULL),
(250, 'q3nj7yaygjhq24nldydj5hch', '297940051-07', '297940051-07-2', '9006673', 0, 'MAQ 4', '2025-01-18 14:51:15.698000', '2025-01-18 14:51:15.698000', NULL, NULL, NULL, NULL),
(251, 'i4z9abdjr2zdnl3jixuii0b5', '231037448-07', '231037448-07-11', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.645000', '2025-01-18 14:51:15.645000', '2025-01-18 14:51:15.730000', NULL, NULL, NULL),
(252, 'oa0usxd5vwnovrqztn0ptbfx', '231037448-07', '231037448-07-sp3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.668000', '2025-01-18 14:51:15.668000', '2025-01-18 14:51:15.732000', NULL, NULL, NULL),
(253, 'm4zwjxhlmz3noexhljmw7lei', '231037448-07', '231037448-07-sp3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.655000', '2025-01-18 14:51:15.655000', '2025-01-18 14:51:15.734000', NULL, NULL, NULL),
(254, 'emp0h6vd594cqiqc4ybew2jb', '231037448-07', '231037448-07-sp3', '9011184', 0, 'BCS 3', '2025-01-18 14:51:15.670000', '2025-01-18 14:51:15.670000', '2025-01-18 14:51:15.736000', NULL, NULL, NULL),
(255, 'chtro1wju851li13pew1x1ei', '460106982-07', '460106982-07-1', '9005231', 0, 'Mayser 4', '2025-01-18 14:51:15.671000', '2025-01-18 14:51:15.671000', '2025-01-18 14:51:15.739000', NULL, NULL, NULL),
(256, 'x0dw4mdfyghjp0uy4y0yhptg', '297198011-07', '297198011-07-1', '9002270', 0, 'MAQ 3', '2025-01-18 14:51:15.692000', '2025-01-18 14:51:15.692000', '2025-01-18 14:51:15.741000', NULL, NULL, NULL),
(257, 'm97uuex57qjkhlp4cit6htlz', '297271011-07', '297271011-07-1', '9007289', 0, 'MAQ 3', '2025-01-18 14:51:15.694000', '2025-01-18 14:51:15.694000', '2025-01-18 14:51:15.743000', NULL, NULL, NULL),
(258, 'fszedccu7m1r353m9hr7fjzd', '297271011-07', '297271011-07-2', '9003306', 0, 'MAQ 3', '2025-01-18 14:51:15.695000', '2025-01-18 14:51:15.695000', '2025-01-18 14:51:15.744000', NULL, NULL, NULL),
(259, 'fhecik0obe3ttvdg445joo8n', '297940051-07', '297940051-07-1', '9006672', 0, 'MAQ 4', '2025-01-18 14:51:15.697000', '2025-01-18 14:51:15.697000', '2025-01-18 14:51:15.747000', NULL, NULL, NULL),
(260, 'q3nj7yaygjhq24nldydj5hch', '297940051-07', '297940051-07-2', '9006673', 0, 'MAQ 4', '2025-01-18 14:51:15.698000', '2025-01-18 14:51:15.698000', '2025-01-18 14:51:15.749000', NULL, NULL, NULL),
(261, 'li1d7kruc5rjssk7pekmqf1c', '297940051-07', '297940051-07-3', '9006671', 0, 'MAQ 4', '2025-01-18 14:51:15.754000', '2025-01-18 14:51:15.754000', NULL, NULL, NULL, NULL),
(262, 'hx8e0edrvtuoktcv0iahvg6f', '297940051-07', '297940051-07-4', '9006670', 0, 'MAQ 4', '2025-01-18 14:51:15.767000', '2025-01-18 14:51:15.767000', NULL, NULL, NULL, NULL),
(263, 'pctclshezr7r94vm4brd27l7', '297904041-07', '297904041-07-1', '9006070', 0, 'MAQ 2', '2025-01-18 14:51:15.768000', '2025-01-18 14:51:15.768000', NULL, NULL, NULL, NULL),
(264, 'gsqlbup56x93e4uv0sj7ur6r', '297904041-07', '297904041-07-2', '9012403', 0, 'MAQ 2', '2025-01-18 14:51:15.769000', '2025-01-18 14:51:15.769000', NULL, NULL, NULL, NULL),
(265, 'o8t5avylkfx57t1j9aeq3dob', '297940051-07', '297940051-07-5', '9006669', 0, 'MAQ 4', '2025-01-18 14:51:15.785000', '2025-01-18 14:51:15.785000', NULL, NULL, NULL, NULL),
(266, 'li1d7kruc5rjssk7pekmqf1c', '297940051-07', '297940051-07-3', '9006671', 0, 'MAQ 4', '2025-01-18 14:51:15.754000', '2025-01-18 14:51:15.754000', '2025-01-18 14:51:15.838000', NULL, NULL, NULL),
(267, 'hx8e0edrvtuoktcv0iahvg6f', '297940051-07', '297940051-07-4', '9006670', 0, 'MAQ 4', '2025-01-18 14:51:15.767000', '2025-01-18 14:51:15.767000', '2025-01-18 14:51:15.851000', NULL, NULL, NULL),
(268, 'pctclshezr7r94vm4brd27l7', '297904041-07', '297904041-07-1', '9006070', 0, 'MAQ 2', '2025-01-18 14:51:15.768000', '2025-01-18 14:51:15.768000', '2025-01-18 14:51:15.852000', NULL, NULL, NULL),
(269, 'gsqlbup56x93e4uv0sj7ur6r', '297904041-07', '297904041-07-2', '9012403', 0, 'MAQ 2', '2025-01-18 14:51:15.769000', '2025-01-18 14:51:15.769000', '2025-01-18 14:51:15.861000', NULL, NULL, NULL);
INSERT INTO `cables` (`id`, `document_id`, `reference`, `idf`, `idb`, `qte`, `project_name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(270, 'o8t5avylkfx57t1j9aeq3dob', '297940051-07', '297940051-07-5', '9006669', 0, 'MAQ 4', '2025-01-18 14:51:15.785000', '2025-01-18 14:51:15.785000', '2025-01-18 14:51:15.864000', NULL, NULL, NULL),
(271, 'av8ztu62w261yrx0ulppeoig', '297940031-07', '297940031-07-1', '9006672', 0, 'MAQ 4', '2025-01-18 14:51:15.903000', '2025-01-18 14:51:15.903000', NULL, NULL, NULL, NULL),
(272, 'ctw7y3b6xf50gb52lq1pgov4', '297940031-07', '297940031-07-2', '9006673', 0, 'MAQ 4', '2025-01-18 14:51:15.926000', '2025-01-18 14:51:15.926000', NULL, NULL, NULL, NULL),
(273, 'g9eph3dowy6gtar6f487bfa4', '297940031-07', '297940031-07-3', '9006669', 0, 'MAQ 4', '2025-01-18 14:51:15.928000', '2025-01-18 14:51:15.928000', NULL, NULL, NULL, NULL),
(274, 'b5njgv4frqzuzxzccigpg7qw', '297940031-07', '297940031-07-4', '9006671', 0, 'MAQ 4', '2025-01-18 14:51:15.930000', '2025-01-18 14:51:15.930000', NULL, NULL, NULL, NULL),
(275, 'vqd1jy9faju4ytfrt0drcgqi', '297940031-07', '297940031-07-5', '9006670', 0, 'MAQ 4', '2025-01-18 14:51:15.932000', '2025-01-18 14:51:15.932000', NULL, NULL, NULL, NULL),
(276, 'exdfhcf3f4mfq3jzkyvbdj54', '297741011-07', '297741011-07-1', '9003015', 0, 'MAQ 3', '2025-01-18 14:51:15.933000', '2025-01-18 14:51:15.933000', NULL, NULL, NULL, NULL),
(277, 'zwh5ax15poftr726kb1tl94d', '297741011-07', '297741011-07-2', '9004185', 0, 'MAQ 3', '2025-01-18 14:51:15.934000', '2025-01-18 14:51:15.934000', NULL, NULL, NULL, NULL),
(278, 'qwvhk925cm8jyx1ko02yz649', '297997011-07', '297997011-07-2', '9005148', 0, 'MAQ 4', '2025-01-18 14:51:15.935000', '2025-01-18 14:51:15.935000', NULL, NULL, NULL, NULL),
(279, 'd14o7d3varwjg4ys65cky8c1', '297997011-07', '297997011-07-1', '9006275', 0, 'MAQ 4', '2025-01-18 14:51:15.947000', '2025-01-18 14:51:15.947000', NULL, NULL, NULL, NULL),
(280, 'b5njgv4frqzuzxzccigpg7qw', '297940031-07', '297940031-07-4', '9006671', 0, 'MAQ 4', '2025-01-18 14:51:15.930000', '2025-01-18 14:51:15.930000', '2025-01-18 14:51:15.968000', NULL, NULL, NULL),
(281, 'ctw7y3b6xf50gb52lq1pgov4', '297940031-07', '297940031-07-2', '9006673', 0, 'MAQ 4', '2025-01-18 14:51:15.926000', '2025-01-18 14:51:15.926000', '2025-01-18 14:51:15.972000', NULL, NULL, NULL),
(282, 'av8ztu62w261yrx0ulppeoig', '297940031-07', '297940031-07-1', '9006672', 0, 'MAQ 4', '2025-01-18 14:51:15.903000', '2025-01-18 14:51:15.903000', '2025-01-18 14:51:15.974000', NULL, NULL, NULL),
(283, 'g9eph3dowy6gtar6f487bfa4', '297940031-07', '297940031-07-3', '9006669', 0, 'MAQ 4', '2025-01-18 14:51:15.928000', '2025-01-18 14:51:15.928000', '2025-01-18 14:51:15.977000', NULL, NULL, NULL),
(284, 'vqd1jy9faju4ytfrt0drcgqi', '297940031-07', '297940031-07-5', '9006670', 0, 'MAQ 4', '2025-01-18 14:51:15.932000', '2025-01-18 14:51:15.932000', '2025-01-18 14:51:15.978000', NULL, NULL, NULL),
(285, 'exdfhcf3f4mfq3jzkyvbdj54', '297741011-07', '297741011-07-1', '9003015', 0, 'MAQ 3', '2025-01-18 14:51:15.933000', '2025-01-18 14:51:15.933000', '2025-01-18 14:51:15.980000', NULL, NULL, NULL),
(286, 'zwh5ax15poftr726kb1tl94d', '297741011-07', '297741011-07-2', '9004185', 0, 'MAQ 3', '2025-01-18 14:51:15.934000', '2025-01-18 14:51:15.934000', '2025-01-18 14:51:15.981000', NULL, NULL, NULL),
(287, 'qwvhk925cm8jyx1ko02yz649', '297997011-07', '297997011-07-2', '9005148', 0, 'MAQ 4', '2025-01-18 14:51:15.935000', '2025-01-18 14:51:15.935000', '2025-01-18 14:51:15.983000', NULL, NULL, NULL),
(288, 'd14o7d3varwjg4ys65cky8c1', '297997011-07', '297997011-07-1', '9006275', 0, 'MAQ 4', '2025-01-18 14:51:15.947000', '2025-01-18 14:51:15.947000', '2025-01-18 14:51:15.988000', NULL, NULL, NULL),
(289, 'tc82qp0rqracm9gj03zmgsew', '297997011-07', '297997011-07-4', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.007000', '2025-01-18 14:51:16.007000', NULL, NULL, NULL, NULL),
(290, 'ifdfx9iacgfa06p6o8ygw6sz', '297997011-07', '297997011-07-5', '9011055', 0, 'MAQ 4', '2025-01-18 14:51:16.009000', '2025-01-18 14:51:16.009000', NULL, NULL, NULL, NULL),
(291, 'getfwmf86dx5wvkoipazbm7z', '297997021-07', '297997021-07-1', '9006275', 0, 'MAQ 4', '2025-01-18 14:51:16.037000', '2025-01-18 14:51:16.037000', NULL, NULL, NULL, NULL),
(292, 'zcqbwohry8sf494nfvex4hrg', '297997021-07', '297997021-07-2', '9005148', 0, 'MAQ 4', '2025-01-18 14:51:16.039000', '2025-01-18 14:51:16.039000', NULL, NULL, NULL, NULL),
(293, 'p08x3k56i3gusosd9fklrjsk', '297997021-07', '297997021-07-3', '9005989', 0, 'MAQ 4', '2025-01-18 14:51:16.042000', '2025-01-18 14:51:16.042000', NULL, NULL, NULL, NULL),
(294, 'h03y1feah0vdrd3kiuir4hvo', '297997021-07', '297997021-07-4', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.044000', '2025-01-18 14:51:16.044000', NULL, NULL, NULL, NULL),
(295, 'p410q5drbw6ibg22uzde82k8', '297997021-07', '297997021-07-5', '9011055', 0, 'MAQ 4', '2025-01-18 14:51:16.045000', '2025-01-18 14:51:16.045000', NULL, NULL, NULL, NULL),
(296, 'lhe68iicnrxvwlrognkjo25d', '297997021-07', '297997021-07-6', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.046000', '2025-01-18 14:51:16.046000', NULL, NULL, NULL, NULL),
(297, 'rafv8vre4rys1pvz0ffwouvu', '297940011-07', '297940011-07-1', '9006672', 0, 'MAQ 4', '2025-01-18 14:51:16.047000', '2025-01-18 14:51:16.047000', NULL, NULL, NULL, NULL),
(298, 'v892vlvufkjeocgvlr34k17a', '297997011-07', '297997011-07-6', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.049000', '2025-01-18 14:51:16.049000', NULL, NULL, NULL, NULL),
(299, 'tc82qp0rqracm9gj03zmgsew', '297997011-07', '297997011-07-4', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.007000', '2025-01-18 14:51:16.007000', '2025-01-18 14:51:16.085000', NULL, NULL, NULL),
(300, 'ifdfx9iacgfa06p6o8ygw6sz', '297997011-07', '297997011-07-5', '9011055', 0, 'MAQ 4', '2025-01-18 14:51:16.009000', '2025-01-18 14:51:16.009000', '2025-01-18 14:51:16.088000', NULL, NULL, NULL),
(301, 'p08x3k56i3gusosd9fklrjsk', '297997021-07', '297997021-07-3', '9005989', 0, 'MAQ 4', '2025-01-18 14:51:16.042000', '2025-01-18 14:51:16.042000', '2025-01-18 14:51:16.089000', NULL, NULL, NULL),
(302, 'getfwmf86dx5wvkoipazbm7z', '297997021-07', '297997021-07-1', '9006275', 0, 'MAQ 4', '2025-01-18 14:51:16.037000', '2025-01-18 14:51:16.037000', '2025-01-18 14:51:16.092000', NULL, NULL, NULL),
(303, 'zcqbwohry8sf494nfvex4hrg', '297997021-07', '297997021-07-2', '9005148', 0, 'MAQ 4', '2025-01-18 14:51:16.039000', '2025-01-18 14:51:16.039000', '2025-01-18 14:51:16.094000', NULL, NULL, NULL),
(304, 'h03y1feah0vdrd3kiuir4hvo', '297997021-07', '297997021-07-4', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.044000', '2025-01-18 14:51:16.044000', '2025-01-18 14:51:16.095000', NULL, NULL, NULL),
(305, 'p410q5drbw6ibg22uzde82k8', '297997021-07', '297997021-07-5', '9011055', 0, 'MAQ 4', '2025-01-18 14:51:16.045000', '2025-01-18 14:51:16.045000', '2025-01-18 14:51:16.097000', NULL, NULL, NULL),
(306, 'lhe68iicnrxvwlrognkjo25d', '297997021-07', '297997021-07-6', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.046000', '2025-01-18 14:51:16.046000', '2025-01-18 14:51:16.098000', NULL, NULL, NULL),
(307, 'rafv8vre4rys1pvz0ffwouvu', '297940011-07', '297940011-07-1', '9006672', 0, 'MAQ 4', '2025-01-18 14:51:16.047000', '2025-01-18 14:51:16.047000', '2025-01-18 14:51:16.100000', NULL, NULL, NULL),
(308, 'v892vlvufkjeocgvlr34k17a', '297997011-07', '297997011-07-6', '9011028', 0, 'MAQ 4', '2025-01-18 14:51:16.049000', '2025-01-18 14:51:16.049000', '2025-01-18 14:51:16.103000', NULL, NULL, NULL),
(309, 'e8rwjd1vlct15htdsrreb342', '297940011-07', '297940011-07-2', '9006673', 0, 'MAQ 4', '2025-01-18 14:51:16.121000', '2025-01-18 14:51:16.121000', NULL, NULL, NULL, NULL),
(310, 'rnrbtv37e7c93ifee1eo1cs8', '297940011-07', '297940011-07-3', '9006669', 0, 'MAQ 4', '2025-01-18 14:51:16.153000', '2025-01-18 14:51:16.153000', NULL, NULL, NULL, NULL),
(311, 'szp2d94yep72jzhwqco2dmx9', '297940011-07', '297940011-07-4', '9006671', 0, 'MAQ 4', '2025-01-18 14:51:16.155000', '2025-01-18 14:51:16.155000', NULL, NULL, NULL, NULL),
(312, 'az3la4n0fwnn07k68xf4ctsv', '297940011-07', '297940011-07-5', '9006670', 0, 'MAQ 4', '2025-01-18 14:51:16.157000', '2025-01-18 14:51:16.157000', NULL, NULL, NULL, NULL),
(313, 'ocf8mhi226k9zt287mmfyh46', '297940081-07', '297940081-07-1', '9006672', 0, 'MAQ 6', '2025-01-18 14:51:16.159000', '2025-01-18 14:51:16.159000', NULL, NULL, NULL, NULL),
(314, 't4zbh2s0e1zyn3wshbezsny0', '297940081-07', '297940081-07-2', '9006673', 0, 'MAQ 6', '2025-01-18 14:51:16.161000', '2025-01-18 14:51:16.161000', NULL, NULL, NULL, NULL),
(315, 'ddfwv1k0teaknbn621xcbyaz', '297940081-07', '297940081-07-3', '9006669', 0, 'MAQ 6', '2025-01-18 14:51:16.162000', '2025-01-18 14:51:16.162000', NULL, NULL, NULL, NULL),
(316, 'z30qxhgai9vscb2qghpbks7l', '297940081-07', '297940081-07-4', '9006671', 0, 'MAQ 6', '2025-01-18 14:51:16.193000', '2025-01-18 14:51:16.193000', NULL, NULL, NULL, NULL),
(317, 'j29y0ww5relasn7cxs9imd96', '297940081-07', '297940081-07-5', '9006670', 0, 'MAQ 6', '2025-01-18 14:51:16.194000', '2025-01-18 14:51:16.194000', NULL, NULL, NULL, NULL),
(318, 'd2v4ie2zkat9fj0orv5jrkvs', '297940071-07', '297940071-07-2', '9006673', 0, 'MAQ 6', '2025-01-18 14:51:16.195000', '2025-01-18 14:51:16.195000', NULL, NULL, NULL, NULL),
(319, 'e8rwjd1vlct15htdsrreb342', '297940011-07', '297940011-07-2', '9006673', 0, 'MAQ 4', '2025-01-18 14:51:16.121000', '2025-01-18 14:51:16.121000', '2025-01-18 14:51:16.217000', NULL, NULL, NULL),
(320, 'ocf8mhi226k9zt287mmfyh46', '297940081-07', '297940081-07-1', '9006672', 0, 'MAQ 6', '2025-01-18 14:51:16.159000', '2025-01-18 14:51:16.159000', '2025-01-18 14:51:16.218000', NULL, NULL, NULL),
(321, 't4zbh2s0e1zyn3wshbezsny0', '297940081-07', '297940081-07-2', '9006673', 0, 'MAQ 6', '2025-01-18 14:51:16.161000', '2025-01-18 14:51:16.161000', '2025-01-18 14:51:16.220000', NULL, NULL, NULL),
(322, 'rnrbtv37e7c93ifee1eo1cs8', '297940011-07', '297940011-07-3', '9006669', 0, 'MAQ 4', '2025-01-18 14:51:16.153000', '2025-01-18 14:51:16.153000', '2025-01-18 14:51:16.222000', NULL, NULL, NULL),
(323, 'szp2d94yep72jzhwqco2dmx9', '297940011-07', '297940011-07-4', '9006671', 0, 'MAQ 4', '2025-01-18 14:51:16.155000', '2025-01-18 14:51:16.155000', '2025-01-18 14:51:16.224000', NULL, NULL, NULL),
(324, 'az3la4n0fwnn07k68xf4ctsv', '297940011-07', '297940011-07-5', '9006670', 0, 'MAQ 4', '2025-01-18 14:51:16.157000', '2025-01-18 14:51:16.157000', '2025-01-18 14:51:16.225000', NULL, NULL, NULL),
(325, 'ddfwv1k0teaknbn621xcbyaz', '297940081-07', '297940081-07-3', '9006669', 0, 'MAQ 6', '2025-01-18 14:51:16.162000', '2025-01-18 14:51:16.162000', '2025-01-18 14:51:16.228000', NULL, NULL, NULL),
(326, 'z30qxhgai9vscb2qghpbks7l', '297940081-07', '297940081-07-4', '9006671', 0, 'MAQ 6', '2025-01-18 14:51:16.193000', '2025-01-18 14:51:16.193000', '2025-01-18 14:51:16.231000', NULL, NULL, NULL),
(327, 'j29y0ww5relasn7cxs9imd96', '297940081-07', '297940081-07-5', '9006670', 0, 'MAQ 6', '2025-01-18 14:51:16.194000', '2025-01-18 14:51:16.194000', '2025-01-18 14:51:16.232000', NULL, NULL, NULL),
(328, 'd2v4ie2zkat9fj0orv5jrkvs', '297940071-07', '297940071-07-2', '9006673', 0, 'MAQ 6', '2025-01-18 14:51:16.195000', '2025-01-18 14:51:16.195000', '2025-01-18 14:51:16.235000', NULL, NULL, NULL),
(329, 'ydglhhx1zvrsq5fc5gt4l1rm', '297940071-07', '297940071-07-3', '9006671', 0, 'MAQ 6', '2025-01-18 14:51:16.246000', '2025-01-18 14:51:16.246000', NULL, NULL, NULL, NULL),
(330, 'rdfyjy3p0ipujn96632s8p4n', '297997011-07', '297997011-07-3', '9005989', 0, 'MAQ 4', '2025-01-18 14:51:16.260000', '2025-01-18 14:51:16.260000', NULL, NULL, NULL, NULL),
(331, 'awd7q0x38b2qj3n567bh3sxp', '297940071-07', '297940071-07-1', '9006672', 0, 'MAQ 6', '2025-01-18 14:51:16.268000', '2025-01-18 14:51:16.268000', NULL, NULL, NULL, NULL),
(332, 'p3jkbzhgn5xdjgyby52kq1qq', '297940071-07', '297940071-07-4', '9006670', 0, 'MAQ 6', '2025-01-18 14:51:16.271000', '2025-01-18 14:51:16.271000', NULL, NULL, NULL, NULL),
(333, 'os9dbxwio9s8lotysge7mzkw', '297940071-07', '297940071-07-5', '9006669', 0, 'MAQ 6', '2025-01-18 14:51:16.273000', '2025-01-18 14:51:16.273000', NULL, NULL, NULL, NULL),
(334, 'yuavf8conc64mc71m63v70ps', '297940041-07', '297940041-07-1', '9006672', 0, 'MAQ 6', '2025-01-18 14:51:16.294000', '2025-01-18 14:51:16.294000', NULL, NULL, NULL, NULL),
(335, 'y00j63rlytuekf33qgdxvguz', '297940041-07', '297940041-07-2', '9006673', 0, 'MAQ 6', '2025-01-18 14:51:16.295000', '2025-01-18 14:51:16.295000', NULL, NULL, NULL, NULL),
(336, 'wacayvzh96xwty5rnnwa7iln', '297940041-07', '297940041-07-3', '9006669', 0, 'MAQ 6', '2025-01-18 14:51:16.297000', '2025-01-18 14:51:16.297000', NULL, NULL, NULL, NULL),
(337, 'jmor8szmiz4uo8jminc9t407', '297904051-07', '297904051-07-1', '9006070', 0, 'MAQ 2', '2025-01-18 14:51:16.298000', '2025-01-18 14:51:16.298000', NULL, NULL, NULL, NULL),
(338, 'cdil8xbjjkboz52ppg0e2k11', '297904051-07', '297904051-07-2', '9012403', 0, 'MAQ 2', '2025-01-18 14:51:16.299000', '2025-01-18 14:51:16.299000', NULL, NULL, NULL, NULL),
(339, 'ydglhhx1zvrsq5fc5gt4l1rm', '297940071-07', '297940071-07-3', '9006671', 0, 'MAQ 6', '2025-01-18 14:51:16.246000', '2025-01-18 14:51:16.246000', '2025-01-18 14:51:16.318000', NULL, NULL, NULL),
(340, 'p3jkbzhgn5xdjgyby52kq1qq', '297940071-07', '297940071-07-4', '9006670', 0, 'MAQ 6', '2025-01-18 14:51:16.271000', '2025-01-18 14:51:16.271000', '2025-01-18 14:51:16.320000', NULL, NULL, NULL),
(341, 'y00j63rlytuekf33qgdxvguz', '297940041-07', '297940041-07-2', '9006673', 0, 'MAQ 6', '2025-01-18 14:51:16.295000', '2025-01-18 14:51:16.295000', '2025-01-18 14:51:16.321000', NULL, NULL, NULL),
(342, 'rdfyjy3p0ipujn96632s8p4n', '297997011-07', '297997011-07-3', '9005989', 0, 'MAQ 4', '2025-01-18 14:51:16.260000', '2025-01-18 14:51:16.260000', '2025-01-18 14:51:16.322000', NULL, NULL, NULL),
(343, 'awd7q0x38b2qj3n567bh3sxp', '297940071-07', '297940071-07-1', '9006672', 0, 'MAQ 6', '2025-01-18 14:51:16.268000', '2025-01-18 14:51:16.268000', '2025-01-18 14:51:16.324000', NULL, NULL, NULL),
(344, 'os9dbxwio9s8lotysge7mzkw', '297940071-07', '297940071-07-5', '9006669', 0, 'MAQ 6', '2025-01-18 14:51:16.273000', '2025-01-18 14:51:16.273000', '2025-01-18 14:51:16.327000', NULL, NULL, NULL),
(345, 'yuavf8conc64mc71m63v70ps', '297940041-07', '297940041-07-1', '9006672', 0, 'MAQ 6', '2025-01-18 14:51:16.294000', '2025-01-18 14:51:16.294000', '2025-01-18 14:51:16.330000', NULL, NULL, NULL),
(346, 'wacayvzh96xwty5rnnwa7iln', '297940041-07', '297940041-07-3', '9006669', 0, 'MAQ 6', '2025-01-18 14:51:16.297000', '2025-01-18 14:51:16.297000', '2025-01-18 14:51:16.331000', NULL, NULL, NULL),
(347, 'jmor8szmiz4uo8jminc9t407', '297904051-07', '297904051-07-1', '9006070', 0, 'MAQ 2', '2025-01-18 14:51:16.298000', '2025-01-18 14:51:16.298000', '2025-01-18 14:51:16.333000', NULL, NULL, NULL),
(348, 'cdil8xbjjkboz52ppg0e2k11', '297904051-07', '297904051-07-2', '9012403', 0, 'MAQ 2', '2025-01-18 14:51:16.299000', '2025-01-18 14:51:16.299000', '2025-01-18 14:51:16.334000', NULL, NULL, NULL),
(349, 'gj0tpmaqonztdhn8ve5lm3ag', '297689021-07', '297689021-07-1', '9003062', 0, 'MAQ 3', '2025-01-18 14:51:16.346000', '2025-01-18 14:51:16.346000', NULL, NULL, NULL, NULL),
(350, 'rn0wgnflkjlmmuogpa23ev29', '297893011-07', '297893011-07-1', '9006241', 0, 'MAQ 1', '2025-01-18 14:51:16.363000', '2025-01-18 14:51:16.363000', NULL, NULL, NULL, NULL),
(351, 'nhze7jcqfsfhof0womgnbgrj', '297680011-07', '297680011-07-1', '9040613', 0, 'MAQ 5', '2025-01-18 14:51:16.365000', '2025-01-18 14:51:16.365000', NULL, NULL, NULL, NULL),
(352, 'w4ld2mzz7mefbo12wiueo2g5', '297904071-07', '297904071-07-1', '9012395', 0, 'MAQ 2', '2025-01-18 14:51:16.366000', '2025-01-18 14:51:16.366000', NULL, NULL, NULL, NULL),
(353, 'adqdzk4za28ee3oynbsgqxkh', '297904071-07', '297904071-07-2', '9012403', 0, 'MAQ 2', '2025-01-18 14:51:16.369000', '2025-01-18 14:51:16.369000', NULL, NULL, NULL, NULL),
(354, 'fmw9xvgbm6rahmdxn8ncq64e', '297773011-07', '297773011-07-1', '9040612', 0, 'MAQ 5', '2025-01-18 14:51:16.370000', '2025-01-18 14:51:16.370000', NULL, NULL, NULL, NULL),
(355, 'puep65sudbdiorsdve9ruc37', '297707011-07', '297707011-07-1', '9040613', 0, 'MAQ 5', '2025-01-18 14:51:16.371000', '2025-01-18 14:51:16.371000', NULL, NULL, NULL, NULL),
(356, 'chqkx0mob8fxwf5urkjmibge', '297025011-07', '297025011-07-1', '9006275', 0, 'MAQ 6', '2025-01-18 14:51:16.373000', '2025-01-18 14:51:16.373000', NULL, NULL, NULL, NULL),
(357, 'pq8mygszo1imm4bo18tw50jr', '297025011-07', '297025011-07-2', '9005148', 0, 'MAQ 6', '2025-01-18 14:51:16.374000', '2025-01-18 14:51:16.374000', NULL, NULL, NULL, NULL),
(358, 'gn5v0tf9vtk9cprfkwtvwqc0', '297025011-07', '297025011-07-3', '9005989', 0, 'MAQ 6', '2025-01-18 14:51:16.375000', '2025-01-18 14:51:16.375000', NULL, NULL, NULL, NULL),
(359, 'gj0tpmaqonztdhn8ve5lm3ag', '297689021-07', '297689021-07-1', '9003062', 0, 'MAQ 3', '2025-01-18 14:51:16.346000', '2025-01-18 14:51:16.346000', '2025-01-18 14:51:16.406000', NULL, NULL, NULL),
(360, 'pq8mygszo1imm4bo18tw50jr', '297025011-07', '297025011-07-2', '9005148', 0, 'MAQ 6', '2025-01-18 14:51:16.374000', '2025-01-18 14:51:16.374000', '2025-01-18 14:51:16.407000', NULL, NULL, NULL),
(361, 'rn0wgnflkjlmmuogpa23ev29', '297893011-07', '297893011-07-1', '9006241', 0, 'MAQ 1', '2025-01-18 14:51:16.363000', '2025-01-18 14:51:16.363000', '2025-01-18 14:51:16.409000', NULL, NULL, NULL),
(362, 'nhze7jcqfsfhof0womgnbgrj', '297680011-07', '297680011-07-1', '9040613', 0, 'MAQ 5', '2025-01-18 14:51:16.365000', '2025-01-18 14:51:16.365000', '2025-01-18 14:51:16.410000', NULL, NULL, NULL),
(363, 'w4ld2mzz7mefbo12wiueo2g5', '297904071-07', '297904071-07-1', '9012395', 0, 'MAQ 2', '2025-01-18 14:51:16.366000', '2025-01-18 14:51:16.366000', '2025-01-18 14:51:16.411000', NULL, NULL, NULL),
(364, 'adqdzk4za28ee3oynbsgqxkh', '297904071-07', '297904071-07-2', '9012403', 0, 'MAQ 2', '2025-01-18 14:51:16.369000', '2025-01-18 14:51:16.369000', '2025-01-18 14:51:16.413000', NULL, NULL, NULL),
(365, 'fmw9xvgbm6rahmdxn8ncq64e', '297773011-07', '297773011-07-1', '9040612', 0, 'MAQ 5', '2025-01-18 14:51:16.370000', '2025-01-18 14:51:16.370000', '2025-01-18 14:51:16.414000', NULL, NULL, NULL),
(366, 'puep65sudbdiorsdve9ruc37', '297707011-07', '297707011-07-1', '9040613', 0, 'MAQ 5', '2025-01-18 14:51:16.371000', '2025-01-18 14:51:16.371000', '2025-01-18 14:51:16.415000', NULL, NULL, NULL),
(367, 'chqkx0mob8fxwf5urkjmibge', '297025011-07', '297025011-07-1', '9006275', 0, 'MAQ 6', '2025-01-18 14:51:16.373000', '2025-01-18 14:51:16.373000', '2025-01-18 14:51:16.416000', NULL, NULL, NULL),
(368, 'gn5v0tf9vtk9cprfkwtvwqc0', '297025011-07', '297025011-07-3', '9005989', 0, 'MAQ 6', '2025-01-18 14:51:16.375000', '2025-01-18 14:51:16.375000', '2025-01-18 14:51:16.418000', NULL, NULL, NULL),
(369, 'j3t1uz555t2k9f3o2iwlf3p0', '297025011-07', '297025011-07-4', '9011028', 0, 'MAQ 6', '2025-01-18 14:51:16.427000', '2025-01-18 14:51:16.427000', NULL, NULL, NULL, NULL),
(370, 'ch3zv27oj7t53ip2jxa6ygvm', '297025011-07', '297025011-07-5', '9011055', 0, 'MAQ 6', '2025-01-18 14:51:16.441000', '2025-01-18 14:51:16.441000', NULL, NULL, NULL, NULL),
(371, 'g2gys2l3sjks00x134263si7', '297025011-07', '297025011-07-6', '9002984', 0, 'MAQ 6', '2025-01-18 14:51:16.443000', '2025-01-18 14:51:16.443000', NULL, NULL, NULL, NULL),
(372, 'zxaf19ialvgn6dgxqic1zksr', '297940041-07', '297940041-07-4', '9006671', 0, 'MAQ 6', '2025-01-18 14:51:16.448000', '2025-01-18 14:51:16.448000', NULL, NULL, NULL, NULL),
(373, 'npfucwzqmxdb147080dtjp15', '297940041-07', '297940041-07-5', '9006670', 0, 'MAQ 6', '2025-01-18 14:51:16.451000', '2025-01-18 14:51:16.451000', NULL, NULL, NULL, NULL),
(374, 'npfucwzqmxdb147080dtjp15', '297940041-07', '297940041-07-5', '9006670', 0, 'MAQ 6', '2025-01-18 14:51:16.451000', '2025-01-18 14:51:16.451000', '2025-01-18 14:51:16.509000', NULL, NULL, NULL),
(375, 'j3t1uz555t2k9f3o2iwlf3p0', '297025011-07', '297025011-07-4', '9011028', 0, 'MAQ 6', '2025-01-18 14:51:16.427000', '2025-01-18 14:51:16.427000', '2025-01-18 14:51:16.516000', NULL, NULL, NULL),
(376, 'ch3zv27oj7t53ip2jxa6ygvm', '297025011-07', '297025011-07-5', '9011055', 0, 'MAQ 6', '2025-01-18 14:51:16.441000', '2025-01-18 14:51:16.441000', '2025-01-18 14:51:16.517000', NULL, NULL, NULL),
(377, 'g2gys2l3sjks00x134263si7', '297025011-07', '297025011-07-6', '9002984', 0, 'MAQ 6', '2025-01-18 14:51:16.443000', '2025-01-18 14:51:16.443000', '2025-01-18 14:51:16.521000', NULL, NULL, NULL),
(378, 'zxaf19ialvgn6dgxqic1zksr', '297940041-07', '297940041-07-4', '9006671', 0, 'MAQ 6', '2025-01-18 14:51:16.448000', '2025-01-18 14:51:16.448000', '2025-01-18 14:51:16.522000', NULL, NULL, NULL),
(379, 'zxjvxnw3bdf3i6flb0ddx7qh', '390052130-07', '390052130-07-2', '9010154', 50, 'Grammer', '2025-01-18 14:51:14.338000', '2025-01-18 14:51:37.258000', '2025-01-18 14:51:37.268000', NULL, NULL, NULL),
(380, 'gs4hj9uj97hgy0tmnllqhjpy', '238314432-07', '238314432-07-1', '9020198', 50, 'ETO', '2025-01-18 14:51:13.790000', '2025-01-19 20:04:13.235000', '2025-01-19 20:04:13.253000', NULL, NULL, NULL),
(382, 'sq6tzejmhj7985e3kcfg5skf', '238314431-07', '238314431-07-2', '9020198', 900, 'ETO', '2025-01-18 14:51:13.573000', '2025-01-22 10:07:34.488000', '2025-01-22 10:07:34.502000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `files_folder_lnk`
--

CREATE TABLE `files_folder_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `files_related_mph`
--

CREATE TABLE `files_related_mph` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'odlll6z0q41cjttg4722t6sx', 'English (en)', 'en', '2025-01-17 14:50:29.148000', '2025-01-17 14:50:29.148000', '2025-01-17 14:50:29.148000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_api_token_permissions_token_lnk`
--

CREATE TABLE `strapi_api_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"api::box.box\":{\"kind\":\"collectionType\",\"collectionName\":\"boxes\",\"info\":{\"singularName\":\"box\",\"pluralName\":\"boxes\",\"displayName\":\"box\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Active\":{\"type\":\"boolean\",\"default\":false},\"cable_id\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cable.cable\"},\"uid\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::box.box\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"boxes\"}}},\"apiName\":\"box\",\"globalId\":\"Box\",\"uid\":\"api::box.box\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"boxes\",\"info\":{\"singularName\":\"box\",\"pluralName\":\"boxes\",\"displayName\":\"box\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Active\":{\"type\":\"boolean\",\"default\":false},\"cable_id\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cable.cable\"},\"uid\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"box\",\"actions\":{},\"lifecycles\":{}},\"api::cable.cable\":{\"kind\":\"collectionType\",\"collectionName\":\"cables\",\"info\":{\"singularName\":\"cable\",\"pluralName\":\"cables\",\"displayName\":\"cable\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"reference\":{\"type\":\"string\"},\"idf\":{\"type\":\"string\"},\"idb\":{\"type\":\"string\"},\"qte\":{\"type\":\"integer\",\"default\":0},\"project_name\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::cable.cable\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"cables\"}}},\"apiName\":\"cable\",\"globalId\":\"Cable\",\"uid\":\"api::cable.cable\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"cables\",\"info\":{\"singularName\":\"cable\",\"pluralName\":\"cables\",\"displayName\":\"cable\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"reference\":{\"type\":\"string\"},\"idf\":{\"type\":\"string\"},\"idb\":{\"type\":\"string\"},\"qte\":{\"type\":\"integer\",\"default\":0},\"project_name\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"cable\",\"actions\":{},\"lifecycles\":{}},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stages\":{\"edit\":{\"label\":\"stages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stages\",\"searchable\":false,\"sortable\":false}},\"stageRequiredToPublish\":{\"edit\":{\"label\":\"stageRequiredToPublish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stageRequiredToPublish\",\"searchable\":true,\"sortable\":true}},\"contentTypes\":{\"edit\":{\"label\":\"contentTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentTypes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"stages\",\"stageRequiredToPublish\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"stages\",\"size\":6}],[{\"name\":\"stageRequiredToPublish\",\"size\":6}],[{\"name\":\"contentTypes\",\"size\":12}]]},\"uid\":\"plugin::review-workflows.workflow\"}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::api::box.box', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"uid\",\"defaultSortBy\":\"uid\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Active\":{\"edit\":{\"label\":\"Active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Active\",\"searchable\":true,\"sortable\":true}},\"cable_id\":{\"edit\":{\"label\":\"cable_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"reference\"},\"list\":{\"label\":\"cable_id\",\"searchable\":true,\"sortable\":true}},\"uid\":{\"edit\":{\"label\":\"uid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"uid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Active\",\"cable_id\",\"uid\"],\"edit\":[[{\"name\":\"Active\",\"size\":4},{\"name\":\"cable_id\",\"size\":6}],[{\"name\":\"uid\",\"size\":6}]]},\"uid\":\"api::box.box\"}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::api::cable.cable', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"reference\",\"defaultSortBy\":\"reference\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"reference\":{\"edit\":{\"label\":\"reference\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"reference\",\"searchable\":true,\"sortable\":true}},\"idf\":{\"edit\":{\"label\":\"idf\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"idf\",\"searchable\":true,\"sortable\":true}},\"idb\":{\"edit\":{\"label\":\"idb\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"idb\",\"searchable\":true,\"sortable\":true}},\"qte\":{\"edit\":{\"label\":\"qte\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"qte\",\"searchable\":true,\"sortable\":true}},\"project_name\":{\"edit\":{\"label\":\"project_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"project_name\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"reference\",\"idf\",\"idb\"],\"edit\":[[{\"name\":\"reference\",\"size\":6},{\"name\":\"idf\",\"size\":6}],[{\"name\":\"idb\",\"size\":6},{\"name\":\"qte\",\"size\":4}],[{\"name\":\"project_name\",\"size\":6}]]},\"uid\":\"api::cable.cable\"}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"entryDocumentId\":{\"edit\":{\"label\":\"entryDocumentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entryDocumentId\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"entryDocumentId\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"entryDocumentId\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"workflow\":{\"edit\":{\"label\":\"workflow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"workflow\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"color\",\"workflow\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"workflow\",\"size\":6},{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"plugin::review-workflows.workflow-stage\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(20, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(21, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(22, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(23, 'plugin_upload_metrics', '{\"weeklySchedule\":\"29 55 14 * * 5\",\"lastWeeklyUpdate\":1737123270019}', 'object', NULL, NULL),
(24, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(25, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(26, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(27, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(28, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(1, '{\"tables\":[{\"name\":\"boxes\",\"indexes\":[{\"name\":\"boxes_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"boxes_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"boxes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"boxes_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"boxes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"uid\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"cables\",\"indexes\":[{\"name\":\"cables_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"cables_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"cables_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"cables_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"cables_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reference\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"idf\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"idb\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"qte\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"project_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"boxes_cable_id_lnk\",\"indexes\":[{\"name\":\"boxes_cable_id_lnk_fk\",\"columns\":[\"box_id\"]},{\"name\":\"boxes_cable_id_lnk_ifk\",\"columns\":[\"cable_id\"]},{\"name\":\"boxes_cable_id_lnk_uq\",\"columns\":[\"box_id\",\"cable_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"boxes_cable_id_lnk_fk\",\"columns\":[\"box_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"boxes\",\"onDelete\":\"CASCADE\"},{\"name\":\"boxes_cable_id_lnk_ifk\",\"columns\":[\"cable_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cables\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"box_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cable_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_uq\",\"columns\":[\"workflow_id\",\"workflow_stage_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2025-01-17 14:50:28', '1ceb6da9c9e0f128afd87f0f77c1069d');

-- --------------------------------------------------------

--
-- Structure de la table `strapi_history_versions`
--

CREATE TABLE `strapi_history_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_migrations_internal`
--

CREATE TABLE `strapi_migrations_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `strapi_migrations_internal`
--

INSERT INTO `strapi_migrations_internal` (`id`, `name`, `time`) VALUES
(1, '5.0.0-rename-identifiers-longer-than-max-length', '2025-01-17 14:50:24'),
(2, '5.0.0-02-created-document-id', '2025-01-17 14:50:24'),
(3, '5.0.0-03-created-locale', '2025-01-17 14:50:24'),
(4, '5.0.0-04-created-published-at', '2025-01-17 14:50:24'),
(5, '5.0.0-05-drop-slug-fields-index', '2025-01-17 14:50:24'),
(6, 'core::5.0.0-discard-drafts', '2025-01-17 14:50:24');

-- --------------------------------------------------------

--
-- Structure de la table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `entry_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_release_actions_release_lnk`
--

CREATE TABLE `strapi_release_actions_release_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_transfer_token_permissions_token_lnk`
--

CREATE TABLE `strapi_transfer_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_workflows`
--

CREATE TABLE `strapi_workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content_types`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_workflows_stages`
--

CREATE TABLE `strapi_workflows_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_workflows_stages_permissions_lnk`
--

CREATE TABLE `strapi_workflows_stages_permissions_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_workflows_stages_workflow_lnk`
--

CREATE TABLE `strapi_workflows_stages_workflow_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `strapi_workflows_stage_required_to_publish_lnk`
--

CREATE TABLE `strapi_workflows_stage_required_to_publish_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `upload_folders_parent_lnk`
--

CREATE TABLE `upload_folders_parent_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'tnkvlhfm0wz069ncx0w1zica', 'plugin::users-permissions.user.me', '2025-01-17 14:50:29.403000', '2025-01-17 14:50:29.403000', '2025-01-17 14:50:29.404000', NULL, NULL, NULL),
(2, 'iw28efeg2ijlqhyxjk5ow036', 'plugin::users-permissions.auth.changePassword', '2025-01-17 14:50:29.403000', '2025-01-17 14:50:29.403000', '2025-01-17 14:50:29.404000', NULL, NULL, NULL),
(3, 'ulj3vssm1he2u8rhgab5hltp', 'plugin::users-permissions.auth.callback', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', NULL, NULL, NULL),
(4, 'd3w6s2bjvt6cpslju7gditmo', 'plugin::users-permissions.auth.connect', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', NULL, NULL, NULL),
(5, 'ysgxtimckvh9wc1o2j1eyjgt', 'plugin::users-permissions.auth.forgotPassword', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', NULL, NULL, NULL),
(6, 'hxpflq0antj1t7wy5fx4gdpf', 'plugin::users-permissions.auth.resetPassword', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', NULL, NULL, NULL),
(7, 'tmgkp31s4dzatcg4zfgmfs9y', 'plugin::users-permissions.auth.register', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', NULL, NULL, NULL),
(8, 'v9zig3es6yt37xxl1a4evxa6', 'plugin::users-permissions.auth.emailConfirmation', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.426000', NULL, NULL, NULL),
(9, 'zy7up4kulnqm4s97rvsom8yj', 'plugin::users-permissions.auth.sendEmailConfirmation', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.425000', '2025-01-17 14:50:29.426000', NULL, NULL, NULL),
(10, 'arx4548nppae1zokpx3ohhwn', 'api::box.box.find', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.862000', NULL, NULL, NULL),
(11, 'pnc34dkhji1yzkuff2stpowu', 'api::box.box.findOne', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.862000', NULL, NULL, NULL),
(12, 'l4zgh46q89vucdgzg7f13dvk', 'api::box.box.create', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.862000', NULL, NULL, NULL),
(13, 'z36r2864yaqfqwkkdum9nnoe', 'api::box.box.update', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.862000', NULL, NULL, NULL),
(14, 'gj07vazdpt5jpoj8lnw5piw6', 'api::cable.cable.update', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.863000', NULL, NULL, NULL),
(15, 'yqoqq3s8amkdab11q8ujqwdb', 'plugin::users-permissions.user.me', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.863000', NULL, NULL, NULL),
(16, 'x6bglklh9igl0xmt4p9lddm2', 'api::cable.cable.findOne', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.863000', NULL, NULL, NULL),
(17, 'xjlfal52x4p1lkgb1q1qsc0x', 'api::cable.cable.find', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.862000', NULL, NULL, NULL),
(18, 'vz48wp0seom5nkk5dqgo4jxm', 'api::cable.cable.create', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.861000', '2025-01-18 14:48:39.863000', NULL, NULL, NULL),
(19, 'qrbegqtog0fra5wmhn77tctm', 'api::box.box.find', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', NULL, NULL, NULL),
(20, 'rub4nnlu3r5tlmvsmonf0dey', 'api::box.box.findOne', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', NULL, NULL, NULL),
(21, 'ta0h6bzm9uzb7qp104ep6fwe', 'api::box.box.create', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', NULL, NULL, NULL),
(22, 'bndipvabclhnknx7z7elb0p6', 'api::box.box.update', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', NULL, NULL, NULL),
(23, 'jp6qsxpvjs3gx6a93leefbm9', 'api::box.box.delete', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.948000', NULL, NULL, NULL),
(24, 'ih66in9fo23qnxic5qpn3r6z', 'api::cable.cable.find', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.948000', NULL, NULL, NULL),
(25, 'th3z62v064or5rejwo0o6426', 'api::cable.cable.create', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.948000', NULL, NULL, NULL),
(26, 'etrya03gigor8wfdcea9rodz', 'api::cable.cable.findOne', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.948000', NULL, NULL, NULL),
(27, 'y9u438vwf9ago37wmy0beseo', 'api::cable.cable.delete', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.948000', NULL, NULL, NULL),
(28, 'hhhk6xyxkvli0hucoe5pk4dw', 'api::cable.cable.update', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.947000', '2025-01-18 14:51:09.948000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `up_permissions_role_lnk`
--

CREATE TABLE `up_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `up_permissions_role_lnk`
--

INSERT INTO `up_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 2),
(5, 5, 2, 2),
(6, 6, 2, 2),
(7, 9, 2, 2),
(8, 8, 2, 2),
(9, 7, 2, 2),
(10, 11, 3, 1),
(11, 13, 3, 1),
(12, 12, 3, 1),
(13, 10, 3, 1),
(14, 14, 3, 2),
(15, 18, 3, 2),
(16, 17, 3, 2),
(17, 16, 3, 2),
(18, 15, 3, 3),
(19, 21, 2, 3),
(20, 19, 2, 3),
(21, 22, 2, 3),
(22, 20, 2, 3),
(23, 23, 2, 4),
(24, 24, 2, 5),
(25, 26, 2, 5),
(26, 25, 2, 5),
(27, 28, 2, 5),
(28, 27, 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `up_roles`
--

INSERT INTO `up_roles` (`id`, `document_id`, `name`, `description`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'ltwz2og3ir127r35hn8j8r9z', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2025-01-17 14:50:29.379000', '2025-01-17 14:50:29.379000', '2025-01-17 14:50:29.379000', NULL, NULL, NULL),
(2, 'twwal2i4230yg7m6m0e22w2o', 'Public', 'Default role given to unauthenticated user.', 'public', '2025-01-17 14:50:29.386000', '2025-01-18 14:51:09.938000', '2025-01-17 14:50:29.386000', NULL, NULL, NULL),
(3, 'ew1ajri1mesubexzji1tzz4t', 'gestion', 'gg', 'gestion', '2025-01-18 14:48:39.853000', '2025-01-18 14:48:39.853000', '2025-01-18 14:48:39.853000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `up_users`
--

INSERT INTO `up_users` (`id`, `document_id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'hzsx4y15sa1wlk73fiqyoitg', 'fakhri gestino', 'fakkreddine50@gmail.com', 'local', '$2a$10$Bs6yEEs.9/OU4BdfgoHp0u2wQfhbgmMlj2OvQkc6Fdw6.W.xBFjVe', NULL, NULL, 1, 0, '2025-01-18 14:47:42.969000', '2025-01-18 14:48:49.162000', '2025-01-18 14:48:49.131000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `up_users_role_lnk`
--

CREATE TABLE `up_users_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `up_users_role_lnk`
--

INSERT INTO `up_users_role_lnk` (`id`, `user_id`, `role_id`, `user_ord`) VALUES
(2, 1, 3, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `admin_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Index pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_lnk_fk` (`user_id`),
  ADD KEY `admin_users_roles_lnk_ifk` (`role_id`),
  ADD KEY `admin_users_roles_lnk_ofk` (`role_ord`),
  ADD KEY `admin_users_roles_lnk_oifk` (`user_ord`);

--
-- Index pour la table `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boxes_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `boxes_created_by_id_fk` (`created_by_id`),
  ADD KEY `boxes_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `boxes_cable_id_lnk`
--
ALTER TABLE `boxes_cable_id_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `boxes_cable_id_lnk_uq` (`box_id`,`cable_id`),
  ADD KEY `boxes_cable_id_lnk_fk` (`box_id`),
  ADD KEY `boxes_cable_id_lnk_ifk` (`cable_id`);

--
-- Index pour la table `cables`
--
ALTER TABLE `cables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cables_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `cables_created_by_id_fk` (`created_by_id`),
  ADD KEY `cables_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_lnk_uq` (`file_id`,`folder_id`),
  ADD KEY `files_folder_lnk_fk` (`file_id`),
  ADD KEY `files_folder_lnk_ifk` (`folder_id`),
  ADD KEY `files_folder_lnk_oifk` (`file_ord`);

--
-- Index pour la table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_mph_fk` (`file_id`),
  ADD KEY `files_related_mph_oidx` (`order`),
  ADD KEY `files_related_mph_idix` (`related_id`);

--
-- Index pour la table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_lnk_uq` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_ifk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_oifk` (`api_token_permission_ord`);

--
-- Index pour la table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_history_versions_created_by_id_fk` (`created_by_id`);

--
-- Index pour la table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_lnk_uq` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_lnk_ifk` (`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_oifk` (`release_action_ord`);

--
-- Index pour la table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_lnk_uq` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_ifk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_oifk` (`transfer_token_permission_ord`);

--
-- Index pour la table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_stages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_stages_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_stages_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_permissions_lnk_uq` (`workflow_stage_id`,`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ifk` (`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ofk` (`permission_ord`);

--
-- Index pour la table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_workflow_lnk_uq` (`workflow_stage_id`,`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_ifk` (`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_oifk` (`workflow_stage_ord`);

--
-- Index pour la table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stage_required_to_publish_lnk_uq` (`workflow_id`,`workflow_stage_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_fk` (`workflow_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_ifk` (`workflow_stage_id`);

--
-- Index pour la table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_lnk_uq` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_lnk_ifk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_oifk` (`folder_ord`);

--
-- Index pour la table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `up_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `up_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Index pour la table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Index pour la table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `up_users_role_lnk_fk` (`user_id`),
  ADD KEY `up_users_role_lnk_ifk` (`role_id`),
  ADD KEY `up_users_role_lnk_oifk` (`user_ord`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `boxes`
--
ALTER TABLE `boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT pour la table `boxes_cable_id_lnk`
--
ALTER TABLE `boxes_cable_id_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT pour la table `cables`
--
ALTER TABLE `cables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT pour la table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD CONSTRAINT `admin_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD CONSTRAINT `admin_users_roles_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `boxes`
--
ALTER TABLE `boxes`
  ADD CONSTRAINT `boxes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `boxes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `boxes_cable_id_lnk`
--
ALTER TABLE `boxes_cable_id_lnk`
  ADD CONSTRAINT `boxes_cable_id_lnk_fk` FOREIGN KEY (`box_id`) REFERENCES `boxes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boxes_cable_id_lnk_ifk` FOREIGN KEY (`cable_id`) REFERENCES `cables` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cables`
--
ALTER TABLE `cables`
  ADD CONSTRAINT `cables_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cables_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD CONSTRAINT `files_folder_lnk_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_lnk_ifk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD CONSTRAINT `files_related_mph_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_ifk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD CONSTRAINT `strapi_history_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD CONSTRAINT `strapi_release_actions_release_lnk_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_lnk_ifk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_ifk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD CONSTRAINT `strapi_workflows_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD CONSTRAINT `strapi_workflows_stages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_stages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_ifk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_ifk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_fk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_ifk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD CONSTRAINT `upload_folders_parent_lnk_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_lnk_ifk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD CONSTRAINT `up_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD CONSTRAINT `up_users_role_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
