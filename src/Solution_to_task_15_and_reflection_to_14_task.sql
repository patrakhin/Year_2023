//My reflection to task  14.
/*
14.1.
Ответ не полный. Анализирую почему.
Описан состав таблицы и указаны составляющие, но не указано для чего именно потребовалось такое представление.
«…для того, чтобы с помощью данного представления выписывать счета, где требуется печатать имена, а не ID.»

14.2.
Ответ не полный. Анализирую почему.
В ответе не указано, для чего именно потребовалось такое представление.
«Показывает продажи (сумму в $) по категориям товаров в 1997 г., извлекая данные из другого представления»

14.3.
Ответ не полный. Анализирую почему.
В ответе не указано, что данное представление (включая и условия фильтра сумма>2500)
показывает на какую сумму, когда и какому клиенту был оформлен заказ.

14.4.
Ответ не верный. Анализирую почему.
В представлении рассчитывается средняя стоимость товара,
но список товаров показывается с ценой выше средней по магазину.

14.5.
Ответ не полный. Анализирую почему.
В ответе не указано, что данное представление показывает дату доставки, сумму и ID заказа по кварталам.


*/

//Solution to 15.7.


/*
create table Region (
RegionID int not null,
RegionDescription nchar(50) not null);

alter table Region
add constraint PK_Region primary key (RegionID);

insert into Region (RegionID, RegionDescription)
values (1, 'Eastern');
insert into Region (RegionID, RegionDescription)
values (2, 'Western');
insert into Region (RegionID, RegionDescription)
values (3, 'Northern');
insert into Region (RegionID, RegionDescription)
values (4, 'Southern');

create table Territories (
TerritoryID int not null,
TerritoryDescription nchar(50),
RegionID int not null);

alter table Territories
add constraint PK_Territories primary key (TerritoryID);

alter table Territories
add constraint FK_Territories foreign key (RegionID)
references Region (RegionID);

insert into Territories (TerritoryID, TerritoryDescription, RegionID)
values ('01581', 'Westboro', 1);
insert into Territories (TerritoryID, TerritoryDescription, RegionID)
values ('03049', 'Hollis', 2);
insert into Territories (TerritoryID, TerritoryDescription, RegionID)
values ('60601', 'Chicago', 3);

 */


