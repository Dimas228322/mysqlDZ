show dbs

use shop

db.createCollection('catalogs')
db.createCollection('products')
db.catalogs.insert({name: 'Процессоры'})
db.catalogs.insert({name: 'Мат.платы'})
db.catalogs.insert({name: 'Видеокарты'})

db.products.insert(
   {
     name: 'Intel Core i3-8100',
     description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
     price: 7890.00,
     catalog_id: new ObjectId("5b56c73f88f700498cbdc56a")
   }
 );

 db.products.insert(
   {
     name: 'Intel Core i5-7400',
     description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
     price: 12700.00,
     catalog_id: new ObjectId("5b56c73f88f700498cbdc56b")
   }
 );

 db.products.insert(
   {
     name: 'ASUS ROG MAXIMUS X HERO',
     description: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
     price: 19310.00,
     catalog_id: new ObjectId("5b56c74788f700498cbdc56c")
   }
 );

 db.products.find()

 db.products.find({catalog_id: ObjectId("5b56c74788f700498cbdc56c")})