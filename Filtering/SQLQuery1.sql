create database new_db;


select name from sys.databases;
use new_db;


CREATE TABLE employee (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      VARCHAR(16)     NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);



CREATE TABLE department (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no)
);


CREATE TABLE dept_manager (
   emp_no       INT             NOT NULL,
   dept_no      CHAR(4)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL
); 


CREATE TABLE salary (
    emp_no      INT             NOT NULL,
    amount      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL
); 




INSERT INTO employee VALUES (10001,'1953-09-02','Georgi','Facello','M','1986-06-26'),
(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'),
(10003,'1959-12-03','Parto','Bamford','M','1986-08-28'),
(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01'),
(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12'),
(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02'),
(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10'),
(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'),
(10009,'1952-04-19','Sumant','Peac','F','1985-02-18'),
(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24'),
(10011,'1953-11-07','Mary','Sluis','F','1990-01-22'),
(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18'),
(10013,'1963-06-07','Eberhardt','Terkki','M','1985-10-20'),
(10014,'1956-02-12','Berni','Genin','M','1987-03-11'),
(10015,'1959-08-19','Guoxiang','Nooteboom','M','1987-07-02'),
(10016,'1961-05-02','Kazuhito','Cappelletti','M','1995-01-27');



INSERT INTO department VALUES 
('d001','Marketing'),
('d002','Finance'),
('d003','Human Resources'),
('d004','Production'),
('d005','Development'),
('d006','Quality Management'),
('d007','Sales'),
('d008','Research'),
('d009','Customer Service');



INSERT INTO dept_manager VALUES 
(10002,'d001','1985-01-01','1991-10-01'),
(10039,'d001','1991-10-01','9999-01-01'),
(10085,'d002','1985-01-01','1989-12-17'),
(10114,'d002','1989-12-17','9999-01-01'),
(10183,'d003','1985-01-01','1992-03-21'),
(10228,'d003','1992-03-21','9999-01-01'),
(10303,'d004','1985-01-01','1988-09-09'),
(10344,'d004','1988-09-09','1992-08-02'),
(10386,'d004','1992-08-02','1996-08-30'),
(10420,'d004','1996-08-30','9999-01-01');



INSERT INTO salary VALUES (10001,60117,'1986-06-26','1987-06-26'),
(10001,62102,'1987-06-26','1988-06-25'),
(10001,66074,'1988-06-25','1989-06-25'),
(10001,66596,'1989-06-25','1990-06-25'),
(10001,66961,'1990-06-25','1991-06-25'),
(10001,71046,'1991-06-25','1992-06-24'),
(10001,74333,'1992-06-24','1993-06-24'),
(10001,75286,'1993-06-24','1994-06-24'),
(10001,75994,'1994-06-24','1995-06-24'),
(10001,76884,'1995-06-24','1996-06-23'),
(10001,80013,'1996-06-23','1997-06-23'),
(10001,81025,'1997-06-23','1998-06-23'),
(10001,81097,'1998-06-23','1999-06-23');

-- "*" is a projection operator

select name from sys.databases;

select name from sys.tables;

select * from employee

select emp_no, birth_date from employee


-- WHERE

select * from employee
where gender = 'M';

select emp_no, birth_date from employee
where gender = 'M' and emp_no between '10001' and '10014'

select * from employee
where emp_no  in (10003, 10004, 10005)




select name.sys
use new_db;
select name from sys.tables;


select * from dept_manager
order by 2 desc;



select * from employee
where emp_no in (10002, 10005);



select * from salary
where amount > 70000


select * from salary
where amount > 70000
and amount < 75000


select * from salary
where amount > 70000
or amount < 75000


select * from salary
where amount > 70000
or amount < 75000
order by 2 desc;

select name from sys.tables;

select * from salary;
select * from employee;
select * from department;
select * from dept_manager;





select e.emp_no, e.first_name, s.amount 
from employee e
join salary s 
on e.emp_no = s.emp_no 
where s.amount between 65000 and 80000;



https://www.youtube.com/watch?v=MQYHdL7LYQY&list=WL&index=1&t=748s




-- Query Filtering Questions


/*
The WHERE clause can be combined with AND, OR, and NOT operators.

The AND and OR operators are used to filter records based on more than one condition:

- The AND operator displays a record if all the conditions separated by AND are TRUE.
- The OR operator displays a record if any of the conditions separated by OR is TRUE.

The NOT operator displays a record if the conditions is NOT TRUE.
*/



-- 1. selects all fields from "patients" where first_name is "John" AND city is "Toronto"
select * from patients
where first_name = 'John' AND city = 'Toronto';


-- 2. selects all fields from "patients" where city is "Hamilton" OR "Toronto"
select * from patients 
where city = "Hamilton" OR city = "Toronto";

-- 3.selects all fields from "patients" where province_id is NOT "ON" (Ontario)
select * from patients 
where NOT province_id = 'ON'


-- 4. Show first name, last name, and gender of patients whose gender is 'M'
select first_name, last_name, gender 
from patients
where gender = "M";


-- 5. Show first name and last name of patients who does not have allergies. (null)
select first_name, last_name
from patients
where allergies is null;


-- 6. Show first name of patients that start with the letter 'C'
select first_name
from patients
where first_name like 'C%';


-- 7 .Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
select first_name, last_name
from patients
where weight between '100' and '120';


-- 8. Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
update patients
set allergies = 'NKA'
where allergies is null;



-- 9. Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
select patient_id, first_name
from patients
where first_name like 's____%s';


-- 10. Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.
select p.patient_id, p.first_name, p.last_name
from patients p
inner join admissions a
on p.patient_id = a.patient_id
where diagnosis = 'Dementia';




-- https://www.sql-practice.com/








































