-- date -- yyyy-mm-dd
-- datetime -- yyyy-mm-dd hh:mm:ss
-- timestamp -- yyyy-mm-dd hh:mm:ss
-- time -- hh:mm:ss
-- year -- yyyy

-- now()
-- current_timestamp() - yyyy-mm-dd hh:mm:ss
-- sysdate()

-- current_date()  - yyyy-mm-dd
-- curdate()

-- current_time() - hh:mm:ss
-- curtime()

-- dayofmonth()

-- month()
-- year()

-- monthname()

-- hour()
-- minute()
-- second()

-- extract(param from datetime/timestamp)

-- str_to_date('August 30 23', format)

-- Значение format:

	-- %m: месяц 01-12
	-- %c: месяц 1-12
    -- %M: название месяца(January...December)
    -- %b: аббревиатура месяца (Jan..Dec)
    
    -- %d: день месяца 01..31
    -- %e: день месяца 1...31
    -- %D: номер дня месаца (1st, 2nd, 3rd...)
    
    -- %y: год в виде двух цифр yy
    -- %Y: год в виде четырех цифр yyyy
    
    -- %W: название дня недели(Sunday...Saturday)
    -- %a: аббревиатура дня недели(Sun..Sat)
    
    -- %H: час 00..23
	-- %k: час 0..23
    -- %h: час 01..12
    -- %l: час  1..12
    -- %p: AM/PM

	-- %i: минуты 00..59
    -- %S: секунды 00..59
    
    -- %r: время в 12-ти часавом формате (hh:mm:ss AM/PM)
    -- %T: время в 12-ти часавом формате (hh:mm:ss)
    
-- str_to_date

-- 'Feb 23 10'
-- '2024-November-20 14:25:30'

select str_to_date('Feb 23 10', '%b %y %e'); -- '2023-02-10'
select str_to_date('2024-November-20 14:25:30', '%Y-%M-%e %k:%i:%S'); -- '2024-11-20 14:25:30'

-- 'September 15 2023'
-- '25/Nov/12 04:30:12'

select str_to_date('September 15 2023', '%M %e %Y'); -- '2023-09-15'
select str_to_date('25/Nov/12 04:30:12', '%y/%b/%e %H:%i:%S'); -- '2025-11-12 04:30:12'

-- Форматирование даты и времени
-- yyyy-mm-dd -> новый формат 24 Feb 12

-- date_format(date, format)
-- название месяца день месяца год в виде двух цифр
select date_format('2022-03-23', '%M/%e/%y'); -- 'March/23/22'

-- Вывести поле hiredate и новое поле с датамни из hiredate в формате 'название месяца день месяца год в виде четырех цифр'
select hiredate, date_format(hiredate, '%M/%e/%Y')
from employees;

-- time_format(time, format)
-- hh:mm:ss -> новый формат

-- время в 12-ти часавом формате (hh:mm:ss AM/PM) 
select time_format('23:36:20', '%r');

-- (час 00..23):(минуты 00..59)
select time_format('04:20:25', '%H:%i');

-- '2023-04-14' ->  (месяц 1-12)/(год в виде четырех цифр yyyy)/(день месяца 01..31)
select date_format('2023-04-14', '%c/%Y/%d');

-- February 20 2022 -> 02-2022-20
select str_to_date('February 20 2022', '%M %d %Y');
select date_format(str_to_date('February 20 2022', '%M %d %Y'), '%m-%Y-%d');

-- 2024 Nov 10 - > 10/11/24
select date_format(str_to_date('2024 Nov 10', '%Y %b %d'), '%d/%m/%y');
