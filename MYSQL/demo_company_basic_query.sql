select * from employee;

-- display the employee by their salary 
select * from employee order by salary desc;

-- display all employee anda order them by sex first, then first_name and then last_name
select * from employee order by sex, first_name, last_name;

-- find first 5 employees in the table
select * from employee limit 5;

-- find first and last name of all employee
select first_name, last_name from employee;

-- find forename and surname of the employees
select first_name as forename, last_name as surname FROM employee;
select * from employee;

-- find out all the different genders
select distinct sex from employee;
select distinct branch_id from employee;
SELECT DISTINCT super_id FROM employee;


