select OrderID, ProductID, UnitPrice, Quantity from [Order Details]
where (UnitPrice > 40) AND (Quantity < 10);