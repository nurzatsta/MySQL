// replaceOne(filter(condition), update(new document), [options-true/false])

//updateOne(filter, update)
//updateMany(filter, update)

// $set
// $unset
// $inc

// 1. Создать коллекцию products1 и заполнить документами (6 штук) со следующими свойствами (_id, title, price, count). Используйте следующие данные
	
// 1 Велосипед 45000 12
// 2 Самокат 1500 10
// 3 Ролики 2000 20
// 4 Лыжи 22000 15
// 5 Скейт 19000 4
// 6 Сноуборд 33000 17

db.products1.insertMany([  
    {
          _id: 1,
          title: "Велосипед",
          price: 45000,
          count: 12
      },
      {
          _id: 2,
          title: "Самокат",
          price: 15000,
          count: 10
      },
    {
          _id: 3,
          title: "Ролики",
          price: 20000,
          count: 20
      },
    {
          _id: 4,
          title: "Лыжи",
          price: 22000,
          count: 15
      },
    {
          _id: 5,
          title: "Скейт",
          price: 19000,
          count: 4
      },
    {
          _id: 6,
          title: "Сноуборд",
          price: 33000,
          count: 17
      }
  ])

// 2. У всех товаров, кол-во которых меньше 10, задайте кол-во 10
db.products1.updateMany({count: {$lt: 10}}, {$set: {count: 10}})

// 3. У всех товаров, цена которых меньше 20000 увеличьте цену на 5000
db.products1.updateMany({price: {$lt: 20000}}, {$inc: {price: 5000}})

// 4. Добавить свойство страны (country) а в качестве значения строка 'undefined'.
db.products1.updateMany({}, {$set: {country: 'undefined'}})

// 5. Для товаров с _id 1 и 4 установить в свойстве country значение 'Испания'.
db.products1.updateMany({_id: {$in: [1, 4]}}, {$set: {country: 'Испания'}})

// {$or: [{_id: 1}, {_id: 4}]}

// 6. Товарам 'Самокат', 'Ролики' и 'Скейт' установить в свойстве country значение 'США'.
db.products1.updateMany({title: {$in: ['Самокат', 'Ролики', 'Скейт']}}, {$set: {country: 'США'}})

// 7. Для товара 'Сноуборд' убрать свойство country.
db.products1.updateOne({title: 'Сноуборд'}, {$unset: {country: 1}})

// 8. Удалить поле count для всех товаров
db.products1.updateMany({}, {$unset: {count: 1}})
