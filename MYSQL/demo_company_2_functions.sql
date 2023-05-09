-- sql functions

-- find the number of employees
select count(emp_id) from employee;

-- find the count of employees having supervisor
select count(super_id) from employee;

-- find the count female boorn after 1970
select count(emp_id) from employee where sex='F' and birth_day > '1970-01-01';

-- find the average of all employee salary
select avg(salary) from employee;

-- find the average of all male employee salary
select avg(salary) from employee where sex='M';
select avg(salary) from employee where sex='F';

-- find the sum of all employee salary
select sum(salary) from employee;

-- find out how many males and females there are
select count(sex),sex from employee group by sex;

-- find the total sales o each salesman
select sum(total_sales), emp_id from works_with group by emp_id;

-- find how much money each client spend with the branch
select sum(total_sales), client_id from works_with group by client_id;



