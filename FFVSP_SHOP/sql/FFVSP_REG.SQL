create database CAD_FFVSP;
USE CAD_FFVSP;
create table FFVSP_USER_REG(SNO INT ,USR_ID INT primary key not null,USER_FIRST_NAME varchar(255),
USER_LAST_NAME varchar(255),EMAIL varchar(255),CREATED_ON varchar(255),MODIFIED_ON varchar(255),
CREATED_BY varchar(255),MODIFIED_BY varchar(255));

DROP table FFVSP_USER_REG;

select * FROM FFVSP_USER_REG;


ALTER TABLE FFVSP_USER_REG rename COLUMN USER_FIRST_NAME TO CUS_FIRST_NAME;
ALTER TABLE FFVSP_USER_REG rename COLUMN USER_LAST_NAME TO CUS_LAST_NAME;

truncate TABLE FFVSP_USER_REG;

ALTER TABLE FFVSP_USER_REG modify column SNO INT auto_increment;
INSERT INTO FFVSP_USER_REG(SNO,USR_ID,CUS_FIRST_NAME,CUS_LAST_NAME,EMAIL,CREATED_ON,
MODIFIED_ON,CREATED_BY,MODIFIED_BY)VALUES(1,1001,'Aarif','S','aarifsultan558@gmail.com',NULL,NULL,NULL,NULL),
(2,1002,'Abdulrahman','A','abbu69528@gmail.com',NULL,NULL,NULL,NULL),
(3,1003,'Ahamed','J','ahamedhussain414@gmail.com',NULL,NULL,NULL,NULL),
(4,1004,'ALEXANDAR','A','selvaalex352@gmail.com',NULL,NULL,NULL,NULL),
(5,1005,'Anand','R','anand.rn96@gmail.com',NULL,NULL,NULL,NULL),
(6,1006,'Anjuka','P','anjukapugaz02@gmail.com',NULL,NULL,NULL,NULL),
(7,1007,'Aravind.K','','aravind2k17@gmail.com',NULL,NULL,NULL,NULL),
(8,1008,'BasheerAhamed','M','ahamedbasheer4178@gmail.com',NULL,NULL,NULL,NULL),
(9,1009,'Chandran','P','chandrancad01@gmail.com',NULL,NULL,NULL,NULL),
(10,1010,'Danielraj','A','danielrajadr29101999@gmail.com',NULL,NULL,NULL,NULL),
(11,1011,'Dinesh','T','deenad560@gmail.com',NULL,NULL,NULL,NULL),
(12,1012,'DomenigVasanthan','A','Domenigvasanthan@gmail.com',NULL,NULL,NULL,NULL),
(13,1013,'Gopal','S','gopalsuthakar@gmail.com',NULL,NULL,NULL,NULL),
(14,1014,'HARSH','A','harshchrist86@gmail.com',NULL,NULL,NULL,NULL),
(15,1015,'Jayapravin','D','jayapravind@gmail.com',NULL,NULL,NULL,NULL),
(16,1016,'Kiruthiga','R','kiruthiga338@gmail.com',NULL,NULL,NULL,NULL),
(17,1017,'Manimohana','S','manimohanabtechit@gmail.com',NULL,NULL,NULL,NULL),
(18,1018,'Nancy','A','nancyarul99@gmail.com',NULL,NULL,NULL,NULL),
(19,1019,'Natrayan','M','m.natrayan18@gmail.com',NULL,NULL,NULL,NULL),
(20,1020,'Pavithra','K','pavi29013@gmail.com',NULL,NULL,NULL,NULL),
(21,1021,'prabhaharn.M','','Prabaharanmurugesan5@gmail.com',NULL,NULL,NULL,NULL),
(22,1022,'RAMKI','S','ramkisridhar2001@gmail.com',NULL,NULL,NULL,NULL),
(23,1023,'SahithAfridi','Sabibulla','ssahithafridi@gmail.com',NULL,NULL,NULL,NULL),
(24,1024,'sakthivel.','S','sakthivels05062@gmsil.com',NULL,NULL,NULL,NULL),
(25,1025,'Sanjay','Balakrishnan','sanjayram1424@gmail.com',NULL,NULL,NULL,NULL),
(26,1026,'SanthoshKumar','S','rmesanthoshkumar@gmail.com',NULL,NULL,NULL,NULL),
(27,1027,'Abinaya.J','','abinayakumar512@gmail.com',NULL,NULL,NULL,NULL),
(28,1028,'Siranjeevi','S','siranjeevissa@gmail.com',NULL,NULL,NULL,NULL),
(29,1029,'Saran','S','sarans6784@gmail.com',NULL,NULL,NULL,NULL),
(30,1030,'jemimah','j','jemimahtrichy@gmail.com',NULL,NULL,NULL,NULL);

