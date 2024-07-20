create database Employees;
use Employees;

create table Emp(
Emp_Id int primary key,
First_Name varchar(250),
Last_Name varchar(250),
Dept varchar(150),
Age int);

show tables;

insert into Emp
 (Emp_Id,First_Name, Last_Name, Dept, Age)
 values ('001','Ranjit','Singh', 'Data Analytics', '27',50000);
select * from Emp;

insert into Emp
(Emp_Id,First_Name,Last_Name,Dept,Age)
values(526,'Mohan','Raj','Mktg',31);

insert into Emp
(Emp_Id,First_Name,Last_Name,Dept,Age)
values(856,'Monu','Singh','Sales',24),
(458,'Rohit','Sharma','Sales Executive',40);

insert into Emp
(Emp_Id,First_Name,Last_Name,Dept,Age)
values(589,'Riya','Yadav','Engg',24),
(666,'Priya','Mehta','Mktg',35),
(489,'Saurav','Yadhuwansi','HR',27),
(897,'Raja','Kumar','Sales',24),
(006,'Harshita','Prajapati','Product Manager',35),
(235,'Himanshu','Gupta','Finance',27);

alter table Emp add(
Salary int );

select * from Emp;


update Emp set
Salary = 80000
where Emp_Id =897;


create table Sales(
Emp_Id int primary Key,
Full_Name varchar(250),
Dept varchar(150),
Age int,
Salary int);

insert into Sales
(Emp_Id, Full_Name,Dept,Age,Salary)
values(897,'Ashish Kumar','Sales Manager',27,50000),
(567,'Sohan Mahto','Sales Executive',21,25000),
(256,'Mohan Singh','Sales Manager',28,50000),
(126,'Raj Garg','HR',35,80000),
(854,'Mohit Kumar','CA',40,120000),
(456,'Ankit Singh','CEO',38,200000),
(658,'Rekha Kumari','Sales Executive',27,25000),
(568,'Priyanka Singh','HR',28,40000);


select * from Sales;

-- Querying Data Commands
select First_Name, Last_Name
from Emp;

select * from Emp 
where Age<=24;

select * from Sales
order by Salary Asc;

select Dept, count(*)
from Emp 
group by Dept;

select Salary, count(*)
from Sales
group by Salary
Having count(*)>1;

-- joining Commands
-- inner join

select * from Emp
inner join Sales on
Emp.First_Name=Sales.Dept;

-- left join/outer join
select First_Name,Full_Name from Sales
left join Emp on
Emp.First_Name=Sales.Full_Name;