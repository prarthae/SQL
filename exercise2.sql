USE exercise1;
-- Write a query t display country name
select country_name from countries;

-- Write query to display specific columns like email and phone number for all the employees
select email,phone_number from employees;

-- write a query to displya the data of employee whoes last name is "King"
select * from employees where last_name="King";

-- write a query to find hire date of employee whoes last name="King" or last name="Austin"
select hire_date from employees where last_name="King" or last_name="Austin";
-- select * from employees

-- write a query to display name of the employees who is Shipping clerk
select first_name,last_name from employees where job_id=(select job_id from jobs where job_title="Shipping Clerk");
select *from jobs;
select * from employees;

-- write query to get all the employees who work for department 8
select * from employees where department_id=8;

-- write query to display the departments in the descending oreder
select department_name from Dept order by department_name desc;

-- write a query to display all the employees whoes last name starts with "k"
select first_name,last_name from employees where last_name like "k%";


-- display name of employees whoes hire date are between 1995 and 1997
select first_name,last_name from employees where hire_date between '1995-01-01' and '1997-12-31';


-- write query to display jobs where max salary is less than 50000
select job_title from jobs where max_salary<50000;


-- write a query to display email adress in lower case
select lower(email) as email from employees;

-- write a qurey to display name of employees who hired in 1995
select first_name,last_name from employees where hire_date between '1995-01-01' and '1995-12-31';

-- write a query to insert an employee "Paul Newton" in departmwnt 11
insert into employees(employee_id,first_name,last_name,department_id)values(207,"Paul","Newton",11);

-- write query to delete the shipping department
delete from Dept where department_name='Shipping';

