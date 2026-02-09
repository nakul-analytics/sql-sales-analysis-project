USE company;
SELECT * FROM customers;
INSERT INTO customers VALUES
(1,'Amit','Delhi'),
(2,'Rohit','Mumbai'),
(3,'Sara','Bangalore'),
(4,'John','Delhi');
SELECT sales.product, customers.name, sales.city, sales.amount
FROM sales
JOIN customers
ON sales.city = customers.city;
