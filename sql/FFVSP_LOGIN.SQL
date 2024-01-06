USE CAD_FFVSP;
CREATE TABLE FFVSP_USER_LOGIN(USR_ID INT ,EMAIL varchar(255),USER_NAME varchar(255) primary key not null,USER_PW VARCHAR(255),
MOBILE_NO VARCHAR(255),NEW_PW VARCHAR(255),OTP long,foreign key(USR_ID) references FFVSP_USER_REG(USR_ID));

DROP table FFVSP_USER_LOGIN;

ALTER TABLE FFVSP_USER_LOGIN DROP COLUMN EMAIL;

select * FROM FFVSP_USER_LOGIN;

insert into FFVSP_USER_LOGIN(USR_ID,EMAIL,USER_NAME,USER_PW,MOBILE_NO,NEW_PW,OTP)values
(1001,'aarifsultan558@gmail.com','MA2023M-C01E4F0','Password@123','9025171297',NULL,NULL),
(1002,'abbu69528@gmail.com','TI2023M-C01E59F','Password@124','9042116396',NULL,NULL),
(1003,'ahamedhussain414@gmail.com','TI2023M-C01E83A','Password@125','9659021407',NULL,NULL),
(1004,'selvaalex352@gmail.com','PU2023M-C01E6A4','Password@126','9360415014',NULL,NULL),
(1005,'anand.rn96@gmail.com','TI2023M-C01E71D','Password@127','8489903993',NULL,NULL),
(1006,'anjukapugaz02@gmail.com','TI2023F-C01E717','Password@128','6379944693',NULL,NULL),
(1007,'aravind2k17@gmail.com','TI2023M-C01EADE','Password@129','8778624466',NULL,NULL),
(1008,'ahamedbasheer4178@gmail.com','VI2023M-C01E69B','Password@130','9514690405',NULL,NULL),
(1009,'chandrancad01@gmail.com','KA2023M-C01EA67','Password@131','9361313775',NULL,NULL),
(1010,'danielrajadr29101999@gmail.com','TH2023M-C01E7F5','Password@132','9092838116',NULL,NULL),
(1011,'deenad560@gmail.com','TI2023M-C01E574','Password@133','9629724889',NULL,NULL),
(1012,'Domenigvasanthan@gmail.com','TI2023M-C01E4DC','Password@134','6379301181',NULL,NULL),
(1013,'gopalsuthakar@gmail.com','KA2023M-C01EA68','Password@135','9361448297',NULL,NULL),
(1014,'harshchrist86@gmail.com','TI2023M-C01EAF1','Password@136','9025664587',NULL,NULL),
(1015,'jayapravind@gmail.com','TI2023M-C01EA6D','Password@137','7094937902',NULL,NULL),
(1016,'kiruthiga338@gmail.com','TI2023F-C01E4E0','Password@138','7339220870',NULL,NULL),
(1017,'manimohanabtechit@gmail.com','TI2023F-C01E4EF','Password@139','9994987424',NULL,NULL),
(1018,'nancyarul99@gmail.com','PU2023F-C01E84A','Password@140','8428267221',NULL,NULL),
(1019,'m.natrayan18@gmail.com','TI2023M-C01E78F','Password@141','8825684098',NULL,NULL),
(1020,'pavi29013@gmail.com','TI2023F-C01E4F5','Password@142','9025862493',NULL,NULL),
(1021,'Prabaharanmurugesan5@gmail.com','TI2023M-C01E4EE','Password@143','9043792705',NULL,NULL),
(1022,'ramkisridhar2001@gmail.com','TI2023M-C01E5CF','Password@144','6383693933',NULL,NULL),
(1023,'ssahithafridi@gmail.com','TI2023M-C01E4ED','Password@145','9042314497',NULL,NULL),
(1024,'sakthivels05062@gmsil.com','PE2023M-C01E4F3','Password@146','9514605031',NULL,NULL),
(1025,'sanjayram1424@gmail.com','TI2023M-C01E4F6','Password@147','7708407173',NULL,NULL),
(1026,'rmesanthoshkumar@gmail.com','TI2023M-C01E84E','Password@148','9344560546',NULL,NULL),
(1027,'abinayakumar512@gmail.com','TI2023F-C01EACF','Password@149','8124568273',NULL,NULL),
(1028,'siranjeevissa@gmail.com','PE2023M-C01F0DC','Password@150','6383685553',NULL,NULL),
(1029,'sarans6784@gmail.com','CU2023M-C01F0DE','Password@151','6380026784',NULL,NULL),
(1030,'jemimahtrichy@gmail.com','TI2023F-C01E85C','Password@152','9489189043',NULL,NULL);

---------------------------------------------------------------------------------------------------------------
select * FROM FFVSP_USER_REG;


create table FFVSP_USER_REG(SNO INT ,USR_ID INT primary key not null,USER_FIRST_NAME varchar(255),
USER_LAST_NAME varchar(255),EMAIL varchar(255),CREATED_ON varchar(255),MODIFIED_ON varchar(255),
CREATED_BY varchar(255),MODIFIED_BY varchar(255));
 
 DELIMITER $$ 
 DROP PROCEDURE IF EXISTS SSMART;$$
 CREATE PROCEDURE SSMART(IN SNOPARAM INT,in
   USRIDPARAM  INT ,IN 
   USRFIRSTNAMEPARAM   varchar(255) ,IN 
   USRLASTNAMEPARAM   varchar(255) ,IN 
   EMAILPARAM   varchar(255) ,IN 
   CAREATEONPARAM   varchar(255)  ,IN 
   MODIFIEDONPARAM   varchar(255) ,IN 
   CAREATEBYPARAM   varchar(255) ,IN 
   MODIFIEDBYPARAM   varchar(255)    
   
)
BEGIN
 
insert into FFVSP_USER_REG (SNO,USR_ID,CUS_FIRST_NAME,CUS_LAST_NAME,EMAIL,CREATED_ON,MODIFIED_ON,CREATED_BY,MODIFIED_BY)VALUES
(SNOPARAM,USRIDPARAM, USRFIRSTNAMEPARAM,USRLASTNAMEPARAM, EMAILPARAM,CAREATEONPARAM, MODIFIEDONPARAM,CAREATEBYPARAM,MODIFIEDBYPARAM);
 END $$
DELIMITER ; 

CALL SSMART(42,1091,'SHIH','A','HIOAHH@gmail.com',NULL,NULL,NULL,NULL);
-------------------------------------------------------------------------------------------------------

 delimiter $$
 drop procedure if exists login;$$
 create procedure login(
 in usridp int,
 in emailp varchar(255),
 in usernamep varchar(255),
 in userpwp varchar(255),
 in mobileno li
 
 )