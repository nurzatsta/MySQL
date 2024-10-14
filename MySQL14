// use - команда для создания БД или для того чтоб переключиться между бд 
// db.createCollection('имя_коллекции') - Создаем пустую коллекцию
// db.collection_name.insertOne - Вставляет один объект в коллекцию


коллекция(mongo) - таблица(mysql)
объект(mongo) - дата/данные/строка(mysql)

db.user.insertOne({
    'first_name': 'John',
    'last_name': 'Smith',
    'age': 30,
    'friends': ['Bob', 'Derek', 'Daniel'],
    'address': {
        'street': 'Burbank 12/23',
        'building': 20
    }
})

db.user.insertOne({
    'first_name': 'Bob',
    'last_name': 'Brown',
    'age': 25,
    'friends': ['John', 'Derek', 'Daniel'],
    'address': {
        'street': 'Burbank 50/2',
        'building': 8
    }
})

db.fruits.insertOne({
    name: 'Apple',
    price: 100,
    count: 5
})

// Создать коллекцию products и заполнить документами со следующими свойствами: 
// _id, title, price, count. Используйте следующие данные:
 
// 1 Apple 280 4
// 2 Lemon 300 8
// 3 Lime 500 3
// 4 Orange 200 8

db.products.insertOne({
    _id: 1,
    title: 'Apple',
    price: 280,
    count: 4
})


db.products.insertOne({
    _id: 2,
    title: 'Lemon',
    price: 300,
    count: 8
})

db.products.insertOne({
    _id: 3,
    title: 'Lime',
    price: 500,
    count: 3
})

db.products.insertOne({
    _id: 4,
    title: 'Orange',
    price: 200,
    count: 8
})

// insert into table
// values (......);

// insert into table
// values (......);

// insert into table
// values (......), (......), (......)
