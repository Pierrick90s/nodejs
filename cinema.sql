-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 29 fév. 2024 à 16:54
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

CREATE TABLE `acteurs` (
  `id_acteurs` int(11) NOT NULL,
  `anom` varchar(50) DEFAULT NULL,
  `aprenom` varchar(50) DEFAULT NULL,
  `aphoto` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`id_acteurs`, `anom`, `aprenom`, `aphoto`) VALUES
(3, 'Felpin', 'Laura', 'https://static.cnews.fr/sites/default/files/laura_felpin_63db982b0ac19_0.jpg'),
(4, 'Leila', 'Bekhti', 'https://resize.prod.femina.ladmedia.fr/rblr/652,438/img/var/2022-10/leilab.jpg'),
(5, 'Hanks', 'Tom', 'https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2F6cbb8e77-1682-4c0b-964b-7ed151b1441a.2Ejpeg/2216x1536/quality/80/tom-hanks.jpeg'),
(6, 'Washington', 'Denzel', 'https://resize.prod.femina.ladmedia.fr/rblr/1200,806/img/var/2018-08/denzel-washington-the-equalizer-2-interview.jpg'),
(7, 'De Niro', 'Robert', 'https://www.parismatch.com/lmnr/r/960,640,FFFFFF,forcex,center-middle/img/var/pm/public/styles/paysage/public/media/image/2023/08/15/19/pm-robert-de-niro.jpg?VersionId=y7m.txhZtEAqkYm.uwU1F9b6upojbE7O'),
(8, 'Ford', 'Harrison', 'https://images.rtl.fr/~c/2000v2000/rtl/www/1147766-harrison-ford-le-5-fevrier-2020-au-mexique.jpg'),
(9, 'Smith', 'Will', 'https://www.grazia.fr/wp-content/uploads/grazia/2022/12/abaca_833837_145-scaled.jpg'),
(10, 'Roberts', 'Julia', 'https://img.20mn.fr/fIfecS1OQJKDdPvpYe1R5Q/1200x768_actrice-julia-roberts-69e-festival-cannes'),
(11, 'Portman', 'Natalie', 'https://images.rtl.fr/~c/770v513/rtl/www/1175387-natalie-portman-a-incarne-jane-foster-dans-les-deux-premiers-episodes-thor.jpg'),
(12, 'Stone', 'Emma', 'https://www.lalibre.be/resizer/M9D2MDrbtda7dyNbKCqcD6WiOsE=/1200x800/filters:format(jpeg):focal(1275x857:1285x847)/cloudfront-eu-central-1.images.arcpublishing.com/ipmgroup/4F2YI7EJV5AJZAUC564N6UH33E.jpg'),
(13, 'Lawrence', 'Jennifer', 'https://www.parismatch.com/lmnr/r/960,640,FFFFFF,forcex,center-middle/img/var/pm/public/styles/paysage/public/media/image/2023/11/28/15/gettyimages-1754915549.jpg?VersionId=6OZbodc7wsGhxjCJToXyUrN8iaNMsgLb'),
(14, 'Darmon', 'Gerard', 'https://img-4.linternaute.com/9IIvB1l28_wNFxeiHSfExZ5lSHg=/1500x/smart/1f96164614554482ac2192bb5a29f347/ccmcms-linternaute/23776713.jpg'),
(15, 'Baer', 'Edouard', 'https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2Fdf08ec4e-3ad9-4c0b-ae30-49a4fa90e23b.2Ejpeg/2216x1536/quality/80/edouard-baer.jpeg'),
(16, 'Robbie', 'Margot', 'https://m1.quebecormedia.com/emp/emp/ffe9a590-0a5e-11ee-a247-bb4356c6af15_ORIGINAL.jpg?impolicy=crop-resize&x=0&y=0&w=0&h=0&width=925'),
(36, 'Civil', 'François', 'https://media.zenfs.com/fr/closermag.fr/a99f0c2de79a06ea3a16eb7caedaf86c');

-- --------------------------------------------------------

--
-- Structure de la table `casting`
--

CREATE TABLE `casting` (
  `id_film` int(11) NOT NULL,
  `id_acteurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `casting`
--

INSERT INTO `casting` (`id_film`, `id_acteurs`) VALUES
(3, 14),
(3, 15),
(3, 16),
(5, 3),
(5, 14),
(5, 15);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `date_de_sortie` date DEFAULT NULL,
  `affiche` varchar(250) DEFAULT NULL,
  `id_genre` int(11) NOT NULL,
  `id_reals` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `titre`, `date_de_sortie`, `affiche`, `id_genre`, `id_reals`) VALUES
(2, 'La cacahuete', '2025-03-02', 'upload/cacahuete.jpg', 10, 2),
(3, 'Shrek 5', '2024-04-10', 'upload/', 4, 6),
(4, 'Opex : Soleil levant', '2026-06-17', 'upload/', 15, 9),
(5, 'The Farter', '2024-04-02', 'cobra.jpg', 2, 7),
(37, 'Action man', '2024-02-07', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFRUXGR8bGBgXGBsdGxgYHRsYGB8YGhgeHiggHR0lGxgXITEhJSkrLi4uGh8zODMsNygtLisBCgoKDg0OGxAQGy0mICUtLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAP4AxgMBIgACEQE', 15, 9),
(38, 'Coeur Noir', '1958-04-25', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFRUXGR8bGBgXGBsdGxgYHRsYGB8YGhgeHiggHR0lGxgXITEhJSkrLi4uGh8zODMsNygtLisBCgoKDg0OGxAQGy0mICUtLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAP4AxgMBIgACEQE', 15, 11),
(39, 'Daaaaaali', '2024-02-25', 'aaaa.jpg', 17, 3),
(40, 'Daaaaaali', '2024-02-25', 'aaaa.jpg', 17, 3),
(41, 'Action man', '2024-02-15', 'aeze', 9, 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `gnom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `gnom`) VALUES
(15, 'Action'),
(3, 'Aventure'),
(8, 'Biopic'),
(1, 'Comédies'),
(9, 'Documentaire'),
(2, 'Drames'),
(4, 'Fantastique'),
(20, 'Guerre'),
(10, 'Horreur'),
(17, 'Humour'),
(21, 'Médiéval'),
(5, 'Policier'),
(14, 'Post-apocalyptique'),
(16, 'Romance'),
(7, 'Science-fiction'),
(26, 'Super-héros'),
(6, 'Western');

