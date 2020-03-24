-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2020 at 02:03 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a19rogcalrul_m07uf3_act31`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200324110805', '2020-03-24 11:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `pass`) VALUES
(1, 'user01@eso.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$MjFUNzRTUUdQdnUwbzMyRQ$cnvonTeSHXIGL2q6MlRcoEqtYvV9oaYklRs9XjaWKLY'),
(2, 'user02@eso.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$MkNScjBEL1JobTVOYkE5Sg$qobh8AHvMXq9gvbZNYBqf7fGZqMaXh3K7LWwgIiVDEQ'),
(3, 'user03@eso.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$U095RlVMT3RBUXVrcFpRZg$6rRd3QDaEXo18tMUbxIDGIcCFWFXIgqt/gIPySl0/+g'),
(4, 'user04@eso.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Umw2enNrNXhRNUJ2L0Y4Vg$jkYMw9yHDzBebyBDjLqC7+WS6EXB4j62RYaPyd3eq20'),
(5, 'user05@eso.com', '[\"ROLE_USER\",\"ROLE_SUPER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Y0psTXlXVVRKcmV1dzRjcQ$uqZAkFjqWoWnNozdcTn8S9qQjXJ51ATFh5BSsAlf+dI'),
(6, 'user06@eso.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$RlFYcU1aL0E1VG1zTElLaw$RN72I5fPsjO0iV37qAXuNC0MrZY3vBwesxUO9AkVg6s');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
