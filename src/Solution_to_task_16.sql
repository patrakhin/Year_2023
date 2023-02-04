
//Solution to 16.


/*
после корректировки – добавления автоинкремента
create table Region (
RegionID int identity (1, 1) primary key,
RegionDescription nchar(50) not null);

insert into Region (RegionDescription)
values ('Eastern');
insert into Region (RegionDescription)
values ('Western');
insert into Region (RegionDescription)
values ('Northern');
insert into Region (RegionDescription)
values ('Southern');

create table Territories (
TerritoryID int primary key,
TerritoryDescription nchar(50),
RegionID int not null);


alter table Territories
add constraint FK_Territories foreign key (RegionID)
references Region (RegionID);

insert into Territories (TerritoryID, TerritoryDescription, RegionID)
values ('01581', 'Westboro', 1);
insert into Territories (TerritoryID, TerritoryDescription, RegionID)
values ('03049', 'Hollis', 2);
insert into Territories (TerritoryID, TerritoryDescription, RegionID)
values ('60601', 'Chicago', 3);

//добавляю индексирование на поля таблиц, поля отмеченные как РК
в этом не нуждаются т.к. на них происходит кластеризованная индексация автоматически


Решение задания 16 занятия.
use MyTest;
create index Territory_Desc_index on Territories (TerritoryDescription);
create index Region_Desc_index on Region (RegionDescription);

 */


