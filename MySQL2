-- comment - ctrl+/, cmd+/

-- CRUD
-- Create - database, table
-- Read - select
-- Update - alter (table), update (data)
-- Delete - data, table, database

-- Созданине бд
-- create database GT200224;
-- run code - ctrl+shift+enter

-- use GT200224;

-- Удаление бд
-- drop database hr;

-- Создание таблиц

-- create table <table_name>(
-- 	column_name1 data_type,
--     column_name2 data_type
-- )

-- Простые типы данных 

-- integer/int - Целое число
-- numeric/decimal - числовые данные
-- varchar(макс.) - макс. кол/во символов - макс. 255
-- char(фиксированное кол.во символов) - макс. 255

-- create table users(
-- 	id int,
--     first_name varchar(64),
--     last_name varchar(64),
--     age int
-- );

-- select *
-- from users;

-- Добавление данных 
-- insert into table_name (column_name1, column_name2, ...)
-- values (value1, value2, ...)

-- insert into users (id, first_name, last_name, age)
-- values (1, 'John', 'Smith', 20);

-- select *
-- from users;

-- insert into users (id, first_name, last_name, age)
-- values (2, 'Bob', 'Brown', 35),
-- (3, 'Den', 'Jameson', 29),
-- (4, 'Alex', 'Watson', 34);

-- insert into users (id, first_name, last_name, age)
-- values (5, 'Jack', 'Hardy');

-- Error Code: 1136. Column count doesn't match value count at row 1	0.000 sec

-- insert into users (id, first_name, last_name)
-- values (5, 'Jack', 'Hardy');

-- select * 
-- from users;

-- null
-- is null/ is not null

-- select *
-- from users
-- where age is null;

-- select *
-- from users;

-- insert into users (id, first_name, last_name, age)
-- values (1, 'John', 'Smith', 20);

-- insert into users (id, first_name, last_name, age)
-- values (6, 'John', 'Smith', 30);

-- Выборка уникальных значений
-- select distinct *
-- from users;

-- select distinct first_name, last_name
-- from users;

-- select * 
-- from users;

-- Удаление данных 

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.016 sec

-- Отключение безопасного режима
-- set sql_safe_updates = 0;

-- delete from users
-- where id = 1 and first_name = 'John' and last_name = 'Smith' and age = 20;

-- Включение безопасного режима 
-- set sql_safe_updates = 1;

-- delete from users
-- where age >= 35;

-- select *
-- from users;

-- Очищение таблицы 
-- delete from users;
-- truncate table users;

-- Удаление таблицы 
-- drop table users;

-- Создание таблиц с ограничениями(атибутами)

-- unique
-- not null
-- primary key = unique + not null 
-- default 
-- check 
-- auto_increment

-- Создать таблицу students
-- id уникальное значение, не null, автозаполнение 
-- firstname varchar not null
-- lastname varchar not null
-- class integer от 1 до 10 (вкл)
-- subject varchar not null
-- mark integer от 0 до 5 (вкл)
-- school_no integer по умолч. 0

-- create table students(
-- 	id int primary key auto_increment,
--     first_name varchar(64) not null,
--     last_name varchar(128) not null,
--     class int check(class between 1 and 10),
--     subject varchar(64) not null,
--     mark int check(mark between 0 and 5),
--     school_no int default 0
-- );

insert into students (first_name, last_name, class, subject, mark, school_no)
values ('John', 'Smith', 5, 'Math', 4, 3);

-- insert into students (first_name, last_name, class, subject, mark, school_no)
-- values ('John', 'Smith', 12, 'Math', 4, 3);

-- Error Code: 3819. Check constraint 'students_chk_1' is violated.	0.016 sec

-- insert into students (first_name, last_name, class, mark, school_no)
-- values ('Bob', 'Brown', 7, 4, 3);

-- Error Code: 1364. Field 'subject' doesn't have a default value	0.000 sec

insert into students (first_name, last_name, class, subject, mark)
values ('Bob', 'Brown', 7, 'Math', 3);

select *
from students;

delete from students;

insert into students (first_name, last_name, class, subject, mark)
values ('Bob', 'Brown', 7, 'Math', 3),
		('Alex', 'Jameson', 4, 'Enlish', 4);
        
truncate table students;     

insert into students (first_name, last_name, class, subject, mark)
values ('Bob', 'Brown', 7, 'Math', 3),
		('Alex', 'Jameson', 4, 'Enlish', 4);   
        
select *
from students;
