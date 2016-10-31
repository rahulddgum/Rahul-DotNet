select t1.ID,t2.Amount from Customer t1 left join Orders t2 on t1.ID=t2.cust_id
select ID,Name from Customer union all select Number,order_date from Orders
create table New(ID int,Name varchar(20),City varchar(20),Industry_type varchar(10))
select * into New_data from Customer
select * into librarydb.New1 from Customer
create table gun(id int,model varchar(20),constraint cons_gun unique (id))
alter table gun add constraint con_model unique ("model")