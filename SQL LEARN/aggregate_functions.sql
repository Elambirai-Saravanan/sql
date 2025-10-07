#AGGREGATE FUNCTIONS
/* 
1) MIN
2) MAX
3)COUNT
4)SUM
5)AVG
*/

create schema college;
use college;
CREATE TABLE students (
    id int primary key auto_increment, #auto_increment automatically increase the id number based on number row of data
    name varchar(100),
    department varchar(100),
    marks int,
    age int
);
insert into students (name, department, marks, age)
 values
	('Arun', 'ECE', 85, 20),
	('Bala', 'CSE', 90, 21),
	('Kavi', 'EEE', 78, 22),
	('Ravi', 'ECE', 88, 20),
	('Priya', 'CSE', 95, 23),
	('Sasi', 'ECE', 67, 21),
	('Meena', 'EEE', 89, 22);
    
select * from students;

#count 
select COUNT(*) as total_students from students;

#sum
select sum(marks) as total_marks from students;

#avg
select avg(marks) as average_mark from students;

#min and max
select max(marks) as highest,min(marks) as lowest from students;

#group by with aggregate functions
select department, avg(marks) as avg_marks
from students
group by department;

#having clause with aggregate function
select department, avg(marks) as avg_marks
from students
group by department
having avg_marks > 85;

#combine multiple aggregate function
select department,count(*) as total_students,sum(marks) as total_marks,round(avg(marks)) as average_mark,max(marks) as highest,min(marks) as lowest 
from students
group by department;



