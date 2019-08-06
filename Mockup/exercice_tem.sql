-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 06 mars 2019 à 10:07
-- Version du serveur :  5.7.21
-- Version de PHP :  7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `exercice_tem`
--

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

DROP TABLE IF EXISTS `temoignages`;
CREATE TABLE IF NOT EXISTS `temoignages` (
  `idTem` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `date` varchar(10) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`idTem`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`idTem`, `firstName`, `lastName`, `date`, `content`) VALUES
(1, 'Céline', 'Richard', '2018-07-21', 'J\'étais dans la ligne 7 du métro avec ma grand-mère, et elle a commencé à se sentir mal car il y avait trop de monde. Je l\'ai assise car elle avait du mal à respirer, et on est sorties à la station suivante pour qu\'elle puisse reprendre ses esprits.'),
(2, 'Marion', 'Millard', '2019-01-08', 'J\'ai vu un homme âgé se faire renverser par un camion alors que le feu piéton était vert. Je lui ai maintenu la tête et ma collègue a appelé les pompiers, qui sont arrivés rapidement et l\'ont pris en charge.'),
(3, 'Antoine', 'Sapporo', '2018-10-23', 'Je jouais au foot en salle, et un de mes adversaires est tombé après s\'être fait dribbler. Il semblait avoir une grosse entorse à la cheville et était sur le point de tourner de l’œil. On lui a dit de s\'allonger et on a appelé les secours. On a placé sa cheville en position neutre pour ne pas aggraver l\'entorse.'),
(4, 'Nathan', 'Leveque', '2017-05-04', 'Un immeuble a pris feu à côté de mon travail. J\'étais sur place et j\'ai essayé de disperser la foule pour laisser les pompiers intervenir tranquillement. C\'est le mieux que je pouvais faire !'),
(5, 'Pierrick', 'Perrin', '2018-11-16', 'Je roulais sur la départementale dans ma campagne natale, il neigeait et j\'ai vu une voiture dans un fossé. Je me suis arrêté, j\'ai placé la petite balise triangulaire avant le virage précédent, et j\'ai dit au monsieur de ne pas sortir de sa voiture. J\'ai appelé les pompiers, ils ont emmené le conducteur mais heureusement, plus de peur que de mal !'),
(6, 'Thomas', 'Sarbise', '2019-02-01', 'Au repas de Noël, mon oncle s\'est étouffé en avalant de travers. Il paniquait et ne pouvait plus parler mais je lui ai directement fait une manœuvre de Heimlich et ça a fonctionné. Grâce à Everyday Heroes, j\'ai appris qu\'il aurait fallu lui mettre des claques dans le dos d\'abord !'),
(7, 'Mina', 'Boussal', '2018-08-02', 'L\'été dernier au bord de la mer, mon petit frère est allé se baigner et il commençait à être emporté par le courant. Il paniquait donc j\'ai couru au poste de secours ! Heureusement ils sont intervenus rapidement avec leur bateau à moteur et ont ramené mon frère sur la côte. Maintenant il s\'entraîne à la natation 3 fois par semaine !!'),
(8, 'Paul-Alexis', 'Favard', '2019-03-01', 'L\'été dernier, mon père a été mordu par une vipère en faisant du jardinage. On ne savait pas quoi faire alors on l\'a emmené aux urgences, et ils l\'ont gardé en observation jusqu\'au lendemain matin. Heureusement, rien de grave !'),
(9, 'Alexandra', 'Chirac', '2018-08-12', 'Dans la rue, j\'ai vu un homme tomber inconscient et il ne respirait plus. Heureusement, je venais de passer mon PSC1, alors j\'ai directement réagi et j\'ai fait un massage cardiaque pendant qu\'une dame appelait les pompiers. Ils sont arrivés rapidement et ont utilisé un défibrillateur. Je crois que ça a permis de lui sauver la vie !'),
(10, 'Yoan', 'Calment', '2018-02-26', 'Ma femme s\'est brûlée la main en cuisinant, et je lui ai dit de la passer sous l\'eau. Comme la douleur ne passait pas et que des cloques apparaissaient, on a mis un pansement autour de la brûlure, et quelques jours après, ça allait beaucoup mieux ! Les cookies étaient délicieux d\'ailleurs.'),
(11, 'Claire', 'Belet', '2018-04-12', 'Au restaurant, un monsieur s\'est coupé avec un couteau. Il saignait beaucoup donc dans le doute, j\'ai appuyé sur la plaie pendant que son collègue appelait le SAMU. Comme sa main ne saignait pas trop, ils nous ont conseillé de simplement rincer la plaie et de la protéger avec un pansement. Ça nous a coupé l\'appétit !'),
(12, 'Mahmoud', 'Sanfekha', '2017-10-09', 'Mon petit frère fait de l\'épilepsie, et ça m\'est arrivé quelque fois de le \"gérer\" pendant une crise. Il faut le laisser au sol et éloigner tout objet dangereux pour ne pas qu\'il se fasse mal, et attendre que ça passe. Ça fait peur, mais heureusement on peut vivre avec, il est très courageux face à cette maladie.'),
(13, 'Marcel', 'Ivry', '2018-12-11', 'À un concert de jazz, l\'un des musiciens est tombé d\'un seul coup. J\'étais au premier rang, et personne ne savait quoi faire, donc je suis allé sur la scène. Le musicien respirait donc je l\'ai mis en PLS et on a appelé les pompiers. À la fin, le public m\'a applaudi et j\'ai été invité dans la loge ! Comme quoi, ça vaut le coup de sauver des vies !'),
(14, 'Pauline', 'Wang', '2017-07-16', 'Une dame est tombée au supermarché en essayant d\'attraper des céréales sur le rayon le plus haut. Elle s\'est cognée la tête donc on lui a dit de ne pas bouger, et l\'un des employés a appelé les secours. Heureusement, elle s\'en est sortie sans commotion et avec une belle bosse sur le front !'),
(15, 'Théo-Alexis', 'Maure', '2018-06-12', 'Je suis développeur, et à un hackaton, un des participants a commencé à se sentir mal. On l\'a assis car il avait du mal à respirer, et il s\'est senti mieux car c\'était simplement une crise d\'angoisse. Il a terminé 2e du hackaton d\'ailleurs !');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
