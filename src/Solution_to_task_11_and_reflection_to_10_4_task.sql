//My reflection to task  10.4.
/*
10.4.1.
Решение верно.
10.4.2.
Решение верно.

10.4.3.
Решение верно.

10.4.4.
Решение верно.



*/

//Solution to 11.5.

//11.5.1.
select * from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID
and OrderID is null
order by Customers.CustomerID;


//11.5.2.

select 'Customers' as Type, Customers.ContactName, Customers.City, Customers.Country from Customers
union all
select 'Suppliers' as Type, Suppliers.ContactName, Suppliers.City, Suppliers.Country from Suppliers;





