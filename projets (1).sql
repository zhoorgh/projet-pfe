-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 19 mai 2019 à 23:02
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projets`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `libelle` varchar(300) NOT NULL,
  `vignette` varchar(300) NOT NULL,
  `designation` text NOT NULL,
  `datepub` varchar(50) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_photo` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `libelle`, `vignette`, `designation`, `datepub`, `id_categorie`, `id_photo`, `id_membre`) VALUES
(2, 'Les looks beauté de stars au Festival de Cannes 20', '1.jpg', 'Deux catégories peuvent se distinguer sur les marc', '19-05-2019', 2, 1, 1),
(3, 'Les sports préférés des stars pour garder la ligne', '2.jpg\r\n\r\n', 'Pour être au top de leur forme, le sport est devenu indispensable pour les stars. Boxe, footing, pilates, surf... Jennifer Lopez, Cindy Crawford ou encore Gisele Bündchen dévoilent leur routine minceur sur Instagram.\r\nAccros au sport\r\nPour d\'autres stars, le sport est devenu une addiction ', '19-05-2019', 5, 2, 5),
(4, 'Les avantages de la peau des oranges', '4.jpg', 'De nombreux produits cosmétiques contiennent de l\'orange car elle est très riche en vitamine C. Elle est particulièrement efficace pour éliminer les radicaux libres qui contribuent à la fragilisation des cellules. De plus, le zeste d\'orange donne naturellement de l\'éclat à votre peau.\r\nAvantages de ', '19-05-2019', 5, 3, 2),
(5, '5 astuces de make-up artists à connaître absolument', 'photo/3.jpg', 'Des astuces maquillage, vous en connaissez des tonnes mais sûrement pas celles-là. Nous vous avons dégoté les meilleurs secrets des make-up artists.\r\nPulvérisez un spray fixateur à chaque étape de votre routine teint\r\nLassées de voir votre superbe teint se faire la malle au bout de 2 heures à cause de votre peau grasse ? Maquilleuse professionnelle, Marion de la chaîne youtube MarionCameleon recommande d\'utiliser un spray fixateur à chaque étape de votre routine teint. Une fois votre base appliquée, vous utilisez votre spray fixateur et ajoutez-y un voile de poudre libre sur une peau parfaitement sèche. Passez au fond de teint, une nouvelle fois au spray fixateur et au voile de poudre libre.', '18-05-2019', 2, 4, 1),
(6, 'Meilleure palette de maquillage : les incontournables du moment\r\n', 'photo/5.jpg', 'Retrouvez notre sélection de palettes pour les yeux, le teint ou encore le contouring pour un maquillage parfait.\r\nUne palette complètement adaptée à un usage make-up sobre et élégant. Pour le jour ou le soir, on trouvera forcément le maquillage adapté, à la couleur de ses yeux, la teinte de sa peau et la nuance de sa tenue. Des brillants, des mats, des nudes : tous les ingrédients sont présents pour se faire belle... à petit prix ! Les fards sont de qualité et faciles à appliquer. Et un grand miroir est intégré au boîtier. Parfait pour se maquiller chez soi ou ailleurs.', '18-05-2019', 2, 5, 6),
(7, '20 recettes minceur pour un dîner léger entre amis\r\n', 'photo/6.jpg', 'Des recettes équilibrées et prêtes en un temps record\r\nOubliez les pizzas ou les repas trop copieux et optez plutôt pour un menu healthy sans en avoir l\'air. Wrap revisité, wok de légumes, poké bowl... Vous avez un nombre infini de possibilités pour vous régaler sans culpabiliser tout en épatant vos invités. Ces idées de repas sont toutes très rapides à réaliser afin que vous puissiez profiter de votre soirée entre amis sans trop vous préoccuper du dîner. \r\n\r\nDes repas allégés mais gourmands\r\nPour perdre du poids, vous le savez, il vaut mieux préparer vos repas à la maison. Cela vous permettra de savoir exactement ce que vous mettez dans votre assiette. N\'hésitez pas à préparer une grande et', '18-05-2019', 4, 6, 2),
(8, 'COMMENT DÉCORER UNE MAISON AVEC DES FLEURS?', 'photo/7.jpg', 'La décoration de la maison avec des fleurs est très bénéfique pour la santé. Elles apportent un flux d’énergie qui équilibrer dans l’ensemble de la maison. Elles peuvent aussi égayer une ambiance unique et apporte une fraîcheur délicieuse à un intérieur. Il existe une grande variété de fleurs permettant de créer une décoration vraiment très personnelle.\r\n\r\nQuelques conseils pour bien décorer sa maison avec des fleurs\r\n\r\nTout d’abord, il faut savoir que pour réaliser une décoration intérieure avec des fleurs, il faut respecter quelques conditions comme la taille de la plante et l’espace qu’elle occupera. Idéalement, on met une plante par surface de 10 m². Puis, il faut aussi choisir des fleur', '17-05-2019', 3, 7, 10),
(9, 'Magnifier, occulter, isoler : quels rideaux ou voilage dois-je choisir ?', 'photo/8.jpg', 'Il n’y a rien de pire qu’une fenêtre nue mais ce n’est pas une raison pour se précipiter sur le premier rideau venu ! Voilage transparent, coloré, rideaux lourds ou légers… Suivez nos conseils pour magnifier, occulter ou isoler vos fenêtres en beauté !\r\nDES DOUBLURES FONCTIONNELLES\r\nEn guise de rideau, deux choix s’imposent : celui du voilage traditionnel pour faire entrer le soleil dans la pièce et donner une touche déco à votre pièce (dans un salon par exemple) ou celui du rideau occultant, plus pratique pour filtrer la lumière (idéal dans une chambre). On peut même opter pour une doublure thermique afin de garder la chaleur au maximum à l’intérieur. Tout dépend des latitudes et de l’orien', '17-05-2019', 3, 8, 8),
(10, 'Tous nos dossiers Couleurs', 'photo/9.jpg', 'Rouge, orange, jaune, vert, bleu, violet, noir et blanc... Les couleurs nous offrent une variété quasi infinie de possibilités pour décorer l\'intérieur et l\'extérieur. Couleur par couleur, retrouvez le meilleur de nos articles pour les utiliser à bon escient, sans faute de goût.\r\nGris : les bonnes associations de couleurs\r\nDevenu intemporel et indémodable, le gris est la couleur de prédilection dans la maison. Avec la capacité de s\'adapter à (presque) tous les styles et toutes les envies, le gris est un caméléon. Aux côtés de tons pastel, il crée une atmosphère douce et enfantine. Sublimé par des couleurs foncées, il devient intense avec un caractère affirmé. Très simple à manier, le gris es', '17-05-2019', 3, 9, 4),
(11, 'le style de rue exceptionnel de la Fashion Week Automne 2019', 'photo/10.jpg', '\r\n535/5000\r\nRegarde les pistes, il y a une mode sérieuse qui se passe dans la rue.\r\n\r\nAvec la semaine de la mode - euh - le mois bat son plein, une dose supplémentaire de style envahit une poignée des plus grandes capitales de la mode du monde. Bien sûr, les podiums sont leur chic habituel, mais il y a tout autant de férocité sur les trottoirs.\r\n\r\nAlors que les personnalités de l\'industrie, les mannequins, les célébrités, les influenceurs et les grands fans de mode affluent vers tous les sites de défilés habillés pour impressionner, un défilé de mode à lui tout seul se déroule en dehors de chaque événement.', '16-05-2019', 1, 10, 7),
(12, 'Zoom sur la tendance cushion cream\r\n', 'photo/11.jpg', 'Alerte beauté ! La cushion cream continue son buzz. Venue d\'Asie, elle a détrôné les BB, CC Creams et se mue aujourd\'hui en fond de teint. Décryptage.\r\nQu\'est-ce que la Cushion Cream ?\r\nElle se présente sous la forme d\'un petit boîtier compact qui contient deux compartiments. Le premier renferme une houpette et l\'autre une crème teintée. Celle-ci possède les mêmes propriétés qu\'une BB ou CC Cream. Elle hydrate la peau, unifie le teint et protège des UV. Elle convient à tous les types de peau et il existe déjà de nombreuses teintes, plus ou moins couvrantes selon le résultat souhaité. En somme, la Cushion Cream est un produit assez comparable aux produits de soins teintés que l\'on connaît déj', '16-05-2019', 2, 11, 3),
(13, 'LES BIENFAITS DU YOGA POUR LES FEMMES', 'photo/12.jpg', 'Le yoga est à la fois une tendance et une mode, et est en passe de devenir un véritable style de vie.\r\nNous savons tous que le yoga est pratiqué depuis des milliers d’années et aujourd’hui ce programme de mise en forme provoque un vrai raz-de-marée qui n’est pas près de se calmer.\r\n\r\nLe yoga a été au départ développé en Inde par des sages ancestraux afin de vénérer leurs dieux. C’est un exercice quotidien qui entretient l’esprit, le cœur et le corps tout en les préparant à faire face aux défis de la vie.', '15-05-2019', 5, 12, 9),
(14, 'Soin du visage Gemology', 'photo/13.jpg', 'Nous vous proposons un soin qui a été mis au point par Chrystelle LANNOY, ce dernier consiste à extraire des pierres précieuses 18 minéraux précieux et semis précieux et c’est là que se concentrent les oligo éléments.\r\n\r\nPuisant au cœur de la nature minérale ses qualités bienfaitrices sur la peau, les soins Gemology lui offrent des actifs de haute qualité, choisis avec exigence.\r\n\r\nÉclat, hydratation, fermeté, luminosité, fraîcheur. Pour chaque préoccupation, Gemology a formulé le soin dont votre peau a besoin, celui qu’elle attend.\r\n\r\nVotre peau est précieuse, offrez-lui le soin qu’elle mérite.', '15-09-2019', 5, 13, 3),
(15, 'Les 4 bienfaits santé de la pastèque\r\n', 'photo/14.jpg', 'La pastèque, c’est le fruit de l’été par excellence. On profite de cette saison pour bénéficier de toutes ses vertus.\r\nDans la pastèque, tout est bon, même les pépins, qui regorgent eux aussi de nutriments. On peut consommer sa chair juteuse fraîche, mais on peut aussi préparer une eau de pastèque, tout aussi délicieuse et désaltérante.\r\nC’est un fruit peu calorique\r\nAvec en moyenne 34,9 kcal pour 100 grammes, la pastèque compte parmi les fruits les moins caloriques. Elle est également peu sucrée : seulement 6,9g de sucres au 100g. Pour autant, sa composition particulière (beaucoup d’eau, peu de fibres) lui procure un index glycémique plutôt élevé (75). Attention à ne pas trop en abuser si vous souffrez de diabète ou que vous suivez un régime alimentaire à IG bas.', '15-05-2019', 5, 14, 3);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `libelle`) VALUES
(1, 'fashion'),
(2, 'beaute'),
(3, 'decoration'),
(4, 'art culinaire'),
(5, 'sante');

