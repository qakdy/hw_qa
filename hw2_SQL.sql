-- 1) Создать таблицу employees 
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
)

-- 2) Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values ('Dorothy Morales'),
	   ('Charles Rios'),
	   ('Brian Nunez'),
	   ('Joan Bennett'),
	   ('Joseph Davis'),
	   ('Michelle Harris'),
	   ('Kenneth Anderson'),
	   ('William Stewart'),
	   ('Don Rose'),
	   ('Sarah Taylor'),
	   ('Evelyn Jensen'),
	   ('Florence Johnson'),
	   ('Virginia Russell'),
	   ('Thomas Moss'),
	   ('Cathy Pearson'),
	   ('Gail Davidson'),
	   ('Gladys Hanson'),
	   ('Susan Lewis'),
	   ('Irma Peterson'),
	   ('Tracy Parsons'),
	   ('Harold Martin'),
	   ('Derrick Davis'),
	   ('Angela Hamilton'),
	   ('Diane Soto'),
	   ('Mildred Chapman'),
	   ('Herbert Hanson'),
	   ('Anna Francis'),
	   ('Jeff Figueroa'),
	   ('Matthew Scott'),
	   ('Melissa Dawson'),
	   ('Amy Harris'),
	   ('Charles Lee'),
	   ('James Robinson'),
	   ('Daniel Davis'),
	   ('Angela King'),
	   ('Carmen Brooks'),
	   ('Fred Phillips'),
	   ('Michael Terry'),
	   ('Ellen Clark'),
	   ('Patsy Nelson'),
	   ('Anthony Hubbard'),
	   ('Dennis Knight'),
	   ('Darlene Wilson'),
	   ('Mark Smith'),
	   ('Ella Williams'),
	   ('Bradley Williams'),
	   ('Barry Gibson'),
	   ('Christopher Berry'),
	   ('Janice Ramos'),
	   ('Frank Kennedy'),
	   ('Ray Terry'),
	   ('Vivian Adams'),
	   ('Eddie Griffin'),
	   ('Michael Washington'),
	   ('Elizabeth Miller'),
	   ('David Chavez'),
	   ('Jason Freeman'),
	   ('Willie McGuire'),
	   ('Julie Adams'),
	   ('Robert Peters'),
	   ('Edwin Fleming'),
	   ('Judy King'),
	   ('Sherry White'),
	   ('Shirley Morris'),
	   ('Paul Howell'),
	   ('Debra Mills'),
	   ('Miriam Mitchell'),
	   ('Mary Peterson'),
	   ('Douglas Herrera'),
	   ('Lisa Huff');

-- 3)Создать таблицу salary 
create table salary(
	id serial primary key,
	monthly_salary int not null
)

-- 4) Наполнить таблицу salary 15 строками
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

-- 5)Создать таблицу employee_salary 
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null	
)

-- 6) Наполнить таблицу employee_salary 40 строками в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values (3,7),
	   (1,4),
	   (5,9),
	   (40,13),
	   (23,4),
	   (11,2),
	   (52,10),
	   (15,13),
	   (26,4),
	   (16,1),
	   (33,7),
	   (71,11),
	   (72,1),
	   (73,4),
	   (74,11),
	   (75,9),
	   (76,8),
	   (77,10),
	   (78,9),
	   (79,13),
	   (80,7),
	   (2,3),
	   (70,7),
	   (69,3),
	   (4,9),
	   (6,9),
	   (7,11),
	   (8,1),
	   (9,13),
	   (10,14),
	   (12,5),
	   (13,10),
	   (49,9),
	   (50,15),
	   (39,2),
	   (22,3),
	   (66,13),
	   (67,12),
	   (44,8),
	   (45,1);

-- 7) Создать таблицу roles
create table roles(
	id serial primary key,
	role_name int not null unique
)

-- 8) Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar(30);

-- 9) Наполнить таблицу roles 20 строками:
insert into roles(role_name)
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

-- 10)Создать таблицу roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
	  references employees(id),
	foreign key (role_id)
	  references roles(id)
)

-- 11) Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (7,2),
	   (20,4),
	   (3,9),
	   (5,13),
	   (23,4),
	   (11,2),
	   (10,9),
	   (22,13),
	   (21,7),
	   (39,4),
	   (6,7),
	   (1,20),
	   (2,19),
	   (4,15),
	   (66,1),
	   (55,6),
	   (44,7),
	   (33,6),
	   (69,8),
	   (70,20),
	   (34,16),
	   (57,4),
	   (25,1),
	   (24,1),
	   (35,2),
	   (40,1),
	   (41,2),
	   (42,3),
	   (12,4),
	   (13,5),
	   (14,18),
	   (15,17),
	   (16,7),
	   (17,8),
	   (18,5),
	   (30,11),
	   (19,13),
	   (29,2),
	   (54,4),
	   (56,4);















	  







