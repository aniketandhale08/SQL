-- Rank and Dense (nterview Question)

show databases;
use newDB1;
show tables;

select * from employee;	
desc employee;

-- when using the rank and dense_rank , order by is mendatory


-- row_number()
select firstname, lastname, salary, 
row_number() over (order by salary desc) from employee;

-- rank()
select firstname, lastname, salary, 
rank() over (order by salary desc) from employee;

-- dense_rank()
select firstname, lastname, salary, 
dense_rank() over (order by salary desc) from employee;

/*
if there are no duplicates then row number, rank and dense rank lead to similar results..
only the difference comes when there are duplicates..
rank for duplicates same rank is assigned and the for the next entry it skips the ranks..
dense rank it does not skip any ranks in between
whenever you do not have duplicates use row_num
there is some competition
I want find the top 3 positions..
*/


-- this below queery will not show anything bcz there is no rank as '4' if we apply the rank function. it excludes the ranks
select * from 
(select firstname, salary, rank() over(order by salary desc) as row_num from employee) as temptable
where row_num =4; 

-- but this below will show bcz it is using the denserank which include all the rank
select * from 
(select firstname, salary, dense_rank() over(order by salary desc) as row_num from employee) as temptable
where row_num =4; 



-- if there are no duplicate then result from row_num, rank and dense will be same
-- rank will skip the rank 
-- dense_rank will not skip rank












