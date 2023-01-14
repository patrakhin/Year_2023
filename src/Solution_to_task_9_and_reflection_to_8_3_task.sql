//My reflection to task  8.3.
/*
8.3.1.
Решение верное. Стиль написания соблюдается

8.3.2.
Решение верное. Стиль написания соблюдается

8.3.3.
Решение не верное, в части правильности чередования колонок при выведении результата запроса.
Так, в эталонном решении: ProductName, UnitPrice, CanegoryName.
В моем решении: ProductName, CanegoryName, UnitPrice.


*/

//Solution to 9.4.

//9.4.1.
select t1.ContactName, t2.ContactName, t2.Region
from Customers t1, Customers t2
where (t1.Region is null) and (t2.Region is null)
order by t2.Region;


//9.4.2.
select * from Orders t1
where t1.CustomerID = any
(select CustomerID from Customers
where Region is not null);


//9.4.3.
select * from Orders
where Freight >
(select max (UnitPrice) from Products);





