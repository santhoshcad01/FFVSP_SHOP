USE CAD_FFVSP;
CREATE TABLE FFVSP_ORDER(USR_ID INT NOT NULL,ORDER_ID VARCHAR(255) primary key not null,
PRODUCT_NAME VARCHAR(255),PRODUCT_MRP varchar(255),
PACKAGES VARCHAR(255),PRODUCT_SIZE VARCHAR(255),PRODUCT_PRICE VARCHAR(255),
ORDER_BY VARCHAR(255),MENU varchar(255),COMBO_PPACK VARCHAR(255),
foreign key(USR_ID) references FFVSP_USER_REG(USR_ID));

alter TABLE FFVSP_ORDER rename column COMBO_PPACK TO COMBO_PACK;

DROP table FFVSP_ORDER;

ALTER TABLE FFVSP_ORDER RENAME column COMBO_PPACK TO COMBO_PACK;
insert INTO FFVSP_ORDER(USR_ID,ORDER_ID,PRODUCT_NAME,PRODUCT_MRP,PACKAGES,PRODUCT_SIZE,PRODUCT_PRICE,
ORDER_BY,MENU,COMBO_PACK)VALUES
(1002,314775633006,'Capsicum - Green','₹28.48','1KG WITH 100G FREE','450g','₹121.13',NULL,'Capsicum - Green','bb Combo, Combo 2 Items'),
(1003,431789122706,'Cauliflower','₹28.49','1KG WITH 100G FREE','450g','₹190',NULL,'Cauliflower','bb Combo, Combo 2 Items'),
(1004,434203194172,'Coriander Leaves','₹30.50','1KG WITH 100G FREE','450g','₹191',NULL,'Coriander Leaves','bb Combo, Combo 2 Items'),
(1005,706402283883,'Lemon','₹30.51','1KG WITH 100G FREE','450g','₹192',NULL,'Lemon','bb Combo, Combo 2 Items'),
(1006,890637201536,'Ladies Fingers','₹30.52','1KG WITH 100G FREE','450g','₹193',NULL,'Ladies Fingers','bb Combo, Combo 2 Items'),
(1007,356024036865,'Onion','₹30.53','1KG WITH 100G FREE','450g','₹194',NULL,'Onion','bb Combo, Combo 2 Items'),
(1008,669403433315,'Tomato - Hybrid','₹30.54','1KG WITH 100G FREE','450g','₹195',NULL,'Tomato - Hybrid','bb Combo, Combo 2 Items'),
(1009,848926664868,'Potato','₹30.55','1KG WITH 100G FREE','450g','₹196',NULL,'Potato','bb Combo, Combo 2 Items'),
(1010,811614038579,'Carrot','₹30.56','1KG WITH 100G FREE','450g','₹197',NULL,'Carrot','bb Combo, Combo 2 Items'),
(1011,490990003902,'Cucumber','₹30.57','1KG WITH 100G FREE','500G','₹198',NULL,'Cucumber','bb Combo, Combo 2 Items'),
(1012,675108656108,'Beans','₹32','500G WITH 50G FREE','500G','₹121.12',NULL,'Beans','bb Combo, Combo 2 Items'),
(1013,784687878067,'Cauliflower','₹33','500G WITH 50G FREE','500G','₹42.34',NULL,'Cauliflower','bb Combo, Combo 2 Items'),
(1014,249361285552,'Bathua Saag','₹34','500G WITH 50G FREE','500G','₹42.35',NULL,'Bathua Saag','bb Combo, Combo 2 Items'),
(1015,903806912023,'Beetroot ','₹35','500G WITH 50G FREE','500G','₹42.36',NULL,'Beetroot ','bb Combo, Combo 2 Items'),
(1016,738299831875,'Palak - Cleaned, without roots','₹36','500G WITH 50G FREE','500G','₹42.37',NULL,'Palak - Cleaned, without roots','bb Combo, Combo 2 Items'),
(1017,314363969010,' Broccoli','₹37','500G WITH 50G FREE','500G','₹42.38',NULL,' Broccoli','bb Combo, Combo 2 Items'),
(1018,297160682063,'Chilli - Green','₹38','500G WITH 50G FREE','500G','₹42.39',NULL,'Chilli - Green','bb Combo, Combo 2 Items'),
(1019,884365866384,'Mushrooms','₹28.65','500G WITH 50G FREE','500G','₹42.40',NULL,'Mushrooms','bb Combo, Combo 2 Items'),
(1020,749058188884,'Curry Leaves','₹28.66','500G WITH 50G FREE','500G','₹42.41',NULL,'Curry Leaves','bb Combo, Combo 2 Items'),
(1021,273842727795,'Ridge Gourd','₹29.98','500G WITH 50G FREE','1KG','₹251.12',NULL,'Ridge Gourd','bb Combo, Combo 2 Items'),
(1022,961395774841,'Sweet Corn','₹29.99','500G WITH 50G FREE','1KG','₹251.13',NULL,'Sweet Corn','bb Combo, Combo 2 Items'),
(1023,288519980016,'Amla','₹29.100','500G WITH 50G FREE','1KG','₹251.14',NULL,'Amla','bb Combo - Banganpalli, 3 kg Combo'),
(1024,386371436310,'Radish','₹29.101','500G WITH 50G FREE','1KG','₹251.15',NULL,'Radish','bb Combo - Banganpalli, 3 kg Combo'),
(1025,361823170531,'Banana','₹29.102','500G WITH 50G FREE','1KG','₹251.16',NULL,'Banana','bb Combo - Banganpalli, 3 kg Combo'),
(1026,697889634953,'Papaya','₹29.103','500G WITH 50G FREE','1KG','₹251.17',NULL,'Papaya','bb Combo - Banganpalli, 3 kg Combo'),
(1027,930148258813,'Pomegranate','₹29.104','500G WITH 50G FREE','1KG','₹100.01',NULL,'Pomegranate','bb Combo - Banganpalli, 3 kg Combo'),
(1028,600069775239,'Guava','₹29.105','500G WITH 50G FREE','750G','₹100.02',NULL,'Guava','bb Combo - Banganpalli, 3 kg Combo'),
(1029,721620993446,'Apple','₹29.106','500G WITH 50G FREE','750G','₹100.03',NULL,'Apple','bb Combo - Banganpalli, 3 kg Combo'),
(1030,744612675323,'Muskmelon','₹28.76','500G WITH 50G FREE','750G','₹100.04',NULL,'Muskmelon','bb Combo - Banganpalli, 3 kg Combo');


select * FROM FFVSP_ORDER;

ALTER TABLE FFVSP_ORDER ADD PRICE varchar(255);