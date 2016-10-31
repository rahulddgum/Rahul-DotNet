create database Employee_Data
use Employee_Data
create table Salesperson(ID int primary key,Name varchar(20),Salary int,Age int)
create table Customer(ID int primary key,Name varchar(20),City varchar(20),Industry_type varchar(10))
create table Orders(Number int,order_date varchar(20),cust_id int,sales_person_id int,
Amount int)
select * from Customer
insert into Salesperson values(2,'Bob',34,2500),(5,'Chris',34,5200),(7,'Dan',41,4000),
(8,'Rahul',36,5100),(11,'Ramesh',55,4566)
insert into Customer values(4,'Samsonic','pleasant','j'),(6,'Narender','carrolton','p'),
(7,'Anvesh','texas','j'),(9,'vivek','dallas','j')
insert into Orders values(10,'8/15/16',4,2,540),(20,'9/16/16',4,8,1800),(30,
'6/4/16',9,1,460),(40,'5/25/15',7,2,2400),(50,'3/26/14',6,7,600),(60,'2/15/13'
,6,7,720),(70,'5/15/12',9,7,150)

select Salesperson.Name
from Salesperson join Customer  join Orders on Customer.ID = Salesperson.ID and Customer.ID=Orders.cust_id
