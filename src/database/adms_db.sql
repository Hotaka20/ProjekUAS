-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2024 pada 05.22
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adms_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Mercedes-benz', 1, 0, '2024-07-02 08:55:33', '2024-07-02 08:55:33'),
(2, 'Toyota', 1, 0, '2024-07-02 08:55:47', '2024-07-02 08:55:47'),
(3, 'Ford', 1, 0, '2024-07-02 08:56:01', '2024-07-02 08:56:01'),
(4, 'Hyundai', 1, 0, '2024-07-02 08:56:49', '2024-07-02 08:56:49'),
(5, 'Chevrolet', 1, 0, '2024-07-02 08:56:54', '2024-07-02 08:56:54'),
(6, 'Honda', 1, 0, '2024-07-02 08:57:05', '2024-07-02 08:57:05'),
(7, 'Nissan', 1, 0, '2024-07-02 08:58:03', '2024-07-02 08:58:03'),
(8, 'Jeep', 1, 0, '2024-07-02 08:58:15', '2024-07-02 08:58:15'),
(9, 'Volkswagen', 1, 0, '2024-07-02 08:58:22', '2024-07-02 08:58:22'),
(10, 'Volvo', 1, 0, '2024-07-02 08:58:30', '2024-07-02 08:58:30'),
(11, 'Audi', 1, 0, '2024-07-02 08:58:39', '2024-07-02 08:58:39'),
(12, 'Land Rover', 1, 0, '2024-07-02 08:58:54', '2024-07-02 08:58:54'),
(13, 'Rolls Royce', 1, 0, '2024-07-02 08:59:18', '2024-07-02 08:59:18'),
(14, 'Bugati', 1, 0, '2024-07-02 08:59:27', '2024-07-02 19:33:43'),
(15, 'Porsche', 1, 0, '2024-07-02 08:59:40', '2024-07-02 08:59:40'),
(16, 'BMW', 1, 0, '2024-07-02 08:59:49', '2024-07-02 08:59:49'),
(17, 'Tesla', 1, 0, '2024-07-02 08:59:58', '2024-07-02 08:59:58'),
(18, 'Daihatsu', 1, 0, '2024-07-02 10:42:15', '2024-07-02 10:42:15'),
(19, 'Mitsubishi', 1, 0, '2024-07-02 10:42:28', '2024-07-02 10:42:28'),
(20, 'Suzuki', 1, 0, '2024-07-02 10:42:39', '2024-07-02 10:42:39'),
(21, 'Wuling', 1, 0, '2024-07-02 10:43:23', '2024-07-02 10:43:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `car_type_list`
--

CREATE TABLE `car_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `car_type_list`
--

INSERT INTO `car_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Sedan', 1, 0, '2024-07-02 09:13:24', '2024-07-02 09:13:24'),
(2, 'Coupe', 1, 0, '2024-07-02 09:13:51', '2024-07-02 09:13:51'),
(3, 'Sports', 1, 0, '2024-07-02 09:14:00', '2024-07-02 09:14:00'),
(4, 'Station Wagon', 1, 0, '2024-07-02 09:14:28', '2024-07-02 09:14:28'),
(5, 'Hatchback', 1, 0, '2024-07-02 09:14:42', '2024-07-02 09:14:42'),
(6, 'Sports-Utility Vehicle (SUV)', 1, 0, '2024-07-02 09:15:13', '2024-07-02 09:15:13'),
(7, 'Minivan', 1, 0, '2024-07-02 09:15:25', '2024-07-02 09:15:25'),
(8, 'Pickup Truck ', 1, 0, '2024-07-02 09:15:43', '2024-07-02 09:15:43'),
(9, 'test - updated', 1, 1, '2024-07-02 09:16:19', '2024-07-02 09:16:36'),
(10, 'MPV', 1, 0, '2024-07-02 10:36:00', '2024-07-02 10:36:00'),
(11, 'SUV', 1, 0, '2024-07-02 10:36:15', '2024-07-02 10:36:15'),
(12, 'Van', 1, 0, '2024-07-02 10:37:26', '2024-07-02 10:37:26'),
(13, 'Wagon', 0, 0, '2024-07-02 10:37:43', '2024-07-02 10:37:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_list`
--

CREATE TABLE `model_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `model` text NOT NULL,
  `engine_type` text NOT NULL,
  `transmission_type` text NOT NULL,
  `car_type_id` int(30) NOT NULL,
  `technology` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `model_list`
--

INSERT INTO `model_list` (`id`, `brand_id`, `model`, `engine_type`, `transmission_type`, `car_type_id`, `technology`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(4, 11, 'V6 twin-turbo 2.9 L', 'Bensin', 'Otomatis 7-Speed', 3, 'Memenuhi Syarat Kenyamanan, Kemudahan, dan Keselamatan', 1, 0, '2024-07-01 19:29:29', '2024-07-02 04:24:04'),
(5, 2, '1.2 E STD LOW MT', 'Bensin', 'Manual', 10, 'Standar Mobil Keluarga', 1, 0, '2024-07-02 04:46:34', '2024-07-02 04:46:34'),
(6, 2, '1.5 G CVT', 'Bensin', 'Manual', 10, 'kamera belakang, sensor jarak mobil, dan ac dingin', 1, 0, '2024-07-02 04:51:36', '2024-07-02 04:51:36'),
(7, 18, 'R AT Custom MC', 'Bensin', 'Manual', 11, 'Standar Mobil Keluarga', 1, 0, '2024-07-02 04:55:12', '2024-07-02 04:55:12'),
(8, 16, 'i5', 'Bensin', 'Automatic', 1, 'desain dengan smart car ', 1, 0, '2024-07-02 04:59:08', '2024-07-02 04:59:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'HOLLMAN Showroom Car'),
(6, 'short_name', 'HOLLMAN Super Car'),
(11, 'logo', 'uploads/logo.png?v=1719861861'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1719861862'),
(17, 'phone', '456-987-1231'),
(18, 'mobile', '09123456987 / 094563212222 '),
(19, 'email', 'info@sample.com'),
(20, 'address', '7087 Henry St. Clifton Park, NY 12065 - updated address');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_list`
--

CREATE TABLE `transaction_list` (
  `id` int(30) NOT NULL,
  `vehicle_id` int(30) NOT NULL,
  `agent_name` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `contact` text NOT NULL,
  `email` text DEFAULT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction_list`
--

INSERT INTO `transaction_list` (`id`, `vehicle_id`, `agent_name`, `firstname`, `middlename`, `lastname`, `sex`, `dob`, `contact`, `email`, `address`, `date_created`, `date_updated`) VALUES
(5, 4, 'Bilmo', 'Romeo', 'Aldy', 'Bangun', 'Male', '2004-07-11', '081365497845', 'romeo123@gmail.com', 'Padang Bulan', '2024-07-02 04:31:48', '2024-07-02 04:31:48'),
(7, 8, 'Adhi', 'Aman', 'Hagai', 'Hutabarat', 'Male', '2002-02-12', '0852147852', 'Aman@gmail.com', 'Tarutung', '2024-07-02 05:06:17', '2024-07-02 05:06:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Romeo ', 'Aldy', 'Admin', 'admin', 'b94d08b753814f2d3353db0754e60b86', 'uploads/avatars/1.png?v=1719868398', NULL, 1, '2024-07-20 14:02:37', '2024-07-02 10:13:41'),
(7, 'John', 'D', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', 'uploads/avatars/7.png?v=1654065792', NULL, 2, '2024-07-26 11:04:16', '2024-07-01 14:43:12'),
(8, 'romeo', 'aldy', 'bangun', 'romeobgn', '3268b1758db6421541d5e2bcfac1503d', 'uploads/avatars/8.png?v=1719836891', NULL, 2, '2024-07-02 19:28:11', '2024-07-02 19:28:11'),
(9, 'Peters', 'Gabriel', 'Girsang', 'Peters', '8dbb63c008b5d779aba2e525f959ae84', NULL, NULL, 2, '2024-07-02 09:56:15', '2024-07-02 09:56:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_list`
--

CREATE TABLE `vehicle_list` (
  `id` int(30) NOT NULL,
  `model_id` int(30) NOT NULL,
  `mv_number` text NOT NULL,
  `plate_number` text NOT NULL,
  `variant` text NOT NULL,
  `mileage` varchar(20) NOT NULL,
  `engine_number` varchar(100) NOT NULL,
  `chasis_number` varchar(100) NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Available,\r\n1=Sold',
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `vehicle_list`
--

INSERT INTO `vehicle_list` (`id`, `model_id`, `mv_number`, `plate_number`, `variant`, `mileage`, `engine_number`, `chasis_number`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(4, 4, '125478', 'AUD66', 'Putih', '5', 'ASD159753', 'SDA357951', 560000000.00, 1, 0, '2024-07-02 10:25:43', '2024-07-02 10:31:48'),
(5, 4, '336699', 'AUD12', 'Merah', '2', 'ASD789456', 'SDA654987', 5249999872.00, 0, 0, '2024-07-02 10:30:01', '2024-07-02 10:30:01'),
(6, 5, '112233', 'CAL12', 'Grey', '12000', 'CLA159632', 'CYA236951', 178000000.00, 0, 0, '2024-07-02 10:48:00', '2024-07-02 10:48:00'),
(7, 5, '112232', 'CAL15', 'Black', '5000', 'CLA147895', 'CYA159874', 150000000.00, 0, 0, '2024-07-02 10:49:05', '2024-07-02 10:49:05'),
(8, 6, '223341', 'AVA121212', 'Grey', '3000', 'AVV123654', 'AVA212112', 275000000.00, 1, 0, '2024-07-02 10:52:34', '2024-07-02 10:06:17'),
(9, 7, '789456', 'TER7845', 'Brown', '15120', 'TRS74574', 'TRS48569', 205000000.00, 0, 0, '2024-07-02 10:56:04', '2024-07-02 10:56:04'),
(10, 8, '124596', 'BMW14785', 'Aqua', '2000', 'MWB12563', 'MWB2563', 2204999936.00, 0, 0, '2024-07-02 11:00:05', '2024-07-02 11:00:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `car_type_list`
--
ALTER TABLE `car_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_list`
--
ALTER TABLE `model_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `car_type_id` (`car_type_id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vehicle_list`
--
ALTER TABLE `vehicle_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `car_type_list`
--
ALTER TABLE `car_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `model_list`
--
ALTER TABLE `model_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `vehicle_list`
--
ALTER TABLE `vehicle_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_list`
--
ALTER TABLE `model_list`
  ADD CONSTRAINT `brand_id_fk_ml` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `car_type_id_fk_ml` FOREIGN KEY (`car_type_id`) REFERENCES `car_type_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD CONSTRAINT `vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `vehicle_list`
--
ALTER TABLE `vehicle_list`
  ADD CONSTRAINT `model_id_fk_vl` FOREIGN KEY (`model_id`) REFERENCES `model_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
