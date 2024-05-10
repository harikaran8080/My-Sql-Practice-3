create database details;
show databases;
create table worker_details(id int ,
 Name varchar(30),
 Position varchar(30),
 Salary int );
show tables;
use details;
describe worker_details;
insert into worker_details(id,Name,Position,Salary) values(2339,'harikaran','CEO',50000),
(3687,'naveen','excuter',20000),
(1234,'karan','manager',50000),
(9876,'kajey','supervisor',35000),
(7654,'elamparithi','manager',25000),
(4321,'vikram','technicalminder',85000),
(0987,'muthamil','programmer',45000),
(7876,'gokul','driver',30000);

select * from worker_details;

select * from worker_details
Where Name = "kajey";

select * from worker_details
where Name<> "kajey";

select * from worker_details
where Name = "kajey";

select * from worker_details
where Salary>35000 and position = "manager";

select * from worker_details
where position = "CEO" or position = "manager";

select * from worker_details
where position not in ('manager',"CEO");

select * from worker_details
limit 5;

select * from worker_details
where name like '_i%';

select * from worker_details
where Name ='harikaran'
order by salary;

select * from worker_details
order by ( case position
when "ceo" then 1
when "manager" then 2
when "excute" then 3
else 10 end);

select count(*) manager from worker_details
where position = "manager";

select  avg (salary) from worker_details
where position = 'manager';

select sum(salary)from worker_details
where position = 'manager';

select max(salary) 
from worker_details; 

select avg(salary) 
from worker_details; 

select ucase(name),salary 
from worker_details;

select name,char_length(name) count_char
from worker_details; 

select name, concat("rs.",salary)
from worker_details;

select name, concat("rs.",format(salary,0))
from worker_details;

select name8,left(position,4)
from worker_details;

alter table worker_details add column thethi date;

update worker_details
set thethi= "2004-03-30";

update worker_details
set thethi= "2004-01-25"
where position = "manager";
select now();

select name ,avg(salary) 
from worker_details
group by name;

select name ,avg(position) 
from worker_details
group by name;

select name ,count(position) 
from worker_details
group by name
having count(position)>1;
select * from worker_details