-- --------------------------------------------------------

--
-- Structure de la table `commantaire`
--

CREATE TABLE `commantaire` (
  `id_commantaire` int(11) NOT NULL,
  `dateCm` varchar(50) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id_membre` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` varchar(50) NOT NULL,
  `loginM` varchar(50) NOT NULL,
  `passwordM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `nom`, `prenom`, `date_naissance`, `loginM`, `passwordM`) VALUES
(1, 'chekki', 'soukaina', '10-10-1998', 'souk-143@gmail.com', '369745'),
(2, 'ghrissi', 'zhor', '05-12-1998', 'zhoor-12@gmail.com', '147802'),
(3, 'laarousi', 'khaoula', '10-01-1997', 'kha-wla@gmail.com', '14ghre'),
(4, 'nadif', 'naima', '10-07-1991', 'na-ni@gmail.com', '1hmkjlsich'),
(5, 'El Abboubi', 'fatiha', '10-07-1994', 'laanboubi-fa@gmail.com', 'fa1478t'),
(6, 'ouffa', 'asmaa', '12-12-1998', 'asma-y@gmail.com', '14fgre'),
(7, 'jamil', 'nassima', '10-07-1995', 'nasima-143@gmail.com', 'nasima1478h'),
(8, 'ahmiz', 'hassna', '12-12-1994', 'hassna-ah@gmail.fr', 'has147r'),
(9, 'brad', 'bassma', '14-11-1989', 'bas-bra@gmail.com', 'basma147963'),
(10, 'abza', 'zoubida', '10-10-1980', 'abza-z@gmail.com', '14zoubida'),
(11, 'charaf', 'saida', '12-12-1978', 'saida-cha@gmail.fr', 'saida7845r');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `id_photo` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`id_photo`, `photo`, `id_article`) VALUES
(1, 'photo/p1.jpg', 2),
(2, 'photo/p2.jpg', 3),
(3, 'photo/p3.jpg', 4),
(4, 'photo/p4.jpg', 5),
(5, 'photo/p5.jpg', 6),
(6, 'photo/p6.jpg', 7),
(7, 'photo/p7.jpg', 8),
(8, 'photo/p8.jpg', 9),
(9, 'photo/p9.jpg', 10),
(10, 'photo/p10.jpg', 11),
(11, 'photo/p11.jpg', 12),
(12, 'photo/p12.jpg', 13),
(13, 'photo/p13.jpg', 14),
(14, 'photo/p14.jpg', 15);

-- --------------------------------------------------------

--
-- Structure de la table `publicite`
--

CREATE TABLE `publicite` (
  `id_publicite` int(11) NOT NULL,
  `source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `commantaire`
--
ALTER TABLE `commantaire`
  ADD PRIMARY KEY (`id_commantaire`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id_membre`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id_photo`);

--
-- Index pour la table `publicite`
--
ALTER TABLE `publicite`
  ADD PRIMARY KEY (`id_publicite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commantaire`
--
ALTER TABLE `commantaire`
  MODIFY `id_commantaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id_membre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `id_photo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `publicite`
--
ALTER TABLE `publicite`
  MODIFY `id_publicite` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
