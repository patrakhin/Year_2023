//My reflection to task  11.5.
/*
11.5.1.
Решение неверное. Анализирую почему.
В результате запроса эталонного решения выводится всего лишь 2 записи.
Неверное решение по причине: добавление лишнего логического условия AND в LEFT JOIN,
где было достаточно указать по какому условию происходит соединение.
Это условие – одинаковые ID: Orders.CustomerID = Customers.CustomerID.
А затем, нужно было наложить общее условие выборки: WHERE Orders.CustomerID IS NULL. на сформированный запрос.

11.5.2.
Решение не верное в части (лишнего)указания наименования таблиц при выборке из указанных таблиц.
Как пример Customers.ContactName, Customers.City, Customers.Country from Customers.
Достаточно было написать ContactName, City, Country from Customers.
А так же отсутствие упорядочивания (сначала Customers, затем Suppliers) по типу: order by type.
В итоге, в результате запроса, получается «смешивание» Customers и Suppliers.

*/

//Solution to 12.3.

//12.3.1.
/*
insert into Employees (LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address,
    City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo)
values ('Stone', 'Anna', 'Sales Manager', 'Ms.', 1960-05-30, 1992-05-28, '4726-12th Ave.N.E.',
    'Seattle','WA’, '98105', 'USA', '(206)555-7799', '452',
    'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 2);
*/

//12.3.2.

insert into EmployeeTerritories (EmployeeID, TerritoryID)
values (15, '06897');



//12.3.3.

insert into Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate,
    ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
values ('VINET', 15, 1996-07-05, 1996-08-02, 1996-07-10, 3, 32.38, 'Vins et alcools Chevalier',
    '59 rue de lAbbae', 'Remis', null, '51100', 'France');

При добавлении записи в таблицу Orders конфликтов не возникло.
Так как в добавляемых значениях учитывались требования к полям каждого столбца.




