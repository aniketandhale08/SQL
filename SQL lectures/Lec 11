-- JOINS

show databases;
use newDB1;
show tables;
select * from students;
select * from courses;
select * from courses_new;

/* 
Order in the Query:
1. The table written before the JOIN keyword is the left table.
2. The table written after the JOIN keyword is the right table.
*/

-- INNER JOIN 

select students.student_fname, courses.course_name from students join courses on students.selected_course = courses.course_id;

-- this above is inner join, only the matching records are shown up, non matching are discarded




-- LEFT OUTER JOIN

select * from students;
select * from courses_new;
-- delete from courses_new where course_id = 3;

select students.student_fname, courses_new.course_name from students left join courses_new on students.selected_course = courses_new.course_id;

/*
1. The query performs a LEFT JOIN between the students table and the courses_new table.

2. A LEFT JOIN ensures that all records from the left table (students) are included in the result, 
even if there are no matching records in the right table (courses_new).

3. For students with selected_course as 3 (e.g., 'rahul'), 
there is no corresponding record in the courses_new table because course_id = 3 does not exist in courses_new. 
Therefore, the course_name for these rows is displayed as NULL in the result.
*/


-- RIGHT OUTER JOIN
-- give all matching record from left & right table + all matching records in the right table which does not have match in left they shown as NULL

select students.student_fname, courses_new.course_name from students right join courses_new on students.selected_course = courses_new.course_id;

-- as you can see output the students table dont have devops enrollment thats why they shown as NULL 
-- but in courses_new table devops is present thts why it is showing the devops courses in output.
-- so here courses_new is right table and students is left table



-- FULL OUTER JOIN
-- give all matching record  + non matching records from left table + non matching records from right table
-- combination of left outer and right outer join
-- there is not FuLL outer join in SQL so we use UNION

select students.student_fname, courses_new.course_name from students left join courses_new on students.selected_course = courses_new.course_id
union
select students.student_fname, courses_new.course_name from students right join courses_new on students.selected_course = courses_new.course_id;



/*
In nutshell

1. left join will give all record of left table in any case
2. right join will give all record of right table in any case
3. full will give all record of both left and right table in any case

*/







