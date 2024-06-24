-- CRUD

-- create
-- create database database_name;
-- create table table_name(...);

-- read 
-- select *
-- from table_name;

-- update
-- alter table
-- update .. set

-- delete
-- drop database
-- drop table
-- drop column
-- delete
-- truncate

-- int
-- varchar(max)
-- char(fixed)
-- numeric

-- unique
-- not null
-- primary key = unique + not null
-- check
-- default
-- auto_increment


-- 1. Создать таблицу products
	-- id первичный ключ автоинкремент
	-- title строка 128
	-- quantity integer от 0 до 10(вкл.)
    
create database gt200224; -- Создание 
use gt200224; -- Использование
drop database gt200224; -- Удаление

-- drop table products;
create table products(
	id int primary key auto_increment,
    title varchar(128),
    quantity int check(quantity between 0 and 10)
);

select *
from products;

insert into products(title, quantity)
values ('Apple', 5),
		('Banana', 10),
        ('Kiwi', 5),
        ('Pineapple', 7),
        ('Avocado', 0),
        ('Mango', 7),
        ('Strawberry', 6);

select * 
from products
where quantity > 5;        

-- Сортировка 
-- order by column_name asc -- по возр
-- order by column_name desc  -- по убыв.

select *
from products
order by quantity;

select *
from products
order by quantity desc;

select *
from products
where quantity > 5
order by quantity;

-- Пагинация - получение диапазона строк 
-- limit

select * 
from products;

-- вывести первые три продукта
select *
from products
limit 3;

-- продукт с максимальным кол/вом
select *
from products
order by quantity desc
limit 1;

-- Вывести продукт с минимальным количеством.
select *
from products
order by quantity
limit 1;

-- Вывести три продукта пропуская первые два
select *
from products
limit 2, 3;

-- ПРАКТИКА

 create table employees(
 	employee_id int primary key auto_increment,
 	first_name varchar(128) not null,
 	last_name varchar(128) not null,
 	email varchar(128) not null,
 	salary int, 
	department varchar(128) not null
 );
 
insert into employees(first_name, last_name, email, salary, department) values("Steven","King",	"SKING", 24000, "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Neena" , "Kochhar" , "NKOCHHAR" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Lex" , "De Haan" , "LDEHAAN" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Hunold" , "AHUNOLD" , 9000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Bruce" , "Ernst" , "BERNST" , 6000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Valli" , "Pataballa" , "VPATABAL" , 4800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Diana" , "Lorentz" , "DIANALO" , 8800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Nancy" , "Greenberg" , "NGREENBE" , 12008 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Daniel" , "Faviet" , "DFAVIET" , 9000 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Jose Manuel" , "Urman" , "JMURMAN" , 7800 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Luis" , "Popp" , "LPOPP" , 6900 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Den" , "Raphaely" , "DRAPHEAL" , 11000 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Khoo" , "AKHOO" , 3100 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Shelli" , "Baida" , "SBAIDA" , 2900 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Sigal" , "Tobias" , "STOBIAS" , 2800 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Matthew" , "Weiss" , "MWEISS" , 8000 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Fripp" , "AFRIPP" , 8200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Payam" , "Kaufling" , "PKAUFLIN" , 7900 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Shanta" , "Vollman" , "SVOLLMAN" , 6500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Kevin" , "Mourgos" , "KMOURGOS" , 5800 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Julia" , "Nayer" , "JNAYER" , 3200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Markle" , "SMARKLE" , 2200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Bissot" , "LBISSOT" , 3300 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Mozhe" , "Atkinson" , "MATKINSO" , 2800 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Joshua" , "Patel" , "JPATEL" , 2500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Trenna" , "Rajs" , "TRAJS" , 3500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("John" , "Russell" , "JRUSSEL" , 14000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Karen" , "Partners" , "KPARTNER" , 13500 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Alberto" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Gerald" , "Cambrault" , "GCAMBRAU" , 11000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Eleni" , "Zlotkey" , "EZLOTKEY" , 10500 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Vargas" , "PVARGAS" , 2500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");
 
select *
from employees;

-- Отсортировать сотрудников по зарплате - от самой большой зарплаты до самой маленькой
select * 
from employees
order by salary desc;

-- Вывести сотрудников, чьи имена начинаются на букву K и отсортировать их в алфавитном порядке по фамилии
select *
from employees
where first_name like 'K%'
order by last_name;

-- Вывести первых трех сотрудников из департамента IT, которые зарабатывают больше остальных.
select *
from employees
where department = 'IT'
order by salary desc
limit 3;

-- Изменение таблиц и столбцов
-- alter table table_name 
-- add column column_name type const. - добавление столбца
-- drop column column_name - удаление столбца
-- modify column column_name new_type - изменение типа данных 
-- change column column_name new_column_name type - изменение названия столбца
-- add constraint - добавление ограничения
-- drop constraint - удаление ограничения

select * from products;

-- Добавить поле price тип  int по умолч. 0
alter table products
add column price int default 0;

-- Изменить тип поля price на decimal(4, 2)
-- 99.99
-- Максимум 4 символа, после точки 2 символа
alter table products
modify column price decimal(4, 2);

-- Переименовать поле price на item_price
alter table products
change column price item_price decimal(4, 2);

-- Удалить поле item_price
alter table products
drop column item_price;

-- 1. Добавить поле quality типа decimal(6, 2) со значение по умолчанию 0
alter table products
add column quality decimal(6, 2) default 0;

-- 2. Изменить тип quality на integer
alter table products
modify column quality int;

-- 3. Удалить поле quality
alter table products
drop column quality;


-- Создать таблицу students1 с полями
-- name строка (не null)
-- lastname строка (не null)
-- avg_mark целое число (от 0 до 5)
-- gender строка(128) (или “M“ или “F“)

create table students1(
	name varchar(128) not null,
    lastname varchar(128) not null,
    avg_mark int check(avg_mark between 0 and 5),
    gender varchar(128) check(gender in ('M', 'F'))
);

select * from students1;

--  Добавить поле id integer primary key auto_increment 
alter table students1
add column id int primary key auto_increment;

alter table students1
drop column id;

--  Добавить поле id integer primary key auto_increment в начало таблицы 
alter table students1
add column id int primary key auto_increment first;

-- Добавить поле age (тип целое число) после lastname
alter table students1
add column age int after lastname;

-- after column_name - после поля 
-- before column_name - до поля
-- first - в начало

 -- Поменять тип у gender на char(1)
 alter table students1
 modify column gender char(1);

-- Переименовать поле name на firstname
alter table students1
change column name firstname varchar(128);

-- Удалить поле gender
alter table students1
drop column gender;
