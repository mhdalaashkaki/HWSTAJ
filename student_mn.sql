-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 مارس 2025 الساعة 10:20
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mn`
--

-- --------------------------------------------------------

--
-- بنية الجدول `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `jobs`
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
-- بنية الجدول `job_batches`
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
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_27_062445_create_student_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `sessions`
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
-- إرجاع أو استيراد بيانات الجدول `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1pSyE1hRgBp9jQp5k2R6BsUpsJE0obvB13iBYkd0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDNFOGlFWkVMd01ZWmlISFp2VkJKUldNVEVjVURTM2w4WE1NcUwyTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740814250),
('2BlBzwcnWxK2WvBOeNxb1XXIyBbR900Nldf3fDti', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0UzM3hpZkVOOUk3dGgzZ3NGSWl5UnhwWnFWR1l2d3VCNHMzYkVnVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740818339),
('AN7uwwDIa5nzO813VD12mjieMs68LavQaFwiCIEg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHJsdTlYVU84Ukt4VTd6bFFPT3JzN2dHV1lzSDJtS09uQXJkN0MxaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740820759),
('GhHIjiljkV44WwyZQL67TEi2Ib5r4K2liEMP51br', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQU9JZDRQR0dzZmRHNTlzM214YndIaHN6eEJLb3RxWmxQZ0c5V3NTdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740816497),
('I6i3ciPpaWNDvAAOCFRNtyztpRWxwrgyGh56jaET', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVowQlVVMEJUdkYxaVljZmVmbVRUdVZWTklnTDZqdHFtS1dublBSSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740810447),
('iKKSU3PBauMy1TMLJTcWcCJ7iuBQ0CCP9LgnIDvw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib29zbGtFem5wdVowY3pocGZpNXNpdGwyUGZpMEdCRjFDTExUS2lyMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740819210),
('jO38ylYEcpoixugvxAQPRVQxGClzjWBfyMHVR50o', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkxjYW9kQ0JjUzNjdFVnNnhUYUNZb0piNjU0OFloS0RvQzlhWUgwRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fX0=', 1740816380),
('qn1FlZGCMRwlltESVkmGPXTEf0PVrh23yoOn1d6H', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWVPV2tTdHdNWVdNbkJHbFdjS0doMGZuVXBNTG95RjA4U2o0SkM5YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740818221),
('SihmvRdhEAJi6Lgn1QIxr5Ge4YUHVETBmTOME2Oa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWFiQWl6T2ZLc2tNQ3Z0Q2FtaHE2WWZSZVlOeU1kNWI5MmRKQXJVMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740812505),
('v02Wz6AVSfAonkuaA7N5aLFfCwxpl2WY3ihN877o', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia25OZjFyMUlDeDJLRjRYekJ2c2xlVmRmVmxoWTYzQ3J1eHNxVlF2SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT0xJnNvcnQ9MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740810514),
('w7LkoRnYOtMec1PY2nE4aeiqVYJRNVeIus4OcdSP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN21FTVFCZXVWdHc5SDhJeFZZZVF5RXdNbnBCdGh0Wnkzc0d2Nnl2byI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy9saXN0P2RpcmVjdGlvbj1hc2MmcGFnZT05JnNvcnQ9MCI7fX0=', 1740819268);

-- --------------------------------------------------------

--
-- بنية الجدول `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `birthplace` varchar(30) DEFAULT NULL,
  `birthDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `student`
--

INSERT INTO `student` (`sid`, `fname`, `lname`, `birthplace`, `birthDate`) VALUES
(2, 'ahmet', 'kadri', 'şam', '1987-01-30'),
(23, 'alighg', 'saniffdg', 'şam', '1991-01-10'),
(24, 'mustafa', 'alif', 'lkl', '2000-02-02'),
(25, 'phhjj', 'lh', 'ld', '1980-01-01'),
(26, 'hu', 'ijhhhh', 'milano', '1970-02-11'),
(27, 'ol', 'p', 'p', '2000-04-11'),
(28, 'poljj', 'polhh', 'h', '1975-01-10'),
(29, 'imi9hfgfg', 'fhfhghggg', 'lcnvhhhjjj', '0001-01-01'),
(30, 'olssg', 'lhhhjj', 'ljjjj', '0010-01-10'),
(32, 'sharki', 'alifsss', 'hatayyy', '1999-02-03'),
(35, 'ali', 'sani', 'şam', '1990-02-05'),
(61, 'Adam', 'Smith', 'London', '1998-03-15'),
(62, 'Sophie', 'Martin', 'Paris', '2000-07-22'),
(63, 'Hans', 'Müller', 'Berlin', '1999-05-10'),
(64, 'Elena', 'Rossi', 'Rome', '2001-09-18'),
(65, 'Carlos', 'López', 'Madrid', '1997-12-30'),
(66, 'Erik', 'Johansen', 'Stockholm', '1998-06-25'),
(67, 'Lucas', 'Dubois', 'Brussels', '2000-02-14'),
(68, 'Anna', 'Schmidt', 'Vienna', '1999-08-05'),
(69, 'Pavel', 'Ivanov', 'Moscow', '1998-11-11'),
(70, 'Katerina', 'Petrova', 'Sofia', '2001-01-20'),
(71, 'Mehmet', 'Yılmaz', 'Istanbul', '1997-04-03'),
(72, 'Ali', 'Can', 'Ankara', '2000-10-07'),
(73, 'Zeynep', 'Kaya', 'Izmir', '1998-07-15'),
(74, 'Omar', 'Al-Fayed', 'Munich', '1999-03-12'),
(75, 'Nour', 'Hasan', 'Hamburg', '2000-05-28'),
(76, 'Ahmad', 'Suleiman', 'Frankfurt', '2001-09-30'),
(77, 'Sara', 'Demir', 'Antalya', '1997-11-09'),
(78, 'Johann', 'Bauer', 'Lyon', '2000-12-17'),
(79, 'Isabelle', 'Laurent', 'Marseille', '1998-01-25'),
(80, 'David', 'Fernández', 'Barcelona', '1999-06-21'),
(81, 'Niklas', 'Svensson', 'Copenhagen', '2001-04-14'),
(82, 'Andrei', 'Popescu', 'Bucharest', '1997-02-08'),
(83, 'Marta', 'Kowalski', 'Warsaw', '2000-09-19'),
(84, 'Georgios', 'Papadopoulos', 'Athens', '1998-05-03'),
(85, 'Lukas', 'Novak', 'Prague', '1999-07-11'),
(86, 'Marco', 'Bianchi', 'Milan', '1998-10-25'),
(87, 'Elisa', 'Ricci', 'Turin', '2001-03-07'),
(88, 'Jan', 'Nowak', 'Krakow', '1997-06-18'),
(89, 'Kristian', 'Nielsen', 'Oslo', '2000-11-29'),
(90, 'Henrik', 'Jensen', 'Helsinki', '1999-12-05'),
(91, 'Oliver', 'Brown', 'Dublin', '1998-04-14'),
(92, 'Jakub', 'Kovář', 'Brno', '2001-05-30'),
(93, 'Emilia', 'Horvat', 'Zagreb', '1997-07-08'),
(94, 'Tobias', 'Lindberg', 'Gothenburg', '2000-02-17'),
(95, 'Frederik', 'Møller', 'Aarhus', '1998-09-23'),
(96, 'Benjamin', 'Schneider', 'Düsseldorf', '1999-01-10'),
(97, 'Alexandra', 'Varga', 'Budapest', '2001-06-22'),
(98, 'Viktor', 'Balogh', 'Debrecen', '1997-08-13'),
(99, 'Dimitrios', 'Nikolaou', 'Thessaloniki', '2000-10-01'),
(100, 'Mikhail', 'Volkov', 'Saint Petersburg', '1999-03-05'),
(101, 'Piotr', 'Zielinski', 'Wroclaw', '1998-12-20'),
(102, 'Natalia', 'Gorska', 'Gdansk', '2001-01-15'),
(103, 'Daniel', 'Fernandez', 'Valencia', '1997-04-26'),
(104, 'Juan', 'Morales', 'Seville', '2000-07-09'),
(105, 'Francesco', 'Moretti', 'Naples', '1999-09-02'),
(106, 'Thomas', 'Dupont', 'Nice', '1998-05-19'),
(107, 'Robert', 'Weber', 'Cologne', '2001-11-11'),
(108, 'Andrzej', 'Lewandowski', 'Poznan', '1997-03-14'),
(109, 'Stefan', 'Ionescu', 'Cluj-Napoca', '2000-08-21'),
(110, 'Mateo', 'Garcia', 'Bilbao', '1999-02-12'),
(111, 'Manuel', 'Neuer', 'Gelsenkirchen', '1986-03-27'),
(112, 'Thomas', 'Müller', 'Weilheim', '1989-09-13'),
(113, 'Ilkay', 'Gündogan', 'Gelsenkirchen', '1990-10-24'),
(114, 'Joshua', 'Kimmich', 'Rottweil', '1995-02-08'),
(115, 'Lionel', 'Messi', 'Rosario', '1987-06-24'),
(116, 'Cristiano', 'Ronaldo', 'Funchal', '1985-02-05'),
(117, 'Neymar', 'Junior', 'Mogi das Cruzes', '1992-02-05'),
(118, 'Kylian', 'Mbappé', 'Paris', '1998-12-20'),
(119, 'Kevin', 'De Bruyne', 'Drongen', '1991-06-28'),
(120, 'Robert', 'Lewandowski', 'Warsaw', '1988-08-21'),
(121, 'Luka', 'Modric', 'Zadar', '1985-09-09'),
(122, 'Karim', 'Benzema', 'Lyon', '1987-12-19'),
(123, 'Erling', 'Haaland', 'Leeds', '2000-07-21'),
(124, 'Mohamed', 'Salah', 'Nagrig', '1992-06-15'),
(125, 'Virgil', 'van Dijk', 'Breda', '1991-07-08'),
(126, 'Sergio', 'Ramos', 'Seville', '1986-03-30'),
(127, 'Toni', 'Kroos', 'Greifswald', '1990-01-04'),
(128, 'Harry', 'Kane', 'London', '1993-07-28'),
(129, 'Gianluigi', 'Buffon', 'Carrara', '1978-01-28'),
(130, 'Paulo', 'Dybala', 'Laguna Larga', '1993-11-15'),
(131, 'Zlatan', 'Ibrahimović', 'Malmö', '1981-10-03'),
(132, 'Andrés', 'Iniesta', 'Albacete', '1984-05-11'),
(133, 'Antoine', 'Griezmann', 'Mâcon', '1991-03-21'),
(134, 'Romelu', 'Lukaku', 'Antwerp', '1993-05-13'),
(135, 'ali', 'ali', 'dara', '2007-08-07');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`) USING BTREE;

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
