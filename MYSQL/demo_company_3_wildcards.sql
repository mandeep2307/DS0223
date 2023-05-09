-- % = any # characters, 
-- _ = one character

-- find any client who are an LLC
select * from client where client_name like '%LLC';

-- find any branch suppliers who are in label business
select * from branch_supplier where supplier_name like '%Lab%';

-- find any employee born in october
select * from employee where birth_day like '____-10%';
select * from employee where birth_day like '____-10-__';

-- find any clients who are schools
select * from client where client_name like '%school%';


select * from employee where birth_day like '____-__-_5';
select * from employee where birth_day like '%5';
select * from employee where birth_day like '%5%';