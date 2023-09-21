--SQL HomeWork 2. Joins
--

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
	
	select employee_name, monthly_salary
	from employees 
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id;
 
-- 2. Вывести всех работников у которых ЗП меньше 2000.
	
	select employee_name, monthly_salary
	from employees 
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id 
	where monthly_salary<2000;
 
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
	
	select employee_name, monthly_salary
	from employees 
	right join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where employee_name is null;
 
-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
	
	select employee_name, monthly_salary
	from employees 
	right join employee_salary on employee_salary.employee_id=employees.id
	right join salary on salary.id=employee_salary.salary_id
	where monthly_salary < 2000 and employee_name is null;
 
-- 5. Найти всех работников кому не начислена ЗП.
	
	select employee_name, monthly_salary
	from employees 
	left join employee_salary on employee_salary.employee_id=employees.id
	left join salary on salary.id=employee_salary.salary_id
	where monthly_salary is null;
 
-- 6. Вывести всех работников с названиями их должности.
--	
-- (В этом запросе выводятся все работники с названиями их должности и без должности)
	select employee_name, role_name
	from employees
	left join roles_employee on roles_employee.id_employee=employees.id
	left join roles on roles.id=roles_employee.id_role;

-- (В том запросе выводятся только те работники у которых есть должности)
	select employee_name, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role;
 
-- 7. Вывести имена и должность только Java разработчиков.
	
	select employee_name, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%Java developer';


-- 8. Вывести имена и должность только Python разработчиков.
	
	select employee_name, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%Python dev%';
 
-- 9. Вывести имена и должность всех QA инженеров.
	
	select employee_name, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%QA%';
 
-- 10. Вывести имена и должность ручных QA инженеров.
	
	select employee_name, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%Manual QA%';
 
-- 11. Вывести имена и должность автоматизаторов QA
	
	select employee_name, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%Automation QA%';
 
-- 12. Вывести имена и зарплаты Junior специалистов
	
	select employee_name, monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Junior%' ;

-- 13. Вывести имена и зарплаты Middle специалистов
	
	select employee_name, monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

	select employee_name, monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков

	select monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Java dev%';

-- 16. Вывести зарплаты Python разработчиков

	select  monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

	select employee_name, monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков

	select employee_name,  monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Middle JavaS%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

	select employee_name, monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Senior Java%';

-- 20. Вывести зарплаты Junior QA инженеров

	select  monthly_salary
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Junior QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов

	select  avg(monthly_salary) as avg_junior
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков

	select  sum(monthly_salary) as sum_JS_dev
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%JavaS%';

-- 23. Вывести минимальную ЗП QA инженеров

	select min(monthly_salary) as min_salary_QA 
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров

	select max(monthly_salary) as max_salary_QA 
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%QA%';

-- 25. Вывести количество QA инженеров

	select count(role_name) as count_QA
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%QA%';

-- 26. Вывести количество Middle специалистов.

	select count(role_name) as count_Middle
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%Middle%';

-- 27. Вывести количество разработчиков

	select count(role_name) as count_dev
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	where role_name like  '%dev%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

	select  sum(monthly_salary) as fond_salary_dev
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where role_name like '%dev%'

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

-- (Выводит имена у которых есть должность и ЗП)
	
	select employee_name, monthly_salary, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	order by employee_name, role_name, monthly_salary;

-- (Выводит имена специалистов, с должностью  )

	select employee_name, monthly_salary, role_name
	from employees
	full join employee_salary on employee_salary.employee_id=employees.id 
	full join salary on salary.id=employee_salary.salary_id
	full outer join roles_employee on roles_employee.id_employee=employees.id
	full outer join roles on roles.id=roles_employee.id_role
	where employee_name is not null and role_name is not null
	order by employee_name, monthly_salary, role_name ;

-- (Выводит имена всех специалистов, с должностями и зарплатами)

	select employee_name, monthly_salary, role_name
	from employees
	full join employee_salary on employee_salary.employee_id=employees.id 
	full join salary on salary.id=employee_salary.salary_id
	full outer join roles_employee on roles_employee.id_employee=employees.id
	full outer join roles on roles.id=roles_employee.id_role
	where employee_name is not null
	order by employee_name, monthly_salary, role_name ;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

	select employee_name, monthly_salary, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where monthly_salary between 1700 and 2300
	order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

	select employee_name, monthly_salary, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where monthly_salary <2300
	order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

	select employee_name, monthly_salary, role_name
	from employees
	inner join roles_employee on roles_employee.id_employee=employees.id
	inner join roles on roles.id=roles_employee.id_role
	inner join employee_salary on employee_salary.employee_id=employees.id
	inner join salary on salary.id=employee_salary.salary_id
	where monthly_salary=1100 or monthly_salary=1500 or  monthly_salary=2000
	order by monthly_salary;