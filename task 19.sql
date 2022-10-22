create Database org;
use org;
create table worker(
WORKER_ID INT NOT NULL PRIMARY KEY,
FIRST_NAME varCHAR(25),
LAST_NAME varCHAR(25),
SALARY int,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
insert into worker values
(001,'Raja','Ram',50000,'2013-12-24 12:00:00','Admin'),
(002,'Sita','Mahalakshmi',100000,'2013-10-14 09:00:00','HR'),
(003,'Laksmana','Raj',50000,'2014-11-20 10:00:00','Admin'),
(004,'Hanuma','Raju',60000,'2014-12-10 11:00:00','Admin'),
(005,'Lanka','Ravan',70000,'2014-09-11 01:00:00','HR'),
(006,'Rani','Surpanaka',10000,'2014-03-11 09:00:00','Admin'),
(007,'Lava','kusha',100000,'2014-12-15 10:00:00','HR'),
(008,'Dasaratha','Raja',20000,'2014-02-14 03:00:00','Admin');
select*from worker;
create table bonus
(
WORKER_REF_ID int,
BONUS_AMOUNT INT,
BONUS_DATE DATE, foreign key (WORKER_REF_ID) REFERENCES Worker (WORKER_ID) ON
DELETE CASCADE
);
insert into bonus(WORKER_REF_ID,BONUS_AMOUNT,BONUS_DATE)values
(001,5000,'2016-02-20'),
(002,3000,'2016-02-11'),
(003,4000,'2016-02-20'),
(001,4500,'2016-02-20'),
(002,3500,'2016-06-11');
select * from bonus;
create table title(
Worker_REF_ID int,
Worker_title varchar(25),
affected_from datetime,foreign key (Worker_REF_ID)references worker(worker_id)
on delete cascade
);
INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001,'Manager','2016-02-20 00:00:00'),
(002,'Executive','2016-02-20 00:00:00'),
(008,'Executive','2016-02-20 00:00:00'),
(005,'Manager','2016-02-20 00:00:00'),
(004,'Asst.Manager','2016-02-20 00:00:00'),
(007,'Executive','2016-02-20 00:00:00'),
(006,'Lead','2016-02-20 00:00:00'),
(003,'Lead','2016-02-20 00:00:00');
select* from title;
select first_name as worker_name from worker;
select upper(first_name) as worker_name from worker;
select distinct department from worker;
select first_name,last_name,concat(first_name,'',last_name) as complete_name from worker;
select*from worker where first_name ='raja'or first_name ='rani';
select*from worker where DEPARTMENT='admin'
select*from worker where first_name like '%a';
select*from worker where last_name like '%a%';







