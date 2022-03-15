create table customers(
Id int primary key,
FullName varchar(50),
Email varchar(50),
Address varchar(50),
Phone varchar(15),
Gender char(1)

);

insert into Customers values(3,'Roshni Aher','roshni@gmail.com','Kopargaon','989876767','F');
select *from customers;

delete from customer where id=4;

update customers set FullName='',Email='',Address='',Phone='',Gender='F' where id='System.Windows.Forms.TextBox, Text: ';
update customers set FullName='Shobha',Email='Shobha@123',Address='Kopargaon',Phone='092533711',Gender='F' where id=2;