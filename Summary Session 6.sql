-- union/union all

use tasks200224;

create table user_bremen(
	id int primary key auto_increment,
    first_name varchar(128),
    last_name varchar(128),
    age int
);

create table user_berlin(
	id int primary key auto_increment,
    first_name varchar(128),
    last_name varchar(128),
    age int,
    phone varchar(128)
);

insert into user_bremen(first_name, last_name, age)
values ('Linda', 'Jonson', 45),
('John', 'Smith', 34),
('Laura', 'Thomas', 43),
('Barbarra', 'Jones', 21);

insert into user_berlin(first_name, last_name, age, phone)
values ('Carol', 'Robson', 34, '+12355534'),
('Ben', 'King', 23, '+1998778993'),
('Mellissa', 'Wans', 43, '+123565454'),
('Barbarra', 'Jones', 21, '+12340505');

select * from user_bremen;
select * from user_berlin;

select * from user_bremen
union
select * from user_berlin;
-- Error Code: 1222. The used SELECT statements have a different number of columns	0.000 sec

select first_name, last_name, age, null as phone
from user_bremen
union 
select first_name, last_name, age, phone
from user_berlin;

-- Вывести имя, фамилию и возраст уникальных пользователей  
select first_name, last_name, age
from user_bremen
union 
select first_name, last_name, age
from user_berlin;

-- Вывести имя, фамилию и возраст из двух таблиц (все записи).
select first_name, last_name, age
from user_bremen
union all
select first_name, last_name, age
from user_berlin;

/*select first_name, last_name, age, null
from user_bremen
union 
select first_name, last_name, age, phone
from user_berlin;
*/

-- 1. Создать таблицу products1 с полями:
-- id (целое число, первичный ключ)
-- name (cтрока максимум 50 символов)
-- quantity (число больше 0 и меньше 10)
-- in_stock (один символ (Y/N))

create table products1(
	id int primary key, 
    name varchar(50),
    quantity int check(quantity>0 and quantity<10),
    in_stock char(1) check(in_stock in ('Y', 'N'))
);

insert into products1
values (1, 'Велосипед', 2, 'Y'), 
		(2, 'Скейт', 4, 'Y'), 
		(3, 'Самокат', 2, 'Y'), 
		(4, 'Сноуборд', 7, 'N'), 
		(5, 'Санки', 1, 'Y'), 
		(6, 'Коньки', 3, 'N'), 
		(7, 'Ролики', 5, 'Y');

-- Создать таблицу products2 с полями:
-- id (целое число, первичный ключ)
-- name (cтрока максимум 50 символов)
-- quantity (число больше 0 и меньше 10)
-- price (целое число, больше 0)
-- in_stock (один символ (Y/N))

create table products2(
	id int primary key, 
    name varchar(50),
    quantity int check(quantity>0 and quantity<10),
    price int check(price > 0),
    in_stock char(1) check(in_stock in ('Y', 'N'))
);

insert into products2 
values (1, 'Тюбинг', 5, 1000, 'Y'), 
		(2, 'Санки', 2, 1500, 'Y'), 
		(3, 'Снегокат', 2, 900, 'Y'), 
		(4, 'Сноуборд', 7, 700, 'N'), 
		(5, 'Клюшка', 8, 300, 'Y'), 
		(6, 'Коньки', 3, 350, 'N'), 
		(7, 'Форма', 9, 450, 'Y');
        
select * from products1;
select * from products2;     

-- Вывести все названия товаров (включая дубли) из двух таблиц.
select name from products1
union all
select name from products2;

-- Вывести уникальные названия товаров (без дублей) из двух таблиц.
select name from products1
union
select name from products2;

-- Объединить данные из двух таблиц, указав price, где это возможно, где нет - указать null.
select name, quantity, in_stock, null as price
from products1
union 
select name, quantity, in_stock, price
from products2;
