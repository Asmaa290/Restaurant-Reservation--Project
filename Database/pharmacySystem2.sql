--drop database Pharmacy_system2; 

create database Pharmacy_system2;
 
 use Pharmacy_system2;


--drop table pharmacist;
------------

 create table pharmacist(
   id int primary key ,
   Name char(30) ,
   ph_user char(20) not null,
   ph_password varchar(20) not null,
   phone char(11),
   );
 ------------
   create table Bill(

   Bill_id int primary key,
  Total_quantity int check ( Total_quantity >-1), 
  Total_price decimal default 0,
     B_date datetime, 
 );
   
------------
create table Bill_item(

   Drug_name char(30) not null,
   DR_Type char(30)not null,
   quantity int check ( quantity >-1) not null, 
   sales_price decimal not null,
   B_id  int ,
   foreign key(B_id) references Bill(Bill_id),
   primary key(B_id,Drug_name),
  
 );

 ---------------
  --drop table Drugs   
   create table Drugs(
   Dr_id int primary key ,
   Dr_Name char(45) not null,
   DR_Type char(45) not null,
   quantity int check (quantity >-1) ,
   sales_price decimal default 0,
   factory_price decimal default 0 ,
   Expiry date ,
  
 
 );
 
 ---------------
 --drop table supplier

 create table supplier(

   ssn  char(12) primary key ,
   sup_Name char(35) not null,
   location char(30) not null,
   phone char(11) ,

 );

-------------------

 create table PH_order (

  order_id int primary key ,
   Or_date  date, 
   TotalCost decimal,
   supplier_ssn char(12) ,
   pharmacis_id int ,
   foreign key (pharmacis_id) references pharmacist(id)
   
 );
  ------------------

  create table OrderIteam(

   D_name char(30) not null,
   sales_price decimal,
   factory_price decimal ,
   quantity int check (quantity >-1), 
   order_id int ,
   foreign key (order_id) references PH_order(order_id),
    primary key(order_id,D_name)
  
   
 );
 ------------------

 create table D_update(
 Pid int ,
 Drug_id int ,
 primary key(Pid , Drug_id),
 foreign key (Pid) references pharmacist(id),
 foreign key (Drug_id) references Drugs(Dr_id)
 
 );
  ----------------------

 create table D_supply(
 sup_SSN char(12),
 D_id char int ,
 
 foreign key (D_id) references Drugs(Dr_id),
 foreign key (sup_SSN) references supplier(ssn),
 primary key( sup_SSN , D_id),
  
 );
 -----------------
 create table ph_create(
 Ph_ID int ,
 B_id int ,
 foreign key (Ph_ID) references pharmacist(id),
 foreign key (B_id) references Bill(Bill_id),
 primary key(B_id,Ph_ID),
  
 );

  -----------------
 create table contain(
 drug_id int ,
 B_id int ,
  primary key(B_id,drug_id),
 foreign key (drug_id) references Drugs(Dr_id),
 foreign key (B_id) references Bill(Bill_id)

     

 );

 ------------------
  select * from pharmacist;
  select* from Drugs;
  select * from Bill; 
  select * from D_update;
  select * from D_supply;
  select * from PH_order;
  select * from OrderIteam;
  select* from ph_create;
  select* from supplier;
	 
	 






