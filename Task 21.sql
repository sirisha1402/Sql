create database salespeople
use salespeople;
create table people(
salesman_id  int,
name varchar(25),
city varchar(20),
commission float,
);
insert into people values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);
select * from people
create view sales 
as
select * from people where city ='new york'
create view salespersonall
as select salesman_id, name, city  from people
select * from salespersonall
create view salesman
as select city,COUNT(distinct salesman_id)
salesman_id 
from people
group by city;
select * from salesman
create table customer(
customer_id int,
cust_name varchar(25),
city varchar(20),
grade int,
salesman_id int,
);
insert into customer values
(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007);
select * from customer;
create view  countgrade(grade,count)
as select grade,count(*)
from customer
group by grade;
select * from countgrade
create table orders(
ord_no int,
purch_amt float,
ord_date int,
customer_id int,
salesman_id int,
);
insert into orders values
(70001,150.5,2012-10-05,3005,5002),
(70009,270.65,2019-09-10,3001,5005),
(70002,65.26,2019-09-10,3002,5001),
(70004,110.5,2019-09-10,3009,5003),
(70007,948.5,2019-09-10,3005,5002),
(70005,2400.6,2019-09-10,3007,5001),
(70008,5760,2019-09-10,3002,5001);
select * from orders
create view ord_er
as select ord_no,purch_amt,a.salesman_id,cust_name
from orders a,customer b, salesman c
WHERE a.customer_id = b.customer_id
AND a.salesman_id = c.salesman_id;

select * from ord_er


