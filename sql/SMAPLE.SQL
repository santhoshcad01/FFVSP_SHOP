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

-----------------------------------------------------------------------------------------

select * FROM FFVSP_USER_REG;
 
use CAD_FFVSP;

show tables;
select * from ffvsp_user_reg;

update ffvsp_user_reg set EMAIL= 'AARIDFAJOJA@gmail.com' where USR_ID=1001;

delimiter $$
drop procedure if exists updatedata;$$
create procedure updatedata( in mailp varchar(25),
in mailupdatep varchar(60),
in regCheckCNp varchar(60),
in regCheckCNValuep int,
in tablename varchar(62)
 )
 begin

set @updataStat=concat("update  ",tablename," set ",mailp,"=\'",mailupdatep,"\' where ",regCheckCNp,"=",regCheckCNValuep);
prepare stmt from  @updataStat;
execute stmt;

set @selectStat=concat("select * From ",tablename);
prepare stmt1 from  @selectStat;
execute stmt1;

 end $$
 delimiter ;
 call updatedata('EMAIL','aarifj938@gmail.com', 'USR_ID',1001,'ffvsp_user_reg');
 

 