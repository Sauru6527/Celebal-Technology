create database hello;
use hello;

create table TblCustomer(
customerId int primary key ,
FirstName nvarchar (20) not null,
lastName nvarchar(20) not null,
City  nvarchar(20) not null,
ProductName nvarchar(20) not null,
Price   int not null
);

select *from TblCustomer;

insert into  TblCustomer values('1','Aishwarya','Aher','Kopargaon','Shirt','420');
insert into  TblCustomer values('2','Akshita','Aher','Kopargaon','Shoes','520');
insert into  TblCustomer values('3','Saurabh','Aher','Brahmangaon','Jeans','600');
insert into  TblCustomer values('4','Kunal','Aher','Brahmangaon','Watch','1000');
insert into  TblCustomer values('5','Adarsh','Aher','Kopargaon','Watch','520');

create table Quantity (CustomerID int primary key,
ProductName varchar(10),PricePerProduct int 
);

select * from Quantity;

insert into Quantity values( '1','Shirt','420');
insert into Quantity values( '2','Shoes','520');
insert into Quantity values( '3','Jeans','600');
insert into Quantity values('4','Watch','1000');
insert into Quantity values(' 5','Jewellary','520');
insert into Quantity values( '6','Shirt','800');
insert into Quantity values( '7','MakeupKit','420');
select * from Quantity;
select *from TblCustomer;
select * from TblCustomer inner join Quantity on TblCustomer.productname= Quantity.productName;