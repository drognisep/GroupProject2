--------------------------------------------------------
--  File created - Monday-September-12-2016   
--------------------------------------------------------
DROP USER orderdb cascade;
CREATE USER orderdb IDENTIFIED BY orderdb;
GRANT DBA TO orderdb;
--------------------------------------------------------
--  DDL for Sequence ORDER_NO
--------------------------------------------------------

   CREATE SEQUENCE  "ORDERDB"."ORDER_NO"  MINVALUE 100001 MAXVALUE 999999 INCREMENT BY 1 START WITH 100001 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "ORDERDB"."ORDERS" 
   (	"PROD_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"ORDER_DATE" DATE DEFAULT SYSDATE, 
	"QTY" NUMBER(2,0), 
	"ORDER_NO" NUMBER(6,0), 
	"PAID" VARCHAR2(3 BYTE) DEFAULT 'NO'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "ORDERDB"."PRODUCTS" 
   (	"PROD_NAME" VARCHAR2(30 BYTE), 
	"PROD_ID" VARCHAR2(6 BYTE), 
	"PRICE" NUMBER(5,2), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"STOCK" NUMBER(2,0), 
	"IMAGE" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "ORDERDB"."USERS" 
   (	"USER_ID" VARCHAR2(5 BYTE), 
	"USER_NAME" VARCHAR2(40 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"TELEPHONE" VARCHAR2(14 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ORDERDB.ORDERS
SET DEFINE OFF;
REM INSERTING into ORDERDB.PRODUCTS
SET DEFINE OFF;
Insert into ORDERDB.PRODUCTS (PROD_NAME,PROD_ID,PRICE,DESCRIPTION,STOCK,IMAGE) values ('Doom Video Game','14001',59.99,'Video Game, PC',60,'http://crack2games.com/wp-content/uploads/2016/03/Doom-4-crack.jpg');
Insert into ORDERDB.PRODUCTS (PROD_NAME,PROD_ID,PRICE,DESCRIPTION,STOCK,IMAGE) values ('HDMI Cable','10000',7.99,'Six feet of cord',30,'http://www.wyrestorm.com/sites/default/files/imagecache/product_full/hdmi_cable_full_no_bg.png');
Insert into ORDERDB.PRODUCTS (PROD_NAME,PROD_ID,PRICE,DESCRIPTION,STOCK,IMAGE) values ('Wireless Adapter','11101',30.99,'NetGear G54',30,'http://netrunner-mag.com/wp-content/uploads/2013/02/dlink.jpg');
Insert into ORDERDB.PRODUCTS (PROD_NAME,PROD_ID,PRICE,DESCRIPTION,STOCK,IMAGE) values ('Dell PC','12450',499.99,'Opti Plex 8020',20,'https://images-na.ssl-images-amazon.com/images/I/71g-%2BNTWErL._SL1500_.jpg');
Insert into ORDERDB.PRODUCTS (PROD_NAME,PROD_ID,PRICE,DESCRIPTION,STOCK,IMAGE) values ('Power Cord','10001',29.99,'Dell OP8020 cord',30,'http://images.monoprice.com/productlargeimages/76761.jpg');
REM INSERTING into ORDERDB.USERS
SET DEFINE OFF;
Insert into ORDERDB.USERS (USER_ID,USER_NAME,ADDRESS,EMAIL,TELEPHONE,PASSWORD) values ('1357','Bob Smith','123 Heming Way','bsmith@email.com','1-543-555-1234','football');
Insert into ORDERDB.USERS (USER_ID,USER_NAME,ADDRESS,EMAIL,TELEPHONE,PASSWORD) values ('2468','Wendy Jones','404 Oak Street','wjones@email.com','1-586-444-2468','knitting');
Insert into ORDERDB.USERS (USER_ID,USER_NAME,ADDRESS,EMAIL,TELEPHONE,PASSWORD) values ('3141','Jon Taylor','201 Jumbo Street','jtaylor@email.com','1-660-222-5555','history');
Insert into ORDERDB.USERS (USER_ID,USER_NAME,ADDRESS,EMAIL,TELEPHONE,PASSWORD) values ('0805','Allison Chains','206 Deerview Court','achains@email.com','1-584-333-0987','rooster');
Insert into ORDERDB.USERS (USER_ID,USER_NAME,ADDRESS,EMAIL,TELEPHONE,PASSWORD) values ('0002','Fred Flintstone','101 Bedrock Lane','ffstone@ydd.rock','1-111-111-1112','wilma');
Insert into ORDERDB.USERS (USER_ID,USER_NAME,ADDRESS,EMAIL,TELEPHONE,PASSWORD) values ('admin','admin',null,null,null,'admin');
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORDERDB"."TABLE1_PK" ON "ORDERDB"."PRODUCTS" ("PROD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORDERDB"."USERS_PK" ON "ORDERDB"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "ORDERDB"."ORDERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "ORDERDB"."ORDERS" MODIFY ("PROD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "ORDERDB"."PRODUCTS" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("PROD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORDERDB"."PRODUCTS" MODIFY ("PROD_ID" NOT NULL ENABLE);
  ALTER TABLE "ORDERDB"."PRODUCTS" MODIFY ("PROD_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "ORDERDB"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORDERDB"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ORDERDB"."USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "ORDERDB"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "ORDERDB"."ORDERS" ADD CONSTRAINT "ORDERS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "ORDERDB"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "ORDERDB"."ORDERS" ADD CONSTRAINT "ORDERS_FK2" FOREIGN KEY ("PROD_ID")
	  REFERENCES "ORDERDB"."PRODUCTS" ("PROD_ID") ENABLE;
