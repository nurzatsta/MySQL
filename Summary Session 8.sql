-- JOIN

-- INNER JOIN
-- OUTER JOIN - RIGHT JOIN, LEFT JOIN
-- SELF JOIN 

-- INNER JOIN
-- select column...
-- from table1
-- join table2
-- on table1.column = table2.column

-- SELF JOIN 
-- select column...
-- from table1
-- join table2
-- on table1.column != table2.column

-- OUTER JOIN - RIGHT JOIN, LEFT JOIN
-- select column...
-- from table1
-- right/left join table2
-- on table1.column = table2.column

create database oe;
use oe;

-- 1. Вывести имя, фамилию пользователей и даты их заказов(order_date).
select t1.CUST_FIRST_NAME, t1.CUST_LAST_NAME, t2.ORDER_DATE
from customers t1
join orders t2
on t1.CUSTOMER_ID = t2.CUSTOMER_ID;

-- 2. Вывести даты заказов продуктов и описание этих продуктов(product_description).
select t1.ORDER_DATE, t3.PRODUCT_DESCRIPTION
from orders t1
join order_items t2
on t1.ORDER_ID = t2.ORDER_ID
join product_information t3
on t2.PRODUCT_ID = t3.PRODUCT_ID;

-- 3. Вывести имя, фамилию пользователей, даты заказов(order_date), описание продуктов, 
-- которые они заказали и категории соответствующих продуктов (category_name).

select t1.CUST_FIRST_NAME, t1.CUST_LAST_NAME, t2.ORDER_DATE, t4.PRODUCT_DESCRIPTION, t5.CATEGORY_NAME
from customers t1
join orders t2
on t1.CUSTOMER_ID = t2.CUSTOMER_ID
join order_items t3
on t2.ORDER_ID = t3.ORDER_ID
join product_information t4
on t3.PRODUCT_ID = t4.PRODUCT_ID
join categories_tab t5
on t4.CATEGORY_ID = t5.CATEGORY_ID;

select t1.CUST_FIRST_NAME, t1.CUST_LAST_NAME, t2.ORDER_DATE, t4.PRODUCT_DESCRIPTION, t5.CATEGORY_NAME
from customers t1
left join orders t2
on t1.CUSTOMER_ID = t2.CUSTOMER_ID
left join order_items t3
on t2.ORDER_ID = t3.ORDER_ID
left join product_information t4
on t3.PRODUCT_ID = t4.PRODUCT_ID
left join categories_tab t5
on t4.CATEGORY_ID = t5.CATEGORY_ID;

-- 4. Вывести названия(product_name), описания категорий(category_description) и 
-- количества(quantity) тех продуктов, у которых минимальная стоимость (min_price) больше 300.

-- product_information, categories_tab, order_items
select t1.product_name, t2.category_description, t3.quantity
from product_information t1
join categories_tab t2
on t1.CATEGORY_ID = t2.CATEGORY_ID
join order_items t3
on t1.PRODUCT_ID = t3.PRODUCT_ID
where min_price > 300;

-- 5. Вывести имя, фамилию покупателей, которые купили принтеры('printers') - CATEGORY_DESCRIPTION.
select CUST_FIRST_NAME, CUST_LAST_NAME
from customers t1
join orders t2
on t1.CUSTOMER_ID = t2.CUSTOMER_ID
join order_items t3
on t2.ORDER_ID = t3.ORDER_ID
join product_information t4
on t3.PRODUCT_ID = t4.PRODUCT_ID
join categories_tab t5
on t4.CATEGORY_ID = t5.CATEGORY_ID
where CATEGORY_DESCRIPTION like '%printers%';
