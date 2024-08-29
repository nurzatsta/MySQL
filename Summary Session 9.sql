-- База HR - https://github.com/NelliEfr/hr_data/blob/master/script.sql

-- 1. Найти общее количество департаментов в компании.
select count(department_id) 
from departments;

-- 2. Вывести имена и фамилии сотрудников с максимальной и минимальной зарплатой.
select max(salary) from employees;
select min(salary) from employees;

select first_name, last_name
from employees
where salary = (select max(salary) from employees) or salary = (select min(salary) from employees);

-- 3. Найти самую низкую и самую высокую зарплату среди сотрудников с должностями IT_PROG и ST_MAN.
select max(salary) as max_salary, min(salary) as min_salary
from employees
where job_id = 'IT_PROG' or job_id = 'ST_MAN';
-- where job_id in ('IT_PROG', 'ST_MAN');

-- 4. Вывести имя, фамилию, зарплату и название департамента сотрудника с максимальной зарплатой в компании.
select first_name, last_name, salary, department_name
from employees t1
join departments t2
on t1.department_id = t2.department_id
where salary = (select max(salary) from employees);

-- 5. Найти самую большую зарплату среди сотрудников, работающих в департаментах с ID 70 и 80.
select max(salary)
from employees
where department_id in (70, 80);

-- 6. Найти среднюю зарплату в департаменте с ID 90.
select avg(salary)
from employees
where department_id = 90;

-- 7. Найти количество сотрудников из департамента с ID 100, которые зарабатывают более 5000.
select count(*)
from employees
where department_id = 100 and salary > 5000;

-- Доп. д/з(разберем во вторник)
-- 8. Найти количество сотрудников из департамента с ID 60, которые зарабатывают больше средней зарплаты по компании.
-- 9. Найти количество департаментов, в которых никто не работает.
-- 10. Найти количество сотрудников из департамента IT, которые зарабатывают больше средней зарплаты по компании.
-- 11. Вывести имена и фамилии сотрудников с должностями IT_PROG и ST_MAN, которые получают либо самую низкую, либо самую высокую зарплату.
-- 12. Вывести имя и фамилию сотрудника с минимальной зарплатой, который работает в городе Seattle.
-- 13. Найти количество сотрудников из департамента Shipping, которые зарабатывают меньше средней зарплаты среди всех сотрудников этого департамента.
-- 14. Найти среднюю зарплату среди сотрудников, работающих в стране 'United Kingdom'.
-- 15. Найти сотрудников, работающих в стране 'United States of America', чья зарплата выше средней зарплаты сотрудников, работающих в стране 'United Kingdom'. Вывести их имена, фамилии и зарплаты.
