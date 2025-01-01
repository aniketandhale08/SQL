-- Row number (Interviwe Questions)

show databases;
use newDB1;
show tables;


CREATE TABLE employee (
firstname varchar(20), 
lastname varchar(20), 
age int,
salary int,
location varchar(20) 
);

select * from employee;
desc employee;

INSERT INTO employee VALUES ('sachin', 'sharma', 28, 10000, 'bangalore');
INSERT INTO employee VALUES ('shane', 'warne', 30, 20000, 'bangalore');
INSERT INTO employee VALUES ('rohit', 'sharma', 32, 30000, 'hyderabad');
INSERT INTO employee VALUES ('shikhar', 'dhawan', 32, 25000, 'hyderabad');
INSERT INTO employee VALUES ('rahul', 'dravid', 31, 20000, 'bangalore');
INSERT INTO employee VALUES ('saurabh', 'ganguly', 32, 15000, 'pune');
INSERT INTO employee VALUES ('kapil', 'dev', 34, 10000, 'pune');

-- how many people from each location and avg salary at each location
select location, count(*) as location_count, avg(salary) from employee group by location;




select * from employee;

select firstname, lastname, salary, row_number() over (order by salary desc) from employee;

-- find 5th highest salary

select * from 
(select firstname, salary, row_number() over(order by salary desc) as row_num from employee) as temptable
where row_num =5; 


-- the problem statement is to assign row number for partitions based on each location..
select firstname, lastname, location, salary, row_number() over (partition by location order by salary desc) from employee;

-- find out highest salary getter from each location
select * from employee;

select * from
(select firstname, lastname, location, salary, row_number() over (partition by location order by salary desc) as rownum from employee) temptable where rownum= 1;


-- when we are using the row_number , we should or must use the order by clause
-- we can also use the partition by - optional

