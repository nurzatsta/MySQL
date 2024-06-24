use gt200224;

-- Изменение и удаление данных

-- update table_name
-- set column_name = new_value, column_name = new_value
-- where условие;

-- delete from table_name
-- where условие;

-- drop table employees;

--  create table employees(
--  	employee_id int primary key auto_increment,
--  	first_name varchar(128) not null,
--  	last_name varchar(128) not null,
--  	email varchar(128) not null,
--  	salary int, 
-- 	department varchar(128) not null
--  );
--  
-- insert into employees(first_name, last_name, email, salary, department) values("Steven","King",	"SKING", 24000, "Sales");
-- insert into employees(first_name, last_name, email, salary, department) values("Neena" , "Kochhar" , "NKOCHHAR" , 17000 , "Sales");
-- insert into employees(first_name, last_name, email, salary, department) values("Lex" , "De Haan" , "LDEHAAN" , 17000 , "Sales");
-- insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Hunold" , "AHUNOLD" , 9000 , "Finance");
-- insert into employees(first_name, last_name, email, salary, department) values("Bruce" , "Ernst" , "BERNST" , 6000 , "Finance");
-- insert into employees(first_name, last_name, email, salary, department) values("Valli" , "Pataballa" , "VPATABAL" , 4800 , "Finance");
-- insert into employees(first_name, last_name, email, salary, department) values("Diana" , "Lorentz" , "DIANALO" , 8800 , "Finance");
-- insert into employees(first_name, last_name, email, salary, department) values("Nancy" , "Greenberg" , "NGREENBE" , 12008 , "Shipping");
-- insert into employees(first_name, last_name, email, salary, department) values("Daniel" , "Faviet" , "DFAVIET" , 9000 , "Shipping");
-- insert into employees(first_name, last_name, email, salary, department) values("Jose Manuel" , "Urman" , "JMURMAN" , 7800 , "Shipping");
-- insert into employees(first_name, last_name, email, salary, department) values("Luis" , "Popp" , "LPOPP" , 6900 , "Shipping");
-- insert into employees(first_name, last_name, email, salary, department) values("Den" , "Raphaely" , "DRAPHEAL" , 11000 , "Marketing");
-- insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Khoo" , "AKHOO" , 3100 , "Marketing");
-- insert into employees(first_name, last_name, email, salary, department) values("Shelli" , "Baida" , "SBAIDA" , 2900 , "Marketing");
-- insert into employees(first_name, last_name, email, salary, department) values("Sigal" , "Tobias" , "STOBIAS" , 2800 , "Marketing");
-- insert into employees(first_name, last_name, email, salary, department) values("Matthew" , "Weiss" , "MWEISS" , 8000 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Fripp" , "AFRIPP" , 8200 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Payam" , "Kaufling" , "PKAUFLIN" , 7900 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Shanta" , "Vollman" , "SVOLLMAN" , 6500 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Kevin" , "Mourgos" , "KMOURGOS" , 5800 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Julia" , "Nayer" , "JNAYER" , 3200 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Markle" , "SMARKLE" , 2200 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Bissot" , "LBISSOT" , 3300 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Mozhe" , "Atkinson" , "MATKINSO" , 2800 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Joshua" , "Patel" , "JPATEL" , 2500 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Trenna" , "Rajs" , "TRAJS" , 3500 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("John" , "Russell" , "JRUSSEL" , 14000 , "IT");
-- insert into employees(first_name, last_name, email, salary, department) values("Karen" , "Partners" , "KPARTNER" , 13500 , "IT");
-- insert into employees(first_name, last_name, email, salary, department) values("Alberto" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");
-- insert into employees(first_name, last_name, email, salary, department) values("Gerald" , "Cambrault" , "GCAMBRAU" , 11000 , "IT");
-- insert into employees(first_name, last_name, email, salary, department) values("Eleni" , "Zlotkey" , "EZLOTKEY" , 10500 , "IT");
-- insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Vargas" , "PVARGAS" , 2500 , "Human Resources");
-- insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");


-- Изменить департмент сотрудника с именем Adam Vargas на IT

select *
from employees
where first_name = 'Adam' and last_name = 'Vargas';
  
-- update employees
-- set department = 'IT'
-- where first_name = 'Adam' and last_name = 'Vargas';

-- You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.016 sec

set sql_safe_updates = 0;

update employees
set department = 'IT'
where first_name = 'Adam' and last_name = 'Vargas';

-- Повысить зарплату Laura Bissot на 5000.
select * 
from employees
where first_name = 'Laura' and last_name = 'Bissot';

update employees
set salary = salary + 5000
where first_name = 'Laura' and last_name = 'Bissot';

-- Удалить сотрудника Adam Fripp из таблицы
delete from employees
where first_name = 'Adam' and last_name = 'Fripp';

select * from employees
where first_name = 'Adam' and last_name = 'Fripp';

-- Изменить фамилию Luis Popp на Smith
update employees
set last_name = 'Smith'
where first_name = 'Luis' and last_name = 'Popp';

-- ПРАКТИКА

-- Найти всех ИТ работников с зарплатой выше 12000 
select *
from employees
where department = 'IT' and salary > 12000;

-- Повысить зарплату работников отдела Human Resources в 2 раза
update employees
set salary = salary * 2
where department = 'Human Resources';

-- У руководителя родились близнецы Лаура и Адам, в честь праздника он решил повысить зарплату работников с 
-- именами Лаура и Адам в 5 раз.
update employees
set salary = salary * 5
where first_name = 'Laura' or first_name = 'Adam';
-- where first_name in ('Laura', 'Adam');

-- Diana Lorentz вышла замуж и поменяла фамилию на King. Поменяйте у Diana Lorentz фамилию на King. 
update employees
set last_name = 'King'
where first_name = 'Diana' and last_name = 'Lorentz'; 

-- Всех работников отдела sales уволили. Удалите работников sales из таблицы. 
delete from employees
where department = 'sales';

-- John Russell перевели в отдел Marketing и повысили зарплату на 5000. Измените данные для работника John Russell. 
update employees
set department = 'Marketing', salary = salary + 5000
where first_name =  'John' and last_name = 'Russell';

select * 
from employees
where first_name =  'John' and last_name = 'Russell';


-- Условные операторы(ветвление)
-- Функция CASE проверяет истинность набора условий и в зависимости от результата проверки может возвращать тот или иной результат. Эта функция принимает следующую форму:
-- case
-- 	when условие1 then действие/результат
--     when условие2 then действие/результат
--     when условие3 then действие/результат
--     ...
--     else альтернативный результат
-- end

-- оператор AS (alias) - как

-- select *
-- from employees;

-- name surname

-- select first_name as name, last_name as surname
-- from employees;

-- select salary * 5 as total_salary
-- from employees;


create table phones(
	id int primary key auto_increment,
    product_name varchar(128) not null,
    product_count int,
    starting_price int
);


insert into Phones(Product_Name, Product_Count, Starting_Price) 
	values('iPhone X', 3, 680),
	 ('iPhone XR', 2, 700),
	 ('iPhone XS', 10, 720),
	 ('iPhone 11', 1, 790),
	 ('iPhone 11 Pro', 12, 850),
	 ('iPhone 11 Pro Max', 2, 890),
	 ('iPhone SE', 1, 850),
	 ('iPhone 12 Mini', 15, 890),
	 ('iPhone 12', 20, 910),
	 ('iPhone 12 Pro', 5, 950),
	 ('iPhone 12 Pro Max', 13, 1000);
     
select * from phones;
     
-- Вывести поле product_name как title, посчитать и вывести общую сумму заказов (product_count * starting_price) как total_sum
select product_name as title, product_count*starting_price as total_sum
from phones;

-- Созадть поле total_sum по умолч. 0
alter table phones
add column total_sum int default 0;

-- Заполнить поле total_sum формулօй product_count*starting_price
update phones
set total_sum = product_count * starting_price;

-- Вывести product_name, product_count, новое поле count_info, заполнить ее: 
-- Если Product_Count меньше/равно 2, count_info = 'Товар заканчивается',
-- Если Product_Count меньше/равно 5, count_info = 'Мало товара',
-- Если Product_Count меньше/равно 10, count_info = 'Есть в наличии',
-- В остальных случаях count_info ='Много товара';
select product_name, product_count, case
										when product_count<=2 then 'Товар заканчивается'
                                        when product_count<=5 then 'Мало товара'
                                        when product_count<=10 then 'Есть в наличии'
                                        else 'Много товара'
									end as count_info
from phones;

-- Создать новое поле count_info, заполнить ее: 
-- Если Product_Count меньше/равно 2, category = 'Товар заканчивается',
-- Если Product_Count меньше/равно 5, category = 'Мало товара',
-- Если Product_Count меньше/равно 10, category = 'Есть в наличии',
-- В остальных случаях category ='Много товара';

alter table phones
add count_info varchar(128);

select * from phones;

update phones
set count_info = case
						when product_count<=2 then 'Товар заканчивается'
						when product_count<=5 then 'Мало товара'
						when product_count<=10 then 'Есть в наличии'
						else 'Много товара'
				  end;

-- Вывести product_name как name, starting_price как price и новое поле tax 

-- Заполнить поле tax
-- Если начальная цена меньше/равно 700, tax = null,
-- если больше 700 и меньше 850, tax = 15,
-- если больше или равно 850, tax = 25 
                
select product_name as name, starting_price as price, case
															when starting_price <= 700 then null
                                                            when starting_price < 850 then 15
                                                            when starting_price >= 850 then 25
													  end as tax
from phones;


-- Создать новое поле tax целое число
-- Заполнить поле tax
-- Если начальная цена меньше 700, tax = null,
-- если больше либо равно 700 и меньше 850, tax = 15,
-- если больше или равно 850, tax = 25

alter table phones
add tax int;

update phones
set tax = case
				when starting_price <= 700 then null
				when starting_price < 850 then 15
                when starting_price >= 850 then 25
			end;
            
select * from phones;

-- Создать новое поле для final_price numeric(6, 2)
-- Заполнить (starting_price + starting_price * tax / 100)

alter table phones
add final_price numeric(6, 2);

update phones
set final_price = starting_price + starting_price * tax / 100;

update phones
set final_price = case 
						when tax is null then starting_price
                        when starting_price is null then 0
                        else starting_price + starting_price * tax / 100
				  end;

-- Функция COALESCE принимает список значений и возвращает первое из них, которое не равно NULL:                  
-- coalesce(value1, value2, value3...)

update phones
set final_price = coalesce(starting_price + starting_price * tax / 100, starting_price, 0);
