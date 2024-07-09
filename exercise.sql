create database exercise1;
use  exercise1;
drop table dependents;
drop table employees; 
drop table Dept;
drop table locations;
drop table countries;
drop table regions;
-- creating tables

create table regions (region_id varchar(30) primary key,region_name varchar(30));
create table countries(country_id varchar(30) primary key,country_name varchar(30),region_id varchar(30),foreign key(region_id)references regions(region_id));
create table locations(location_id varchar(30) primary key,street_adress varchar(30),postal_code varchar(30),city varchar(30),state_province varchar(30),country_id varchar(30),foreign key(country_id)references countries(country_id));
create table departments(department_id varchar(30) primary key,department_name varchar(30),location_id varchar(30),foreign key(location_id) references locations(location_id));
create table jobs (job_id varchar(30)primary key,job_title varchar(30),min_salary int,max_salary int);
create table employees(employee_id varchar(30)primary key,first_name varchar(30),last_name varchar(30),email varchar(30),phone_number varchar(30),hire_date date,job_id varchar(30),
foreign key(job_id)references jobs(job_id),salary int,manager_id varchar(30),department_id varchar(30),foreign key(department_id)references Dept(department_id),foreign key(manager_id)references employees(employee_id));
-- alter table employees add foreign key(manager_id)references employees(employee_id);
create table dependents(dependent_id varchar(30) primary key,first_name varchar(30),last_name varchar(30),relationship varchar(30),employee_id varchar(30),foreign key(employee_id)references employees(employee_id));


-- rename departments table to Dept
alter table departments rename Dept;

-- modify column salary from int to small int
alter table employees modify column salary smallint;

-- regions table insertion 
INSERT INTO regions(region_id,region_name) VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES(2,'Americas'); 
INSERT INTO regions(region_id,region_name)VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (4,'Middle East and Africa');

