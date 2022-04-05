DROP TABLE Armes;
DROP TABLE Hero;
DROP TABLE Competences;

CREATE TABLE Armes (

`ID` tinyint(1) NOT NULL,
`HerosID` tinyint(1) NOT NULL,
`Nom` varchar(50) NOT NULL,
`Type` varchar(20) NOT NULL,
`Degat` tinyint(2) NOT NULL
);
CREATE TABLE Heros (

`ID` tinyint(1) NOT NULL,
`Nom` varchar(50) NOT NULL,
`PV` tinyint(2) NOT NULL,
`Bonus` tinyint(2) NOT NULL,
`Defense` tinyint(2) NOT NULL,
`ArmeEnMain` tinyint(2) DEFAULT NULL,
`Statut` varchar(100) NOT NULL,
`Immunite` varchar(20) NOT NULL
);
CREATE TABLE Competences (

`ID` tinyint(1) NOT NULL,
`Type` ENUM('Statut', 'PV', 'Defense',
'Bonus', 'ArmeEnMain', 'Immunite'),
`Effet` varchar(50)
);

INSERT INTO Heros VALUES ("01","Comar","40","2","15","0","joyeux","dégâts en mousse");
INSERT INTO Heros VALUES ("02","Kirderf","35","14","5","0","combatif","aucuns dégâts");
INSERT INTO Heros VALUES ("03","Liujen","45","14","8","0","Flegme","dégâts déstabilisant");

INSERT INTO Armes VALUES ("01",0, "batte", "mousse", 0);
INSERT INTO Armes VALUES ("02",0,"Vanne de Liujen","déstabilisante",10);
INSERT INTO Armes VALUES ("03",0,"Microsoft","effrayant",20);
INSERT INTO Armes VALUES ("04",0,"feuille","tranchant",5);
INSERT INTO Armes VALUES ("05",0,"caillou","contondant",5);
INSERT INTO Armes VALUES ("06",0,"ciseau","perçant",5);

INSERT INTO Competences (ID, Type, Effet) VALUES (1, 'Bonus', 'Couuyyèèère');
INSERT INTO Competences (ID, Type, Effet) VALUES (2, 'Bonus', 'la trot magique');
INSERT INTO Competences (ID, Type, Effet) VALUES (3, 'Bonus', 'feutoutflamme');

ALTER TABLE
    Heros ADD CONSTRAINT PK_Armes_ID PRIMARY KEY Armes(ID);
ALTER TABLE
    Armes ADD FOREIGN KEY(HerosID) REFERENCES Heros(ID);

SELECT * FROM Armes;
SELECT * FROM Heros;
SELECT * FROM Competences;