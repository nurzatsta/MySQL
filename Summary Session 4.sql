-- Изменение и удаление данных 

-- update table_name
-- set column_name = new_value, ..
-- (where condition);

-- delete from table_name
-- (where condition);

-- set sql_safe_updates = 0;
-- set sql_safe_updates = 1;

-- Условие

-- case
-- 	when condition then result
--     ...
--     else result
-- end

-- if (){}
-- else if () {}
-- else {}

-- value1 = null
-- value2 = 0
-- value3 = 4
-- coalesce(value1, value2, value3) -- 0


use tasks200224;

create table products (
	id int primary key auto_increment,
    title varchar(128),
    count int, 
    price int
);

insert into products(title, count)
values ('notebook', 5),
		('pen', 10),
        ('book', 17),
        ('pencil', 8);

select * from products;

-- notebook - 20
-- book - 100

set sql_safe_updates = 0;

update products
set price = case
				when title = 'notebook' then 20
                when title = 'book' then 100
			end;

-- Создать поле total_sum: count*price(если price not null), 0(если price is null)

alter table products
add total_sum int;

update products
set total_sum = case 
					when price is not null then count*price
					else 0
				end;
 
update products
set total_sum = coalesce(count*price, 0);

-- 1.  Создать таблицу customers
-- id целое число первичный ключ автоинкремент, 
-- first_name строка не null,
-- last_name строка не null,
-- age целое число больше 18,
-- phone integer не null,
-- order_name строка не null,
-- delivery_status целое число 1 или 0

create table customers(
	id int primary key auto_increment, 
	first_name varchar(128) not null,
	last_name varchar(128) not null,
	age int check(age > 18),
	phone int not null,
	order_name varchar(128) not null,
	delivery_status int check(delivery_status in (1, 0))
);

-- 2. Удалить поля first_name и last_name 
-- 3. Добавить поле full_name строка не null, вставить после id
-- 4. Переименовать поле id на customer_id
-- 5. Добавить поле sum_price целое число не null
-- 6. Удалить поле phone

alter table customers
drop column first_name,
drop column last_name,
add column full_name varchar(255) not null after id;

alter table customers
change id customer_id int,
add column sum_price int not null,
drop column phone;

alter table customers
modify customer_id int auto_increment;

insert into customers(full_name, age, order_name, delivery_status, sum_price) 
			values( "Kris Krill" , 20 , "math_book, pen" , 0 , 9000 ) ,
				( "Kristin Brooks" , 50 , "notebook, pen, drawing_block" , 0 , 4500 ) ,
				( "Kristina Livshits" , 55 , "pencil, sharpener" , 1 , 2340 ) ,
				( "Kristina Nunez" , 43 , "math_book, eng_book, phil_book" , 1 , 18000 ) ,
				( "Kurtis Parham" , 19 , "pencil" , 1 , 350 ) ,
				( "Lai Kurtich" , 22 , "pen, sharpener" , 1 , 1200 ) ,
				( "Lakia Fitzen" , 21 , "notebook, pen" , 1 , 3500 ) ,
				( "Landon Neville" , 34 , "colored papers, pencil" , 1 , 2450 ) ,
				( "Latoria Siprasoeuth" , 32 , "pen, sharpener, rubber" , 1 , 4600 ) ,
				( "Laurice Goffredo" , 76 , "watercolors, drawing_block" , 1 , 1200 ) ,
				( "Laurice Grimstead" , 54 , "notebook" , 1 , 4500 ) ,
				( "Laurice Karl" , 19 , "colored papers" , 0 , 2250 ) ,
				( "Laveta Wida" , 34 , "pen, math_book" , 0 , 1170 ) ,
				( "Lecia Alvino" , 45 , "pencil, sharpener, notebook" , 1 , 9000 ) ,
				( "Lenore Sullivan" , 55 , "eng_book, notebook" , 1 , 175 ) ,
				( "Leon Schoepfer" , 67 , "notebook" , 0 , 600 ) ,
				( "Lexie Magee" , 54 , "watercolors, drawing_block, brushes" , 0 , 1750 ) ,
				( "Li Robleto" , 76 , "brushes, pencil, notebook" , 0 , 1225 ) ,
				( "Libby Krauss" , 78 , "brushes, watercolor" , 0 , 2300 ) ,
				( "Lillia Talbott" , 65 , "eng_book, pen, rubber" , 0 , 600 ) ,
				( "Linda Merida" , 54 , "notebook, pen, drawing_block" , 1 , 7700 ) ,
				( "Lisa Hughes" , 34 , "flag" , 1 , 5450 ) ,
				( "Lloyd Shackley" , 23 , "brushes, watercolor" , 1 , 4370 ) ,
				( "Lola Whitley" , 24 , "notebook" , 0 , 12200 ) ,
				( "Lonnie Colby" , 74 , "notepad" , 1 , 3375 ) ,
				( "Lorilee Bautista" , 24 , "pencil, sharpener" , 1 , 3800 ) ,
				( "Loris Thibadeau" , 54 , "notepad" , 1 , 4950 ) ,
				( "Lorita Koenig" , 59 , "flag" , 0 , 4425 ) ,
				( "Love Whistlehunt" , 47 , "notepad" , 1 , 5500 ) ,
				( "Lovie Ritacco" , 23 , "colored papers" , 1 , 3800 ) ,
				( "Loyd Huckeba" , 26 , "flag" , 0 , 300 ) ,
				( "Loyd Puchalla" , 25 , "notebook" , 1 , 3850 ) ,
				( "Luana Berends" , 38 , "pencil, sharpener, rubber" , 1 , 2725 ) ,
				( "Lucas Summerill" , 36 , "notepad, pen" , 0 , 2185 ) ,
				( "Luciano Lingenfelter" , 80 , "sharpener" , 1 , 6100 ) ,
				( "Lucila Heck" , 58 , "brushes, watercolor" , 1 , 1687.5 ) ,
				( "Luigi Nored" , 23 , "notepad" , 1 , 1900 ) ,
				( "Luis Pothoven" , 38 , "flag" , 1 , 2475 ) ,
				( "Luther Ardinger" , 49 , "notebook" , 1 , 2212.5 ) ,
				( "Mable Ballard" , 59 , "colored papers, pencil" , 1 , 2750 ) ,
				( "Maia Leggett" , 71 , "notepad" , 1 , 1900 ) ,
				( "Marc Domanski" , 58 , "rubber, pencil" , 1 , 4930 ) ,
				( "Marco Slivka" , 80 , "brushes, watercolor" , 1 , 2680 ) ,
				( "Margaret Bennett" , 82 , "pencil, sharpener, pen" , 1 , 1600 ) ,
				( "Marissa Pontius" , 69 , "notebook" , 1 , 9430 ) ,
				( "Markita Larner" , 58 , "notepad, flag" , 1 , 605 ) ,
				( "Martha Baker" , 38 , "colored papers, notebook" , 1 , 1030 ) ,
				( "Marvis Chou" , 27 , "pencil, sharpener" , 0 , 2180 ) ,
				( "Mary Barnes" , 28 , "brushes, watercolor" , 0 , 1655 ) ,
				( "Mary Wilson" , 78 , "notebook" , 0 , 2730 );

-- Создать новое поле discount тип int по умолчанию 0.
-- Заполнить поле discount: если покупателю меньше 35, но больше 25, 
-- значением поля будет 5, если больше/равно 35, значением будет 10, 
-- и в остальных случаях оставить 0.

alter table customers
add column discount int default 0;

update customers
set discount = case
					when age > 25 and age < 35 then 5
                    when age >= 35 then 10
                    else 0
				end;

select * from customers;
