-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3311
-- Generation Time: Apr 06, 2026 at 01:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pigz`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggotas`
--

CREATE TABLE `anggotas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` enum('X-TP','X-TKR','X-TBSM','X-TJKT','X-PPLG','XI-TP','XI-TKR','XI-TBSM','XI-TJKT','XI-PPLG','XII-TP','XII-TKR','XII-TBSM','XII-TJKT','XII-PPLG') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggotas`
--

INSERT INTO `anggotas` (`id`, `user_id`, `nis`, `kelas`, `jenis_kelamin`, `tanggal_lahir`, `no_hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, '62633787', 'X-TKR', 'Perempuan', '2014-02-17', '+1-531-208-7171', '8144 West Gardens Apt. 597\nLake Aubreyburgh, AL 07784', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(2, 3, '20771120', 'XII-PPLG', 'Perempuan', '1992-07-19', '(770) 454-8865', '551 Vincent Plains Apt. 956\nWolffort, AL 34479', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(3, 4, '33614840', 'X-TKR', 'Laki-laki', '1973-10-04', '(774) 369-5204', '54408 Jovan Bridge Apt. 031\nKassulkefort, NM 46604-0074', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(4, 5, '53170664', 'XII-TJKT', 'Perempuan', '1984-04-11', '+17276040536', '8134 Maurine Glen\nEast Eramouth, IL 99907-0712', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(5, 6, '92033487', 'XII-TJKT', 'Laki-laki', '1993-03-17', '(725) 413-8297', '8923 Ted Spurs\nVirgieberg, OK 74490', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(6, 7, '97115969', 'XI-TP', 'Laki-laki', '2011-11-30', '(820) 985-8033', '42603 Murray Extension\nStarkhaven, CA 08885-2562', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(7, 8, '93896055', 'XI-TKR', 'Laki-laki', '1985-04-21', '+1-530-845-6348', '9881 Gavin Common\nBergemouth, TN 70570', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(8, 9, '46511766', 'X-PPLG', 'Laki-laki', '2010-06-02', '+1-570-804-2205', '66254 Theresia Roads Apt. 514\nMcCulloughside, MO 22682', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(9, 10, '90934653', 'XII-TKR', 'Laki-laki', '2008-10-04', '+1-754-463-6970', '49864 Alanna Rapid Suite 143\nEast Luigi, SD 10233', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(10, 11, '92499707', 'X-TJKT', 'Laki-laki', '2002-09-06', '1-631-531-3568', '520 Von Motorway Apt. 217\nWest Moshehaven, GA 02891-1046', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(11, 12, '38690964', 'XI-TBSM', 'Perempuan', '2009-01-15', '+1-272-247-4450', '2696 Lowe Plain Apt. 260\nWest Hiltonville, ME 84277', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(12, 13, '58499317', 'X-TP', 'Perempuan', '1974-06-12', '574-752-6319', '74121 Kuhlman Stream\nPort Holden, MO 63242', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(13, 14, '41097869', 'XII-PPLG', 'Perempuan', '2010-09-23', '+1-720-479-7910', '4738 Shirley Ports\nYostburgh, NH 49059-4583', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(14, 15, '41563247', 'XI-TP', 'Laki-laki', '2024-03-11', '385.404.9096', '8386 Courtney Extension Suite 051\nEarlinebury, MA 57402', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(15, 16, '32658848', 'XII-PPLG', 'Laki-laki', '2010-06-25', '+1 (959) 663-0828', '337 Duane Station\nGleichnerstad, CT 46425', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(16, 17, '02461130', 'XII-TP', 'Laki-laki', '2012-05-21', '351.913.1728', '3386 Rutherford Island\nTaniafort, MI 73089-0765', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(17, 18, '54554895', 'X-TKR', 'Laki-laki', '1974-03-08', '+15303938102', '911 Lehner Vista Apt. 112\nWest Elnoraport, OR 96297', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(18, 19, '98450518', 'X-TKR', 'Perempuan', '1988-04-30', '(870) 490-5821', '521 Ledner Rest\nJoliestad, NV 80742-4723', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(19, 20, '58081277', 'XII-TBSM', 'Perempuan', '1979-06-29', '325-286-8634', '59635 Gaylord Bypass Suite 952\nPort Royce, SD 46711', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(20, 21, '49584038', 'X-PPLG', 'Perempuan', '2026-02-06', '+1 (534) 629-0286', '72378 Powlowski Corner\nNorth Odabury, CT 26818-1825', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(21, 22, '78876879', 'XII-TBSM', 'Laki-laki', '2004-12-31', '(657) 377-5045', '45748 Kessler Light\nEast Jazlynfurt, AK 47720-8746', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(22, 23, '17131613', 'XI-TBSM', 'Laki-laki', '2026-02-13', '318-905-2218', '61878 Ullrich Parks\nYeseniaview, SD 72193', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(23, 24, '32853738', 'XII-TJKT', 'Laki-laki', '2018-11-19', '248-627-5967', '14586 Joanny Alley Apt. 527\nNew Rafael, NJ 51721', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(24, 25, '82769671', 'XII-TBSM', 'Laki-laki', '2002-01-13', '+1 (463) 977-8125', '617 Flatley Walk\nBoyerberg, PA 74236', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(25, 26, '63114196', 'XI-TKR', 'Perempuan', '2020-07-20', '+1-678-671-8440', '46362 Jessy Cove\nChloechester, NE 17013-3873', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(26, 27, '90162989', 'XI-TJKT', 'Perempuan', '2002-06-13', '1-423-227-5935', '476 Mathias Center Apt. 936\nKacieside, LA 03876', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(27, 28, '78632595', 'XI-TP', 'Perempuan', '2012-03-14', '+1-915-415-7317', '84067 Connelly Island\nBrakushaven, NJ 09344-1468', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(28, 29, '08871496', 'XI-TP', 'Perempuan', '2009-03-06', '820.788.3153', '4869 Erwin Shoals\nSouth Josueshire, NM 27999', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(29, 30, '84593041', 'X-TJKT', 'Perempuan', '2024-04-02', '856.906.9604', '9200 Thompson Trail\nEast Tomasa, UT 20218-0951', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(30, 31, '27604839', 'XI-TKR', 'Laki-laki', '2017-12-24', '+1.351.900.9924', '51252 Green Station Apt. 627\nKossbury, OK 84093', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(31, 32, '04998652', 'XI-TBSM', 'Perempuan', '2001-11-15', '+1 (856) 934-0674', '48332 Bettie Circle Apt. 304\nAndersonberg, SC 34954', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(32, 33, '65636777', 'X-TBSM', 'Laki-laki', '1978-09-22', '(334) 612-4615', '25759 Hiram Burgs\nSouth Blake, SD 83872-7766', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(33, 34, '20492865', 'XI-PPLG', 'Laki-laki', '1970-02-11', '423.940.8159', '137 Francisca Cliff\nDewayneside, VA 07964', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(34, 35, '21216278', 'XI-TJKT', 'Laki-laki', '1988-03-23', '321.681.7915', '4950 Paucek Lodge Apt. 488\nNorth Audreanneberg, TN 90818-7955', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(35, 36, '39417799', 'X-PPLG', 'Perempuan', '1991-05-21', '(480) 833-1002', '530 Brakus Loaf\nEast Erwin, TN 88013-3546', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(36, 37, '90538987', 'XII-TP', 'Perempuan', '2024-06-09', '1-385-352-3620', '46670 Kory Keys Apt. 104\nD\'Amoremouth, RI 06564-9699', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(37, 38, '29260922', 'XI-PPLG', 'Perempuan', '2021-08-06', '+1.865.413.7098', '29817 Elisha Expressway\nEffertzchester, GA 29968', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(38, 39, '91549214', 'X-TJKT', 'Perempuan', '1998-07-15', '1-334-561-1676', '86739 Mohr Freeway\nWest Alexanne, ND 97877-5809', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(39, 40, '69561124', 'XII-TP', 'Laki-laki', '1995-07-26', '570.649.3742', '716 Barry Squares Suite 753\nEast Clemens, ME 88783', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(40, 41, '94499827', 'XII-PPLG', 'Perempuan', '2004-05-25', '731.449.8672', '71658 Alf Roads\nEverettefort, CO 62037', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(41, 42, '21604286', 'XI-TKR', 'Perempuan', '1977-12-15', '+1-559-709-9107', '283 Harvey Row\nHipolitoland, KY 63312', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(42, 43, '65443368', 'XII-PPLG', 'Laki-laki', '2023-03-11', '669-429-8512', '272 Eugenia Streets Suite 713\nSouth Oma, CT 49148-6127', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(43, 44, '79247484', 'X-TBSM', 'Perempuan', '2013-08-16', '601.287.1767', '99888 Gottlieb Via Apt. 281\nWest Asa, MN 27806-5822', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(44, 45, '58061736', 'X-PPLG', 'Laki-laki', '1999-09-29', '415.709.9066', '5854 Vito Meadow Suite 835\nWest Erniestad, OR 61574', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(45, 46, '01324890', 'XI-TKR', 'Laki-laki', '2023-06-10', '+1 (458) 990-9804', '123 Schaden Canyon Suite 637\nNorth Gardner, KS 31486-1586', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(46, 47, '75067580', 'XI-TJKT', 'Laki-laki', '2004-11-27', '304-783-9346', '92592 Marion Rapids Suite 377\nSouth Rodrigotown, WI 86681-2262', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(47, 48, '10416743', 'XI-PPLG', 'Perempuan', '2019-04-26', '(469) 297-4623', '64062 Powlowski Lodge Suite 201\nQuitzonstad, WA 56113', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(48, 49, '10917621', 'XII-PPLG', 'Perempuan', '1979-01-13', '+12345052058', '984 Wilderman Fords Apt. 329\nMooreport, OR 76493-5771', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(49, 50, '30531902', 'XI-TBSM', 'Laki-laki', '2015-08-17', '(678) 287-6570', '851 Wyman Mountains Suite 311\nKshlerinchester, NJ 74247-2958', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(50, 51, '59461374', 'XI-TJKT', 'Perempuan', '1974-07-24', '580.393.3464', '2025 Yost Green Suite 915\nBradlymouth, VT 24243-2425', '2026-04-05 07:47:53', '2026-04-05 07:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `bukus`
--

CREATE TABLE `bukus` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED DEFAULT NULL,
  `kode_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_terbit` year DEFAULT NULL,
  `rak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bukus`
--

INSERT INTO `bukus` (`id`, `kategori_id`, `kode_buku`, `isbn`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `rak`, `cover`, `stok`, `created_at`, `updated_at`) VALUES
(1, 12, 'BK-9156', '9780608875798', 'Officiis et illo eligendi.', 'Titus Skiles', 'Nienow, Cronin and Fahey', 2000, 'Rak-n', 'covers/book3.jpg', 4, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(2, 11, 'BK-5999', '9796565188079', 'Enim debitis sint.', 'Dixie Prosacco', 'Armstrong, Koelpin and D\'Amore', 2007, 'Rak-x', 'covers/book3.jpg', 6, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(3, 2, 'BK-7070', '9786897430465', 'Consequatur tenetur velit inventore nostrum.', 'Crystal Weber', 'Fahey and Sons', 2012, 'Rak-v', 'covers/book3.jpg', 8, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(4, 13, 'BK-6321', '9795152570686', 'Voluptatem consequatur magni eum.', 'Weldon Jast I', 'Lesch and Sons', 2017, 'Rak-h', 'covers/book1.jpg', 6, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(5, 2, 'BK-4987', '9792936820753', 'Recusandae autem numquam.', 'Loy Crooks', 'Medhurst, Waters and Johnston', 2010, 'Rak-b', 'covers/book2.jpg', 10, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(6, 10, 'BK-6295', '9792607865144', 'Rerum ut voluptas.', 'Alessandra Sawayn', 'Glover, Walker and Reilly', 2022, 'Rak-e', 'covers/book4.jpg', 4, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(7, 9, 'BK-6864', '9786185623395', 'Aliquam soluta assumenda alias.', 'Cristal Steuber', 'Wehner, Veum and Langworth', 2023, 'Rak-w', 'covers/book2.jpg', 3, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(8, 7, 'BK-9014', '9797346312218', 'Perferendis dolores eum repudiandae.', 'Antonetta Monahan', 'Reichel, Marks and Hauck', 2008, 'Rak-e', 'covers/book2.jpg', 8, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(9, 10, 'BK-8620', '9782359707687', 'Autem sint impedit.', 'Dr. Drake Ryan II', 'Heller Ltd', 2021, 'Rak-s', 'covers/book1.jpg', 8, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(10, 9, 'BK-1087', '9796042598278', 'Asperiores reprehenderit enim dolorem.', 'Fred Durgan', 'Krajcik, Schuppe and Mann', 2020, 'Rak-q', 'covers/book2.jpg', 3, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(11, 13, 'BK-6892', '9786707148269', 'Est consequuntur tenetur.', 'Addie Nitzsche', 'Walker and Sons', 2012, 'Rak-c', 'covers/book4.jpg', 7, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(12, 5, 'BK-1531', '9794459576841', 'Debitis magni.', 'Sharon Mayer', 'Mohr and Sons', 2008, 'Rak-z', 'covers/book4.jpg', 9, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(13, 4, 'BK-4058', '9789533197517', 'Sunt vero neque ut.', 'Waino DuBuque', 'Kozey Inc', 2024, 'Rak-t', 'covers/book1.jpg', 1, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(14, 12, 'BK-4368', '9790943404782', 'Non id id.', 'Sabrina Brown DDS', 'Walker, Cronin and Mueller', 2021, 'Rak-t', 'covers/book5.jpg', 10, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(15, 12, 'BK-7037', '9787476205726', 'At ut dolorum doloremque.', 'Dr. Jarvis Altenwerth Sr.', 'Blanda Inc', 2006, 'Rak-u', 'covers/book4.jpg', 3, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(16, 8, 'BK-6796', '9795672168400', 'Reiciendis ut autem deserunt.', 'Adonis Daniel', 'Dare Ltd', 2005, 'Rak-l', 'covers/book4.jpg', 5, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(17, 6, 'BK-7155', '9791073935368', 'Illum et aut.', 'Felix Ortiz', 'Bechtelar-Greenfelder', 2024, 'Rak-h', 'covers/book5.jpg', 7, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(18, 8, 'BK-3104', '9780034205145', 'Quae ratione ducimus quos.', 'Drew Rempel', 'Towne-Bernier', 2014, 'Rak-p', 'covers/book5.jpg', 3, '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(19, 11, 'BK-5754', '9781603453639', 'Exercitationem illo delectus impedit.', 'Deondre Lesch', 'Effertz-Mertz', 2016, 'Rak-h', 'covers/book5.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(20, 10, 'BK-6108', '9781258016906', 'Hic occaecati maxime odit pariatur.', 'Prof. Raphaelle Ratke', 'Hahn-Balistreri', 2003, 'Rak-i', 'covers/book5.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(21, 12, 'BK-2766', '9784778235314', 'Eaque tempora.', 'Treva Mayer', 'Shanahan Ltd', 2021, 'Rak-k', 'covers/book3.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(22, 8, 'BK-8174', '9789428109960', 'Ad libero sapiente.', 'Una Russel', 'Beahan-Graham', 2012, 'Rak-o', 'covers/book3.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(23, 9, 'BK-4552', '9784108264557', 'Velit consequatur quo eos.', 'Mr. Marlin Nitzsche', 'Homenick, Haley and Mosciski', 2003, 'Rak-y', 'covers/book3.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(24, 6, 'BK-3906', '9798243095457', 'Voluptas est enim nostrum.', 'Eveline Hermiston', 'Pfannerstill-Kutch', 2015, 'Rak-p', 'covers/book1.jpg', 7, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(25, 9, 'BK-4820', '9790104895022', 'Maiores reprehenderit aliquam quas.', 'Kennedi Wisozk I', 'Schimmel and Sons', 2017, 'Rak-r', 'covers/book5.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(26, 2, 'BK-6739', '9786123416027', 'Nulla natus ratione.', 'Ms. Destinee Morissette DVM', 'Keeling Group', 2016, 'Rak-d', 'covers/book4.jpg', 3, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(27, 5, 'BK-1462', '9796485941594', 'Ut quos placeat qui.', 'Prof. Madge Bahringer', 'Beatty, Willms and Lebsack', 2021, 'Rak-j', 'covers/book1.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(28, 9, 'BK-4709', '9791019632276', 'Libero ipsam qui aut.', 'Verna Cruickshank', 'Franecki and Sons', 2003, 'Rak-r', 'covers/book1.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(29, 8, 'BK-4663', '9791713754397', 'Id doloremque aliquid reiciendis.', 'Dr. Wilton Glover', 'Klein-Lebsack', 2001, 'Rak-z', 'covers/book4.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(30, 14, 'BK-4266', '9782240678713', 'Alias culpa ex repudiandae.', 'Miss Iva Williamson', 'Moore-Abshire', 2024, 'Rak-i', 'covers/book1.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(31, 2, 'BK-5092', '9799668735164', 'Fugit suscipit ipsam et.', 'Deion Hodkiewicz', 'Hartmann LLC', 2002, 'Rak-l', 'covers/book5.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(32, 8, 'BK-2848', '9780223617865', 'Vero iure laboriosam.', 'Chester Quigley DDS', 'Bruen and Sons', 2021, 'Rak-w', 'covers/book1.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(33, 11, 'BK-2547', '9790366847289', 'Fugiat dolor officia et.', 'Janessa Konopelski Sr.', 'Pacocha Inc', 2023, 'Rak-l', 'covers/book1.jpg', 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(34, 7, 'BK-7264', '9785636235309', 'Quo facilis eaque rerum.', 'Mrs. Julie Deckow', 'Mitchell-Schumm', 2014, 'Rak-g', 'covers/book5.jpg', 10, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(35, 14, 'BK-7785', '9784300669143', 'Qui placeat eveniet.', 'Mustafa Armstrong PhD', 'Lemke Group', 2005, 'Rak-d', 'covers/book5.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(36, 4, 'BK-2733', '9787522175614', 'Commodi maiores iure.', 'Jayden Kilback V', 'Bode-Gorczany', 2020, 'Rak-t', 'covers/book5.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(37, 9, 'BK-7906', '9782162527939', 'Animi et alias.', 'Jamison Bradtke', 'Champlin and Sons', 2024, 'Rak-d', 'covers/book1.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(38, 7, 'BK-1895', '9787054948113', 'Quos quas alias quam cumque.', 'Kaitlyn Grady', 'Abbott and Sons', 2007, 'Rak-n', 'covers/book5.jpg', 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(39, 3, 'BK-8652', '9786538844309', 'Qui voluptas vel blanditiis et.', 'Dr. Karelle Schultz V', 'Parisian-White', 2017, 'Rak-z', 'covers/book3.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(40, 1, 'BK-7684', '9783615248180', 'Iure voluptatibus quo minus.', 'Raven Marvin', 'Lockman, Osinski and Hilpert', 2000, 'Rak-m', 'covers/book2.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(41, 2, 'BK-1707', '9791802538082', 'Voluptatem modi at dolor.', 'Flavie Hodkiewicz', 'Bayer and Sons', 2016, 'Rak-x', 'covers/book5.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(42, 8, 'BK-3385', '9796825359539', 'Non ipsum sunt repudiandae.', 'Prof. Hailey Carroll DVM', 'Kulas LLC', 2015, 'Rak-c', 'covers/book4.jpg', 8, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(43, 13, 'BK-4381', '9797679018351', 'Et qui molestiae sequi.', 'Sedrick Mante', 'Reynolds Ltd', 2003, 'Rak-d', 'covers/book5.jpg', 8, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(44, 9, 'BK-7131', '9782122565445', 'Dolores possimus id voluptatum.', 'Tyrell Lubowitz Jr.', 'Abernathy, Becker and Rutherford', 2003, 'Rak-y', 'covers/book5.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(45, 3, 'BK-7724', '9791216756522', 'Vel consequuntur doloremque est.', 'Dr. Armand Swaniawski', 'Bradtke, Hamill and Cremin', 2004, 'Rak-f', 'covers/book4.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(46, 2, 'BK-8476', '9793640142193', 'Sit sed et dolor.', 'Prof. Maya Smith Jr.', 'Grady-Okuneva', 2001, 'Rak-y', 'covers/book5.jpg', 8, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(47, 11, 'BK-6325', '9797693697068', 'Dolorem eos totam eum.', 'Ezekiel Ferry', 'Fritsch-Bruen', 2008, 'Rak-k', 'covers/book5.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(48, 1, 'BK-7462', '9799621667242', 'Dolore ducimus ea dolores rem.', 'Tiara Emmerich', 'Spencer Inc', 2024, 'Rak-g', 'covers/book3.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(49, 11, 'BK-2549', '9788290726183', 'Sint suscipit aperiam.', 'Sigrid Cummings', 'Yundt, Veum and Quigley', 2023, 'Rak-o', 'covers/book2.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(50, 3, 'BK-8942', '9792922910390', 'Dolor ratione aut.', 'Leon Cassin', 'Windler Ltd', 2010, 'Rak-e', 'covers/book2.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(51, 6, 'BK-5075', '9783309604025', 'Quibusdam nemo est doloribus.', 'Scarlett Dickens', 'Wisoky, Ziemann and Zulauf', 2021, 'Rak-k', 'covers/book3.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(52, 6, 'BK-2585', '9797274787577', 'Voluptatem earum unde vitae doloribus.', 'Gabriel Hand', 'Blick, Denesik and Lockman', 2007, 'Rak-r', 'covers/book4.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(53, 13, 'BK-3449', '9782057936037', 'Vero et ducimus.', 'Salvador Osinski', 'Mann Group', 2002, 'Rak-d', 'covers/book1.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(54, 4, 'BK-5496', '9795815803403', 'Fugit deleniti accusamus est.', 'Kane Leannon', 'Hills Ltd', 2008, 'Rak-m', 'covers/book5.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(55, 6, 'BK-8036', '9798824797572', 'Quas non ex.', 'Jeremie Russel', 'Padberg-Emmerich', 2012, 'Rak-e', 'covers/book1.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(56, 2, 'BK-4718', '9790879616112', 'Aut veniam facilis.', 'Ms. Lauriane Pouros', 'Boyle-Breitenberg', 2021, 'Rak-q', 'covers/book1.jpg', 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(57, 8, 'BK-8117', '9782111679467', 'Fugiat nihil sit officia sint.', 'Janelle Wyman', 'Luettgen-Fisher', 2001, 'Rak-w', 'covers/book3.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(58, 10, 'BK-8192', '9793601412433', 'Odio ex.', 'Juliana Beier', 'Nader Group', 2003, 'Rak-x', 'covers/book2.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(59, 10, 'BK-2616', '9788567223896', 'Qui sed quibusdam soluta.', 'Vallie Hickle', 'Davis-Nicolas', 2022, 'Rak-b', 'covers/book2.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(60, 5, 'BK-1449', '9786424409155', 'Molestiae consectetur.', 'Ramona Considine', 'Collier-Simonis', 2018, 'Rak-k', 'covers/book4.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(61, 6, 'BK-5538', '9795057440510', 'Corporis voluptates repellat vitae ipsum.', 'Josh Mertz IV', 'Murray-Spencer', 2005, 'Rak-j', 'covers/book3.jpg', 10, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(62, 7, 'BK-2373', '9780243533299', 'Officia pariatur aut.', 'Mrs. Jody Keebler V', 'Predovic, Weissnat and Zulauf', 2022, 'Rak-z', 'covers/book2.jpg', 8, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(63, 4, 'BK-9904', '9791901177632', 'Quod consequatur recusandae voluptatem officiis.', 'Miller Stamm', 'Bernier-Nienow', 2008, 'Rak-x', 'covers/book5.jpg', 8, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(64, 3, 'BK-2572', '9793160689659', 'Eum sed consectetur.', 'Alysha Schroeder', 'Mante-Macejkovic', 2016, 'Rak-m', 'covers/book2.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(65, 9, 'BK-7052', '9780562111802', 'Ipsam temporibus molestiae.', 'Winifred Grimes', 'Zulauf LLC', 2000, 'Rak-o', 'covers/book3.jpg', 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(66, 7, 'BK-8701', '9780359747054', 'Voluptas sint et culpa.', 'Royal Greenholt', 'Price, Waters and Rosenbaum', 2021, 'Rak-n', 'covers/book3.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(67, 5, 'BK-4854', '9794727942118', 'Suscipit magni alias quisquam ipsam.', 'Alana Borer', 'Keebler, Cormier and Lynch', 2018, 'Rak-q', 'covers/book3.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(68, 13, 'BK-7242', '9786170551511', 'Qui enim iure.', 'Clark Simonis', 'Collins, Vandervort and Grant', 2022, 'Rak-h', 'covers/book4.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(69, 3, 'BK-8089', '9798230470205', 'Consequuntur accusamus aut qui.', 'Prof. Elijah Hoppe', 'Little-Stracke', 2024, 'Rak-q', 'covers/book5.jpg', 10, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(70, 7, 'BK-5750', '9786043961607', 'Illum sed.', 'Torrey Lang', 'Schinner-Wunsch', 2000, 'Rak-g', 'covers/book3.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(71, 10, 'BK-2513', '9781174125164', 'Consequatur tenetur porro molestias.', 'Jerrold Ankunding PhD', 'Cartwright LLC', 2018, 'Rak-w', 'covers/book2.jpg', 3, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(72, 8, 'BK-9173', '9795635927921', 'Placeat consequatur molestiae veniam.', 'Mr. Amani Kutch', 'Schamberger-Hessel', 2014, 'Rak-a', 'covers/book5.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(73, 2, 'BK-5634', '9796263167857', 'Rerum enim maiores voluptas.', 'Camren Nicolas', 'Reinger-Maggio', 2003, 'Rak-b', 'covers/book2.jpg', 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(74, 7, 'BK-2164', '9789812788085', 'Ut et temporibus.', 'Keith Towne', 'Bauch PLC', 2008, 'Rak-t', 'covers/book2.jpg', 3, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(75, 5, 'BK-4707', '9789808991673', 'Deserunt qui laborum.', 'Sophia Lynch', 'Schimmel, Waelchi and Schaden', 2023, 'Rak-q', 'covers/book5.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(76, 3, 'BK-2776', '9799532743318', 'Laboriosam non accusantium.', 'Salvatore Lueilwitz', 'Toy LLC', 2004, 'Rak-z', 'covers/book5.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(77, 13, 'BK-1501', '9783513478122', 'Voluptatem facere ullam repudiandae.', 'Mac Schmidt', 'Keebler-Feil', 2002, 'Rak-y', 'covers/book2.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(78, 1, 'BK-1354', '9781667946214', 'Ipsa eum dolores.', 'Jessy Heller', 'Koepp, Stiedemann and Brakus', 2023, 'Rak-q', 'covers/book5.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(79, 4, 'BK-5693', '9782572127415', 'Fugit qui mollitia.', 'Zack Ankunding MD', 'Moore-Upton', 2012, 'Rak-o', 'covers/book3.jpg', 7, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(80, 4, 'BK-6895', '9787919277471', 'Aspernatur ea qui quo.', 'Joany Hansen II', 'Gerlach-Maggio', 2001, 'Rak-s', 'covers/book1.jpg', 10, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(81, 4, 'BK-5798', '9798687928434', 'Quod omnis corporis voluptatum.', 'Tia Kuphal', 'Murazik Inc', 2002, 'Rak-x', 'covers/book1.jpg', 10, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(82, 6, 'BK-8249', '9798011688423', 'Vitae eveniet et assumenda.', 'William Ortiz', 'O\'Hara, McCullough and Hodkiewicz', 2005, 'Rak-v', 'covers/book4.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(83, 5, 'BK-6959', '9783269976293', 'Et temporibus ad.', 'Bria Price', 'Dickinson-Hansen', 2004, 'Rak-s', 'covers/book5.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(84, 5, 'BK-5482', '9783376693465', 'Quaerat deserunt nesciunt tempore.', 'Abby Von', 'Reinger Inc', 2022, 'Rak-q', 'covers/book1.jpg', 8, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(85, 3, 'BK-8832', '9789006529845', 'Optio dolore et.', 'Erich Medhurst', 'Fahey LLC', 2006, 'Rak-h', 'covers/book5.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(86, 3, 'BK-9144', '9792833754618', 'Dolore quod odio.', 'Mr. Barry Dicki', 'Aufderhar-Stanton', 2004, 'Rak-w', 'covers/book1.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(87, 5, 'BK-3258', '9781471574085', 'Aut quia quasi rem.', 'Dr. Shea Bogisich', 'Rutherford-Kunde', 2024, 'Rak-q', 'covers/book3.jpg', 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(88, 5, 'BK-3433', '9795667326204', 'Debitis sed officia.', 'Miss Sallie Hansen II', 'Connelly, Bergnaum and Gibson', 2021, 'Rak-w', 'covers/book1.jpg', 7, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(89, 4, 'BK-5477', '9793111864937', 'Molestiae non a voluptatem.', 'Juwan Kozey', 'Kuhic-Sauer', 2017, 'Rak-u', 'covers/book2.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(90, 14, 'BK-8332', '9780123285744', 'Voluptate laudantium sint et.', 'Edythe Kilback', 'Schamberger-Lemke', 2019, 'Rak-x', 'covers/book5.jpg', 9, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(91, 7, 'BK-6167', '9798908237802', 'Quia mollitia nostrum nemo vero.', 'Rico Schroeder', 'Dare Ltd', 2019, 'Rak-r', 'covers/book2.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(92, 6, 'BK-8768', '9797816417702', 'Provident soluta atque.', 'Mr. Tony Hegmann', 'Carroll, Kub and Mraz', 2002, 'Rak-x', 'covers/book4.jpg', 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(93, 12, 'BK-5919', '9782050936669', 'Cumque suscipit est.', 'Manley Yundt', 'Bradtke, Roob and Romaguera', 2021, 'Rak-i', 'covers/book3.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(94, 2, 'BK-6805', '9785642617359', 'Beatae dolorem laudantium et.', 'Abdullah Larson', 'Greenholt-Gusikowski', 2006, 'Rak-c', 'covers/book3.jpg', 5, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(95, 2, 'BK-6952', '9780094281639', 'Id modi voluptatem sunt doloremque.', 'Prof. Broderick Gaylord', 'Aufderhar Inc', 2021, 'Rak-i', 'covers/book3.jpg', 3, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(96, 3, 'BK-7289', '9791277697239', 'Quos occaecati error sunt.', 'Jeffery Hayes', 'Jacobi-Klein', 2001, 'Rak-h', 'covers/book1.jpg', 6, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(97, 8, 'BK-4990', '9798909006735', 'Sit beatae quis est.', 'Mr. Joaquin Heaney DDS', 'Casper-Lakin', 2000, 'Rak-n', 'covers/book5.jpg', 10, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(98, 7, 'BK-9727', '9787232639055', 'Voluptate sit quis voluptatibus ratione.', 'Mya Lebsack', 'Stokes-Franecki', 2019, 'Rak-u', 'covers/book5.jpg', 10, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(99, 8, 'BK-4357', '9791858418710', 'Sint aspernatur qui quisquam.', 'Vicenta Littel I', 'Weimann Ltd', 2021, 'Rak-u', 'covers/book4.jpg', 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(100, 1, 'BK-3876', '9796189662634', 'Et labore possimus.', 'Mason Stracke', 'O\'Conner LLC', 2007, 'Rak-s', 'covers/book4.jpg', 4, '2026-04-05 07:47:54', '2026-04-05 07:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('p_igz_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1775391233),
('p_igz_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1775391233;', 1775391233),
('p_igz_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:61:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"view_any_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"create_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"update_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"restore_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"restore_any_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:17:\"replicate_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:15:\"reorder_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:14:\"delete_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"delete_any_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:20:\"force_delete_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:24:\"force_delete_any_anggota\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:9:\"view_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:13:\"view_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"create_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:11:\"update_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:12:\"restore_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:16:\"restore_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:14:\"replicate_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:12:\"reorder_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:11:\"delete_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:15:\"delete_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:17:\"force_delete_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:21:\"force_delete_any_buku\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:13:\"view_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:17:\"view_any_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"create_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"update_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:16:\"restore_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:20:\"restore_any_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:18:\"replicate_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:16:\"reorder_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"delete_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:19:\"delete_any_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:21:\"force_delete_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:25:\"force_delete_any_kategori\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:12:\"page_Laporan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:15:\"page_Peminjaman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:17:\"page_Pengembalian\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:21:\"page_RiwayatTransaksi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:27:\"widget_AnggotaTeraktifChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:22:\"widget_PeminjamanChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:20:\"widget_StatsOverview\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"SuperAdmin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"Petugas\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:4:\"Guru\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:7:\"Anggota\";s:1:\"c\";s:3:\"web\";}}}', 1775469170);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjamans`
--

CREATE TABLE `detail_peminjamans` (
  `id` bigint UNSIGNED NOT NULL,
  `peminjaman_id` bigint UNSIGNED NOT NULL,
  `buku_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_peminjamans`
--

INSERT INTO `detail_peminjamans` (`id`, `peminjaman_id`, `buku_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 59, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(2, 1, 8, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(3, 1, 11, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(4, 2, 40, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(5, 3, 90, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(6, 4, 66, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(7, 4, 70, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(8, 4, 13, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(9, 4, 84, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(10, 5, 84, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(11, 6, 68, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(12, 7, 18, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(13, 8, 52, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(14, 8, 81, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(15, 9, 69, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(16, 9, 66, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(17, 9, 85, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(18, 9, 88, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(19, 10, 24, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(20, 10, 6, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(21, 11, 76, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(22, 11, 61, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(23, 12, 53, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(24, 13, 12, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(25, 13, 67, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(26, 13, 34, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(27, 14, 6, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(28, 14, 79, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(29, 14, 2, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(30, 14, 22, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(31, 15, 44, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(32, 16, 16, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(33, 16, 98, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(34, 16, 61, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(35, 17, 9, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(36, 17, 80, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(37, 17, 77, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(38, 17, 88, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(39, 18, 80, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(40, 19, 12, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(41, 19, 19, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(42, 20, 2, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(43, 20, 32, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(44, 20, 96, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(45, 21, 40, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(46, 21, 64, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(47, 21, 81, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(48, 21, 70, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(49, 22, 24, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(50, 22, 96, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(51, 22, 58, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(52, 22, 68, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(53, 23, 20, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(54, 24, 92, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(55, 24, 6, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(56, 25, 56, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(57, 25, 53, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(58, 25, 44, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(59, 26, 55, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(60, 26, 66, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(61, 26, 83, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(62, 26, 32, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(63, 27, 8, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(64, 28, 54, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(65, 28, 14, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(66, 28, 70, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(67, 29, 69, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(68, 29, 53, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(69, 29, 35, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(70, 29, 64, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(71, 30, 47, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(72, 30, 41, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(73, 30, 99, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(74, 31, 18, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(75, 31, 62, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(76, 32, 61, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(77, 32, 93, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(78, 33, 80, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(79, 34, 33, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(80, 34, 82, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(81, 34, 60, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(82, 34, 4, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(83, 35, 71, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(84, 35, 86, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(85, 35, 70, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(86, 35, 39, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(87, 36, 9, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(88, 37, 84, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(89, 37, 4, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(90, 37, 8, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(91, 38, 3, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(92, 38, 63, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(93, 38, 77, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(94, 39, 95, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(95, 39, 46, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(96, 39, 3, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(97, 39, 67, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(98, 40, 84, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(99, 40, 55, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(100, 40, 75, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(101, 40, 54, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(102, 41, 5, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(103, 41, 46, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(104, 42, 29, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(105, 42, 70, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(106, 43, 41, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(107, 43, 16, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(108, 43, 94, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(109, 43, 6, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(110, 44, 54, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(111, 44, 65, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(112, 44, 2, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(113, 45, 35, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(114, 46, 95, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(115, 46, 96, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(116, 46, 2, 1, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(117, 47, 71, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(118, 48, 72, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(119, 49, 93, 2, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(120, 50, 59, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(121, 51, 28, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(122, 51, 60, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(123, 51, 59, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(124, 51, 25, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(125, 52, 20, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(126, 53, 32, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(127, 53, 56, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(128, 53, 90, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(129, 53, 35, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(130, 54, 84, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(131, 55, 83, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(132, 55, 83, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(133, 55, 29, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(134, 56, 94, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(135, 57, 8, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(136, 58, 42, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(137, 59, 3, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(138, 59, 68, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(139, 59, 47, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(140, 60, 44, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(141, 60, 26, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(142, 60, 75, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(143, 60, 37, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(144, 61, 47, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(145, 61, 38, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(146, 62, 90, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(147, 62, 12, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(148, 62, 69, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(149, 62, 35, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(150, 63, 21, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(151, 63, 78, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(152, 64, 27, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(153, 64, 28, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(154, 65, 98, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(155, 66, 76, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(156, 66, 70, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(157, 66, 56, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(158, 67, 93, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(159, 67, 30, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(160, 68, 18, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(161, 68, 88, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(162, 69, 10, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(163, 69, 46, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(164, 69, 23, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(165, 70, 48, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(166, 71, 94, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(167, 72, 94, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(168, 72, 44, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(169, 73, 90, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(170, 73, 27, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(171, 74, 3, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(172, 74, 55, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(173, 75, 89, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(174, 75, 36, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(175, 76, 93, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(176, 76, 94, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(177, 77, 39, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(178, 77, 57, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(179, 78, 80, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(180, 79, 55, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(181, 80, 56, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(182, 81, 22, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(183, 81, 17, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(184, 82, 41, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(185, 82, 76, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(186, 83, 24, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(187, 83, 7, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(188, 83, 22, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(189, 83, 32, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(190, 84, 72, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(191, 84, 97, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(192, 84, 89, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(193, 84, 49, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(194, 85, 75, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(195, 85, 7, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(196, 85, 88, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(197, 86, 73, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(198, 86, 26, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(199, 87, 99, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(200, 88, 69, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(201, 88, 50, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(202, 89, 62, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(203, 89, 48, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(204, 89, 22, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(205, 90, 34, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(206, 91, 15, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(207, 91, 64, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(208, 91, 39, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(209, 91, 73, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(210, 92, 22, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(211, 93, 100, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(212, 93, 86, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(213, 94, 70, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(214, 94, 96, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(215, 95, 17, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(216, 95, 51, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(217, 95, 2, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(218, 95, 52, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(219, 96, 81, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(220, 97, 74, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(221, 98, 67, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(222, 98, 17, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(223, 98, 54, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(224, 98, 50, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(225, 99, 22, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(226, 100, 76, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(227, 100, 60, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(228, 100, 7, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(229, 100, 11, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(230, 101, 67, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(231, 101, 53, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(232, 102, 45, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(233, 102, 31, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(234, 102, 53, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(235, 102, 71, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(236, 103, 23, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(237, 104, 92, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(238, 104, 99, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(239, 104, 81, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(240, 104, 57, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(241, 105, 53, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(242, 105, 20, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(243, 105, 17, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(244, 106, 81, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(245, 107, 85, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(246, 107, 9, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(247, 107, 99, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(248, 108, 33, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(249, 109, 98, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(250, 109, 55, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(251, 110, 88, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(252, 111, 59, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(253, 111, 60, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(254, 112, 91, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(255, 112, 14, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(256, 113, 15, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(257, 113, 12, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(258, 113, 76, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(259, 113, 19, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(260, 114, 14, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(261, 114, 31, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(262, 114, 4, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(263, 114, 32, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(264, 115, 13, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(265, 115, 48, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(266, 115, 80, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(267, 115, 60, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(268, 116, 31, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(269, 116, 79, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(270, 117, 41, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(271, 118, 30, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(272, 118, 50, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(273, 118, 87, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(274, 118, 35, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(275, 119, 33, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(276, 119, 44, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(277, 120, 6, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(278, 120, 79, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(279, 120, 24, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(280, 121, 10, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(281, 121, 92, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(282, 121, 65, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(283, 121, 68, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(284, 122, 25, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(285, 122, 83, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(286, 122, 70, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(287, 123, 88, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(288, 123, 39, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(289, 123, 30, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(290, 124, 61, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(291, 124, 93, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(292, 124, 15, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(293, 125, 58, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(294, 125, 100, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(295, 125, 43, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(296, 125, 11, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(297, 126, 77, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(298, 127, 92, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(299, 127, 45, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(300, 127, 17, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(301, 128, 18, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(302, 128, 23, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(303, 128, 31, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(304, 129, 69, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(305, 129, 83, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(306, 129, 50, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(307, 130, 53, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(308, 130, 73, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(309, 130, 37, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(310, 130, 87, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(311, 131, 83, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(312, 131, 75, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(313, 131, 3, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(314, 132, 1, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(315, 132, 64, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(316, 132, 22, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(317, 133, 19, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(318, 133, 53, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(319, 134, 19, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(320, 135, 84, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(321, 136, 51, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(322, 136, 87, 1, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(323, 136, 8, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(324, 136, 12, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(325, 137, 32, 2, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(326, 138, 68, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(327, 138, 47, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(328, 138, 6, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(329, 138, 11, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(330, 139, 13, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(331, 140, 19, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(332, 140, 81, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(333, 141, 99, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(334, 141, 9, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(335, 141, 76, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(336, 142, 34, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(337, 142, 84, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(338, 142, 66, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(339, 143, 41, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(340, 144, 45, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(341, 144, 83, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(342, 144, 60, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(343, 144, 49, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(344, 145, 97, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(345, 146, 28, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(346, 147, 77, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(347, 147, 26, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(348, 147, 79, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(349, 147, 31, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(350, 148, 32, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(351, 148, 24, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(352, 148, 83, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(353, 149, 90, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(354, 150, 67, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(355, 151, 27, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(356, 152, 3, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(357, 152, 21, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(358, 152, 10, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(359, 152, 15, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(360, 153, 63, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(361, 153, 85, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(362, 153, 42, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(363, 153, 93, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(364, 154, 8, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(365, 154, 50, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(366, 155, 41, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(367, 155, 11, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(368, 156, 68, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(369, 156, 35, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(370, 156, 38, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(371, 156, 41, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(372, 157, 97, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(373, 158, 18, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(374, 158, 20, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(375, 159, 73, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(376, 159, 23, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(377, 159, 42, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(378, 159, 79, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(379, 160, 97, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(380, 161, 89, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(381, 161, 98, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(382, 161, 87, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(383, 162, 15, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(384, 162, 5, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(385, 162, 36, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(386, 162, 34, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(387, 163, 68, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(388, 163, 60, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(389, 163, 27, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(390, 163, 93, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(391, 164, 28, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(392, 164, 53, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(393, 164, 31, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(394, 164, 61, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(395, 165, 98, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(396, 165, 86, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(397, 165, 5, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(398, 165, 34, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(399, 166, 34, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(400, 166, 66, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(401, 167, 64, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(402, 167, 65, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(403, 167, 56, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(404, 167, 45, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(405, 168, 59, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(406, 168, 48, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(407, 169, 83, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(408, 170, 66, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(409, 170, 36, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(410, 170, 95, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(411, 171, 37, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(412, 171, 11, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(413, 171, 78, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(414, 171, 50, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(415, 172, 92, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(416, 172, 93, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(417, 172, 99, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(418, 172, 83, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(419, 173, 48, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(420, 173, 33, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(421, 173, 61, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(422, 173, 13, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(423, 174, 100, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(424, 174, 59, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(425, 174, 4, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(426, 175, 26, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(427, 176, 8, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(428, 177, 55, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(429, 177, 68, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(430, 178, 25, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(431, 179, 24, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(432, 180, 49, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(433, 181, 93, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(434, 181, 48, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(435, 181, 87, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(436, 181, 1, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(437, 182, 51, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(438, 182, 66, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(439, 182, 63, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(440, 182, 68, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(441, 183, 45, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(442, 184, 40, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(443, 184, 61, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(444, 184, 49, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(445, 185, 13, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(446, 185, 48, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(447, 186, 52, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(448, 186, 25, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(449, 186, 16, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(450, 186, 15, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(451, 187, 1, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(452, 187, 88, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(453, 187, 50, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(454, 188, 44, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(455, 188, 12, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(456, 188, 15, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(457, 188, 39, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(458, 189, 14, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(459, 189, 68, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(460, 189, 75, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(461, 189, 65, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(462, 190, 23, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(463, 190, 29, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(464, 190, 77, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(465, 190, 22, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(466, 191, 30, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(467, 191, 56, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(468, 192, 85, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(469, 192, 46, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(470, 193, 82, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(471, 193, 65, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(472, 194, 96, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(473, 194, 90, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(474, 194, 58, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(475, 195, 50, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(476, 195, 61, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(477, 195, 87, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(478, 195, 43, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(479, 196, 93, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(480, 196, 86, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(481, 196, 20, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(482, 197, 58, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(483, 197, 57, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(484, 198, 20, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(485, 198, 34, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(486, 198, 36, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(487, 198, 3, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(488, 199, 51, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(489, 199, 13, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(490, 200, 6, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(491, 200, 65, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(492, 200, 1, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(493, 201, 80, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(494, 201, 5, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(495, 201, 60, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(496, 202, 47, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(497, 203, 60, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(498, 203, 23, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(499, 203, 13, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(500, 204, 72, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(501, 204, 5, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(502, 204, 2, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(503, 205, 34, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(504, 205, 35, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(505, 205, 66, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(506, 205, 72, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(507, 206, 91, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(508, 206, 41, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(509, 206, 34, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(510, 207, 30, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(511, 207, 74, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(512, 207, 71, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(513, 208, 25, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(514, 208, 97, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(515, 208, 46, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(516, 208, 91, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(517, 209, 28, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(518, 210, 78, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(519, 210, 26, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(520, 211, 41, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(521, 212, 80, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(522, 212, 7, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(523, 213, 96, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(524, 213, 69, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(525, 213, 56, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(526, 214, 63, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(527, 215, 15, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(528, 215, 73, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(529, 215, 7, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(530, 215, 19, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(531, 216, 76, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(532, 217, 17, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(533, 217, 16, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(534, 218, 41, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(535, 218, 85, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(536, 218, 27, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(537, 219, 34, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(538, 219, 56, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(539, 219, 78, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(540, 219, 67, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(541, 220, 87, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(542, 220, 97, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(543, 220, 20, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(544, 220, 77, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(545, 221, 17, 2, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(546, 221, 89, 1, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(547, 221, 49, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(548, 222, 11, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(549, 222, 14, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(550, 222, 83, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(551, 222, 63, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(552, 223, 8, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(553, 223, 9, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(554, 224, 91, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(555, 224, 94, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(556, 224, 50, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(557, 224, 3, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(558, 225, 77, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(559, 226, 37, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(560, 226, 12, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(561, 226, 81, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(562, 226, 92, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(563, 227, 75, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(564, 227, 1, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(565, 227, 33, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(566, 228, 80, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(567, 228, 71, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(568, 228, 94, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(569, 228, 73, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(570, 229, 47, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(571, 230, 36, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(572, 230, 5, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(573, 230, 33, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(574, 231, 10, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(575, 232, 3, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(576, 232, 31, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(577, 232, 22, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(578, 232, 52, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(579, 233, 61, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(580, 233, 67, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(581, 234, 16, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(582, 235, 97, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(583, 235, 62, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(584, 235, 80, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(585, 236, 97, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(586, 237, 11, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(587, 237, 89, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(588, 238, 59, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(589, 238, 9, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(590, 239, 14, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(591, 240, 39, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(592, 240, 90, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(593, 240, 80, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(594, 240, 2, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(595, 241, 73, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(596, 241, 80, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(597, 241, 48, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(598, 241, 92, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(599, 242, 65, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(600, 243, 60, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(601, 243, 57, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(602, 243, 52, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(603, 244, 99, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(604, 244, 78, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(605, 244, 78, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(606, 245, 83, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(607, 245, 75, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(608, 245, 11, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(609, 246, 79, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(610, 246, 85, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(611, 246, 25, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(612, 247, 49, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(613, 247, 44, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(614, 247, 9, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(615, 247, 93, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(616, 248, 98, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(617, 248, 59, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(618, 248, 36, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(619, 248, 28, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(620, 249, 37, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(621, 249, 96, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(622, 250, 87, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(623, 250, 60, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(624, 251, 50, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(625, 252, 94, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(626, 252, 34, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(627, 252, 18, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(628, 252, 37, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(629, 253, 11, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(630, 254, 76, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(631, 254, 25, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(632, 254, 47, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(633, 255, 13, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(634, 255, 37, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(635, 256, 38, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(636, 257, 98, 2, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(637, 258, 100, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(638, 258, 85, 1, '2026-04-05 07:47:57', '2026-04-05 07:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Novel', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(2, 'Teknologi', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(3, 'Sejarah', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(4, 'Pendidikan', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(5, 'Komputer', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(6, 'Pemrograman', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(7, 'Sains', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(8, 'Matematika', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(9, 'Biografi', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(10, 'Agama', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(11, 'Ekonomi', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(12, 'Bahasa', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(13, 'Psikologi', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(14, 'Kesehatan', '2026-04-05 07:47:53', '2026-04-05 07:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_03_14_151125_create_kategoris_table', 1),
(5, '2026_03_14_151126_create_anggotas_table', 1),
(6, '2026_03_14_151126_create_bukus_table', 1),
(7, '2026_03_14_151127_create_peminjaman_table', 1),
(8, '2026_03_14_151128_create_pengembalians_table', 1),
(9, '2026_03_19_184400_create_detail_peminjamen_table', 1),
(10, '2026_03_27_195830_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 31),
(4, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(4, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 36),
(4, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 39),
(4, 'App\\Models\\User', 40),
(4, 'App\\Models\\User', 41),
(4, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 43),
(4, 'App\\Models\\User', 44),
(4, 'App\\Models\\User', 45),
(4, 'App\\Models\\User', 46),
(4, 'App\\Models\\User', 47),
(4, 'App\\Models\\User', 48),
(4, 'App\\Models\\User', 49),
(4, 'App\\Models\\User', 50),
(4, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(4, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id` bigint UNSIGNED NOT NULL,
  `anggota_id` bigint UNSIGNED NOT NULL,
  `kode_peminjaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `status` enum('diproses','dipinjam','dikembalikan') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'diproses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamans`
--

INSERT INTO `peminjamans` (`id`, `anggota_id`, `kode_peminjaman`, `tanggal_pinjam`, `tanggal_jatuh_tempo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'IGZ-8580DB', '2026-03-07', '2026-03-14', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(2, 1, 'IGZ-2861HB', '2026-03-14', '2026-03-21', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(3, 1, 'IGZ-5363CA', '2026-03-16', '2026-03-23', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(4, 1, 'IGZ-5815RO', '2026-03-15', '2026-03-22', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(5, 1, 'IGZ-7952VS', '2026-02-17', '2026-02-24', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(6, 2, 'IGZ-8150RO', '2026-02-28', '2026-03-07', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(7, 2, 'IGZ-5212JT', '2026-02-22', '2026-03-01', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(8, 2, 'IGZ-8139QC', '2026-03-18', '2026-03-25', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(9, 2, 'IGZ-1454VB', '2026-03-22', '2026-03-29', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(10, 2, 'IGZ-8473JP', '2026-03-05', '2026-03-12', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(11, 3, 'IGZ-3086GY', '2026-02-09', '2026-02-16', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(12, 3, 'IGZ-7415SQ', '2026-02-21', '2026-02-28', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(13, 3, 'IGZ-1568EN', '2026-02-12', '2026-02-19', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(14, 3, 'IGZ-9816BS', '2026-03-16', '2026-03-23', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(15, 4, 'IGZ-4896UN', '2026-03-06', '2026-03-13', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(16, 4, 'IGZ-2110HX', '2026-02-26', '2026-03-05', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(17, 4, 'IGZ-9396SR', '2026-02-06', '2026-02-13', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(18, 5, 'IGZ-0324OD', '2026-02-19', '2026-02-26', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(19, 5, 'IGZ-8444NU', '2026-02-28', '2026-03-07', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(20, 5, 'IGZ-0331QF', '2026-03-28', '2026-04-04', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(21, 5, 'IGZ-4596CY', '2026-03-11', '2026-03-18', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(22, 5, 'IGZ-6808MX', '2026-03-25', '2026-04-01', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(23, 5, 'IGZ-9962IW', '2026-03-09', '2026-03-16', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(24, 5, 'IGZ-6629WA', '2026-02-24', '2026-03-03', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(25, 6, 'IGZ-1346SI', '2026-02-26', '2026-03-05', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(26, 6, 'IGZ-2566AR', '2026-03-30', '2026-04-06', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(27, 6, 'IGZ-2418LB', '2026-04-01', '2026-04-08', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(28, 6, 'IGZ-5501CU', '2026-03-04', '2026-03-11', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(29, 6, 'IGZ-2144RS', '2026-02-28', '2026-03-07', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(30, 6, 'IGZ-6158WL', '2026-04-01', '2026-04-08', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(31, 7, 'IGZ-5735KG', '2026-03-16', '2026-03-23', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(32, 7, 'IGZ-0426WV', '2026-03-19', '2026-03-26', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(33, 7, 'IGZ-1660LM', '2026-02-19', '2026-02-26', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(34, 8, 'IGZ-2393WP', '2026-03-25', '2026-04-01', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(35, 8, 'IGZ-0878WV', '2026-02-19', '2026-02-26', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(36, 8, 'IGZ-3878HI', '2026-04-04', '2026-04-11', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(37, 8, 'IGZ-7477YI', '2026-03-30', '2026-04-06', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(38, 9, 'IGZ-5205EA', '2026-03-29', '2026-04-05', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(39, 9, 'IGZ-1226XZ', '2026-03-23', '2026-03-30', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(40, 9, 'IGZ-8251OF', '2026-03-29', '2026-04-05', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(41, 9, 'IGZ-6669LU', '2026-03-10', '2026-03-17', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(42, 9, 'IGZ-5942MW', '2026-03-10', '2026-03-17', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(43, 9, 'IGZ-3402NM', '2026-02-12', '2026-02-19', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(44, 10, 'IGZ-1633EC', '2026-02-16', '2026-02-23', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(45, 10, 'IGZ-6328PH', '2026-03-28', '2026-04-04', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(46, 10, 'IGZ-0895ZY', '2026-03-28', '2026-04-04', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(47, 10, 'IGZ-7818HW', '2026-03-09', '2026-03-16', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(48, 10, 'IGZ-6181JF', '2026-02-23', '2026-03-02', 'dikembalikan', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(49, 10, 'IGZ-7108JY', '2026-03-21', '2026-03-28', 'dipinjam', '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(50, 11, 'IGZ-6221XE', '2026-03-19', '2026-03-26', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(51, 11, 'IGZ-5240TD', '2026-03-15', '2026-03-22', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(52, 11, 'IGZ-8737HK', '2026-03-16', '2026-03-23', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(53, 11, 'IGZ-0302CF', '2026-03-22', '2026-03-29', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(54, 11, 'IGZ-2261WA', '2026-03-07', '2026-03-14', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(55, 11, 'IGZ-6641ZL', '2026-03-19', '2026-03-26', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(56, 12, 'IGZ-1179LP', '2026-02-06', '2026-02-13', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(57, 12, 'IGZ-4124NS', '2026-03-28', '2026-04-04', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(58, 12, 'IGZ-8859PP', '2026-02-21', '2026-02-28', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(59, 12, 'IGZ-3598ZB', '2026-02-24', '2026-03-03', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(60, 12, 'IGZ-0248XU', '2026-03-08', '2026-03-15', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(61, 12, 'IGZ-8866EA', '2026-03-27', '2026-04-03', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(62, 13, 'IGZ-5730RC', '2026-03-03', '2026-03-10', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(63, 13, 'IGZ-9962QM', '2026-03-13', '2026-03-20', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(64, 13, 'IGZ-2684EV', '2026-03-27', '2026-04-03', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(65, 13, 'IGZ-8992QE', '2026-03-11', '2026-03-18', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(66, 13, 'IGZ-3115PP', '2026-02-28', '2026-03-07', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(67, 14, 'IGZ-6248HG', '2026-03-25', '2026-04-01', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(68, 14, 'IGZ-1421FM', '2026-04-05', '2026-04-12', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(69, 14, 'IGZ-0143MI', '2026-03-22', '2026-03-29', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(70, 14, 'IGZ-4347NP', '2026-03-19', '2026-03-26', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(71, 15, 'IGZ-7029TA', '2026-03-23', '2026-03-30', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(72, 15, 'IGZ-1543YT', '2026-03-30', '2026-04-06', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(73, 15, 'IGZ-2676EU', '2026-03-19', '2026-03-26', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(74, 15, 'IGZ-3934ZT', '2026-03-09', '2026-03-16', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(75, 15, 'IGZ-5295GK', '2026-03-09', '2026-03-16', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(76, 15, 'IGZ-5802VI', '2026-02-26', '2026-03-05', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(77, 16, 'IGZ-9287BD', '2026-02-15', '2026-02-22', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(78, 16, 'IGZ-8512UM', '2026-03-05', '2026-03-12', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(79, 16, 'IGZ-9233NP', '2026-02-16', '2026-02-23', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(80, 16, 'IGZ-1025PD', '2026-03-18', '2026-03-25', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(81, 16, 'IGZ-7670HH', '2026-02-28', '2026-03-07', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(82, 16, 'IGZ-6134SD', '2026-03-07', '2026-03-14', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(83, 16, 'IGZ-3968CG', '2026-03-28', '2026-04-04', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(84, 17, 'IGZ-5868XL', '2026-03-23', '2026-03-30', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(85, 17, 'IGZ-1888JV', '2026-03-13', '2026-03-20', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(86, 17, 'IGZ-6985QY', '2026-03-13', '2026-03-20', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(87, 17, 'IGZ-5818MQ', '2026-03-27', '2026-04-03', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(88, 17, 'IGZ-8992UF', '2026-02-16', '2026-02-23', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(89, 17, 'IGZ-4277HK', '2026-03-19', '2026-03-26', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(90, 17, 'IGZ-0902XG', '2026-02-18', '2026-02-25', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(91, 18, 'IGZ-7648IT', '2026-02-21', '2026-02-28', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(92, 18, 'IGZ-7057BE', '2026-02-22', '2026-03-01', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(93, 18, 'IGZ-8185FC', '2026-02-27', '2026-03-06', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(94, 18, 'IGZ-7286GO', '2026-03-23', '2026-03-30', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(95, 18, 'IGZ-7136YC', '2026-02-14', '2026-02-21', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(96, 19, 'IGZ-3627DC', '2026-03-30', '2026-04-06', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(97, 19, 'IGZ-0894KF', '2026-02-07', '2026-02-14', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(98, 19, 'IGZ-1819MX', '2026-03-27', '2026-04-03', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(99, 19, 'IGZ-0679XA', '2026-03-29', '2026-04-05', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(100, 19, 'IGZ-2784HS', '2026-03-13', '2026-03-20', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(101, 20, 'IGZ-7526QW', '2026-02-25', '2026-03-04', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(102, 20, 'IGZ-4007MB', '2026-03-24', '2026-03-31', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(103, 20, 'IGZ-7268WF', '2026-04-01', '2026-04-08', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(104, 20, 'IGZ-0775UX', '2026-02-19', '2026-02-26', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(105, 20, 'IGZ-6765UC', '2026-03-27', '2026-04-03', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(106, 21, 'IGZ-1954ZM', '2026-02-19', '2026-02-26', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(107, 21, 'IGZ-3921RJ', '2026-04-02', '2026-04-09', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(108, 21, 'IGZ-8676BL', '2026-02-07', '2026-02-14', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(109, 21, 'IGZ-5052NM', '2026-02-21', '2026-02-28', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(110, 22, 'IGZ-1386ZN', '2026-03-23', '2026-03-30', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(111, 22, 'IGZ-3062WV', '2026-04-04', '2026-04-11', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(112, 22, 'IGZ-9238RC', '2026-02-07', '2026-02-14', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(113, 22, 'IGZ-1301GG', '2026-03-03', '2026-03-10', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(114, 22, 'IGZ-0550QG', '2026-04-04', '2026-04-11', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(115, 23, 'IGZ-9530NW', '2026-02-18', '2026-02-25', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(116, 23, 'IGZ-5610JL', '2026-02-14', '2026-02-21', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(117, 23, 'IGZ-9631KV', '2026-03-12', '2026-03-19', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(118, 23, 'IGZ-0020DN', '2026-02-10', '2026-02-17', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(119, 23, 'IGZ-8267HN', '2026-04-01', '2026-04-08', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(120, 24, 'IGZ-1993KE', '2026-02-12', '2026-02-19', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(121, 24, 'IGZ-8095OQ', '2026-03-18', '2026-03-25', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(122, 24, 'IGZ-8109VH', '2026-02-09', '2026-02-16', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(123, 24, 'IGZ-4253MO', '2026-02-11', '2026-02-18', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(124, 24, 'IGZ-1003FL', '2026-03-01', '2026-03-08', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(125, 24, 'IGZ-2558JU', '2026-03-21', '2026-03-28', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(126, 24, 'IGZ-0647YM', '2026-03-24', '2026-03-31', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(127, 25, 'IGZ-3761WC', '2026-02-20', '2026-02-27', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(128, 25, 'IGZ-1829DA', '2026-04-02', '2026-04-09', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(129, 25, 'IGZ-0792QM', '2026-02-09', '2026-02-16', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(130, 25, 'IGZ-9458MC', '2026-03-23', '2026-03-30', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(131, 25, 'IGZ-3316JF', '2026-03-20', '2026-03-27', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(132, 25, 'IGZ-6419SD', '2026-03-05', '2026-03-12', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(133, 26, 'IGZ-3304XN', '2026-03-04', '2026-03-11', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(134, 26, 'IGZ-6096DA', '2026-04-01', '2026-04-08', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(135, 26, 'IGZ-4401XC', '2026-03-02', '2026-03-09', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(136, 26, 'IGZ-7742KZ', '2026-03-27', '2026-04-03', 'dipinjam', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(137, 26, 'IGZ-9087EK', '2026-03-04', '2026-03-11', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(138, 26, 'IGZ-7101CP', '2026-02-12', '2026-02-19', 'dikembalikan', '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(139, 27, 'IGZ-2007RU', '2026-03-21', '2026-03-28', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(140, 27, 'IGZ-0963FA', '2026-03-08', '2026-03-15', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(141, 27, 'IGZ-5801ZI', '2026-03-08', '2026-03-15', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(142, 27, 'IGZ-5209FA', '2026-02-28', '2026-03-07', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(143, 27, 'IGZ-2340WV', '2026-03-27', '2026-04-03', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(144, 28, 'IGZ-0512GV', '2026-03-09', '2026-03-16', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(145, 28, 'IGZ-1371VU', '2026-03-28', '2026-04-04', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(146, 28, 'IGZ-5625JL', '2026-03-05', '2026-03-12', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(147, 28, 'IGZ-2933OQ', '2026-03-18', '2026-03-25', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(148, 28, 'IGZ-6896OY', '2026-03-29', '2026-04-05', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(149, 28, 'IGZ-5181TZ', '2026-02-25', '2026-03-04', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(150, 28, 'IGZ-1049LP', '2026-03-26', '2026-04-02', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(151, 29, 'IGZ-8049OJ', '2026-04-02', '2026-04-09', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(152, 29, 'IGZ-1948WM', '2026-04-05', '2026-04-12', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(153, 29, 'IGZ-9742SX', '2026-03-13', '2026-03-20', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(154, 29, 'IGZ-8389WY', '2026-02-23', '2026-03-02', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(155, 29, 'IGZ-0352IU', '2026-03-31', '2026-04-07', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(156, 30, 'IGZ-5582KP', '2026-03-11', '2026-03-18', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(157, 30, 'IGZ-8877LM', '2026-03-29', '2026-04-05', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(158, 30, 'IGZ-4968CD', '2026-02-17', '2026-02-24', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(159, 31, 'IGZ-7472XT', '2026-03-21', '2026-03-28', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(160, 31, 'IGZ-1558CO', '2026-02-20', '2026-02-27', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(161, 31, 'IGZ-9935PU', '2026-02-08', '2026-02-15', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(162, 31, 'IGZ-4673WS', '2026-03-23', '2026-03-30', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(163, 31, 'IGZ-9913PN', '2026-03-07', '2026-03-14', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(164, 31, 'IGZ-0582NR', '2026-03-01', '2026-03-08', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(165, 32, 'IGZ-9451BN', '2026-02-14', '2026-02-21', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(166, 32, 'IGZ-5389IF', '2026-03-08', '2026-03-15', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(167, 32, 'IGZ-2143ED', '2026-02-19', '2026-02-26', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(168, 32, 'IGZ-5443OL', '2026-03-04', '2026-03-11', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(169, 32, 'IGZ-1367ET', '2026-03-07', '2026-03-14', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(170, 33, 'IGZ-7037VI', '2026-03-18', '2026-03-25', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(171, 33, 'IGZ-5319DB', '2026-03-06', '2026-03-13', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(172, 33, 'IGZ-5943MP', '2026-03-08', '2026-03-15', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(173, 33, 'IGZ-6939BR', '2026-03-08', '2026-03-15', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(174, 33, 'IGZ-4431WT', '2026-02-13', '2026-02-20', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(175, 34, 'IGZ-2673YE', '2026-03-17', '2026-03-24', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(176, 34, 'IGZ-3859DU', '2026-02-23', '2026-03-02', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(177, 34, 'IGZ-5766ZO', '2026-03-30', '2026-04-06', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(178, 34, 'IGZ-2169KY', '2026-03-01', '2026-03-08', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(179, 35, 'IGZ-7733VW', '2026-04-03', '2026-04-10', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(180, 35, 'IGZ-9669OM', '2026-03-31', '2026-04-07', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(181, 35, 'IGZ-4960JI', '2026-04-01', '2026-04-08', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(182, 35, 'IGZ-3473AU', '2026-03-03', '2026-03-10', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(183, 35, 'IGZ-2921ID', '2026-02-15', '2026-02-22', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(184, 35, 'IGZ-4420EV', '2026-02-25', '2026-03-04', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(185, 35, 'IGZ-7209RF', '2026-03-06', '2026-03-13', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(186, 36, 'IGZ-2453SW', '2026-04-04', '2026-04-11', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(187, 36, 'IGZ-8971ZN', '2026-03-27', '2026-04-03', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(188, 36, 'IGZ-7520PA', '2026-03-27', '2026-04-03', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(189, 37, 'IGZ-7330DL', '2026-03-02', '2026-03-09', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(190, 37, 'IGZ-8681IA', '2026-03-31', '2026-04-07', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(191, 37, 'IGZ-1764DJ', '2026-02-11', '2026-02-18', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(192, 37, 'IGZ-8279CE', '2026-03-19', '2026-03-26', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(193, 38, 'IGZ-6009UI', '2026-03-25', '2026-04-01', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(194, 38, 'IGZ-3117HQ', '2026-04-01', '2026-04-08', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(195, 38, 'IGZ-0096ER', '2026-02-14', '2026-02-21', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(196, 38, 'IGZ-7151ID', '2026-03-03', '2026-03-10', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(197, 39, 'IGZ-4222AK', '2026-03-01', '2026-03-08', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(198, 39, 'IGZ-0263LO', '2026-03-10', '2026-03-17', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(199, 39, 'IGZ-9106RN', '2026-03-18', '2026-03-25', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(200, 39, 'IGZ-5071ID', '2026-03-06', '2026-03-13', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(201, 39, 'IGZ-4427FO', '2026-03-09', '2026-03-16', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(202, 40, 'IGZ-3252CV', '2026-03-02', '2026-03-09', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(203, 40, 'IGZ-0842IT', '2026-03-09', '2026-03-16', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(204, 40, 'IGZ-2333MT', '2026-02-09', '2026-02-16', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(205, 40, 'IGZ-8733ZS', '2026-02-06', '2026-02-13', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(206, 40, 'IGZ-6370XN', '2026-02-05', '2026-02-12', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(207, 40, 'IGZ-6532TN', '2026-03-19', '2026-03-26', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(208, 40, 'IGZ-7917ND', '2026-02-13', '2026-02-20', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(209, 41, 'IGZ-9505II', '2026-03-09', '2026-03-16', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(210, 41, 'IGZ-4798EC', '2026-03-15', '2026-03-22', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(211, 41, 'IGZ-0450CD', '2026-02-08', '2026-02-15', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(212, 42, 'IGZ-1197AT', '2026-02-11', '2026-02-18', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(213, 42, 'IGZ-6189BZ', '2026-02-27', '2026-03-06', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(214, 42, 'IGZ-9959EK', '2026-04-01', '2026-04-08', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(215, 42, 'IGZ-8282XQ', '2026-02-11', '2026-02-18', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(216, 42, 'IGZ-6312LI', '2026-03-19', '2026-03-26', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(217, 42, 'IGZ-7403IZ', '2026-02-11', '2026-02-18', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(218, 42, 'IGZ-6657DE', '2026-04-04', '2026-04-11', 'dikembalikan', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(219, 43, 'IGZ-1861HW', '2026-02-14', '2026-02-21', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(220, 43, 'IGZ-3200DW', '2026-03-24', '2026-03-31', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(221, 43, 'IGZ-2661CL', '2026-02-22', '2026-03-01', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(222, 43, 'IGZ-5047KK', '2026-03-06', '2026-03-13', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(223, 43, 'IGZ-3807DS', '2026-03-20', '2026-03-27', 'dipinjam', '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(224, 44, 'IGZ-6238OE', '2026-02-10', '2026-02-17', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(225, 44, 'IGZ-3525HL', '2026-04-04', '2026-04-11', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(226, 44, 'IGZ-0826NB', '2026-02-25', '2026-03-04', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(227, 44, 'IGZ-9066GH', '2026-03-27', '2026-04-03', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(228, 44, 'IGZ-0369IP', '2026-02-22', '2026-03-01', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(229, 44, 'IGZ-8051MC', '2026-02-13', '2026-02-20', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(230, 45, 'IGZ-7462WE', '2026-03-10', '2026-03-17', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(231, 45, 'IGZ-0301RB', '2026-03-15', '2026-03-22', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(232, 45, 'IGZ-7348EA', '2026-03-03', '2026-03-10', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(233, 45, 'IGZ-2946GS', '2026-02-13', '2026-02-20', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(234, 45, 'IGZ-5746QW', '2026-02-15', '2026-02-22', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(235, 46, 'IGZ-4578NE', '2026-03-22', '2026-03-29', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(236, 46, 'IGZ-9617QB', '2026-03-13', '2026-03-20', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(237, 46, 'IGZ-5272CX', '2026-03-11', '2026-03-18', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(238, 46, 'IGZ-2433JW', '2026-02-24', '2026-03-03', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(239, 46, 'IGZ-6003OP', '2026-03-19', '2026-03-26', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(240, 47, 'IGZ-9290PY', '2026-02-23', '2026-03-02', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(241, 47, 'IGZ-1606VN', '2026-03-27', '2026-04-03', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(242, 47, 'IGZ-8255QJ', '2026-02-07', '2026-02-14', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(243, 47, 'IGZ-8137ZC', '2026-03-04', '2026-03-11', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(244, 47, 'IGZ-3644EH', '2026-03-08', '2026-03-15', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(245, 48, 'IGZ-2557KT', '2026-03-07', '2026-03-14', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(246, 48, 'IGZ-2740MH', '2026-03-28', '2026-04-04', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(247, 48, 'IGZ-9845ZU', '2026-02-17', '2026-02-24', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(248, 48, 'IGZ-8770BF', '2026-03-13', '2026-03-20', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(249, 49, 'IGZ-8229WJ', '2026-04-03', '2026-04-10', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(250, 49, 'IGZ-9349FR', '2026-02-10', '2026-02-17', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(251, 49, 'IGZ-4929GW', '2026-02-15', '2026-02-22', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(252, 49, 'IGZ-1944KP', '2026-02-27', '2026-03-06', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(253, 49, 'IGZ-7688HC', '2026-03-04', '2026-03-11', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(254, 50, 'IGZ-7292EC', '2026-03-14', '2026-03-21', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(255, 50, 'IGZ-5677LA', '2026-03-05', '2026-03-12', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(256, 50, 'IGZ-0441RV', '2026-03-23', '2026-03-30', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(257, 50, 'IGZ-0991QR', '2026-03-22', '2026-03-29', 'dipinjam', '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(258, 50, 'IGZ-5030MH', '2026-03-08', '2026-03-15', 'dikembalikan', '2026-04-05 07:47:57', '2026-04-05 07:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalians`
--

CREATE TABLE `pengembalians` (
  `id` bigint UNSIGNED NOT NULL,
  `peminjaman_id` bigint UNSIGNED NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `denda` decimal(10,2) NOT NULL DEFAULT '0.00',
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengembalians`
--

INSERT INTO `pengembalians` (`id`, `peminjaman_id`, `tanggal_kembali`, `denda`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 3, '2026-03-24', '1000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(2, 4, '2026-03-24', '2000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(3, 5, '2026-02-23', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(4, 8, '2026-03-25', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(5, 10, '2026-03-14', '2000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(6, 11, '2026-02-19', '3000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(7, 12, '2026-02-28', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(8, 14, '2026-03-20', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(9, 15, '2026-03-14', '1000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(10, 16, '2026-03-07', '2000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(11, 18, '2026-03-01', '3000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(12, 19, '2026-03-03', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(13, 23, '2026-03-19', '3000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(14, 26, '2026-03-31', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(15, 28, '2026-03-12', '1000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(16, 29, '2026-03-05', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(17, 32, '2026-03-24', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(18, 33, '2026-02-27', '1000.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(19, 35, '2026-02-23', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(20, 37, '2026-04-01', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(21, 41, '2026-03-16', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(22, 42, '2026-03-12', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(23, 43, '2026-02-16', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(24, 46, '2026-04-04', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(25, 47, '2026-03-11', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(26, 48, '2026-02-25', '0.00', NULL, '2026-04-05 07:47:54', '2026-04-05 07:47:54'),
(27, 52, '2026-03-25', '2000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(28, 53, '2026-03-29', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(29, 54, '2026-03-14', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(30, 65, '2026-03-19', '1000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(31, 68, '2026-04-12', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(32, 69, '2026-03-25', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(33, 76, '2026-03-02', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(34, 77, '2026-02-24', '2000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(35, 78, '2026-03-08', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(36, 79, '2026-02-22', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(37, 82, '2026-03-17', '3000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(38, 83, '2026-04-07', '3000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(39, 84, '2026-03-31', '1000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(40, 85, '2026-03-23', '3000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(41, 86, '2026-03-19', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(42, 87, '2026-03-31', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(43, 88, '2026-02-23', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(44, 90, '2026-02-25', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(45, 91, '2026-02-26', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(46, 92, '2026-02-23', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(47, 93, '2026-03-01', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(48, 96, '2026-04-08', '2000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(49, 97, '2026-02-11', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(50, 100, '2026-03-20', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(51, 102, '2026-03-30', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(52, 103, '2026-04-09', '1000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(53, 104, '2026-02-25', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(54, 105, '2026-04-01', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(55, 106, '2026-02-27', '1000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(56, 107, '2026-04-05', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(57, 109, '2026-02-28', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(58, 110, '2026-03-25', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(59, 111, '2026-04-14', '3000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(60, 112, '2026-02-12', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(61, 113, '2026-03-08', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(62, 115, '2026-02-21', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(63, 117, '2026-03-20', '1000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(64, 118, '2026-02-19', '2000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(65, 119, '2026-04-04', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(66, 120, '2026-02-13', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(67, 122, '2026-02-14', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(68, 125, '2026-03-29', '1000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(69, 126, '2026-04-02', '2000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(70, 127, '2026-02-23', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(71, 128, '2026-04-04', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(72, 129, '2026-02-15', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(73, 132, '2026-03-09', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(74, 133, '2026-03-13', '2000.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(75, 135, '2026-03-09', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(76, 137, '2026-03-05', '0.00', NULL, '2026-04-05 07:47:55', '2026-04-05 07:47:55'),
(77, 138, '2026-02-17', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(78, 139, '2026-03-25', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(79, 140, '2026-03-18', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(80, 142, '2026-03-08', '1000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(81, 143, '2026-04-03', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(82, 144, '2026-03-16', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(83, 146, '2026-03-08', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(84, 148, '2026-04-08', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(85, 151, '2026-04-11', '2000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(86, 154, '2026-02-28', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(87, 157, '2026-04-02', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(88, 158, '2026-02-26', '2000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(89, 160, '2026-02-26', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(90, 161, '2026-02-17', '2000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(91, 162, '2026-04-02', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(92, 163, '2026-03-12', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(93, 166, '2026-03-16', '1000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(94, 169, '2026-03-11', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(95, 172, '2026-03-15', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(96, 175, '2026-03-27', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(97, 177, '2026-04-09', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(98, 178, '2026-03-02', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(99, 180, '2026-04-01', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(100, 181, '2026-04-04', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(101, 183, '2026-02-20', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(102, 185, '2026-03-07', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(103, 186, '2026-04-07', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(104, 188, '2026-03-29', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(105, 189, '2026-03-12', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(106, 190, '2026-04-06', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(107, 191, '2026-02-12', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(108, 194, '2026-04-09', '1000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(109, 195, '2026-02-19', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(110, 196, '2026-03-08', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(111, 199, '2026-03-22', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(112, 200, '2026-03-16', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(113, 201, '2026-03-13', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(114, 202, '2026-03-10', '1000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(115, 203, '2026-03-13', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(116, 207, '2026-03-22', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(117, 208, '2026-02-16', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(118, 209, '2026-03-14', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(119, 214, '2026-04-10', '2000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(120, 215, '2026-02-21', '3000.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(121, 216, '2026-03-24', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(122, 218, '2026-04-08', '0.00', NULL, '2026-04-05 07:47:56', '2026-04-05 07:47:56'),
(123, 224, '2026-02-13', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(124, 225, '2026-04-07', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(125, 226, '2026-03-01', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(126, 228, '2026-02-27', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(127, 229, '2026-02-14', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(128, 234, '2026-02-21', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(129, 236, '2026-03-18', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(130, 241, '2026-03-31', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(131, 243, '2026-03-08', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(132, 244, '2026-03-11', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(133, 246, '2026-04-01', '0.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(134, 248, '2026-03-21', '1000.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(135, 249, '2026-04-12', '2000.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(136, 252, '2026-03-08', '2000.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(137, 255, '2026-03-14', '2000.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57'),
(138, 258, '2026-03-16', '1000.00', NULL, '2026-04-05 07:47:57', '2026-04-05 07:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(2, 'view_any_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(3, 'create_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(4, 'update_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(5, 'restore_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(6, 'restore_any_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(7, 'replicate_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(8, 'reorder_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(9, 'delete_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(10, 'delete_any_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(11, 'force_delete_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(12, 'force_delete_any_anggota', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(13, 'view_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(14, 'view_any_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(15, 'create_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(16, 'update_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(17, 'restore_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(18, 'restore_any_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(19, 'replicate_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(20, 'reorder_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(21, 'delete_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(22, 'delete_any_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(23, 'force_delete_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(24, 'force_delete_any_buku', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(25, 'view_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(26, 'view_any_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(27, 'create_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(28, 'update_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(29, 'restore_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(30, 'restore_any_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(31, 'replicate_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(32, 'reorder_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(33, 'delete_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(34, 'delete_any_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(35, 'force_delete_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(36, 'force_delete_any_kategori', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(37, 'view_role', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(38, 'view_any_role', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(39, 'create_role', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(40, 'update_role', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(41, 'delete_role', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(42, 'delete_any_role', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(43, 'view_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(44, 'view_any_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(45, 'create_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(46, 'update_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(47, 'restore_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(48, 'restore_any_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(49, 'replicate_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(50, 'reorder_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(51, 'delete_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(52, 'delete_any_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(53, 'force_delete_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(54, 'force_delete_any_user', 'web', '2026-04-05 07:48:09', '2026-04-05 07:48:09'),
(55, 'page_Laporan', 'web', '2026-04-05 07:48:10', '2026-04-05 07:48:10'),
(56, 'page_Peminjaman', 'web', '2026-04-05 07:48:10', '2026-04-05 07:48:10'),
(57, 'page_Pengembalian', 'web', '2026-04-05 07:48:10', '2026-04-05 07:48:10'),
(58, 'page_RiwayatTransaksi', 'web', '2026-04-05 07:48:10', '2026-04-05 07:48:10'),
(59, 'widget_AnggotaTeraktifChart', 'web', '2026-04-05 07:48:10', '2026-04-05 07:48:10'),
(60, 'widget_PeminjamanChart', 'web', '2026-04-05 07:48:10', '2026-04-05 07:48:10'),
(61, 'widget_StatsOverview', 'web', '2026-04-05 07:48:10', '2026-04-05 07:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2026-04-05 07:48:09', '2026-04-05 07:51:00'),
(2, 'Petugas', 'web', '2026-04-05 07:52:33', '2026-04-05 07:52:33'),
(3, 'Guru', 'web', '2026-04-05 07:53:18', '2026-04-05 07:53:18'),
(4, 'Anggota', 'web', '2026-04-05 07:53:37', '2026-04-05 07:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
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
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(1, 3),
(2, 3),
(4, 3),
(43, 3),
(44, 3),
(46, 3),
(56, 3),
(58, 3),
(59, 3),
(1, 4),
(2, 4),
(4, 4),
(43, 4),
(44, 4),
(46, 4),
(56, 4),
(58, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Rpk7JgPwmtiWgAxXtJrArA8L6YNLCPxiS0I9Pzae', 53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidHZla090WXJmcldaTWhNYzBBR3o0eEYyQXNCbWI1OUJHbFRqN05ibiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wZW1pbmphbWFuIjtzOjU6InJvdXRlIjtzOjMxOiJmaWxhbWVudC5hZG1pbi5wYWdlcy5wZW1pbmphbWFuIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjQ6ImM5MjQ3NTNlYzVjMmJmMDFhMzg4N2NkYWRhZGFmODk3MGUxZjcyMjIzNmQxNmU0YWFhODVkZDc4MTgyZGE1NDciO30=', 1775393564),
('Tcil6fDmDy53RInYd4gA1V8guvwvndt8cKpnG3ML', 53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidnE3bGk3OWN5UUp5RE9TZnY2a1NqWEpnWWxKa0U2QXlyMWpIOGlpTCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vcGVtaW5qYW1hbiI7czo1OiJyb3V0ZSI7czozMToiZmlsYW1lbnQuYWRtaW4ucGFnZXMucGVtaW5qYW1hbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjUzO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiJjOTI0NzUzZWM1YzJiZjAxYTM4ODdjZGFkYWRhZjg5NzBlMWY3MjIyMzZkMTZlNGFhYTg1ZGQ3ODE4MmRhNTQ3Ijt9', 1775391189);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'password',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', NULL, '$2y$12$Qpg3hAsS/VtY4imCM0oIxO1ZOjbvT3i4EFd1SaVCtPyOy5xjurJnC', NULL, '2026-04-05 07:47:37', '2026-04-05 07:47:37'),
(2, 'Miss Trinity Lemke', 'robyn24@example.com', '2026-04-05 07:47:37', '$2y$12$9Diqhh8HiffQEWjtJ1SHtO9ratL5.bJ91/.Am2e64pKnH7aOULAV.', 'hRf5ssAm6X', '2026-04-05 07:47:53', '2026-04-05 11:36:46'),
(3, 'Oliver Walsh', 'vlehner@example.net', '2026-04-05 07:47:38', '$2y$12$rSwVZl04vWVmOXFcoCu6zeryCPXiNwJ.r4W3ZCMYeTDXRbPzHhPW2', 'gFuOfmyNkB', '2026-04-05 07:47:53', '2026-04-05 11:37:20'),
(4, 'Ms. Everette Hyatt I', 'efren45@example.com', '2026-04-05 07:47:38', '$2y$12$0uDcDRakh3QgieN2qJwdIeeWmlkGkagu44oxXvidtPtusGFaq.KO2', 'xZAcl3C9IA', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(5, 'Emery Braun', 'murphy.hailey@example.org', '2026-04-05 07:47:38', '$2y$12$RR4IP1Xb3hX6J1rLdgbAteM5kKuovuTtUrkmGxy4a4w7HlLz9R1Se', 'x5f8cy2GFj', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(6, 'Marcelle Stroman', 'antonette.hickle@example.org', '2026-04-05 07:47:39', '$2y$12$D175r/a7khJKpkbvDhsHuuaEszIrbYX0erpghtH.BdKpHUkmWf9W6', 'K0CrIJ5LXp', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(7, 'Jayde Hickle', 'carter.batz@example.com', '2026-04-05 07:47:39', '$2y$12$r4ok1N3JFG7Dscs66kAcvOq98r12fJXxlVg5EIuRvTOyo2bRoYiRa', 'uhQ1juSbEw', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(8, 'Sasha Jerde', 'marlin50@example.com', '2026-04-05 07:47:39', '$2y$12$JoOftgKvQphJ3rcUMJ4OeOqtz4kue1Ovp62Q8Xm7E0CbWD/fOiwBu', 'v0Z1EGN4Tk', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(9, 'Maybelle Wolf', 'zrau@example.net', '2026-04-05 07:47:39', '$2y$12$y7WzetYXT2KNP2EIWYLMnOTtNDvrix00s.XRpceDfOE0y7yj5ac0K', '1eyo3X2NL5', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(10, 'Betty Rutherford', 'barton.terry@example.com', '2026-04-05 07:47:40', '$2y$12$3To6IOsuEy9PgRVFfOdMXe9UcSsYrH1iIDsJftIXo8czMtQnT0S4y', 'mgk0sjCMLz', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(11, 'Laurine Konopelski', 'muller.mozelle@example.org', '2026-04-05 07:47:40', '$2y$12$MSEQFLEynjhr4FGLbmQskOJJfNizJwWfWKg.DCmVrP3pBh9EYZLYi', 'UENulXaDSC', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(12, 'Dan Parker', 'edison.murray@example.com', '2026-04-05 07:47:40', '$2y$12$a96JkI6Gu52soqGcUAoV5.rP9keTRAmuck.ME6MjoYqdofDqNkxSq', '7QZuUmEu5I', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(13, 'Leonor Rippin', 'velda.rau@example.com', '2026-04-05 07:47:41', '$2y$12$IQr2QwBU4JWAKyZTHFwGaO9Sk4EDahFxTBUvPaYBTAwvmauem7Kuq', 'IKBjdWZ2Fs', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(14, 'Mr. Harvey Abbott', 'matilda.schoen@example.org', '2026-04-05 07:47:41', '$2y$12$DpLfJJ0Oh0NsD.GeCbEM4u5lpq0wSN3qILeGH1R6FqmmigCUMQgVe', 'xLYpQrDs5n', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(15, 'Prof. Mckenzie Smitham', 'kendall30@example.net', '2026-04-05 07:47:41', '$2y$12$ox/87rMvYUzzXfmnxVJeIOK8kmAdIp.qZQu..lRIideu3HlGoAVqi', 'GH57A6SAqN', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(16, 'Ena Hoeger', 'felicia.dietrich@example.org', '2026-04-05 07:47:42', '$2y$12$iQvXnq1XJLlocF19ALeCaOd.JIzZoiAHfI2C1Rydzfdn3lMWIip9O', '6FKJYsO8Xt', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(17, 'Dr. Felicia Ullrich', 'jillian25@example.net', '2026-04-05 07:47:42', '$2y$12$cPRJknpZ0dN5yfKy4dkC3O2nnMJyb8q2ZuxIfwYPvknjyTHShwSRu', '4PGwx9Jh4z', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(18, 'Skye Rodriguez', 'macie.tromp@example.net', '2026-04-05 07:47:42', '$2y$12$/j.urEmUYHusf0SncMVCse39VexsikQYXrCu9T8finZUaZ.5POCxG', 'nLq8cGJD1m', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(19, 'Prof. Rafael Parisian', 'niko.kuhlman@example.org', '2026-04-05 07:47:43', '$2y$12$rqfcLPah55Jnm1eODS/sp.Fv2dnfosEbCbW6eEHPv4OPjlsFJtjP.', 'L8chL5EpUw', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(20, 'Arno Bailey', 'ndietrich@example.com', '2026-04-05 07:47:43', '$2y$12$iOFpaOZ/jg1R4J4L7260p.g7jRxc3UoYdIVgn2XcxtPdDjE4Qo4bq', '9ZesRdQ7fe', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(21, 'Zora Schultz', 'deshawn11@example.org', '2026-04-05 07:47:43', '$2y$12$YjWLYPUX5YwGy78OYfRy7eTpYjbvGoaZYJ//IxwjLJNJnN6vWkuAi', '3rkXLXf4tj', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(22, 'Fannie Satterfield III', 'okey.langosh@example.net', '2026-04-05 07:47:44', '$2y$12$dgtl7VM7OuSsBH7TY1dILubbzkTy9J2hG13wYHacZN5DdIo0M/vRi', 'GvGnmNTWnm', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(23, 'Lance Bergstrom PhD', 'karlee.ritchie@example.net', '2026-04-05 07:47:44', '$2y$12$bytf3USWUFwr5cpxBBokPuthuhJn69rEBwN1A66J1DDqK0586GbFa', 'bRiXHDMtS5', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(24, 'Reyna Olson', 'casandra35@example.com', '2026-04-05 07:47:44', '$2y$12$yA4bDvHNPVoSYzezwyCVZu2zM9r64RMaSZlVbRi/ncGLB4Hn/G3K.', '2XwvWBxSxo', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(25, 'Prof. Marcelle Renner', 'qrutherford@example.com', '2026-04-05 07:47:44', '$2y$12$KZVUrNz6BSkSWEfDCmUnWexW6ZxHWdjQ5Uceg5fJB8DmkKG1sJW0a', 'bIFkrzUrvQ', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(26, 'Mr. Isai Hilpert DVM', 'kautzer.haleigh@example.org', '2026-04-05 07:47:45', '$2y$12$hmUBkvErDhHYjreY8rrhDOrFmQgioQUk0pcgQgqFX9SvywhKi7sEy', 'vwsDLHOG5Z', '2026-04-05 07:47:53', '2026-04-05 07:55:57'),
(27, 'Kevon Hill I', 'roscoe.altenwerth@example.org', '2026-04-05 07:47:45', '$2y$12$LYEZLfKQPpKaBqluvXXR6O8is0J2o28NB54vIek3HtlaE2zAFFaq6', 'TNdgDLwgrY', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(28, 'Simeon Langworth Jr.', 'pagac.evangeline@example.org', '2026-04-05 07:47:45', '$2y$12$uiy1hYpS4/QTVF48l9Wi0eHpZF7SGUSxNF/vQZ47FkxYV3Qe8VoEu', 'GSlQZTuhnH', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(29, 'Karianne Heller', 'sauer@example.com', '2026-04-05 07:47:46', '$2y$12$eRxWdOijExwSCb02Hiy46u.cIXtjOaTLvMH96HV6gkWCGkn7dgIl.', 'izr4y6hrCa', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(30, 'Laury Weimann Jr.', 'konopelski.roosevelt@example.com', '2026-04-05 07:47:46', '$2y$12$Fn7uDhHvC/PpPkFcHqs2P.grKiCkA7xN9j5s7w/xBvzIUH9IV05Lm', '1VZzr89cRa', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(31, 'Missouri Kertzmann', 'stone.deckow@example.com', '2026-04-05 07:47:46', '$2y$12$HCXCr93pDT5A1bDmkZ4k2eM7EkIdaCBe0sN1eaDosZ580L2EqPHxK', 'Advo0i6Qyw', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(32, 'Mr. Hugh Treutel', 'brisa.cormier@example.com', '2026-04-05 07:47:47', '$2y$12$CzVkhc.c34fa2bIzMjZhDOjBYKzFkliqXiJ0xSVdO.BXGwb3gcZOO', 'KZq80qFvtu', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(33, 'Larry Bauch', 'jschumm@example.net', '2026-04-05 07:47:47', '$2y$12$tktmhTFmIZvZpjrAzDW.m.eL2HqBxJe925HP40N3K4hFCrDFyChhe', 'QJTJhI1jBl', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(34, 'Elvie Wolff', 'durgan.lisa@example.net', '2026-04-05 07:47:47', '$2y$12$.LPPBZ.dm0p5Y34prIaR2.35s1.BaSG1FWm1HERGcEpeRU.HUFZS2', 'uj3lE1rbBj', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(35, 'Zetta Murazik DVM', 'hansen.ari@example.net', '2026-04-05 07:47:48', '$2y$12$F6AHpqvmrv/HDUcDa7gFfOOSyRgn.DDBIILIC0kbPq6NuJSMySZyi', 'hEM2bpxms8', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(36, 'Lawrence Schaden', 'kirlin.elouise@example.net', '2026-04-05 07:47:48', '$2y$12$VIILmVNhUeMBHPCjDr5cL.zD2Bdv7Z053CwW9bJHooG3Ehu9VCOL6', 'lcui3hLjhw', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(37, 'Dr. Dallin Wilkinson MD', 'pfeffer.durward@example.org', '2026-04-05 07:47:48', '$2y$12$Q4HGLx0aVu8BMt.n7QIHuu0eJ7UIzJFABDZuIALgMVHef5ksMOXme', '30lBqQR7s9', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(38, 'Jacinto Watsica', 'osinski.demetris@example.org', '2026-04-05 07:47:48', '$2y$12$gLH6.vR42Z3xd3hi11GbGeSWHCyTyt09chENMSe2NAjdBAYNC5SQO', 'eppKNcKNUm', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(39, 'Kristy Luettgen', 'rickie.little@example.net', '2026-04-05 07:47:49', '$2y$12$PQTt7xtJtP5HsbBlCo9J7.wqgPrkBjbsvfG80amhmLj9Cap3ljiq6', 'S8sUmNCez4', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(40, 'Hunter Herman PhD', 'inicolas@example.com', '2026-04-05 07:47:49', '$2y$12$CZCIZXWwE/vhAUMAcyzoVu6zKostm3fKO0iYCUP5OCPGYQECrYUDC', 'WB1c0YBZ6Z', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(41, 'Vena Hilpert', 'msauer@example.com', '2026-04-05 07:47:49', '$2y$12$BxFJRDkLt3ynhKTT70iXMOvHW06lnoUDaGQfSoR2g06slMZ.6FYu6', 'jb3gI9GMdE', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(42, 'Elroy Cummerata MD', 'delpha.leffler@example.org', '2026-04-05 07:47:50', '$2y$12$rGxHpSH1xemQ2BC15mn56.p5bu005KNYaOTgQIssr66RIgoHWJiOy', '8gpnl3tR5g', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(43, 'Greg Corwin', 'obartoletti@example.org', '2026-04-05 07:47:50', '$2y$12$RrFcSMEoBjdUtDSjw6RzHOBhOZSI.0XOxwcPGkay.M85a0FV1t5bm', 'XqcMlyAUJD', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(44, 'Mrs. Lavinia Von', 'wdamore@example.org', '2026-04-05 07:47:50', '$2y$12$WQ4kN7pf.HQawQa6Td3ewesynxQauUwu4OKOrV7F01wFjKs01t07C', 'ge1wsouesb', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(45, 'Mr. Henri Grady', 'hartmann.alice@example.com', '2026-04-05 07:47:51', '$2y$12$/JX/2MR47iUlt9h2.odpO.pzzbAml1UP66W3YHcOIipQ6wEzQkelW', 'gtGmiY3AQT', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(46, 'Prof. Cleve Berge', 'hartmann.olen@example.com', '2026-04-05 07:47:51', '$2y$12$TB9CojqGQtewtt2wnWXUt.J3S1NDHjMfcNbwWZwyb3HBxlgNfFj6.', 'q4RMOEGAeN', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(47, 'Aniyah Senger', 'rau.coy@example.org', '2026-04-05 07:47:51', '$2y$12$wK8QgySMIVvelCunDzaw7e/.WQRngSya3AeLnTCfnp03Y3/y3s7dm', 'GTPTuKH2Y7', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(48, 'Frederick Rowe', 'candida75@example.net', '2026-04-05 07:47:52', '$2y$12$.lJdw5kPD4PN5c.Q61uWf.cwCmyzkFuuDSbRYtERXNWbqQgwXptYW', '18X6tfeCRV', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(49, 'Mr. Blaze Will', 'ivah.corkery@example.com', '2026-04-05 07:47:52', '$2y$12$rl3sEsi4.Q7Bu4xW0hBDlOaTvXi0tU56/etHpP2w3OBYeFz7SrDhW', 'jnVA8UllZv', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(50, 'Hailee Hill', 'syble.koelpin@example.org', '2026-04-05 07:47:52', '$2y$12$pjaHYOOTxt7de/8pDWEuKeqZS0Tw/DNlXwLUWRWDGIsayl685wQHu', 'wdSzfaU3NP', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(51, 'Martin Kihn', 'douglas.trace@example.org', '2026-04-05 07:47:52', '$2y$12$SppoZhX0.TtWA5QGIw.iDeov4asOXz13NNJXyLGuiPgGs3kNILc22', 'Ftlu6JfZfH', '2026-04-05 07:47:53', '2026-04-05 07:47:53'),
(52, 'Petugas', 'petugas@example.com', NULL, '$2y$12$j9ItbHVE7jYw6zqhZ8dc6.ErxStan76zzItzhuTN23gsSx3PL4g0G', NULL, '2026-04-05 11:33:33', '2026-04-05 11:33:33'),
(53, 'Fajar', 'example@example.com', NULL, '$2y$12$wnWf6s7ENE6t1aCvsNMpxupa/nO3KvBauGJqt.f10b9cRlnFGbG4G', NULL, '2026-04-05 11:33:52', '2026-04-05 11:33:52'),
(54, 'Guru', 'guru@example.com', NULL, '$2y$12$VHBC3BbuG0Gzh5fuLvyXzODj7AX8GtLrSInoJpgOwmqGWaLuSvsdm', NULL, '2026-04-05 11:34:03', '2026-04-05 11:34:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anggotas_nis_unique` (`nis`),
  ADD KEY `anggotas_user_id_foreign` (`user_id`);

--
-- Indexes for table `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bukus_kode_buku_unique` (`kode_buku`),
  ADD KEY `bukus_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `detail_peminjamans`
--
ALTER TABLE `detail_peminjamans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_peminjamans_peminjaman_id_foreign` (`peminjaman_id`),
  ADD KEY `detail_peminjamans_buku_id_foreign` (`buku_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_available_at_index` (`queue`,`reserved_at`,`available_at`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `peminjamans_kode_peminjaman_unique` (`kode_peminjaman`),
  ADD KEY `peminjamans_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `pengembalians`
--
ALTER TABLE `pengembalians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengembalians_peminjaman_id_foreign` (`peminjaman_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `detail_peminjamans`
--
ALTER TABLE `detail_peminjamans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `pengembalians`
--
ALTER TABLE `pengembalians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD CONSTRAINT `anggotas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bukus`
--
ALTER TABLE `bukus`
  ADD CONSTRAINT `bukus_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `detail_peminjamans`
--
ALTER TABLE `detail_peminjamans`
  ADD CONSTRAINT `detail_peminjamans_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `bukus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_peminjamans_peminjaman_id_foreign` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjamans` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD CONSTRAINT `peminjamans_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengembalians`
--
ALTER TABLE `pengembalians`
  ADD CONSTRAINT `pengembalians_peminjaman_id_foreign` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjamans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
