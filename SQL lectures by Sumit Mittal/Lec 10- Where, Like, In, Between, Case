show databases;
use newDB1;
show tables;
select * from students;

-- people from bangalore
select * from students where location = 'bangalore';

-- people are not from bangalore
select * from students where location != 'bangalore';



select * from courses;

-- courses which have the word data
select * from courses where course_name like '%data%';

-- courses which do not have the word data
select * from courses where course_name not like '%data%';


select * from students;

-- students from balgalore, joined course through linkdin and and have less than 8 years of exp.
select * from students where location = 'hyderabad' and source_of_joining = 'linkedin' and years_of_exp < 8;

-- I want people who have Less than 8 years of experience and more than 12 years of experience, in betwwen 8-12 i dont want them
 select * from students where years_of_exp < 8 or years_of_exp > 12;
 -- OR
select * from students where years_of_exp not between 8 and 12;

select * from students where years_of_exp between 8 and 12;

-- get list of students who are working for flipkart, walmart or microsoft 
select * from students where student_company in ('flipkart', 'walmart','microsoft');

select * from students where student_company not in ('flipkart', 'walmart','microsoft');


select * from courses;

-- if a course is more than 4 months we categorize it as masters program else it is a diploma

select course_id, course_name, course_fee,
case when course_duration_months < 4 then 'masters'
else 'diploma'
end as course_type
from courses;

select * from students;

-- people who works for flipkart, walmart, microsoft are in product based and other are in service based
select student_id, student_fname, student_lname, student_email, student_phone, years_of_exp, student_company,
case when student_company in ('flipkart', 'walmart','microsoft') then 'product_based'
else 'service_based'
end as company_type
from students;










