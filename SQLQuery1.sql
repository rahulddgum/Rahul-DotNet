create database librarydb
use librarydb
create table book(rackno int,bookname varchar(20),authorname varchar(20),edition varchar(20));

select * from book;
delete from book where rackno=10;