show databases;
use newDB1;
show tables;
select * from students;



-- Aggregate functions

-- COUNT 

-- to see the count of students in table
select count(*) from students;

-- count of student_company in table with duplicate
select count(student_company) from students;

-- count of student_company in table without duplicate
select count(distinct student_company) from students;

-- with different title of column
select count(distinct student_company) as companies from students;

-- from how many locations they are joining
select count(distinct location) from students;

select * from students;

select count(student_id) as student_of_feb_batch from students where batch_date like '%-02-%';

-- GROUP BY

-- list of count of stdents with source of joining

SELECT source_of_joining, COUNT(*) FROM students GROUP BY source_of_joining;

-- group data by location
select location, count(*) from students group by location;

-- group the data of people who  have same source_of_joining and location
-- this below will give you error , bcz source_of_joining is not in select statemetn
select location, count(*) from students group by source_of_joining;
SELECT source_of_joining, location, COUNT(*) FROM students GROUP BY source_of_joining, location;

select location, source_of_joining from students;

select * from students;

-- count of stdudents for each course

select selected_course, count(*) from students group by selected_course;


-- MIN & MAX

-- to get know who have min exp
select min(years_of_exp) from students;

-- for max
select max(years_of_exp) from students;


select * from students;

-- to get knwo min exp with name
select  student_fname, years_of_exp from students order by years_of_exp limit 1;

-- for each source of joining i want to get max exp

select distinct source_of_joining, max(years_of_exp) from students group by source_of_joining;


-- SUM
select distinct source_of_joining, sum(years_of_exp) from students group by source_of_joining;


select * from students;

-- AVG

-- people joined form various source_of_joining have how many avg exp
select distinct source_of_joining, avg(years_of_exp) from students group by source_of_joining;

-- people who gwt to know about course form google has how many exp
select source_of_joining, avg(years_of_exp) from students where source_of_joining = 'google'

