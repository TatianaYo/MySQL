CREATE DATABASE home_task; 

USE home_task;
-- 1. Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными.

CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date VARCHAR(45) NOT NULL,
    count_product INT NOT NULL
);
SELECT * FROM sales;

INSERT sales(order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);
SELECT * FROM sales;

-- 2. Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва
SELECT order_date, count_product,
CASE
	WHEN count_product < 100 THEN 'МАЛЕНЬКИЙ ЗАКАЗ'
    WHEN count_product > 300 THEN 'БОЛЬШОЙ ЗАКАЗ'
    ELSE 'СРЕДНИЙ ЗАКАЗ'
END AS order_type
FROM sales;

-- 3. Создайте таблицу “orders”, заполните ее значениями
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(45) NOT NULL,
    amount DOUBLE NOT NULL,
    order_status VARCHAR(45) NOT NULL
);
SELECT * FROM orders;

INSERT orders(employee_id, amount, order_status)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');
SELECT * FROM orders;

/* Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status: 
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED -  «Order is cancelled»*/

SELECT employee_id, amount, order_status,
CASE order_status
	WHEN 'OPEN' THEN 'Order is in open state'
	WHEN 'CLOSED' THEN 'Order is closed'
	ELSE 'Order is cancelled'
END AS full_order_status
FROM orders;