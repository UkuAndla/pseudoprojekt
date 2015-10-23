-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 13, 2015 kell 06:52 PL
-- Serveri versioon: 5.6.24
-- PHP versioon: 5.6.8

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Andmebaas: `blog`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(10) unsigned NOT NULL,
  `author_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
  (1, 'Start Bootstrap');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` varchar(120) NOT NULL,
  `post_text` longtext NOT NULL,
  `post_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_text`, `post_created`) VALUES
  (1, 1, 'Man must explore, and this is exploration at its greatest', 'Problems look mighty small from 150 miles up', 'Kunagi kogu oma ajaloo on mehed suutnud tõeliselt kujutleda maailma üks: ühe sfääri, maakera, millel omadusi maakera, ümmargune maa, kus kõik suunad lõpuks kohtuda, kus puudub keskus, sest iga punkt või neid pole, keskus - võrdne Maa, mis kõik mehed hõivata võrdsetena. Airman muld, kui vabad mehed teevad seda, mis on tõeliselt ringi: maakera praktikas, mitte teoorias.\r\n\r\nTeadus lõikab kaks võimalust, muidugi; Oma tooteid saab kasutada nii hea ja kurja vahel. Aga seal ei ole enam tagasiteed teadusest. Varajased hoiatused tehnoloogiliste ohtude tulla ka teaduses.\r\n\r\nMis oli kõige olulisem umbes Kuu reisi ei olnud, et mees jalg Moon, kuid mida nad määrata silma maa peal.\r\n\r\nÜks Hiina lugu räägib mõned mehed saadeti kahjustada noor tüdruk, kes nähes tema ilu, muutub tema kaitsjad, mitte tema rikkujaid. See, kuidas ma tundsin nähes Maa esmakordselt. Ma ei saa aidata, kuid armastan ja kalliks teda.\r\n\r\nNeile, kes on näinud Maa kosmosest, ja sadu ja võib-olla veel tuhandeid, kes on kogemus kindlasti muudab oma vaatenurgast. Asju, mida me jagame meie maailmas on palju väärtuslikum kui need, mis meid lahutavad.\r\n\r\nThe Final Frontier\r\nEi saa olla mõtlemata viimistlemisega "eesmärgiks tähed." Nii piltlikult ja sõna otseses mõttes, see on ülesanne hõivata põlvkonda. Ja ükskõik kui palju edu üks teeb, on alati põnevust algamas.\r\n\r\nEi saa olla mõtlemata viimistlemisega "eesmärgiks tähed." Nii piltlikult ja sõna otseses mõttes, see on ülesanne hõivata põlvkonda. Ja ükskõik kui palju edu üks teeb, on alati põnevust algamas.\r\n\r\nUnenäod eile on lootused täna ja tegelikkus homme. Teadus ei ole veel õppinud ettekuulutus. Prognoosime liiga palju järgmisel aastal ja veel liiga vähe järgmiseks kümneks.\r\nSpaceflights ei saa peatada. See ei ole töö mõni mees või isegi grupp mehi. See on ajalooline protsess, mis inimkond on teostada vastavalt loodusseadused inimese arengut.\r\n\r\nJõudes Stars\r\nKuna saime kaugemale ja kaugemale, seda [Maa] vähenenud suurus. Lõpuks see kahanes suurus marmor, kõige ilusam võite ette kujutada. See ilus, soe, elavatele objekti tundus nii habras, nii õrn, et kui sa puudutanud seda sõrmega oleks murenema ja lagunema. Nähes seda peab muutuma mees.\r\n\r\n \r\nSelleks, et minna kohtadesse ja teha asju, mida pole kunagi varem teinud - see on, mida elutuba on.\r\nSpace lõplik piir. Need on reise Starship Enterprise. Selle viie aasta ülesanne: uurida kummaline uusi maailmu, otsima uut elu ja uusi tsivilisatsioone, julgelt minna sinna, kus ükski mees pole varem läinud.\r\n\r\nNagu ma paistma siin imet teadmata Hadley, ma omamoodi aru, seal on põhitõde, et meie olemuse, Man tuleb uurida, ja see on uurimine suurim.\r\n\r\nKohatäitja teksti ruumi Aadress. Fotod NASA Commons.', '2015-09-26 12:57:51'),
  (2, 1, 'I believe every human has a finite number of heartbeats.', 'I don''t intend to waste any of mine.', '', '2015-09-26 12:58:16');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `authors`
--
ALTER TABLE `authors`
ADD PRIMARY KEY (`author_id`);

--
-- Indeksid tabelile `posts`
--
ALTER TABLE `posts`
ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `authors`
--
ALTER TABLE `authors`
MODIFY `author_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabelile `posts`
--
ALTER TABLE `posts`
MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;SET FOREIGN_KEY_CHECKS=1;
