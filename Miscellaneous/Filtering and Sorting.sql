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


-- 11. Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.
select (select count(*) from patients where gender = 'M') as male_count,
        (select count(*) from patients where gender = 'F') as female_count


-- 12. Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.
select first_name, last_name , allergies
from patients
where allergies = 'Penicillin' or allergies ='Morphine'
order by allergies, first_name, last_name asc


-- 13. Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. Sort the list starting from the earliest birth_date.
select first_name, last_name, birth_date
from patients
where  year(birth_date) between 1970 and 1979
order by birth_date asc


-- 14. Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni'
select max(weight) - min(weight) as weight_delta
from patients
where last_name = 'Maroni'


-- 15. Show all columns for patient_id 542's most recent admission_date.
select * from admissions
where patient_id = 542
order by admission_date desc
limit 1


-- 16. Show patient_id, attending_doctor_id, and diagnosis for admissions that match one of the two criteria: 1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19. 2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters.
select a.patient_id, a.attending_doctor_id, a.diagnosis
from admissions a
where (a.patient_id % 2 != 0 and a.attending_doctor_id in(1,5,19))
or 
(len(a.patient_id ) = 3 and a.attending_doctor_id like '%2%')	


-- 17. Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table. (Their patient_id does not exist in any admissions.patient_id rows.)
select patient_id, first_name, last_name
from patients 
where patient_id not in (select patient_id from admissions)
                      

-- 18. Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.
SELECT 
    p.first_name || ' ' || p.last_name AS patient_name,
    a.admission_date,
    d.first_name || ' ' || d.last_name AS doctor_name
FROM patients p
JOIN admissions a ON p.patient_id = a.patient_id
JOIN doctors d ON a.attending_doctor_id = d.doctor_id
WHERE a.admission_date = (
    SELECT MAX(a2.admission_date)
    FROM admissions a2
    WHERE a2.patient_id = p.patient_id
);




















-- https://www.sql-practice.com/








































