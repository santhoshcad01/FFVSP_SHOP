USE CAD_FFVSP;

create TABLE FFVSP_PROMOTION(USR_ID INT NOT NULL auto_increment,PRODUCT_NAME VARCHAR(255) primary key not null,
FASTIVAL_OFFER VARCHAR(255),LOCATION VARCHAR(255),
QUENTITY VARCHAR(255) NOT NULL,Expiry_date date,DELIVERY_DATE VARCHAR(255),
foreign key(USR_ID) references FFVSP_USER_REG(USR_ID));

DROP table FFVSP_PROMOTION;

select * FROM FFVSP_PROMOTION;

insert into FFVSP_PROMOTION(USR_ID,PRODUCT_NAME,FASTIVAL_OFFER,LOCATION,QUENTITY,Expiry_date,DELIVERY_DATE)
VALUES
(1003,'CaulifloweRr','27% OFF','Trichy ','3 kg','2024-06-03','5Hr to 7Hr'),
(1004,'Coriander Leaves','27% OFF','Pudukkottai ','4 kg','2024-06-04','5Hr to 7Hr'),
(1005,'Lemon','27% OFF','Trichy','5 kg','2024-06-05','5Hr to 7Hr'),
(1006,'Ladies Fingers','30% OFF','Trichy','1 kg','2024-06-06','5Hr to 7Hr'),
(1007,'Onion','30% OFF','Trichy ','450g','2024-06-07','5Hr to 7Hr'),
(1008,'Tomato - Hybrid','30% OFF','viruthunagar','450g','2024-06-08','5Hr to 7Hr'),
(1009,'Potato','30% OFF','KARUR','450g','2024-06-09','5Hr to 7Hr'),
(1010,'Carrot','30% OFF','Tanjore','1 kg','2024-06-10','5Hr to 7Hr'),
(1011,'Cucumber','30% OFF','Trichy','450g','2024-06-11','5Hr to 7Hr'),
(1012,'Beans','30% OFF','Trichy','500G','2024-06-12','5Hr to 7Hr'),
(1013,'Cauliflower','30% OFF','','500G','2024-06-13','5Hr to 7Hr'),
(1014,'Bathua Saag','30% OFF','Trichy','500G','2024-06-14','5Hr to 7Hr'),
(1015,'Beetroot ','30% OFF','Tiruchirapalli ','1KG','2024-06-15','5Hr to 7Hr'),
(1016,'Palak - Cleaned, without roots','30% OFF','Thuraiyur ','1KG','2024-06-16','5Hr to 7Hr'),
(1017,' Broccoli','30% OFF','Trichy','1KG','2024-06-17','5Hr to 7Hr'),
(1018,'Chilli - Green','30% OFF','pudukkottai ','1KG','2024-06-18','5Hr to 7Hr'),
(1019,'Mushrooms','30% OFF','trichy','1KG','2024-06-19','5Hr to 7Hr'),
(1020,'Curry Leaves','28% OFF','Trichy','1KG','2024-06-20','5Hr to 7Hr'),
(1021,'Ridge Gourd','28% OFF','trichy ','1KG','2024-06-21','5Hr to 7Hr'),
(1022,'Sweet Corn','28% OFF','Trichy','750G','2024-06-22','5Hr to 7Hr'),
(1023,'Amla','28% OFF','Tiruchirapalli ','750G','2024-06-23','5Hr to 7Hr'),
(1024,'Radish','28% OFF','perambalur','750G','2024-06-24','5Hr to 7Hr'),
(1025,'Banana','28% OFF','','750G','2024-06-25','5Hr to 7Hr'),
(1026,'Papaya','28% OFF','Trichy','750G','2024-06-26','5Hr to 7Hr'),
(1027,'Pomegranate','28% OFF','trichy ','750G','2024-06-27','5Hr to 7Hr'),
(1028,'Guava','28% OFF','Perambalur','4 kg','2024-06-28','5Hr to 7Hr'),
(1029,'Apple','28% OFF','Cuddalore ','5 kg','2024-06-29','5Hr to 7Hr'),
(1030,'Muskmelon','28% OFF','trichy','1 kg','2024-06-30','5Hr to 7Hr');
