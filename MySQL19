// Агрегация + повторение предыдущих тем

// 1. Создать коллекцию orders со свойствами _id, customer, product, amount, city, используя следующие данные:

// 1 Olga Apple 15.55 Berlin
// 2 Anna Apple 10.05 Madrid
// 3 Olga Kiwi 9.6 Berlin
// 4 Anton Apple 20 Roma
// 5 Olga Banana 8 Madrid
// 6 Petr Orange 18.3 Paris

db.orders.insertMany([
	{
		_id: 1,
		customer: 'Olga',
		product: 'Apple',
		amount: 15.55,
		city: 'Berlin'
	},
	{
		_id: 2,
		customer: 'Anna',
		product: 'Apple',
		amount: 10.05,
		city: 'Madrid'
	},
	{
		_id: 3,
		customer: 'Olga',
		product: 'Kiwi',
		amount: 9.6,
		city: 'Berlin'
	},
	{
		_id: 4,
		customer: 'Anton',
		product: 'Apple',
		amount: 20,
		city: 'Roma'
	},
	{
		_id: 5,
		customer: 'Olga',
		product: 'Banana',
		amount: 8,
		city: 'Madrid'
	},
	{
		_id: 6,
		customer: 'Petr',
		product: 'Orange',
		amount: 18.3,
		city: 'Paris'
	}
])

// 2. Найти сколько всего было совершено покупок.
db.orders.countDocuments()

// 3. Найти сколько всего раз были куплены яблоки.
db.orders.find({product: 'Apple'}).count()

// 4. Вывести все документы отсортированными по стоимости покупки - от самой недорогой до самой дорогой.
db.orders.find().sort({amount: 1})

// 5. Вывести три самые дорогие покупки.
db.orders.find().sort({amount: -1}).limit(3)

// 6. Найти сколько всего покупок было совершено в Берлине
db.orders.find({city: 'Berlin'}).count()

// 7. Найти количество покупок яблок в городах Берлин и Мадрид
db.orders.find({product: 'Apple', city: {$in: ['Berlin', 'Madrid']}})

// 8. Найти сколько было потрачено каждым покупателем
db.orders.aggregate([
    {$group: {_id: '$customer', total_sum: {$sum: '$amount'}}}
])

// 9. Найти сколько было потрачено на каждый товар
db.orders.aggregate([
    {$group: {_id: '$product', total_sum: {$sum: '$amount'}}}
])

// 10. Найти сколько было потрачено в каждом городе
db.orders.aggregate([
    {$group: {_id: '$city', total_sum: {$sum: '$amount'}}}
])

// Д/З

// 11. Добавить всем документам свойство count со значением 0
// 12. Документам с id 1 и 3 задать значение count 3. 
// 13. Документу с id 4 задать count 2. 
// 14. Всем документам увеличить count на 1
// 15. Найти в каких городах совершала покупки Ольга

// MYSQL

// -- Вывести департаменты, в которых никто не работает
// select t1.department_name
// from departments t1
// left join employees t2
// on t1.department_id = t2.department_id
// where t2.employee_id is null;

// -- Вывести имена и фамилии сотрудников, а также имена и фамилии их менеджеров.
// select t1.first_name as emp_name, t1.last_name as emp_surname, t2.first_name as mng_name, t2.last_name as mng_surname
// from employees t1 -- employees
// join employees t2 -- managers
// on t1.manager_id = t2.employee_id;

// Про Join
https://blog.skillfactory.ru/glossary/join-sql/#:~:text=Self%20Join,%C2%BB%2C%20%D0%BE%D0%B1%D1%8A%D0%B5%D0%B4%D0%B8%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B2%D0%BD%D1%83%D1%82%D1%80%D0%B8%20%D0%BE%D0%B4%D0%BD%D0%BE%D0%B9%20%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D1%8B.
