show databases;

use sql_intro;

show tables;

create table employees (Emp_Id int primary key, Emp_name varchar(25),Age int, Gender varchar(1),
 Doj date, Dept varchar(20),City varchar(15), Salary float); 
 describe employees;
 insert into employees values
 (101, "David", 27, "M", "2009-09-29", "Sales", "Chicago",  75000),
 (108, "Maria", 25, "F", "2008-06-26", "Tech", "Kazakistan", 80000),
 (121, "Joseph", 30, "M", "2007-08-26", "Finance", "Austine", 78000);
 select * from employees;
 select avg (age) from employees;
 select dept, round(avg(age),1) as average_age from employees
 group by dept;
 select dept, sum(salary) as total_salary from employees
 group by dept;
 select count(emp_id), city from employees
 group by city;
 select year(doj) as year, count(emp_id) from employees
 group by doj;
 create table sales (product_id int, sell_price float, quantity int, country varchar(15));
 insert into sales values 
 (121, 345.5, 3, "Germany"),
 (123, 655.0, 4, "India"),
 (145, 499.0, 10, "Fineland");
employeeemployee select * from sales;
 select product_id, sum(sell_price * quantity) as revenue 
 from sales group by product_id;
 select * from employees;
 select dept, avg(salary) as avg_salary
 from employees 
 group by dept
 having avg(salary)>75000;
 select city, sum(salary) as total
 from employees
 group by city
 having sum(salary)>70000;