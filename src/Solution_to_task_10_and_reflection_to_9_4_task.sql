//My reflection to task  9.4.
/*
9.4.1.
Решение не верное, так как в моем запросе присутствуют «лишние» строки.
Эти строки – результат совпадения заказчиков самих с собой.
Т.к. в условии не указано, что совпадающие айди должны пропускаться или (t1.CustomerID <> t2.CustomerID).
Такое логическое выражение в моем решении отсутствует. Поэтому в результате запроса – лишние строки.

9.4.2.
Решение не верное. Так как в select -  я выбрал весь список, а нужно было выбрать только OrderID.
Так же можно было и не указывать копию таблицы, так как я в этом запросе не ищу какую либо пару записей.

9.4.3.
Решение не верное, да – запрос будет выдавать такой же результат как и в эталонном,
но  в моем решении используется агрегирующая функция – пересчитывающая все значения заданного поля.
В эталонном решении используется – предложение, имеющее вложенный запрос из команд.
Соответственно, мое решение вызовет лишнюю нагрузку при обращении к БД.


*/

//Solution to 10.4.

//10.4.1.
select Products.ProductName, [Order Details].UnitPrice
from Products inner join [Order Details]
on Products.ProductID = [Order Details].ProductID
   and [Order Details].UnitPrice < 20;



//10.4.2.

1. Выдача получилась объемней за счет дополнительных записей,
   у которых в поле Freight  записаны значения NULL.

2. При варианте с применением FULL JOIN выполняется объединение множеств.
Записи (в таблице Orders) не подошли под условие отбора, поэтому поля,
соответствующие другой таблице, заполняются значением NULL.



//10.4.3.
Чтобы превратить запрос CROSS JOIN в INNER JOIN достаточно в запросе
добавить условие WHERE.


//10.4.4.
SELECT Products.ProductName, [Order Details].UnitPrice
FROM Products INNER JOIN [Order Details]
ON Products.ProductID = [Order Details].ProductID;



