
   use Pharmacy_system2;
   -----------------------
  insert into pharmacist values (461176, 'Abdullah Mohmed','Amohmad','Abdo1234',01142853829);
  insert into pharmacist values (468915, 'Maryam Mostafa',' Mmostafa','mos1234',01058470574);
  insert into pharmacist values (467766,  'sara Aly', 'SAly',  'SA1234' , 01137847694);
  insert into pharmacist values (462349, 'Rana' ,'rmohmad','ra1234',01137847694);
  ----------------------

  insert into Bill values (66, 30,35,'11-07-2019' );
  insert into Bill values (23,38,20,'2019-02-24');
  insert into Bill values (15,4,56,'2019-05-19 ' );
  insert into Bill values (18,6,35,'2019-05-19 12:12:32' );
  insert into Bill values (45, 43,56,'2019-05-19 2:56:4' );
  insert into Bill values (38, 23,56,'2019-05-19' );
  insert into Bill values (29,1,56,'2019-05-19 11:23:34' );
  insert into Bill values (35, 4,56,'2019-05-19 19:34:58' );
  insert into Bill values (49, 4,59,'2019-05-19 1:6:4' );
   -----------------------

   insert into Bill_item values ('Midodren','Tablet',4,33,15);
   insert into Bill_item values ('All-Vent','syrup',4,44,49);
   insert into Bill_item values (' PREXO','Cream',1,18,29);
   insert into Bill_item values ('G.C.mol','Effervescent Granules',23,56,38);
   insert into Bill_item values ('All-Vent','syrup',43,44,45);
   insert into Bill_item values ('Megamox ','Tablet',38,76,23);
   insert into Bill_item values ('Midodren','Tablet',4,33,35);
   insert into Bill_item values ('Cobal ','Tablet',30,30,66);


  -----------------------------
  use Pharmacy_system2;
  insert into Drugs values (7667,'Cobal','Tablet',35,30.0,25,'11-11-2019');
  insert into Drugs values (1294,'Megamox','Tablet',55,75.5,69,'5-12-2019');
  insert into Drugs values (9391,'OPlex','syrup',30,29.0,22.5,'5-19-2022');
  insert into Drugs values (7008, 'All-Vent','syrup',45,44,38,'8-30-2023');
  insert into Drugs values (2319, 'Midodren ','Tablet',20,33,27 ,'9-25-2019' );
  insert into Drugs values (1786, 'G.C.mol','Effervescent Granules', 30,16,12,'1-5-2022' );
  insert into Drugs values (4391, 'Urosolvine','Effervescent Granules', 37,18,13,'4-23-2024');
  insert into Drugs values (1872, ' Diclac','Gel', 22,28,35,'5-17-2022' );
  insert into Drugs values (3249, ' Reparial','Gel', 27,28,24,'12-3-2024');
  insert into Drugs values (3567, ' PREXO','Cream', 48,18,13 ,'9-18-2025' );
  insert into Drugs values (1176, 'Mxiterol','ointment', 20,18,13,'2-21-2022');
  insert into Drugs values (2758,'ciprocin','ointment', 24,18.0,13.5,'8-16-2025' );
 --drop table Drugs
 --delete from Drugs where DR_id=-7572
   -----------------------
  

  insert into supplier values (217987867, 'AMOUN',' EL-ObourCity Cairo-Egypt',01142853829);
  insert into supplier values (672536643, ' GLOBAL NAPI','6th october Cairo-Egypt ',01142367686);
  insert into supplier values (930998987, 'Pharco','Amriya - Alexandria ',01012673965);
  insert into supplier values (210346115, 'Novratis','Cairo-Egypt',01043739023);
  insert into supplier values (210346192, 'Multi-Apex',' Badr City - Cairo',01128529754);
  


   -----------------------
--Drug supply

   insert into D_supply values (210346115, 1176);
   insert into D_supply values (210346192 ,1872);
   insert into D_supply values (217987867 ,3567 );
   insert into D_supply values (672536643 ,1294);
   insert into D_supply values (930998987 ,7008 );
   insert into D_supply values (217987867 ,1786 ); 
   insert into D_supply values (672536643 ,9391); 


   -----------------------
   --Drug update
   
   insert into D_update values (468915 ,9391); 
   insert into D_update values (461176 ,1786);
   insert into D_update values (467766 ,7008);
   insert into D_update values (462349 ,3567);
   insert into D_update values (468915 ,1872);
   insert into D_update values (461176 ,9391);
   insert into D_update values (467766 , 1176);

   -----------------------
   -- Drugs in BIll

   insert into contain values (2319,15);
   insert into contain values (1294,23);
   insert into contain values (9391,18);
   insert into contain values (7667,66);
   insert into contain values (3567,29);
   insert into contain values (2319 ,35);
   insert into contain values (7008 ,49);
   insert into contain values (1786,38);
   insert into contain values (7008,45);


   -----------------------
   insert into ph_create values (468915 ,45);
   insert into ph_create values (461176 ,15);
   insert into ph_create values (467766 ,23);
   insert into ph_create values (462349 ,38);
   insert into ph_create values (468915 ,66);
   insert into ph_create values (461176 ,18);
   insert into ph_create values (467766 , 49);
   insert into ph_create values (467766 , 66);
   insert into ph_create values (462349 ,29);
   -----------------------
   -- pharmacy order
   insert into PH_order values (12,'12-3-2019',230,210346115, 468915);
   insert into PH_order values (23,'3-24-2018',1000,210346192 ,461176);
   insert into PH_order values (10,'1-4-2019',2030,217987867 ,467766);
   insert into PH_order values (43,'10-18-2020',8398,672536643 ,462349);
   insert into PH_order values (16,'6-29-2017',9440,930998987 , 467766);
   insert into PH_order values (37,'8-26-2019',2763,217987867 ,468915); 
   insert into PH_order values (22,'6-2-2018',5945,672536643 ,467766); 



   -----------------------
   -- items of order

  insert into OrderIteam values ('Cobal',30.0,25,35,10);
  insert into OrderIteam values ('Megamox',75.5,69,55,43);
  insert into OrderIteam values ('OPlex',29.0,22.5,30,37);
  insert into OrderIteam values ('All-Vent',44,38,45,22);
  insert into OrderIteam values ('Midodren',33,27,20 ,16);
  insert into OrderIteam values ('G.C.mol',16,12,30 ,10);
  insert into OrderIteam values ('PREXO',18,13, 48,23 );
  insert into OrderIteam values ('Mxiterol',18,13, 48,12 );
  insert into OrderIteam values ('ciprocin',18,13, 48,23 );

 
  -----------------------

  
   use Pharmacy_system2;
  select * from pharmacist;
  select* from Drugs;
  select * from Bill; 
  select * from D_update;
  select * from D_supply;
  select * from PH_order;
  select * from OrderIteam;
  select* from ph_create;
  select* from supplier;
  select* from Bill_item;
  select* from contain;
	 
	 





