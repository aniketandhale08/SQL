create database newDB1;
show databases;
use newDB1;
show tables;

create table students (
student_id int AUTO_INCREMENT,
student_fname varchar(30) NOT NULL,
student_lname varchar(30) NOT NULL,
student_mname varchar(30),
student_email varchar(30) NOT NULL,
student_phone varchar(15) NOT NULL,
student_alternate_phone varchar(15),
enrollment_date TIMESTAMP NOT NULL,
years_of_exp int NOT NULL,
student_company varchar(30),
batch_date varchar(30) NOT NULL,
source_of_joining varchar(30) NOT NULL,
location varchar(30) NOT NULL,
primary key (student_id),
unique key (student_email)
);

desc students;

select * from students;

ALTER TABLE students MODIFY enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;


insert into students (student_fname, student_lname, student_email, student_phone, years_of_exp, student_company, batch_date, source_of_joining, location) 
               values('virat', 'kohli', 'virat@gmail.com', '9292929292', 3, 'flipkart', '5-02-2021', 'linkedin', 'hyderabad');
insert into students (student_fname, student_lname, student_email, student_phone, years_of_exp, batch_date, source_of_joining, location) 
               values('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393', 12,'19-02-2021', 'google', 'bangalore');
insert into students (student_fname, student_lname, student_email, student_phone, years_of_exp, student_company, batch_date, source_of_joining, location) 
			   values('rahul', 'dravid', 'rahul@gmail.com', '9494949494', 8, 'walmart', '19-02-2021', 'quora', 'chennai');
               
-- multiple inserts at a time
insert into students (student_fname, student_lname, student_email, student_phone, years_of_exp, student_company, batch_date, source_of_joining, location) 
values('kapil', 'dev', 'kapil@gmail.com', '9291292292', 15, 'microsoft', '5-02-2021', 'friend', 'pune'),
      ('brian', 'lara', 'brian@gmail.com', '9291297292', 18, 'tcs', '15-02-2021', 'youtube', 'pune'), 
      ('carl', 'hooper', 'carl@gmail.com', '9291297392', 20, 'wipro', '19-02-2021', 'youtube', 'pune'), 
      ('saurabh', 'ganguly', 'saurabh@gmail.com', '9291297492', 14, 'wipro', '19-02-2021', 'google', 'chennai');


drop table students;

create table courses ( course_id int NOT NULL, course_name varchar(30) NOT NULL, course_duration_months int NOT NULL, course_fee int NOT NULL, PRIMARY KEY (course_id) );

insert into courses values (1, 'big data', 6, 50000);
insert into courses values (2, 'web development', 3, 20000);
insert into courses values (3, 'data science', 6, 40000);
insert into courses values (4, 'devops', 1, 10000);

create table students (
student_id int AUTO_INCREMENT,
student_fname varchar(30) NOT NULL,
student_lname varchar(30) NOT NULL,
student_mname varchar(30),
student_email varchar(30) NOT NULL,
student_phone varchar(15) NOT NULL,
student_alternate_phone varchar(15),
enrollment_date TIMESTAMP NOT NULL,
selected_course int NOT NULL DEFAULT 1,
years_of_exp int NOT NULL,
student_company varchar(30),
batch_date varchar(30) NOT NULL,
source_of_joining varchar(30) NOT NULL,
location varchar(30) NOT NULL, 
primary key (student_id),
unique key (student_email),
FOREIGN KEY(selected_course) REFERENCES courses (course_id)
);

ALTER TABLE students MODIFY enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

insert into students (student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location) 
               values('virat', 'kohli', 'virat@gmail.com', '9292929292',2 , 3, 'flipkart', '5-02-2021', 'linkedin', 'hyderabad');
insert into students (student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location) 
               values('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393',1 , 12, 'EXL','19-02-2021', 'google', 'bangalore');
insert into students (student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location) 
			   values('rahul', 'dravid', 'rahul@gmail.com', '9494949494', 3, 8, 'walmart', '19-02-2021', 'quora', 'chennai');
      
insert into students (student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location) 
values('kapil', 'dev', 'kapil@gmail.com', '9291292292', 2, 15, 'microsoft', '5-02-2021', 'friend', 'pune'),
	  ('brian', 'lara', 'brian@gmail.com', '9291297292', 1, 7, 'tcs', '15-02-2021', 'youtube', 'pune'), 
	  ('carl', 'hooper', 'carl@gmail.com', '9291297392', 1,  10, 'wipro', '19-02-2021', 'youtube', 'pune'), 
	  ('saurabh', 'ganguly', 'saurabh@gmail.com', '9291297492', 4, 14, 'wipro', '19-02-2021', 'google', 'chennai');

-- this will through because we dont have course id 5
insert into students (student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location) 
			   values('anu', 'dravid', 'anu@gmail.com', '9494949494', 5, 8, 'walmart', '19-02-2021', 'quora', 'chennai');
      

select * from courses;
select * from students;
desc students;

-- foreign key constrain scenario

/* We can't delete any course from the course table like suppose if i want to run this below query,
delete from courses where course_id=2;
But I can't able to run this because, many student have enrolled in course 2, so it will be like violation of foreign key constraint. 
because, we have already set the constraint of foreign key for both table. but, hypothetically if it get run then the table which have course-id as 2, 
that data it will become bad data. but this will not going to happen and another one scenario is we don't have a student who has enrolled in course 4 so, 
we can delete that data by running the command as below,

delete from courses where course_id=4; 
*/


/* the foreign key constraint is used to prevent actions that would destroy links between two tables..
A foreign key is a field in one table that refers to the primary key in another table.
selected_course is a foreign key in students table which refers to course_id (primary key) in courses table.
the table with the foreign key is called the child table, the table with primary key is called the parent or referenced table. 

we have studied
NOT NULL
UNIQUE KEY
PRIMARY KEY
FOREIGN KEY
I CHECK CONSTRAINT (not supported in mysql)

constraints are used to limit the type of data that can go into a table.
This ensures the accuracy and reliability of the data is maintaineed.
If there is any violation then the action is aborted.
*/

