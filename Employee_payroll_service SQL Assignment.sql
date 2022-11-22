/* employee_payroll_service databsae */

# UC1
create database payroll_service;
use payroll_service;

#UC2
create table employee_payroll(
id int not null auto_increment,
name varchar(30) not null ,
salary double not null,
start date not null,
primary key(id) 
);

#UC3
insert into employee_payroll(name,salary,start)
values("Sarvesh",6000000.0,'2022-08-22'),
("Prathamesh",8000000.0,'2022-09-11'),
("Rutik",7000000.0,'2022-09-13'),
("Vaibhav",6000000.0,'2022-07-21');

#UC4
select * from employee_payroll;

#UC5
select * from employee_payroll 
where name = "Rutik";
select * from employee_payroll
where start between cast('2022-08-01' as date)  and date(now());

#UC6
alter table employee_payroll add gender varchar(10) after name;
update employee_payroll 
set gender = "Male" 
where id < 3;
update employee_payroll 
set gender = "Female" 
where id = 3;
update employee_payroll 
set gender = "Male" 
where id = 4;

#UC7
select sum(salary) from employee_payroll
where gender = "Male" group by gender;
select avg(salary) from employee_payroll
where gender = "Male" group by gender;
select min(salary) from employee_payroll
where gender = "Male" group by gender;
select max(salary) from employee_payroll
where gender = "Male" group by gender;
select count(id) from employee_payroll
where gender = "Male" group by gender;
select count(id) from employee_payroll
where gender = "Female" group by gender;

#UC8
alter table employee_payroll add phonenumber int after start;
alter table employee_payroll add address varchar(100) after phonenumber;
alter table employee_payroll add department varchar(50) after salary;
update employee_payroll set department = 'devops', phonenumber = 123 , address = "mumbai"
where id = 1;
update employee_payroll set department = 'full-stack-developer', phonenumber = 321 , address = "mumbai"
where id = 2;
update employee_payroll set department = '.net developer', phonenumber = 567 , address = "mumbai"
where id = 4;
update employee_payroll set department = 'production', phonenumber = 789 , address = "thane"
where id = 3;

#UC9
alter table employee_payroll add basic_pay int after salary;
alter table employee_payroll add deductions int after basic_pay;
alter table employee_payroll add taxable_pay int after deductions;
alter table employee_payroll add income_tax int after taxable_pay;
alter table employee_payroll add net_pay int after income_tax;
update employee_payroll set basic_pay = 5000000.0 , deductions = 100000.0, taxable_pay = 200000.0, income_tax = 200000.0 , net_pay = 500000.0
where id = 1;
update employee_payroll set basic_pay = 7000000.0 , deductions = 200000.0, taxable_pay = 200000.0, income_tax = 200000.0 , net_pay = 600000.0
where id = 2;
update employee_payroll set basic_pay = 6000000.0 , deductions = 200000.0, taxable_pay = 300000.0, income_tax = 200000.0 , net_pay = 700000.0
where id = 3;
update employee_payroll set basic_pay = 5000000.0 , deductions = 100000.0, taxable_pay = 200000.0, income_tax = 200000.0 , net_pay = 500000.0
where id = 4;

#UC10 ER-diagram of created table

#UC11 creating new table with ER-diagram

#UC12
select * from employee_payroll;
insert into employee_department(employee_id,department_id)
values(1,21),
(3,25),
(2,31),
(4,29);


