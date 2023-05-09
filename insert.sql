use organization;
drop table student;

create table student (
student_id int primary key,
name varchar(255),
major varchar(20)
);
desc student;

insert into student values(1, 'jack','Biology');
insert into student values(2, 'kate','Sociology');
insert into student (student_id, name) values (3, 'claire');
insert into student (student_id, name) values (4, 'Mike');

select * from student;