CREATE TABLE `b_users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `CNIC` varchar(255) NOT NULL,
  `DOB` date DEFAULT NULL,
  `DebitCard` varchar(255) NOT NULL,
  `PIN` char(4) NOT NULL,
  `AccountNum` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Balance` int NOT NULL,
  `CardStatus` varchar(255) NOT NULL,
  `RegDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`AccountNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `checkbook` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `AccountNum` varchar(255) NOT NULL,
  `Leaves` int NOT NULL,
  `RequestDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Account_Num` (`AccountNum`),
  CONSTRAINT `AccountNum` FOREIGN KEY (`AccountNum`) REFERENCES `b_users` (`AccountNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `transactions` (
  `txId` int NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`txId`),
  KEY `sender` (`sender`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `b_users` (`AccountNum`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci