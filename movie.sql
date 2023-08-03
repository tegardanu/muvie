-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2023 pada 12.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `payment` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`booking_id`, `ticket_id`, `user_id`, `email`, `payment`) VALUES
(10, 20, 30, 'Arterioc3@gmail.com', 'Dana'),
(11, 21, 31, 'Rgfadu777@gmail.com', 'Ovo'),
(12, 22, 32, 'ftegar252@gmail.com', 'Dana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `leangue` varchar(50) NOT NULL,
  `status` enum('SCREENING','NOT_SCREENING','BANNED') NOT NULL,
  `release_date` date NOT NULL,
  `cast` varchar(100) NOT NULL,
  `images` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `movie`
--

INSERT INTO `movie` (`movie_id`, `name`, `genre`, `leangue`, `status`, `release_date`, `cast`, `images`) VALUES
(1, 'suzannah', 'Horor', 'Indonesian', 'SCREENING', '2023-07-17', 'suzannah', 'suzannah.jpg'),
(2, 'Transformer Rise Of the Beast', 'Action', 'English', 'NOT_SCREENING', '2023-07-17', 'autobot vs decepticon', 'transformer.jpg'),
(3, 'Dragon warior', 'action', 'English', 'NOT_SCREENING', '2023-07-17', 'Dragon slayer', 'Warior.jpg'),
(4, 'Barbie', 'Romance', 'English', 'NOT_SCREENING', '2023-07-17', 'Tegar', 'Barbie.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `paymen_id` int(11) NOT NULL,
  `boking_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paymen_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`paymen_id`, `boking_id`, `amount`, `paymen_date`) VALUES
(1, 21, 1, '2023-07-17'),
(2, 22, 2, '2023-07-17'),
(3, 23, 3, '2023-07-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `tickets_id` int(11) NOT NULL,
  `seat` varchar(11) NOT NULL,
  `theatre` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `availability_status` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tickets`
--

INSERT INTO `tickets` (`tickets_id`, `seat`, `theatre`, `time`, `movie_id`, `price`, `availability_status`, `date`) VALUES
(20, 'D16', 1, '04.30 am', 1, 100000, 'AVAILABLE', '2021-07-17'),
(21, 'D17', 1, '04.30 am', 1, 100000, 'AVAILABLE', '2021-07-17'),
(22, 'D18', 1, '04.30 am', 1, 100000, 'AVAILABLE', '2021-07-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `phone_number`) VALUES
(1, 'arte', 'arterioc3@gmail.com', 'ufuvwewewe', 8500),
(2, 'Tegar', 'ftegar252@gmail.com', 'uhuyyy', 9500),
(3, 'danu', 'Rgfadu777@gmail.com', 'yoiii', 10000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indeks untuk tabel `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymen_id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`tickets_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `paymen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `tickets_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
