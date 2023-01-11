//My reflection to task  7.3.
/*
7.3.1.
Решение не верное. Анализирую, почему это так.
В эталонном решении выбираются три поля:
OrderID, ProductID и Discount записи которого умножаются на сто, для выражения скидки в процентах.
Т.к. у нас получается набор значений для каждой записи, их будет удобней читать, если у столбца будет наименование.
В эталонном примере discount_percent.
Выбор указанных полей происходит из таблицы Order Details.
В моем запросе: не указаны поля OrderID, ProductID и при вычислении скидки (выражения ее в процентах)
допущена ошибка. Т.к. искал процентное значение исходя из того,
что стоимость товара – 100%, величина скидки – х процентов.
И далее, через пропорцию находил величину скидки в процентах.
Наименование нового поля логичней указать скидка в процентах (как в эталонном решении),
соответственно запись 'Discount in %' не нужна.

7.3.2.
Решение верное. Стиль написания соблюдается.

7.3.3.
Решение верное. Стиль написания соблюдается.

*/

//Solution to 8.

//8.3.1.
select Products.ProductName, Categories.CategoryName
from Products, Categories
where Products.CategoryID = Categories.CategoryID;

//8.3.2.
select Products.ProductName, [Order Details].UnitPrice
from Products, [Order Details]
where Products.ProductID = [Order Details].ProductID
      and [Order Details].UnitPrice < 20;



//8.3.3.
select Products.ProductName, Categories.CategoryName, [Order Details].UnitPrice
from Products, Categories, [Order Details]
where (Products.ProductID = [Order Details].ProductID)
      and (Categories.CategoryID = Products.CategoryID)
      and ([Order Details].UnitPrice < 20);




