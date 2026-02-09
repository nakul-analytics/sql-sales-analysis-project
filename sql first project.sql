CREATE DATABASE company;
USE company;
CREATE TABLE sales (
id INT,
product VARCHAR(50),
city VARCHAR(50),
amount INT
);

INSERT INTO sales VALUES
(1,'Laptop','Delhi',50000),
(2,'Mouse','Delhi',500),
(3,'Laptop','Mumbai',52000),
(4,'Keyboard','Delhi',1500),
(5,'Mouse','Mumbai',700),
(6,'Laptop','Bangalore',48000),
(7,'Keyboard','Mumbai',1200);
SELECT * FROM sales;
SELECT SUM(amount) FROM sales;
SELECT * FROM sales
WHERE city = 'Mumbai';
SELECT * FROM sales
ORDER BY amount DESC;
SELECT COUNT(*) FROM sales;
SELECT city, SUM(amount)
FROM sales
GROUP BY city;
SELECT product, SUM(amount)
FROM sales
GROUP BY product;
SELECT product, SUM(amount) AS total
FROM sales
GROUP BY product
ORDER BY total DESC
LIMIT 1;
SELECT AVG(amount) FROM sales;
SELECT SUM(amount)
FROM sales
WHERE city = 'Delhi';
SELECT city, SUM(amount) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC;
SELECT SUM(amount) AS total_revenue FROM sales;
SELECT city, COUNT(*) AS orders
FROM sales
GROUP BY city;


