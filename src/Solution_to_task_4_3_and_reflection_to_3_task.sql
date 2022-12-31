//My reflection to task 3
/*
3.9.1. Решение верное, стиль написания соблюдается.
3.9.2. Решение верное, стиль написания соблюдается.
3.9.3. Решение верное, нарушен стиль написания в части AND – нужно and.
3.9.4. Решение верное, нарушен стиль написания в части OR – нужно or.
3.9.5. Решение верное, стиль написания соблюдается.
3.9.6. Решение верное, нарушен стиль написания в части OR – нужно or.
3.9.7. Решение не верно: добавлены лишние колонки UnitPrice, Quantity  – необходимо четко делать то,
    что указано в задании и не добавлять лишнего (даже если это наглядней), строго по заданию.
    Нарушен стиль написания в части AND – нужно and.

*/
//Solution to 4.3
//4.3.1
select ContactName from Customers
where ContactName like 'C%';

//4.3.2
select Freight, ShipCountry from Orders
where (Freight between 100.00 and 200.00) and (ShipCountry in ('USA', 'France'));

//4.3.3
select * from EmployeeTerritories
where TerritoryID between 6897 and 31000;
