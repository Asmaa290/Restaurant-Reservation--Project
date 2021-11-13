drop database emp;
create database emp;
use emp ;
create table e( fname varchar(23));
 
insert into e values ('Ahmed');
insert into e values ('Ali');
insert into e values ('Asmaaa');
--length of word
select LEN (fname) from e;
--OR
select LEN ('fname') ;
--convert all lteer to lower
select lower  (fname) from e; 
--convert all lteer to upper
select upper  (fname) from e;
--Round 
use emp;
--drop table Dis;
create table Dis (LN varchar (12), dis decimal);
insert into Dis values ( 'asmaa' ,356.78605);
insert into Dis values ( 'abdo',3456.75700);
insert into Dis values ( 'asbdo',0.00 );
insert into Dis values ( 'asbdo',null );
select ROUND (dis,2) from Dis;
select ROUND (3655.67677,2);
-- concatination for different coulm
select LN + cast(dis as char) from Dis;
-- add 30 to evry row 
select dis +30 from Dis;
--convert null to 0 and add 30 for it 
select isnull (dis ,0)+ 30  from Dis;

--date and time 
select GETDATE();
use emp;