-- --------------------------------------------------------

--
-- Structure de la table `reals`
--

CREATE TABLE `reals` (
  `id_reals` int(11) NOT NULL,
  `rnom` varchar(50) DEFAULT NULL,
  `rprenom` varchar(50) DEFAULT NULL,
  `rphoto` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reals`
--

INSERT INTO `reals` (`id_reals`, `rnom`, `rprenom`, `rphoto`) VALUES
(2, 'Chabat', 'Alain', 'https://images.rtl.fr/~c/2000v2000/rtl/www/1553523-alain-chabat-au-festival-de-cannes-le-21-mai-2022.jpg'),
(3, 'Dupieux', 'Quentin', 'https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F07.2F06.2F3af354ed-ce2d-4050-84c1-0dfd955485ce.2Ejpeg/2216x1536/quality/80/quentin-dupieux.jpeg'),
(4, 'Tarantino', 'Quentin', 'https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2018.2F11.2F29.2F6ee8276d-d9db-40ed-9840-de47c8647a27.2Ejpeg/2862x1984/quality/80/quentin-tarantino.jpeg'),
(5, 'Scorsese', 'Martin', 'https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2F08068dee-c969-4017-a688-ad66dff20ed3.2Ejpeg/2216x1536/quality/80/martin-scorsese.jpeg'),
(6, 'Eastwood', 'Clint', 'https://img-4.linternaute.com/-d3SkZPuHJGMhO5oH2m6O8Lxpco=/1500x/smart/597d4d46787149f3922ae25fd51e8d6c/ccmcms-linternaute/11557998.jpg'),
(7, 'Nolan', 'Christopher', 'https://img.20mn.fr/D8tNGK0ORj6x17tE9FDMyik/1200x768_realisateur-christopher-nolan'),
(8, 'Fincher', 'David', 'https://variety.com/wp-content/uploads/2023/09/GettyImages-1657363318.jpg?w=1000&h=563&crop=1'),
(9, 'Cameron', 'James', 'https://media.gqmagazine.fr/photos/63eba32c4c16ff5f1e74e56c/16:9/w_2560%2Cc_limit/GettyImages-1447220951.jpg'),
(10, 'Spielberg', 'Steven', 'https://img.lemde.fr/2023/02/21/0/0/5551/3625/664/0/75/0/b257e69_1676995826380-000-336q28h.jpg'),
(11, 'Gangsta', 'Arouf', 'https://revrse.b-cdn.net/wp-content/uploads/2022/02/arouf-gangsta-palalala-clip-handicape-800x503.jpg'),
(12, 'Hazanavicius', 'Michel', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZC8wei_rxvzvVp9h1QN9Wl2clbgUQSYlQ6R6rtywnwg&s'),
(14, 'Triet', 'Justine', 'https://cdn-s-www.dna.fr/images/D7D45BF6-C468-485B-B818-EFA5B055B061/NW_raw/justine-triet-est-la-realisatrice-du-drame-anatomie-d-une-chute-photo-sipa-jean-marc-haedrich-1684083709.jpg'),
(15, 'Besson', 'Luc', 'https://images.rtl.fr/~c/770v513/rtl/www/1157141-luc-besson-au-festival-de-cannes-2016-pour-la-projection-de-the-last-face.jpg'),
(16, 'Anderson', 'Wess', 'https://www.leparisien.fr/resizer/IEcCxspQKQ1vBL0tNbkcBhjGJvw=/932x582/cloudfront-eu-central-1.images.arcpublishing.com/leparisien/TYOV77YQ4ZCBZCEZU4O3AJ2B5Y.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteurs`
--
ALTER TABLE `acteurs`
  ADD PRIMARY KEY (`id_acteurs`);

--
-- Index pour la table `casting`
--
ALTER TABLE `casting`
  ADD PRIMARY KEY (`id_film`,`id_acteurs`),
  ADD KEY `id_acteurs` (`id_acteurs`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_genre` (`id_genre`),
  ADD KEY `id_reals` (`id_reals`) USING BTREE;

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`),
  ADD UNIQUE KEY `nom` (`gnom`);

--
-- Index pour la table `reals`
--
ALTER TABLE `reals`
  ADD PRIMARY KEY (`id_reals`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteurs`
--
ALTER TABLE `acteurs`
  MODIFY `id_acteurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `reals`
--
ALTER TABLE `reals`
  MODIFY `id_reals` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `casting`
--
ALTER TABLE `casting`
  ADD CONSTRAINT `casting_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  ADD CONSTRAINT `casting_ibfk_2` FOREIGN KEY (`id_acteurs`) REFERENCES `acteurs` (`id_acteurs`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`id_reals`) REFERENCES `reals` (`id_reals`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
