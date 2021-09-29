DROP TABLE IF EXISTS `procedimento`;

CREATE TABLE `procedimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idade` int(11) DEFAULT NULL,
  `permitido` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `procedimento` VALUES (1,10,'NÃO','M',1234),
(2,20,'SIM','M',4567), (3,10,'NÃO','F',6789), 
(4,10,'SIM','M',6789),(5,20,'SIM','M',1234),(6,30,'SIM','F',4567) ;


DROP TABLE IF EXISTS `agenda`;

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idade` int(11) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `procedimento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6buysrd8283h95we85exnwvk9` (`procedimento_id`),
  CONSTRAINT `FK6buysrd8283h95we85exnwvk9` FOREIGN KEY (`procedimento_id`) REFERENCES `procedimento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `agenda` VALUES (1,13,'F',1),(2,44,'M',1),(3,44,'M',1);