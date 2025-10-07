#create database
create schema dummy;

#use database
use dummy;

#create TABLE
create table customer (
customer_id int,
customer_name varchar(100),
Address varchar(100),
city varchar(100),
state varchar(100),
zipcode varchar(100),
mobile_number varchar(100)
);

#insert value into a table
insert into customer(customer_id,customer_name,Address,city,state,zipcode,mobile_number)
values
(1,"John Doe","392,Sunset BLVD","New york","NT","10059","555-123-4567"),
(2,"Mary Smith","6900, Main St","San Francisco","CA","94032","555-987-6543"),
(3,"Richard Newman","2040, Riverside Road","San Diego","CA","92010","555-555-5555"),
(4,"Cathy Cook","4010, Speedway","Tucson","AZ","85719","555-321-7890");

#alter name of the column
Alter table customer change address Address varchar(200);

# to view or show all column
Select * from customer;

# to view particular column mention the name of colum instead of *
select customer_name from customer;

# to add a new column in a table
Alter table customer add column mobile_number varchar(100);

# to delete table
drop table customer;

# to delete schema
drop schema dummy;











