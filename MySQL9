-- Функции для работы с числами

-- round
-- ceiling
-- floor
-- power
-- sqrt
-- abs
-- rand

-- Функции для работы со строками

-- concat('Name', ' ', 'Surname');
-- concat_ws('-', '12', '45', '36');
-- length('Name'); -- 4
-- trim()
-- ltrim()
-- rtrim()
-- locate(find, search)
-- locate(find, search, start)

select locate('pen', 'pen, notebook, pencil, book'); -- 1
select locate('pen', 'pen, notebook, pencil, book', 3); -- 16
select locate('pen', '  pen'); -- 3
select locate('pen', '  pen', 4); -- 0

use gt200224;

select locate('Laura', full_name)
from employees;

set sql_safe_updates = 0;

delete from employees
where locate('Laura', full_name) != 0;

-- replace(search, find, replace);

select replace(full_name, 'John', 'Jack')
from employees;

create table products2(
	id int primary key auto_increment, 
    title varchar(128),
    price int,
    description varchar(255)
);

insert into products2 (title, price, description)
values ('notebook', 400, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tortor eu risus imperdiet lacinia at nec felis. Etiam imperdiet ante purus, at tristique neque malesuada eu. Nullam sed sodales lacus.'),
		('pen', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tortor eu risus imperdiet lacinia at nec felis. Etiam imperdiet ante purus, at tristique neque malesuada eu. Nullam sed sodales lacus. '),
        ('pencil', 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tortor eu risus imperdiet lacinia at nec felis. Etiam imperdiet ante purus, at tristique neque malesuada eu. Nullam sed sodales lacus. ');
        
select * from products2;

-- Замнить слово Lorem на Lorrem в поле description

-- select replace(description, 'Lorem', 'Lorrem')        
-- from products2;

update products2
set description = replace(description, 'Lorem', 'Lorrem');

-- В поле description заменить все запятые (,) на точку запятую (;).
update products2
set description = replace(description, ',', ';');

-- Возвращает первые 10 символов строки 'Lorem ipsum dolor sit amet.'
select left('Lorem ipsum dolor sit amet.', 10);

-- Возвращает часть строки 'Lorem ipsum dolor sit amet.' от начала до символа, предшествующего первому вхождению подстроки 'dolor'
select left('Lorem ipsum dolor sit amet.', locate('dolor', 'Lorem ipsum dolor sit amet.') - 1);
-- Функция LOCATE находит позицию первого вхождения подстроки 'dolor' в строке 'Lorem ipsum dolor sit amet.'.
-- LEFT извлекает часть строки от начала до символа, предшествующего позиции найденной подстроки 'dolor'.


-- Возвращает часть строки 'Lorem ipsum dolor sit amet.' от начала до символа, предшествующего первому вхождению подстроки 'dolor',
-- заменяя все вхождения символа 'o' на '0'
select replace(left('Lorem ipsum dolor sit amet.', locate('dolor', 'Lorem ipsum dolor sit amet.') - 1), 'o', '0');
-- Сначала, как и во втором запросе, извлекается часть строки от начала до символа, предшествующего позиции подстроки 'dolor'.
-- Затем функция REPLACE заменяет все вхождения символа 'o' в полученной части строки на '0'.


--  В поле description до слово 'Etiam' заменить все буквы 'o' на '0'.

-- 1. Находит позицию первого вхождения подстроки 'Etiam' в столбце 'description' таблицы 'products2'
select locate('Etiam', description) -- 115
from products2;

-- 2. Извлекает часть строки из столбца 'description' таблицы 'products2' от начала до 114-го символа(Е)
select left(description, 115-1)
from products2;

-- 3. Извлекает часть строки из столбца 'description' таблицы 'products2' от начала до символа, предшествующего первому вхождению подстроки 'Etiam'
select left(description, locate('Etiam', description)-1)
from products2;

-- 4. Извлекает часть строки из столбца 'description' таблицы 'products2' от начала до символа, предшествующего первому вхождению подстроки 'Etiam',
-- заменяя все вхождения символа 'o' на '0'
select replace(left(description, locate('Etiam', description)-1), 'o', '0')
from products2;

-- 5. Извлекает часть строки из столбца 'description' таблицы 'products2' от символа, начиная с первого вхождения подстроки 'Etiam' до конца строки
select right(description, length(description) - locate('Etiam', description) + 1)
from products2;

-- 6. Объединяет две части строки из столбца 'description' таблицы 'products2':
-- первую часть до символа, предшествующего первому вхождению подстроки 'Etiam', с заменой всех вхождений символа 'o' на '0',
-- и вторую часть от первого вхождения подстроки 'Etiam' до конца строки
select concat(replace(left(description, locate('Etiam', description)-1), 'o', '0'), right(description, length(description) - locate('Etiam', description) + 1))
from products2;

-- 7. Обновляет столбец 'description' в таблице 'products2', устанавливая новое значение, которое получается путем объединения двух частей строки:
-- первая часть до символа, предшествующего первому вхождению подстроки 'Etiam', с заменой всех вхождений символа 'o' на '0',
-- и вторая часть от первого вхождения подстроки 'Etiam' до конца строки
update products2
set description = concat(replace(left(description, locate('Etiam', description)-1), 'o', '0'), right(description, length(description) - locate('Etiam', description) + 1));
