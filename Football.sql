-- First is the creation of the schema or database that is specifically for the chosen domain i.e., Football Information System.
CREATE SCHEMA `football_information_system`;

-- Then is the creation of tables that constitute the database.
-- Creation of the first table, league. This contains the different league names held all over the Europe.
CREATE TABLE `football_information_system`.`league` (
  `League_ID` INT NOT NULL,
  `LName` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`League_ID`));

-- Insertions in or populating the league table.
INSERT INTO `football_information_system`.`league` (`League_ID`, `LName`, `Country`) VALUES ('1', 'Premier_League', 'England');
INSERT INTO `football_information_system`.`league` (`League_ID`, `LName`, `Country`) VALUES ('2', 'Ligue_1', 'France');
INSERT INTO `football_information_system`.`league` (`League_ID`, `LName`, `Country`) VALUES ('3', 'Bundesliga', 'Germany');
INSERT INTO `football_information_system`.`league` (`League_ID`, `LName`, `Country`) VALUES ('4', 'Seria_A', 'Italy');
INSERT INTO `football_information_system`.`league` (`League_ID`, `LName`, `Country`) VALUES ('5', 'Laliga', 'Spain');

-- For showing all the data/entities in the table/entity type, league.
SELECT * FROM football_information_system.league;





/* Creation of the second table, manager. This contains the different manager names of all those teams that participate in the leagues mentioned above. Managers are like coaches to a sports team.*/
CREATE TABLE `football_information_system`.`manager` (
  `Manager_ID` INT NOT NULL,
  `MName` VARCHAR(45) NOT NULL,
  `MNationality` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Manager_ID`));

-- Insertions in or populating the manager table.
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('10', 'Arne_Slot', 'Netherlands');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('11', 'Pep_Guardiola', 'Spain');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('12', 'Enzo_Maresca', 'Italy');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('13', 'Luis_Enrique', 'Spain');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('14', 'Franck_Haise', 'France');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('15', 'Roberto_De_Zerbi', 'Italy');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('16', 'Vincent_Kompany', 'Belgium');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('17', 'Nuri_Sahin', 'Germany');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('18', 'Marco_Rose', 'Germany');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('19', 'Thiago_Motta', 'Italy');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('20', 'Simone_Inzaghi', 'Italy');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('21', 'Paulo_Fonseca', 'Portugal');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('22', 'Carlo_Ancelloti', 'Italy');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('23', 'Hansi_Fick', 'Germany');
INSERT INTO `football_information_system`.`manager` (`Manager_ID`, `MName`, `MNationality`) VALUES ('24', 'Marcelino_Garcia_Toral', 'Spain');

-- For showing all the data/entities in the table,entity type, manager.
SELECT * FROM football_information_system.manager;

/* Creation of the third table, team. This table is currently created without taking Player_ID(PK of player table) as a foreign key from the player table (which is created further). This is so as team table needs it but player table is not yet created leading to errors. Also, as mentioned above, each team needs a manager, thus the Manager_ID (PK of manager table) has been referenced as team’s one of the foreign keys.*/
CREATE TABLE `football_information_system`.`team` (
  `Team_ID` INT NOT NULL,
  `TName` VARCHAR(45) NOT NULL,
  `Manager_ID_FK` INT NOT NULL,
  PRIMARY KEY (`Team_ID`),
  INDEX `Manager_ID_FK_idx` (`Manager_ID_FK` ASC) VISIBLE,
  CONSTRAINT `Manager_ID_FK`
    FOREIGN KEY (`Manager_ID_FK`)
    REFERENCES `football_information_system`.`manager` (`Manager_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- Now, inserting into or populating this team table.
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('100', 'Liverpool', '10');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('101', 'Manchester_City', '11');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('102', 'Chelsea', '12');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('103', 'PSG', '13');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('104', 'Nice', '14');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('105', 'Marseilli', '15');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('106', 'Bayern_Munich', '16');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('107', 'Dortmund', '17');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('108', 'Leipzig', '18');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('109', 'Juventus', '19');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('110', 'Inter_Milan', '20');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('111', 'AC_Milan', '21');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('112', 'Real_Madrid', '22');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('113', 'FC_Barcelona', '23');
INSERT INTO `football_information_system`.`team` (`Team_ID`, `TName`, `Manager_ID_FK`) VALUES ('114', 'Villarreal_CF', '24');

-- To show all the data or entities in team table/entity type.
SELECT * FROM football_information_system.team;


/* Creation of the fourth table, player. This is also created currently without the Player_ID_FK_Captain column which will be the foreign key column for this table referring the Player_ID(PK) of the same table as FK due to the use of the recursive relationship, Captaincy. This relationship states that a player can be a player of the team as well as the captain of the team but a player being a captain hold the leadership for team size number of players. Also, players will play for a team and thus, the use of Team_ID_FK column as a FK referring the PK, Team_ID, of the team table to tell which team the players belong to.*/

CREATE TABLE `football_information_system`.`player` (
  `Player_ID` INT NOT NULL,
  `PName` VARCHAR(45) NOT NULL,
  `Position` VARCHAR(45) NOT NULL,
  `Age` VARCHAR(45) NOT NULL,
  `PNationality` VARCHAR(45) NOT NULL,
  `Team_ID_FK` INT NOT NULL,
  PRIMARY KEY (`Player_ID`),
  INDEX `Team_ID_FK_idx` (`Team_ID_FK` ASC) VISIBLE,
  CONSTRAINT `Team_ID_FK`
    FOREIGN KEY (`Team_ID_FK`)
    REFERENCES `football_information_system`.`team` (`Team_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- Insertions into player table.
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1000', 'Virgil_Van_Dijk', 'CB', '33', 'Netherlands', '100');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1001', 'Mohamed_Salah', 'Forward', '32', 'Egypt', '100');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1002', 'Alexis_Max_Allister', 'Midfielder', '25', 'Argentina', '100');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1003', 'Kyle_Walker', 'Defender', '34', 'England', '101');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1004', 'Jack_Grealish', 'Midfielder', '29', 'England', '101');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1005', 'Erling_Haaland', 'Forward', '24', 'Norway', '101');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1006', 'Reece_James', 'Defender/wing_back', '24', 'England', '102');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1007', 'Pedro_Nato', 'Winger', '24', 'Portugal', '102');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1008', 'Jadon_Sancho', 'Forward', '24', 'England', '102');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1009', 'Marquinhos', 'Defender', '30', 'Brazil', '103');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1010', 'Fabian_Ruiz', 'Midfielder', '28', 'Spain', '103');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1011', 'Ousmene_Dembele', 'Forward', '27', 'France', '103');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1012', 'Bonfim_Dante', 'Defender', '41', 'Brazil', '104');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1013', 'Pablo_Rosario', 'Midfielder', '27', 'Netherlands', '104');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1014', 'Jeremie_Boga', 'Forward', '27', 'France', '104');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1015', 'Leonardo_Balerdi', 'CB', '25', 'Argentina=Italy', '105');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1016', 'Quentin_Merlin', 'LB', '22', 'France', '105');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1017', 'Luis_Henrique', 'LW', '22', 'Brazil', '105');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1018', 'Manuel_Neuer', 'GK', '38', 'Germany', '106');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1019', 'Joshua_Kimmich', 'Midfielder', '29', 'Germany', '106');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1020', 'Thomas_Muller', 'Forward', '35', 'Germany', '106');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1021', 'Emre_Can', 'Midfielder', '30', 'German-Turkish', '107');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1022', 'Alexander_Meyer', 'GK', '33', 'Germany', '107');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1023', 'Filippo_Mane', 'Defender', '19', 'Italian-Senegalese', '107');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1024', 'Willi_Orban', 'Defender', '32', 'Hungary', '108');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1025', 'Xavi_Simons', 'Midfielder', '21', 'Netherlands', '108');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1026', 'Peter_Gulacsi', 'GK', '34', 'Hungary', '108');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1027', 'Luiz_Da_Silva_Danilo', 'Defender', '33', 'Brazil', '109');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1028', 'Douglas_Luiz', 'Midfielder', '26', 'Brazil', '109');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1029', 'Timothy_Weah', 'Forward', '24', 'America', '109');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1030', 'Lautaro_Martinez', 'Striker', '27', 'Argentina', '110');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1031', 'Francesco_Acerbi', 'Defender', '36', 'Italy', '110');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1032', 'Yann_Sommer', 'GK', '35', 'Switzerland', '110');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1033', 'Davide_Calabria', 'RB', '27', 'Italy', '111');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1034', 'Alvaro_Morata', 'Forward', '32', 'Soain', '111');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1035', 'Theo_Hernandez', 'Defender', '27', 'France', '111');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1036', 'Luka_Modric', 'Midfielder', '39', 'Croatia', '112');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1037', 'David_Alaba', 'Defender', '32', 'Austria', '112');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1038', 'Vinicius_Junior', 'Forward', '24', 'Brazil', '112');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1039', 'Ter_Stegen', 'GK', '32', 'Germany', '113');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1040', 'Jules_Kounde', 'Defender', '26', 'France', '113');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1041', 'Frenkie_De_Jong', 'Midfielder', '27', 'Netherlands', '113');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1042', 'Raul_Albiol', 'Defender', '39', 'Spain', '114');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1043', 'Dani_Parejo', 'Midfielder', '35', 'Spain', '114');
INSERT INTO `football_information_system`.`player` (`Player_ID`, `PName`, `Position`, `Age`, `PNationality`, `Team_ID_FK`) VALUES ('1044', 'Alejandro_Baena_Rodriguez', 'Midfielder', '23', 'Spain', '114');

-- SHOWING all the entities of the entity type, player. 
SELECT * FROM football_information_system.player;

-- Now, as the player table is complete, it is the right moment to complete the team table as well by referring the player table.
/* So, here, the team table is being altered/changed to add the Player_ID_FK_C column which will take values of the FK for the player, who is the captain of that team, being referred from the player table through its PK(Player_ID) for all the specific teams. However, this had to be done after player table creation as team refers PK of player table, otherwise it would throw errors due to non-existence of the player table, per say or precisely, the Player_ID, PK.*/
ALTER TABLE `football_information_system`.`team` 
ADD COLUMN `Player_ID_FK_C` INT NOT NULL AFTER `Manager_ID_FK`;

-- Showing all the entities of team to have a check for the addition of that FK column for captaincy as well as a view overall for team.
SELECT * FROM football_information_system.team;



/* As the newly added FK column is empty rather containing ‘0’ as its value or irrelevant value, we need to fill it up to update the table for that specific column with the necessary and desired values for its type.*/
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1000' WHERE (`Team_ID` = '100');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1003' WHERE (`Team_ID` = '101');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1006' WHERE (`Team_ID` = '102');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1009' WHERE (`Team_ID` = '103');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1012' WHERE (`Team_ID` = '104');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1015' WHERE (`Team_ID` = '105');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1018' WHERE (`Team_ID` = '106');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1021' WHERE (`Team_ID` = '107');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1024' WHERE (`Team_ID` = '108');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1027' WHERE (`Team_ID` = '109');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1030' WHERE (`Team_ID` = '110');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1033' WHERE (`Team_ID` = '111');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1036' WHERE (`Team_ID` = '112');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1039' WHERE (`Team_ID` = '113');
UPDATE `football_information_system`.`team` SET `Player_ID_FK_C` = '1042' WHERE (`Team_ID` = '114');

-- Now, the team table is complete.
/* However, need to complete the player table by adding a FK column for captain, Player_ID_FK_Captain, which refers the Player_ID from the same player table for who is the Captain of all the players, of all specific teams, in this table. This is due to the recursive relationship, Captaincy. This column however, contains ‘0’ as its value. Thus, can’t refer the PK of player table as this will throw errors saying that FK can’t refer as no match between the FK and PK values, or the values are zero or something like that.*/
ALTER TABLE `football_information_system`.`player` 
ADD COLUMN `Player_ID_FK_Captain` INT NOT NULL AFTER `Team_ID_FK`,
ADD INDEX `Player_ID_FK_Captain_idx` (`Player_ID_FK_Captain` ASC) VISIBLE;



/* Also, this update, in that Player FK column created above, is needed before making or allowing the Player_ID_FK_Captain column the FK of or to refer the player table which is through self-referring due to recursive relationship. This is done to match the PK and FK values & types or to not get ‘0’ value errors.*/
-- Updating this new column added in player
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1000' WHERE (`Player_ID` = '1000');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1000' WHERE (`Player_ID` = '1001');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1000' WHERE (`Player_ID` = '1002');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1003' WHERE (`Player_ID` = '1003');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1003' WHERE (`Player_ID` = '1004');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1003' WHERE (`Player_ID` = '1005');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1006' WHERE (`Player_ID` = '1006');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1006' WHERE (`Player_ID` = '1007');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1006' WHERE (`Player_ID` = '1008');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1009' WHERE (`Player_ID` = '1009');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1009' WHERE (`Player_ID` = '1010');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1009' WHERE (`Player_ID` = '1011');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1012' WHERE (`Player_ID` = '1012');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1012' WHERE (`Player_ID` = '1013');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1012' WHERE (`Player_ID` = '1014');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1015' WHERE (`Player_ID` = '1015');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1015' WHERE (`Player_ID` = '1016');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1015' WHERE (`Player_ID` = '1017');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1018' WHERE (`Player_ID` = '1018');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1018' WHERE (`Player_ID` = '1019');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1018' WHERE (`Player_ID` = '1020');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1021' WHERE (`Player_ID` = '1021');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1021' WHERE (`Player_ID` = '1022');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1021' WHERE (`Player_ID` = '1023');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1024' WHERE (`Player_ID` = '1024');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1024' WHERE (`Player_ID` = '1025');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1024' WHERE (`Player_ID` = '1026');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1027' WHERE (`Player_ID` = '1027');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1027' WHERE (`Player_ID` = '1028');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1027' WHERE (`Player_ID` = '1029');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1030' WHERE (`Player_ID` = '1030');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1030' WHERE (`Player_ID` = '1031');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1030' WHERE (`Player_ID` = '1032');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1033' WHERE (`Player_ID` = '1033');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1033' WHERE (`Player_ID` = '1034');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1033' WHERE (`Player_ID` = '1035');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1036' WHERE (`Player_ID` = '1036');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1036' WHERE (`Player_ID` = '1037');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1036' WHERE (`Player_ID` = '1038');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1039' WHERE (`Player_ID` = '1039');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1039' WHERE (`Player_ID` = '1040');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1039' WHERE (`Player_ID` = '1041');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1042' WHERE (`Player_ID` = '1042');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1042' WHERE (`Player_ID` = '1043');
UPDATE `football_information_system`.`player` SET `Player_ID_FK_Captain` = '1042' WHERE (`Player_ID` = '1044');

-- Now, allow the Player_ID_FK_Captain column to refer the Player_ID(PK) column as the FK of the same table for players’ captain.
ALTER TABLE `football_information_system`.`player` 
ADD CONSTRAINT `Player_ID_FK_Captain`
  FOREIGN KEY (`Player_ID_FK_Captain`)
  REFERENCES `football_information_system`.`player` (`Player_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- Showing the complete player table
SELECT * FROM football_information_system.player;

/* Creation of the fifth table, Player_Stats. This table contains the player’s overall stats. Since it is of a specific player for all the players, a Player_ID is needed as a FK in this table to be used to refer to those players. Also, this is a weak entity type as statistics of a player depend on who the player is, which is referred from the player table using the FK as discussed. Father_Name is the partial key of this weak entity type.*/
CREATE TABLE `football_information_system`.`player_stats` (
  `Player_ID_FK` INT NOT NULL,
  `Father_Name` VARCHAR(45) NOT NULL,
  `Goals` INT NOT NULL,
  `Assists` INT NOT NULL,
  `Red_Cards` INT NOT NULL,
  PRIMARY KEY (`Player_ID_FK`, `Father_Name`),
  CONSTRAINT `Player_ID_FK`
    FOREIGN KEY (`Player_ID_FK`)
    REFERENCES `football_information_system`.`player` (`Player_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- Insertion into player_stats table.
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1000', 'Ron_Van_Dijk', '23', '8', '2');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1001', 'Salah_Ghaly', '165', '75', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1002', 'Carlos_Mac_Allister', '21', '10', '1');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1003', 'Michael_Walker', '8', '36', '1');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1004', 'Kevin_Grealish', '26', '28', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1005', 'Alf-Inge_Haaland', '75', '13', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1006', 'Nigel', '7', '16', '3');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1007', 'Pedro_Nate_Sr.', '12', '21', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1008', 'Sean_Sancho', '9', '9', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1009', 'Marcos_Barros_Correa', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1010', 'N/A', '1', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1011', 'Ousmane_Snr', '5', '6', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1012', 'Joao_Santos', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1013', 'N/A', '1', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1014', 'N/A', '0', '1', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1015', 'Flavio_Balerdi', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1016', 'N/A', '0', '1', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1017', 'N/A', '4', '4', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1018', 'Peter_Neuer', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1019', 'Berthold_Kimmich', '0', '2', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1020', 'Gerhard_Muller', '1', '1', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1021', 'N/A', '2', '0', '1');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1022', 'N/A', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1023', 'N/A', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1024', 'N/A', '2', '0', '1');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1025', 'Regillio_Simons', '2', '1', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1026', 'N/A', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1027', 'N/A', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1028', 'Edmilson_Soares', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1029', 'George_Weah', '4', '2', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1030', 'Mario_Martinez', '5', '3', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1031', 'Roberto', '0', '1', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1032', 'Daniel_Sommer', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1033', 'Battista_Calabria', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1034', 'Alfonso_Morata', '2', '1', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1035', 'Jean-Francois_Hernandez', '2', '2', '1');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1036', 'Stipe_Modric', '0', '2', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1037', 'George_Alaba', '3', '7', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1038', 'Jose_Paixao_de_Oliveira', '8', '6', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1039', 'Eric_Kaus', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1040', 'N/A', '1', '1', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1041', 'John_de_Jong', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1042', 'Miguel_albiol_Balaguer', '0', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1043', 'Lorenzo_Parejo', '2', '0', '0');
INSERT INTO `football_information_system`.`player_stats` (`Player_ID_FK`, `Father_Name`, `Goals`, `Assists`, `Red_Cards`) VALUES ('1044', 'N/A', '1', '5', '0');

-- Showing all the entities of the entity type, player_stats.
SELECT * FROM football_information_system.player_stats;

/* Creation of the last & sixth table, for an M: N relationship type, participates_in. This table basically tells about which team participates in which league. As what team participates in what league is being told here, league and team tables must be referred for the IDs of teams and leagues to show what maps to what. Thus, making foreign keys for the same and adding that constraint.*/
CREATE TABLE `football_information_system`.`participates_in` (
  `League_ID_FK` INT NOT NULL,
  `Team_ID_FK_2` INT NOT NULL,
  PRIMARY KEY (`League_ID_FK`, `Team_ID_FK_2`),
  INDEX `Team_ID_FK_2_idx` (`Team_ID_FK_2` ASC) VISIBLE,
  CONSTRAINT `League_ID_FK`
    FOREIGN KEY (`League_ID_FK`)
    REFERENCES `football_information_system`.`league` (`League_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Team_ID_FK_2`
    FOREIGN KEY (`Team_ID_FK_2`)
    REFERENCES `football_information_system`.`team` (`Team_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- Insertion in the participates_in table.
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('1', '100');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('1', '101');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('1', '102');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('2', '103');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('2', '104');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('2', '105');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('3', '106');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('3', '107');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('3', '108');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('4', '109');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('4', '110');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('4', '111');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('5', '112');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('5', '113');
INSERT INTO `football_information_system`.`participates_in` (`League_ID_FK`, `Team_ID_FK_2`) VALUES ('5', '114');

-- Showing all the data of the participates_in table/entity type.
SELECT * FROM football_information_system.participates_in;

/* SQL Query for querying an entity type for all those entities which have a specific attribute. This specific attribute value is taken by explicitly equating or telling it to the attribute using WHERE clause.*/
SELECT * from football_information_system.player WHERE player.Position = 'Defender';

-- SQL query for querying player table (N side) using team table(1 side) through the relationship Plays_for which can be understood from the foreign key, Team_ID_FK used.
/*Need to extract some entities from N-side of Plays_For relationship such that they are connected or related to a single entity of 1-side entity type. Thus, extract players from player for a single team in team. For this, need to use Team_ID to get the team for which want to get the players, then use it as FK in player table to extract all those players where Team_ID is the same as the wanting team's. This is what is done in the query that from team, extract the wanted Team_ID then use it as FK in player to query all those players that have that particular Team_ID. */
SELECT * from football_information_system.player WHERE TEAM_ID_FK IN ( SELECT Team_ID from football_information_system.team WHERE Team_ID = '100');