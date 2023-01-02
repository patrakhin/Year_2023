//My reflection to task 4
/*
4.3.1.
Решение не верное: т.к выбираю поле ContactName, из таблицы Customers.
А нужно было выбрать всю таблицу  - *,
где поле ContactName (с учетом того что нужна фамилия контактной персоны начинающаяся на С, а не имя)
содержит нужные фамилии. Соответственно, правильное решение должно выглядеть так:

select * from Customers
where ContactName like ‘% C%’;

т.е. в поле ContactName – первая подстрока может быть любая (%),
а следующая (через пробел, соответственно) содержащая фамилию на букву С
(С - указываем первую букву следующей подстроки и % - после буквы С идет произвольная строка, без пробела).
Разница в том, что в РФ принята запись ФИО, а в иностранных таблицах, сначала имя, а затем фамилия.

4.3.2.
Решение не верное: т.к выбираю поля Freight, ShipCountry, из таблицы Orders.
А нужно было выбрать всю таблицу  - *. Соответственно правильное решение должно быть таким:

select * from Orders
where (Freight between 100.00 and 200.00) and (ShipCountry in ('USA', 'France'));

4.3.3.
Решение верное, стиль написания соблюдается.


*/
//Solution to 5.4
//5.4.1
select * from Employees
order by Country, BirthDate desc

//5.4.2
select * from Employees
where not (Region is null)
order by Country, BirthDate desc;

//5.4.3
select AVG (UnitPrice), MiN (UnitPrice), MAX (UnitPrice) from [Order Details];

//5.4.4
select COUNT (DISTINCT City) from Customers;
