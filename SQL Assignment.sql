-- creating database "Shopping"
create database Shopping;
use Shopping;

-- creating table Product with attributes pid ,price and name...
create table Product(pid int primary key, price double, name varchar(40));

-- displaying table Structure
desc Product;

-- inserting values into Product table...
insert into Product values(101,1000,concat('smart watch','Sahil'));
insert into Product values(102,7000,concat('android phone','Sahil'));
insert into Product values(103,60000,concat('Smart TV','Sahil'));
insert into Product values(104,30000,concat('Laptop','Sahil'));

-- displaying Product details.. 
select * from Product;

-- creating Cart table with attributes pid as foreign key and qty
create table Cart(pid int,foreign key(pid) references Product(pid),qty int);

-- displaying Cart structure..
desc Cart;

-- insert values into Cart table
insert into Cart values(101,3);
insert into Cart values(102,2);
insert into Cart values(103,1);
insert into Cart values(104,4);

-- displaying Cart details..
Select * from Cart;

-- calculating total price
select concat( 'Total Price of items:' , sum(price * qty)) as totalprice from Product p,Cart c where p.pid=c.pid;