use Pharmacy_system2;

select* from supplier;

select Dr_Name ,quantity from Drugs;

select  DR_Type from Drugs;
--used to return only distinct (different) values
select distinct DR_Type from Drugs;

--lists the number of different (distinct) 
select Count( distinct DR_Type) from Drugs;

--SELECT Count(*) AS DistinctDrugsType FROM (SELECT DISTINCT DR_Type FROM Drugs);

-- where condition
select Dr_Name ,quantity from Drugs where DR_Type ='Tablet';

select* from Drugs where sales_price=18;
select* from Drugs where sales_price<>18;

select* from PH_order where TotalCost>3000;
select* from PH_order where TotalCost<=1000;
select* from PH_order where TotalCost>=2000;

select* from Drugs where sales_price BETWEEN 30  AND 80;

select* from Drugs where Dr_Name like'M%';

select* from Drugs where Dr_Name in ('Mxiterol',' Diclac  ','G.C.mol');  

SELECT * FROM Drugs ORDER BY  DR_Type;

SELECT * FROM Drugs ORDER BY  DR_Type desc;

SELECT * FROM Drugs ORDER By quantity,DR_Type;

insert into supplier ( ssn,location,sup_Name) values ( 127394704, 'cairo','sisco');
SELECT sup_Name FROM supplier WHERE phone IS NULL;

SELECT sup_Name FROM supplier WHERE phone IS NOT NULL;


UPDATE pharmacist SET ph_user='saraali' WHERE id=467766;
SELECT COUNT(id)FROM pharmacist;

--join (inner)

SELECT * from
Bill
inner join
Bill_item
on Bill_item.B_id=Bill.Bill_id;


---
SELECT * from
Bill
RIGHT JOIN
Bill_item
on Bill_item.B_id=Bill.Bill_id;



SELECT * from
Bill
LEFT JOIN
Bill_item
on Bill_item.B_id=Bill.Bill_id;


SELECT * from
Bill
FULL OUTER JOIN
Bill_item
on Bill_item.B_id=Bill.Bill_id;




------
SELECT count(Dr_id) ,DR_Type
FROM Drugs GROUP BY DR_Type;


-----The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
use Pharmacy_system2;
alter table Bill
Drop column Drug_name, DR_Type;

create view nn
as select *From pharmacist
where id=461176;

select*from ph;

--------
use Pharmacy_system2;
select * from Drugs;
select  DR_Type from Drugs;
select Distinct DR_Type from Drugs; /*return only distinct (different) values.*/
select count(Distinct DR_Type)from Drugs; /*number of different (distinct)*/
select * from Drugs where Dr_id=1010;
select * from Drugs where DR_Type='pills';
select * from Drugs where DR_Type='Gel' OR DR_Type='pills' ;
select * from Drugs where NOT DR_Type='pills' ;
select * from Drugs where DR_Type='Gel' AND (factory_price = 35 OR factory_price = 24);
select * from Drugs where NOT DR_Type='Gel' AND NOT DR_Type='pills' ;
select * from Drugs Order by Dr_id ASC , DR_Type DESC;
select * from pharmacist;
INSERT INTO pharmacist VALUES (122,'Rana wakad','rana','123456','0111000');
select * from Drugs where DR_Type IS NOT NULL;
UPDATE pharmacist SET Name='Kiri Adel',ph_user ='Kiri',ph_password= '123456'
WHERE id=468915;
DELETE from pharmacist where Name = 'rr';
SELECT TOP 3 * FROM Drugs;
SELECT MIN(sales_price) from Drugs;
SELECT AVG(sales_price) from Drugs;
SELECT SUM(Total_price) from Bill;
SELECT COUNT(id) FROM pharmacist;
select * from pharmacist WHERE name LIKE 'r%'; /* Start with "r" */
select * from pharmacist WHERE name LIKE '_a%'; /* have "a" in the second position */
select * from pharmacist WHERE name LIKE 's%y'; /* starts with "s" and ends with "y"*/
select * from Drugs where DR_Type IN ('pills','gel');
select * from Drugs where sales_price between 20 And 30;

Select *from Drugs as DrugeType
where DR_Type Like 'c%';
Select * from Drugs AS Candy;


---------------------

select Name,ph_user,ph_passw


select *from ph_create
where Ph_ID=461176;












