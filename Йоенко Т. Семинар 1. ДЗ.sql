USE home_task1;
# 2. 	Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)
SELECT ProductName, Manufacturer, Price
FROM table1
WHERE ProductCount > 2;

# 3.  	Выведите весь ассортимент товаров марки “Samsung”
SELECT ProductName, Price
FROM table1
WHERE Manufacturer = "Samsung";

# 4.1. Товары, в которых есть упоминание "Iphone"
SELECT ProductName
FROM table1
WHERE ProductName LIKE "IPhone%";

# 4.2. "Galaxy"
# Вариант 1
SELECT ProductName
FROM table1
WHERE ProductName LIKE "%Galaxy%";
# Вариант 2
SELECT ProductName
FROM table1
WHERE ProductName RLIKE "Galaxy";

# 4.3.  Товары, в которых есть ЦИФРЫ
SELECT ProductName, Price, Manufacturer
FROM table1
WHERE ProductName RLIKE "[0-9]";

# 4.4.  Товары, в которых есть ЦИФРА "8"
SELECT ProductName, Price, Manufacturer
FROM table1
WHERE ProductName RLIKE "8";