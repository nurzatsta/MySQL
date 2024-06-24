-- Работа в песочнице
-- https://www.programiz.com/sql/online-compiler/

-- comment
-- select column1, column2,...
-- from table_name
-- where Условие;

-- * ALL ВСЕ ПОЛЯ

-- select *
-- from customers;

-- Вывести всех покупателей, которым больше 25.
-- select *
-- from customers
-- where age > 25;

-- Вывести имя и фамилию покупателей из США.
-- select first_name, last_name
-- from customers
-- where country = 'USA';

-- Вывести покупателей в возрасте от 25 до 30(вкл. концы).
-- select *
-- from customers
-- where age >= 25 and age <= 30;

-- select *
-- from customers
-- where age between 25 and 30;

-- Вывести покупателей которым больше 30 или меньше 25.
-- select *
-- from customers
-- where age > 30 or age < 25;

-- select *
-- from customers
-- where age not between 25 and 30;

-- Вывести покупателей из USA или UK.
-- select *
-- from customers
-- where country = 'USA' or country = 'UK';

-- select *
-- from customers
-- where country in ('USA', 'UK');

-- Вывести покупателей у которых имя ни John, ни David, ни Alex (Всех кроме John, David, Alex).
-- select *
-- from customers
-- where first_name != 'John' and first_name != 'David' and first_name != 'Alex';

-- select *
-- from customers
-- where first_name not in ('John', 'David', 'Alex');

-- LIKE % _

-- column like 'A%'
-- like '%B'
-- like '_a%'
-- like '____'

-- Вывести покупателей у которых фамилия начинается на R.
-- select *
-- from customers
-- where last_name like 'r%';

-- Вывести покупателей у которых фамилия заканчивается на E.
-- select * 
-- from customers
-- where last_name like '%e';

-- Вывести покупателей у которых фамилия не заканчивается на E.
-- select *
-- from customers
-- where last_name not like '%e';

-- Вывести покупателей у которых имя содержит букву B.
-- select *
-- from customers
-- where first_name like '%b%';

-- Вывести покупателей где вторая буква в имени O.
-- select *
-- from customers
-- where first_name like '_o%';

-- Вывести покупателей где четвертая буква в имени N.
-- select *
-- from customers
-- where first_name like '___n%';

-- Вывести покупателей где в середине имени есть буква B.
-- select *
-- from customers
-- where first_name like '_%b%_';

-- Создаем таблицы из скрипта:
-- https://github.com/annykh/GT301023-e/blob/main/hr1.sql

-- Вывести сотрудников, которые из департамента 100.
-- select *
-- from employees
-- where department_id = 100;

-- Найти всех сотрудников, зарабатывающих больше 5000
-- select *
-- from employees
-- where salary > 5000;

-- Найти всех сотрудников, чья фамилия начинается на букву L
-- select *
-- from employees
-- where last_name like 'l%';

-- Найти все департаменты, у которых location_id 1700
-- select *
-- from Departments 
-- where location_id = 1700;

-- Вывести зарплату сотрудника с именем ‘Lex’ и фамилией ‘De Haan'
-- select salary
-- from employees
-- where first_name = 'Lex' and last_name = 'De Haan';

-- Вывести всех сотрудников с job_id ‘FI_ACCOUNT’ и зарабатывающих меньше 8000
-- select *
-- from employees
-- where job_id = 'FI_ACCOUNT' and salary < 8000;

-- Вывести сотрудников, у которых в фамилии в середине слова встречаются сочетания ‘kk’ или ‘ll’
-- select *
-- from employees
-- where last_name like '_%kk%_' or last_name like '_%ll%_';

-- Найти сотрудников из департаментов 60, 30 или 100.
-- select *
-- from employees
-- where department_id in (60, 30, 100);

-- select *
-- from employees
-- where department_id = 60 or department_id = 30 or department_id = 100;

-- Вывести всех сотрудников кроме тех, кто работает в департаментах 80 или 110
-- select *
-- from employees
-- where department_id not in (80, 110);

-- select *
-- from employees
-- where department_id != 80 and department_id != 110;
