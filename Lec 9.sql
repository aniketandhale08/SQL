show databases;
use newDB1;
show tables;
select * from students;

-- we already have table courses where the course_duration_months is in int but what if we want to insert the duration like 6.5 which is decimal.
-- so for that we will be creating the new table courses_new
select * from courses;

-- here decimal(3,1) means,
-- 1. decimal is the datatype
-- 2. (3,1) is like 3 means the whole digit is 3 like 3.12. and 1 means after the point there should be only one digit


create table courses_new(
course_id int NOT NULL,
course_name varchar(30) NOT NULL,
course_duration_months decimal(3,1) NOT NULL,
course_fee int NOT NULL,
PRIMARY KEY(course_id)
);

desc courses_new;

-- now we can insert the values like decimal in course_duration_months
insert into courses_new values(1, 'big data', 6.5, 50000);
insert into courses_new values (2, 'web development', 3.5, 20000);
insert into courses_new values (3, 'data science', 6, 40000);

select * from courses_new;

update courses_new set course_fee = '40000'
where course_id= 2;


-- we want to get know that in which time we inserted any record
-- so to do this we have to drop the previous table and create new

drop table courses_new;

create table courses_new(
course_id int NOT NULL,
course_name varchar(30) NOT NULL,
course_duration_months decimal(3,1) NOT NULL,
course_fee int NOT NULL,
changed_at timestamp default now(),
PRIMARY KEY(course_id)
);

select * from courses_new;

-- now you can insert this below values but as we are not giving the timestamp manually, we have to mention all column in insert command.
-- otherwise it will give us error.

-- this below will give error
insert into courses_new values(1, 'big data', 6.5, 50000);
insert into courses_new values (2, 'web development', 3.5, 20000);
insert into courses_new values (3, 'data science', 6, 40000);


-- now you can insert this below values
insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (1, 'big data', 6.5, 50000);
insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (2, 'web development', 3.5, 20000);
insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (3, 'data science', 6, 40000);
select * from courses_new;


-- insert one more

insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (4, 'devops', 10.5, 80000);


-- change the fee of web dev to 30000, and see is timestamp is changing or not

update courses_new set course_fee= '30000'
where course_name = 'web development';

-- no timestamp is not changed
select * from courses_new;

-- so after upadetion of any value teh timestamp is not chnaging buyt we want it should be changed
-- so just add, 'on update now()' in that column
-- now() means current_timestamp(), you can replace it with this
-- so to do changes we are again droping the table

drop table courses_new;

create table courses_new(
course_id int NOT NULL,
course_name varchar(30) NOT NULL,
course_duration_months decimal(3,1) NOT NULL,
course_fee int NOT NULL,
changed_at timestamp default now() on update now(),
PRIMARY KEY(course_id)
);

select * from courses_new;

insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (1, 'big data', 6.5, 50000);
insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (2, 'web development', 3.5, 20000);
insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (3, 'data science', 6, 40000);
insert into courses_new(course_id, course_name, course_duration_months, course_fee) values (4, 'devops', 10.5, 80000);


-- after runnig teh below commadn it will change the timestamp
update courses_new set course_fee= '30000'
where course_name = 'web development';

-- decimal(5,3) means total 5 digits will be there and after point there will be 3 digits













