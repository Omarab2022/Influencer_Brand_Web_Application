-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 18 mai 2023 à 17:49
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `inflbrand`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(0, 'admin', '$2y$10$xwErmt89n0/x0BsYuQw4DOZUMM9QbPH8weD6HaJCHw/BUQJkHFhye');

-- --------------------------------------------------------

--
-- Structure de la table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `CA` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `brand`
--

INSERT INTO `brand` (`id`, `username`, `email`, `CA`, `password`, `photo`) VALUES
(7, 'louis vitton', 'louis@gmail.com', 2000, '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'louis vitton.jpeg'),
(8, 'garnier', 'garnier@gmail.com', 80000, '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'garnier.png'),
(9, 'versace', 'versace@gmail.com', 101010, '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'versace.jpg'),
(10, 'coca cola', 'coca@gmail.com', 8989, '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'coca cola.png');

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `envoyer` varchar(100) NOT NULL,
  `recevoir` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`id`, `envoyer`, `recevoir`, `message`, `date`) VALUES
(27, 'Nike', 'omario', 'd', '2023-05-02 23:34:40'),
(28, 'Nike', 'Nike', 'hello', '2023-05-02 23:40:27'),
(29, 'omario', 'Nike', 'hello', '2023-05-02 23:41:27'),
(30, 'Nike', 'charlie', 'hello', '2023-05-02 23:42:31'),
(31, 'omario', 'Nike', 'et toi', '2023-05-03 18:27:56'),
(32, 'Nike', 'omario', 'hamdolah', '2023-05-03 18:31:28'),
(33, 'omario', 'Fashionnv', 'bonjour', '2023-05-03 21:51:48'),
(34, 'omario', 'Dior', 'hi', '2023-05-08 17:05:02'),
(35, 'omario', 'Fashionnv', 'kgkgjk', '2023-05-08 17:07:53'),
(36, 'garnier', 'emma', 'hi', '2023-05-10 11:00:04'),
(37, 'emma', 'garnier', 'e', '2023-05-14 21:18:48'),
(38, 'coca cola', 'emma', 'wa fayn', '2023-05-14 21:21:47'),
(39, 'kendall', 'louis vitton', 'wa fin', '2023-05-15 20:20:26'),
(40, 'kendall', 'versace', 'test', '2023-05-16 19:58:33'),
(41, 'kendall', 'louis vitton', 'bonjour', '2023-05-16 20:21:05'),
(42, 'shawn', 'garnier', 'salam', '2023-05-16 20:26:24'),
(43, 'shawn', 'Nike', 'ee', '2023-05-16 20:30:27'),
(44, 'emma', 'Nike', 's', '2023-05-16 22:45:24'),
(45, 'addisonrae', 'versace', 'bonjour vercase cv', '2023-05-17 18:41:41'),
(46, 'addisonrae', 'versace', 'moi cv ', '2023-05-17 18:41:56'),
(47, 'versace', 'addisonrae', 'cv hamdolilah et toi', '2023-05-17 18:47:22'),
(48, 'versace', 'addisonrae', 'moi tres bien merci', '2023-05-17 18:47:32'),
(49, 'coca cola', 'emma', 'hi', '2023-05-18 16:16:13');

-- --------------------------------------------------------

--
-- Structure de la table `collaboration`
--

CREATE TABLE `collaboration` (
  `id` int(11) NOT NULL,
  `premier` varchar(100) NOT NULL,
  `deuscieme` varchar(255) NOT NULL,
  `contrat` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_depart` date NOT NULL,
  `date_final` date NOT NULL,
  `montant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `collaboration`
--

INSERT INTO `collaboration` (`id`, `premier`, `deuscieme`, `contrat`, `status`, `date_depart`, `date_final`, `montant`) VALUES
(12, 'garnier', 'addisonrae', 'diorison', 'oui', '2023-04-24', '2023-04-29', 70000000),
(14, 'addisonrae', 'versace', 'addiDior', 'oui', '2023-04-24', '2023-04-29', 900000),
(15, 'addisonrae', 'garnier', 'charliDior', 'non', '2023-04-01', '2023-04-30', 90000000),
(16, 'cocacola', 'addisonrae', 'avFashion', 'oui', '2023-04-01', '2023-04-30', 2147483647),
(17, 'shawn', 'versace', 'avanifornike', 'oui', '2023-05-02', '2023-05-04', 80000),
(19, 'versace', 'kendall', 'khadija', 'non', '2023-03-09', '2023-06-03', 808),
(21, 'addisonrae', 'versace', 'addison vers versace', 'non', '2023-05-05', '2023-06-11', 909090),
(22, 'versace', 'emma', 'versace vers emma', 'non', '2023-05-06', '2023-06-11', 65656);

-- --------------------------------------------------------

--
-- Structure de la table `demender`
--

CREATE TABLE `demender` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `influencerORbrand` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'not done',
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `demender`
--

INSERT INTO `demender` (`id`, `username`, `influencerORbrand`, `status`, `date`) VALUES
(3, 'kendall', 'influencer', 'not done', '2023-05-14 22:38:04'),
(4, 'versace', 'brand', 'not done', '2023-05-17 18:13:42'),
(5, 'addisonrae', 'influencer', 'not done', '2023-05-17 18:38:56');

-- --------------------------------------------------------

--
-- Structure de la table `influencer`
--

CREATE TABLE `influencer` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` mediumtext NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `twitter` varchar(5456) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `influencer`
--

INSERT INTO `influencer` (`id`, `nom`, `prenom`, `username`, `age`, `email`, `instagram`, `facebook`, `twitter`, `password`, `photo`) VALUES
(2, 'rae', 'addison', 'addisonrae', 55, 'addisonrae@gmail.com', 'inst', 'fac', 'twitt', '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'addisonrae.png'),
(3, 'charli', 'damelio', 'charlie', 20, 'charlie@gmail.com', 'charli', 'charli', 'charli', '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'charli.jpg'),
(6, 'emma', 'chambrlin', 'emma', 22, 'emma@gmail.com', 'emmainsta', 'emmafb', 'emmatwitt', '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'emma.jpeg'),
(7, 'kendall', 'jenner', 'kendall', 25, 'kendall@gmail.com', 'kendallinsta', 'kenfb', 'kentwitter', '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'kendall.jpeg'),
(8, 'shawn', 'mandez', 'shawn', 28, 'shawn@gmail.com', 'shawshaw', 'facebbokshaw', 'twitt', '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'shawn.webp'),
(15, 'anas', 'abarra', 'anas', 22, 'anas@gmail.com', 'insta', 'facebook', 'twitter', '$2y$10$izqP40WQn6V0JbGgJzI4guMhgt.R5XxHN8gJ7lvtS3wXjfsNo8fCi', 'anas.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `collaboration`
--
ALTER TABLE `collaboration`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demender`
--
ALTER TABLE `demender`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `influencer`
--
ALTER TABLE `influencer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `collaboration`
--
ALTER TABLE `collaboration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `demender`
--
ALTER TABLE `demender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `influencer`
--
ALTER TABLE `influencer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
