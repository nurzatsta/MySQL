-- https://github.com/annykh/genTech/blob/main/CompanyDB.txt
use companydb;

-- select column1, column2
-- from (...subselect...)

-- select column1, column2
-- from table1
-- [join]
-- where/having column = (subselect with aggregate function)

-- select column1, column2
-- from table1
-- join (subselect)
-- on ...

-- 1. Найдите среднюю зарплату сотрудников в каждом департаменте. Выведите название департамента и среднюю зарплату.
-- Первый вариант 
select departmentid, avg(salary) as avg_salary
from employees
group by departmentid;

select t1.departmentname, t2.avg_salary
from departments t1
join (select departmentid, avg(salary) as avg_salary
		from employees
		group by departmentid) t2
on t1.departmentid = t2.departmentid;

-- Второй вариант
select t2.departmentname, avg(t1.salary)
from employees t1
join departments t2
on t1.departmentid = t2.DepartmentID
group by t1.DepartmentID;

-- 2. Определите количество сотрудников в каждом департаменте. Выведите название департамента и количество сотрудников.
select t1.departmentname, count(t2.employeeid) as emp_count
from departments t1
join employees t2
on t1.DepartmentID = t2.DepartmentID
group by t1.DepartmentID;

-- 3. Найдите минимальную и максимальную зарплаты в каждом департаменте. 
-- Выведите название департамента, минимальную и максимальную зарплату.
select t1.departmentname, min(t2.salary) as min_salary, max(t2.salary) as max_salary
from departments t1
join employees t2
on t1.DepartmentID = t2.DepartmentID
group by t1.DepartmentID;

-- 4. Определите общую сумму зарплат в каждом департаменте. Выведите название департамента и общую сумму зарплат.
select t1.departmentname, sum(t2.salary) as salary_sum
from departments t1
join employees t2
on t1.DepartmentID = t2.DepartmentID
group by t1.DepartmentID;

select t1.departmentname,t2.sum_salary
from departments as t1
join (select DepartmentID, sum(salary) as sum_salary
		from employees
		group by departmentid) t2
on t1.departmentid= t2.departmentid;

-- 5. Вывести ID департамента с самой высокой средней зарплатой сотрудников.
select departmentid, avg(salary) as avg_salary
from employees
group by DepartmentID;

select max(t1.avg_salary)
from (select departmentid, avg(salary) as avg_salary
		from employees
		group by DepartmentID) t1;
        
select departmentid, avg(salary) as avg_salary
from employees
group by DepartmentID
having avg_salary = (select max(t1.avg_salary)
					from (select departmentid, avg(salary) as avg_salary
							from employees
							group by DepartmentID) t1);

-- 6. Выведите имя, фамилию и зарплату сотрудников, чья зарплата выше средней по их департаменту.
select departmentid, avg(salary) as avg_salary
from employees
group by DepartmentID;

select t1.firstname, t1.lastname, t1.salary
from employees t1
join (select departmentid, avg(salary) as avg_salary
		from employees
		group by DepartmentID) t2
on t1.departmentid = t2.departmentid
where t1.salary > t2.avg_salary;

-- Доп.задачи:
-- 7. Найдите департамент с самой высокой средней зарплатой сотрудников. Вывести имя департамента.
-- 8. Найдите проект с наибольшим количеством сотрудников, проработавших на нем больше 100 часов. Вывести ProjectName.
-- 9. Найдите департамент с наименьшим количеством сотрудников. Выведите название департамента и количество сотрудников.
-- 10. Определите департамент с наибольшим суммарным бюджетом проектов, на которых работают его сотрудники.
-- 10.1. Вывести ид департамента, имена и фамилии сотрудников, имена проектов и их бюджет.
-- 10.2. Вывести ид депатамента и сумма бюджета проектов по департаментам.
-- 10.3. Вывести маскимальную сумму бюджета проектов по департаментам.
-- 10.4. Вывести ид депатамента с максимальной суммой бюджета проектов по департаментам.
-- 10.5. Вывести имя депатамента с максимальной суммой бюджета проектов по департаментам.
-- 11. Найдите сотрудников, которые работают в департаменте с самой большой суммарной зарплатой среди всех департаментов.
