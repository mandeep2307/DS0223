-- find the names of all the employees who have sold over 30,000 to a single client
--         -- step 1 - get the emp_id of all the employees who have made a sale of more than 30,000 to a single client
select emp_id from works_with where total_sales > 30000;

--         -- step 2 - list down the names of the employees with above mentioned emp_id
select first_name, last_name from employee where emp_id in (102,105,105,105);

-- Nested query
-- merge these queries now
SELECT first_name, last_name FROM employee WHERE emp_id IN (SELECT emp_id FROM works_with WHERE total_sales > 30000);



-- find all the clients who are handled by the  branch that Micheal Scott manages
-- Assume you know Micheal's emp_id
select client.client_name
from client
where client.branch_id = (
select branch.branch_id from branch
where branch.mgr_id = 102
);
