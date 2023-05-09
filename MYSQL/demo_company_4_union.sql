select first_name, last_name from employee;

show databases;
use demo_db;

select first_name from employee
union
select last_name from employee;






use organization;
-- find a list of employees and branch names
select  branch_name from branch;
select first_name from employee;

select emp_id from employee
union
select branch_name from branch;

-- the above query should have the same datatype and  the number of columns should be same.


-- multiple unions
select first_name from employee
union
select branch_name from branch
union
select client_name from client;


-- find the list of all clients and branch suppliers name
select client_name, client.branch_id from client
union
select supplier_name, branch_supplier.branch_id from branch_supplier;




-- more readable and clear query
SELECT 
    client_name, client.branch_id
FROM
    client 
UNION SELECT 
    supplier_name, branch_supplier.branch_id
FROM
    branch_supplier;




-- find the list of all the money spent or earned by the company
select salary from employee
union
select total_sales from works_with;