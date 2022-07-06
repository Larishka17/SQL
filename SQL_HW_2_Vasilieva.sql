-- 1) Create the employees table
-- - id. serial, primary key,
-- - employee_name. Varchar(50), not null
-- 2) Populate the employee table with 70 rows.
create table employees(
	id serial primary key,
	employee_name varchar(50) unique not null
);

insert into employees(id, employee_name)
values (default, 'Jerry Flowers'),
(default, 'Andy Larson'),
(default,'Sandra Murphy'),
(default,'Micheal Cross'),
(default,'Elizabeth Perkins'),
(default,'David Weber'),
(default,'Mathew Martin'),
(default,'Janice Lewis'),
(default,'Glen Jones'),
(default,'Stephanie Brown'),
(default,'Linda Baker'),
(default,'Monica Lee'),
(default,'Alfredo Garcia'),
(default,'Mark Klein'),
(default,'Patrick Johnson'),
(default,'Linda Walker'),
(default,'Carolyn Jones'),
(default,'Alice Campbell'),
(default,'Clarence Rogers'),
(default,'Barbara Barnett'),
(default,'Paula Brooks'),
(default,'Catherine Herrera'),
(default,'David Lamb'),
(default,'Christine Walker'),
(default,'David Jackson'),
(default,'Constance Jenkins'),
(default,'Stephen Willis'),
(default,'Linda Coleman'),
(default,'Ruben Morris'),
(default,'Yvonne Cain'),
(default,'Max Brown'),
(default,'Renee Gomez'),
(default,'Charles Jackson'),
(default,'Julio Fleming'),
(default,'Dorothy Bowman'),
(default,'Ruth Brown'),
(default,'Lawrence Moody'),
(default,'Charlotte Young'),
(default,'Kim Allen'),
(default,'Lisa Morris'),
(default,'Cheryl May'),
(default,'Barbara Santiago'),
(default,'Terry Jensen'),
(default,'Emily Curtis'),
(default,'Evelyn Jordan'),
(default,'John Gray'),
(default,'Robert Garrett'),
(default,'William Morrison'),
(default,'Julia Craig'),
(default,'Joseph Farmer'),
(default,'Paul Dean'),
(default,'Richard Taylor'),
(default,'Melissa Perez'),
(default,'William Brown'),
(default,'Norma Lopez'),
(default,'Glenda Robinson'),
(default,'John Cox'),
(default,'William Thompson'),
(default,'Samantha Soto'),
(default,'Jon Stone'),
(default,'Matthew Hanson'),
(default,'Cindy Foster'),
(default,'Cynthia Johnson'),
(default,'Frank Hernandez'),
(default,'Kevin Martin'),
(default,'Hazel Shaw'),
(default,'Katherine Sims'),
(default,'Paul Stewart'),
(default,'Katie Wright'),
(default,'Deborah Smith');

-- 3) Create salary table
-- - id. serial key,
-- - monthly_salary. Int, not null
-- 4) Populate the salary table with 15 rows:
-- - 1000
-- - 1100
-- - 1200
-- - 1300
-- - 1400
-- - 1500
-- - 1600
-- - 1700
-- - 1800
-- - 1900
-- - 2000
-- - 2100
-- - 2200
-- - 2300
-- - 2400
-- - 2500
create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

-- 5) Create table employee_salary
-- - id. serial key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- 6) Populate the employee_salary table with 40 rows:
-- - in 10 lines out of 40 insert non-existent employee_id
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null 
);

insert into employee_salary (employee_id, salary_id)
values (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 16),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (37, 5),
	   (49, 8),
	   (63, 6),
	   (18, 15),
	   (38, 1),
	   (65, 3),
	   (41, 11),
	   (69, 12),
	   (67, 14),
	   (70, 5),
	   (24, 9),
	   (29, 4),
	   (6, 11),
	   (4, 13),
	   (36, 6),
	   (59, 1),
	   (50, 8),
	   (53, 10),
	   (19, 3),
	   (71, 6),
	   (72, 13),
	   (73, 4),
	   (74, 1),
	   (75, 8),
	   (76, 2),
	   (77, 9),
	   (78, 16),
	   (79, 10),
	   (80, 3);

-- 7) Create roles table
-- - id. serial key,
-- - role_name. int, not null, unique
-- 8) Change column type role_name from int to varchar(30)
-- 9) Populate the roles table with 20 rows.

	create table roles(
	id serial primary key,
	role_name int unique not null
);

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

-- 10) Create table roles_employee
-- - id. serial key,
-- - employee_id. Int, not null, unique (foreign key for employees table, id field)
-- - role_id. Int, not null (foreign key for roles table, id field)
-- 11) Populate the roles_employee table with 40 rows.
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 7, 20),
	   (default, 9, 4),
	   (default, 8, 9),
	   (default, 5, 13),
	   (default, 23, 4),
	   (default, 11, 2),
	   (default, 10, 9),
	   (default, 22, 13),
	   (default, 21, 3),
	   (default, 34, 4),
	   (default, 6, 7),
	   (default, 1, 19),
	   (default, 14, 8),
	   (default, 2, 17),
	   (default, 52, 2),
	   (default, 38, 9),
	   (default, 66, 13),
	   (default, 41, 11),
	   (default, 69, 5),
	   (default, 67, 14),
	   (default, 70, 5),
	   (default, 40, 16),
	   (default, 17, 20),
	   (default, 35, 7),
	   (default, 4, 11),
	   (default, 36, 6),
	   (default, 59, 1),
	   (default, 50, 8),
	   (default, 53, 10),
	   (default, 19, 3),
	   (default, 24, 6),
	   (default, 30, 5),
	   (default, 68, 4),
	   (default, 12, 1),
	   (default, 28, 4),
	   (default, 48, 16),
	   (default, 13, 9),
	   (default, 37, 18),
	   (default, 16, 13),
	   (default, 55, 5);
	  
	

