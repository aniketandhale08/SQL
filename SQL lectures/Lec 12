-- WHERE AND HAVING CLAUSE (Interviwe Questions)

show tables;
select * from students;

-- to get knwo hwo many students have joined from each source like linkdin or youtube (each category count)

select source_of_joining, count(*) as total from students group by source_of_joining;

-- in same query i want the only source_of_joining whose count is more than 1

select source_of_joining, count(*) as total from students group by source_of_joining having total> 1;

-- where clause is only used to filter the indiavidual records before the aggregation
-- having clause is used after group by, mainly used to filter the records after grouping is happended.

select * from students;
desc students;
select source_of_joining, count(*) as total from students where source_of_joining = 'youtube';


-- The location from which more than 1 student has joined and they have more than 9 YOE
select location, count(*) as total from students where years_of_exp > 9 group by location having total > 1; 



/*

WHERE is used before GROUP BY. and do filtering on indiavidual records.
HAVING is used after GROUP BY. and do filtering on aggregated records.

can we where and havign in same query also.

WHERE filters rows based on a condition.
HAVING filters groups based on an aggregate condition.

WHERE works with columns and raw data.
HAVING works with aggregate functions like COUNT(), SUM(), etc.

where is more performant than having.
*/



