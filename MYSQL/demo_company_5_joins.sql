-- INSERTING A NEW RECORD
insert into branch values(4,'Buffallo',NULL, NULL);

select * from branch;

select branch_name, mgr_id from branch;
select first_name,last_name from employee where emp_id in (100,102,106);


-- inner join
-- find all the branches and the name of their managers
select employee.emp_id, employee.first_name, branch.branch_name
from employee
join branch
on employee.emp_id = branch.mgr_id;




-- better way to write this query
select e.emp_id, e.first_name, b.branch_name
from employee as e
join branch as b
on e.emp_id = b.mgr_id;




-- left join
-- this will include all the rows from the left table
select e.emp_id, e.first_name, b.branch_name
from employee as e
left join branch as b
on e.emp_id = b.mgr_id;


-- right join
-- this will include all the rows from the right table
select e.emp_id, e.first_name, b.branch_name
from employee as e
right join branch as b
on e.emp_id = b.mgr_id;

-- full outer join
-- combination of left and right table
-- MYSQL does not support full outer join
select e.emp_id, e.first_name, b.branch_name
from employee as e
full outer join branch as b
on e.emp_id = b.mgr_id;