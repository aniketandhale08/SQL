show databases;
use newDB1;
show tables;
select * from students;


-- DISTINCT

select location from students;

select distinct location from students;

select distinct student_company from students;


-- ORDER BY

select student_id, enrollment_date, selected_course, student_fname, years_of_exp, student_company, batch_date, source_of_joining, location from students order by years_of_exp;

select student_fname, years_of_exp from students order by years_of_exp;

select student_fname, years_of_exp from students order by years_of_exp desc;
select student_fname, years_of_exp from students order by years_of_exp asc;

-- this below queries also perform the same operation as teh above queries will
select student_fname, years_of_exp from students order by 2 desc;
select student_fname, years_of_exp from students order by 2 asc;

-- LIMIT

select * from students limit 3;

-- get 3 candidate with least exprience

-- by default order by takes ASC as ordering 
select student_fname, years_of_exp from students order by years_of_exp asc limit 3;

-- want to know that from which sources last 5 candidates have enrolled.

select source_of_joining, enrollment_date, student_fname from students order by enrollment_date desc limit 3;

select distinct source_of_joining, enrollment_date, student_fname from students order by enrollment_date desc limit 3;

-- LIKE

-- name contains "ra" character
select student_id, student_fname, years_of_exp, student_company, batch_date, location from students where student_fname like '%ra%';

-- name starts with "vi" character
select student_id, student_fname, years_of_exp, student_company, batch_date, location from students where student_fname like 'vi%';

-- name ends with "at" character
select student_id, student_fname, years_of_exp, student_company, batch_date, location from students where student_fname like '%at';

-- names who are created with 5 characters
-- for doing this we just have do add underscore count of names characeters, that means underscore is also a wildcard charcter
select student_id, student_fname, years_of_exp, student_company, batch_date, location from students where student_fname like '_____';






