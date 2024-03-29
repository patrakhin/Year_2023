//My reflection to task  13.3.
/*
13.3.1.
Решение верно.

13.3.2.
Решение верно.

13.3.3.
Решение не верное. Анализирую почему.
Удалять записи нужно именно по id, т.к. в таблице может быть несколько записей о компании, о номере телефона.


*/

//Solution to 14.

//14.1.

/*
Вообще, представление формируется динамически при выполнении запроса SQL,
физически не существует в таблице. Создается на основании существующих таблиц в БД.
Таблица создается в БД исходя из назначения этой таблице и физически существует в БД.
Представление Invoices (счет-фактура) отличается от таблицы Orders (заказы) тем,
что результатом запроса являются объединенные поля (в одну таблицу которая сформирована динамически)
из разных таблиц (Shippers, Employees, Orders, Products, Customers, Order Details)
и предоставляет более полные данные чем таблица Orders, она же и входит в состав представления Invoices.

 */



//14.2.
/*
Представление "CategorySales for 1997" суммирует продажи продуктов из таблицы Product Sales for 1997,
с группировкой сумм по полю CategoryName таблицы Product Sales for 1997.
*/

//14.3.

/*Представление "Sales Total by Amount" (всего продаж по сумме) – выбирает промежуточные суммы заказов,
где промежуточная сумма > 2500 и даты поставки по заказам между 1997 01 01 и 1997 12 31 (за весь 1997 год)*/


//14.4.
/*
Представление "Products Above Average Price" (товары выше средней цены) – рассчитывает среднюю стоимость товара
по полю UnitPrice из таблицы Products и выводит результат в виде двух полей.
Поля ProductName (наименование продукта)  и UnitPrice (средняя стоимость продукта).

 */

//14.5.
/*
Представление "Summary of Sales by Quarter" (сводка продаж по кварталам) – выводит результат отбора заказов
за все месяца 1997 года, где id заказов равен id заказов из таблицы Orders Subtotals (промежуточные суммы) с условием,
что определена дата поставки.

 */

