-- -- SQL_DDL
-- --Первая часть.

-- Таблица employees

-- 1) Создать таблицу employees
-- 	- id. serial,  primary key,
-- 	- employee_name. Varchar(50), not null
		
 		create table employees (
 		id serial primary key,
 		employee_name varchar(50) not null
 		);

--2) Наполнить таблицу employee 70 строками.

	insert into employees(employee_name)
	values  ('Paki Mcfarland'),
	   	('Kirk Carter'),
	  	('Ferdinand Roman'),
	  	('Lareina Castro'),
	  	('Colby Santos'),
	  	('Bruno Clemons'),
	  	('Dennis Allen'),
	  	('Ebony Clark'),
	  	('Yolanda Hodges'),
	  	('Ramona Spence'),
	  	('August Rivera'),
	  	('Davis Lloyd'),
	  	('Thor Hayes'),
	  	('Rosalyn Durham'),
	  	('Jakeem Mccullough'),
	  	('Simone Schultz'),
	  	('Tate Bender'),
	  	('Mannix Porter'),
	  	('Barrett Morris'),
	  	('Graiden Simpson'),
	  	('Vernon Ferguson'),
	  	('Lawrence Buckley'),
	  	('Carol Weeks'),
	  	('Aimee Morgan'),
	  	('Pandora Dillon'),
	  	('Channing Hartman'),
	  	('TaShya Nolan'),
	  	('Ralph Thornton'),
	  	('Tiger Walls'),
	  	('Xaviera Black'),
	  	('Dennis Simmons'),
	  	('Dahlia Joyce'),
	  	('Carissa Meyer'),
	  	('Trevor Munoz'),
	  	('Rooney Hoover'),
	  	('Eugenia Combs'),
	  	('Candace Higgins'),
	  	('Winifred Schneider'),
	  	('Brady Spencer'),
	  	('Stewart Dickerson'),
	  	('Jocelyn Lloyd'),
	  	('Neve Wheeler'),
	  	('Wang Mason'),
	  	('Mason Molina'),
	  	('Erin Mathews'),
	  	('Samson Peterson'),
	  	('Cheryl Lynn'),
	  	('Rana Guzman'),
	  	('Anjolie Atkinson'),
	  	('Quemby Hull'),
	  	('Alea Mcpherson'),
	  	('Rose Hardin'),
	  	('Darius Myers'),
	  	('Jordan Snow'),
	  	('Boris West'),
	  	('Brynne Bright'),
	  	('Judah Jimenez'),
	  	('Serina Osborne'),
	  	('Montana Wyatt'),
	  	('Ulla Jenkins'),
	  	('Hannah Berger'),
	  	('Kareem Castillo'),
	  	('Genevieve Marquez'),
	  	('Lynn Bridges'),
	  	('Stacy Deleon'),
	  	('Brynne Hebert'),
	  	('Bree Bolton'),
	  	('Renee Wynn'),
	  	('Joshua Fry'),
	  	('Dylan Rios');
	 
	select * from employees;


--Таблица salary
--
--3) Создать таблицу salary
--	- id. Serial  primary key,
--	- monthly_salary. Int, not null

		create table salary(
		id serial primary key,
		monthly_salary int not null
		);

--4) Наполнить таблицу salary 15 строками:
--	- 1000
--	- 1100
--	- 1200
--	- 1300
--	- 1400
--	- 1500
--	- 1600
--	- 1700
--	- 1800
--	- 1900
--	- 2000
--	- 2100
--	- 2200
--	- 2300
--	- 2400
--	- 2500

	
	insert into salary(monthly_salary)
	values  (1000),
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
	
	select* from salary;


--Таблица employee_salary
--
--5) Создать таблицу employee_salary
--	- id. Serial  primary key,
--	- employee_id. Int, not null, unique
--	- salary_id. Int, not null

		create table employee_salary(
		id serial primary key,
		employee_id int not null unique,
		salary_id int not null
		);

--6) Наполнить таблицу employee_salary 40 строками:
--	- в 10 строк из 40 вставить несуществующие employee_id

	insert into employee_salary(employee_id, salary_id)
	values  (14, 1),
		(80, 2),
		(4, 3),
		(76, 4),
		(27, 5),
		(39, 6),
		(41, 7),
		(30, 8),
		(77, 9),
		(28, 10),
		(5, 11),
		(6, 12),
		(22, 13),
		(54, 14),
		(13, 15),
		(18, 1),
		(74, 2),
		(45, 3),
		(1, 4),
		(10, 5),
		(21, 6),
		(16, 7),
		(55, 8),
		(9, 9),
		(73, 10),
		(2, 11),
		(75, 12),
		(25, 13),
		(78, 14),
		(68, 15),
		(72, 1),
		(49, 3),
		(64, 5),
		(59, 7),
		(35, 9),
		(79, 11),
		(31, 13),
		(60, 15),
		(71, 2),
		(70, 4);
		
	select * from employee_salary;


--Таблица roles
--
--7) Создать таблицу roles
--	- id. Serial  primary key,
--	- role_name. int, not null, unique

		create table roles(
		id serial primary key,
		role_name int not null unique
		);

--8) Поменять тип столба role_name с int на varchar(30)

	alter table roles alter column role_name type varchar(30);

--9) Наполнить таблицу roles 20 строками:

	insert into roles (role_name)
	values  ('Junior Python developer'),
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
	
	select * from roles;


--Таблица roles_employee
--
--10) Создать таблицу roles_employee
--	- id. Serial  primary key,
--	- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--	- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

		create table roles_employee(
		id serial primary key,
		id_employee int not null unique,
		id_role int not null,
		foreign key (id_employee)
			references employees(id),
		foreign key (id_role)
			references roles(id)
		);

--11) Наполнить таблицу roles_employee 40 строками:

	insert into roles_employee(id_employee, id_role)
	values  (1,14),
		(2,16),
		(4,1),
		(6,15),
		(9,2),
		(11,3),
		(12,20),
		(14,19),
		(16,13),
		(17,4),
		(19,18),
		(21,5),
		(23,12),
		(24,6),
		(26,7),
		(28,11),
		(30,8),
		(31,10),
		(34,9),
		(37,9),
		(39,17),
		(41,8),
		(42,7),
		(44,10),
		(47,11),
		(48,6),
		(50,12),
		(53,13),
		(55,14),
		(56,5),
		(58,15),
		(59,4),
		(60,16),
		(62,17),
		(63,3),
		(64,18),
		(66,19),
		(67,2),
		(68,20),
		(70,1);

select * from roles_employee;


