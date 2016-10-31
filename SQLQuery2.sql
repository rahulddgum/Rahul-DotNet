create table Department(Id int,Name varchar(10))
insert into Department values(1,'IT'),(2,'HR'),(3,'Manager'),(4,'Testing')
select * from tblemployee
alter table tblemployee add DepartmentId int
insert into tblemployee(DepartmentId) values (1),(2),(1),(2)
delete from tblemployee where DepartmentId=2
insert into tblemployee values(5,'Pavan','Male','Texas',3),(6,'Murali','Male','Texas',3)
select * from Department
