-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 16 Apr 2018 pada 04.28
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelqdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_customer`
--

CREATE TABLE `f_customer` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `ADDRESS` varchar(40) NOT NULL,
  `PHONE` int(14) NOT NULL,
  `GENDER` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_reservation`
--

CREATE TABLE `f_reservation` (
  `ID` int(10) NOT NULL,
  `RESERVATION_CODE` int(10) NOT NULL,
  `RESERVATION_AT` int(10) NOT NULL,
  `RESERVATION_DATE` datetime NOT NULL,
  `SEAT_CODE` int(10) NOT NULL,
  `DEPART_AT` varchar(30) NOT NULL,
  `PRICE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_rute`
--

CREATE TABLE `f_rute` (
  `ID` int(10) NOT NULL,
  `RUTE_FROM` varchar(30) NOT NULL,
  `RUTE_TO` varchar(30) NOT NULL,
  `PRICE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_transportation`
--

CREATE TABLE `f_transportation` (
  `ID` int(10) NOT NULL,
  `CODE` int(10) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `SEAT_QTY` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_transportation_type`
--

CREATE TABLE `f_transportation_type` (
  `ID` int(10) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_user`
--

CREATE TABLE `f_user` (
  `ID` int(10) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `FULL_NAME` varchar(40) NOT NULL,
  `LEVEL` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `f_customer`
--
ALTER TABLE `f_customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `f_reservation`
--
ALTER TABLE `f_reservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `f_rute`
--
ALTER TABLE `f_rute`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `f_transportation`
--
ALTER TABLE `f_transportation`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `f_transportation_type`
--
ALTER TABLE `f_transportation_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `f_user`
--
ALTER TABLE `f_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `f_customer`
--
ALTER TABLE `f_customer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `f_reservation`
--
ALTER TABLE `f_reservation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `f_rute`
--
ALTER TABLE `f_rute`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `f_transportation`
--
ALTER TABLE `f_transportation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `f_transportation_type`
--
ALTER TABLE `f_transportation_type`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `f_user`
--
ALTER TABLE `f_user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
