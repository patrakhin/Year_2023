//My reflection to task 6.3.
/*
6.3.1.
Решение не верное. Разбираю, почему это так.
В поле ContactType содержится множество записей: NULL, Customer, Employee, Shipper, Supplier. В решении данной задачи нужно было не только вывести уникальную запись каждого подмножества (NULL, Customer и т.д.) но и вывести количество записей в каждом типе подмножества – другими словами выполнить агрегацию таблица Contacts.
Запрос будет читаться так:
1-ая строка: Выбрать поле ContactType, посчитать количество значений данного поля ( результат отобразить в столбце Counts – чтобы столбец не был обозначен как No .. name).
2-ая строка: Из таблицы Contacts
3-я строка: Сгруппировать значения (уникальные записи) по полю ContactType и выполнить над множеством таких подгрупп операцию COUNT.
Следовательно, правильное решение будет таким:
select ContactType, count(ContactType) as Counts
from Contacts
group by ContactType;

6.3.2.
Решение верное, стиль написания соблюдается.


*/

//Solution to 7.3.

//7.3.1.
select 'Discount in %', (Discount * 100)/UnitPrice as Discount
from [Order Details];


//7.3.2.
select * from [Order Details]
where ProductID in
  (select ProductID from Products
   where UnitsInStock > 40);


//7.3.3.
select * from [Order Details]
where ProductID in
  (select ProductID from Products
   where UnitsInStock > 40)
   and OrderID in
  (select OrderID from Orders
   where Freight >= 50);