-- countries table insertion
INSERT INTO countries(country_id,country_name,region_id) VALUES(1,'Argentina',2);
INSERT INTO countries(country_id,country_name,region_id)VALUES (2,'Australia',3);
INSERT INTO countries(country_id,country_name,region_id)VALUES (3,'Belgium',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES(4,'Brazil',2);
INSERT INTO countries(country_id,country_name,region_id)VALUES (5,'Canada',2);
INSERT INTO countries(country_id,country_name,region_id)VALUES (6,'Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES(7,'China',3);
INSERT INTO countries(country_id,country_name,region_id)VALUES (8,'Germany',1);
INSERT INTO countries(country_id,country_name,region_id)VALUES (9,'Denmark',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES(10,'Egypt',4);
INSERT INTO countries(country_id,country_name,region_id)VALUES (11,'France',1);
INSERT INTO countries(country_id,country_name,region_id)VALUES (12,'HongKong',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES(13,'Israel',4);
INSERT INTO countries(country_id,country_name,region_id)VALUES (14,'India',3);
INSERT INTO countries(country_id,country_name,region_id)VALUES (15,'Italy',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES(16,'Japan',3);
INSERT INTO countries(country_id,country_name,region_id)VALUES (17,'Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id)VALUES (18,'Mexico',2);
INSERT INTO countries(country_id,country_name,region_id)VALUES (19,'Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id)VALUES (20,'Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id)VALUES (21,'Singapore',3);
INSERT INTO countries(country_id,country_name,region_id)VALUES (22,'United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id)VALUES (23,'United States of America',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES(24,'Zambia',4);
INSERT INTO countries(country_id,country_name,region_id)VALUES (25,'Zimbabwe',4);

-- location table insertion
INSERT INTO locations(location_id,street_adress,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas',23);
INSERT INTO locations(location_id,street_adress,postal_code,city,state_province,country_id) VALUES (1500,'2011 Interiors Blvd','99236','South SanFrancisco','California',23);
INSERT INTO locations(location_id,street_adress,postal_code,city,state_province,country_id) VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington',23);
INSERT INTO locations(location_id,street_adress,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario',5);
INSERT INTO locations(location_id,street_adress,postal_code,city,state_province,country_id) VALUES (2400,'8204 Arthur St',NULL,'London',NULL,22);
INSERT INTO locations(location_id,street_adress,postal_code,city,state_province,country_id) VALUES (2500,'Magdalen Centre,Oxford','OX99ZB','Oxford','Oxford',22);
INSERT INTO locations(location_id,street_adress,postal_code,city,state_province,country_id) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria',9);

-- departments table insertion
INSERT INTO Dept(department_id,department_name,location_id) VALUES(1,'Administration',1700);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(2,'Marketing',1800);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(3,'Purchasing',1700);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(4,'Human Resources',2400);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(5,'Shipping',1500);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(6,'IT',1400);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(7,'Public Relations',2700);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(8,'Sales',2500);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(9,'Executive',1700);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(10,'Finance',1700);
INSERT INTO Dept(department_id,department_name,location_id) VALUES(11,'Accounting',1700);

-- jobs table insertion
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (5,'Administration VP',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(8,'HR Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(12,'PR Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES(19,'Stock Manager',5500.00,8500.00);

-- employees table insertion
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(100,'Steven','King','steven@.org','5154567','1987-06-17',4,24000.00,NULL,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(101,'Neena','Kochhar','neena@.org','5114568','1989-09-21',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (102,'Lex','DeHaan','lex@.org','5154569','1993-01-13',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(103,'Alexander','Hunold','alexander@.org','59044567','1990-01-03',9,9000.00,102,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(104,'Bruce','Ernst','bruce@.org','59424568','1991-05-21',9,6000.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(105,'David','Austin','david@s.org','59024569','1997-06-25',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(106,'Valli','Pataballa','valli@.org','59424560','1998-02-05',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(107,'Diana','Lorentz','diana@.org','590235567','1999-02-07',9,4200.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(108,'Nancy','Greenberg','nancyorg','51524569','1994-08-17',7,12000.00,101,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(109,'Daniel','Faviet','daniel@.org','5152469','1994-08-16',6,9000.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(110,'John','Chen','john.chen@.org','51524269','1997-09-28',6,8200.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(111,'Ismael','Sciarra','ismael.sciarra@.org','51524369','1997-09-30',6,7700.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (112,'JoseManuel','Urman','jose manuel@.org','51524469','1998-03-07',6,7800.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(113,'Luis','Popp','luis.popp@.org','51524567','1999-12-07',6,6900.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(114,'Den','Raphaely','den.raphaely@.org','51527561','1994-12-07',14,11000.00,100,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(115,'Alexander','Khoo','alexander@.org','51527562','1995-05-18',13,3100.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(116,'Shelli','Baida','shelli.baida@.org','51127563','1997-12-24',13,2900.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(117,'Sigal','Tobias','sigal.tobias@.org','51527564','1997-07-24',13,2800.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(118,'Guy','Himuro','guy.himuro@.org','51524565','1998-11-15',13,2600.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(119,'Karen','Colmenares','karen.@.org','51527566','1999-08-10',13,2500.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(120,'Matthew','Weiss','matthew.weiss@s.org','6512334','1996-07-18',19,8000.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(121,'Adam','Fripp','adam.fripp@.org','65023234','1997-04-10',19,8200.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(122,'Payam','Kaufling','payam.@.org','65033234','1995-05-01',19,7900.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(123,'Shanta','Vollman','shanta.@.org','65012334','1997-10-10',19,6500.00,100,5);



-- dependents table insertion

INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (1,'Penelope','Gietz','Child',103);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (2,'Nick','Higgins','Child',105);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (3,'Ed','Whalen','Child',107);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (4,'Jennifer','King','Child',100);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (5,'Johnny','Kochhar','Child',101);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (6,'Bette','De Haan','Child',102);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (7,'Grace','Faviet','Child',109);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (9,'Joe','Sciarra','Child',111);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (10,'Christian','Urman','Child',112);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (11,'Zero','Popp','Child',113);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (12,'Karl','Greenberg','Child',108);