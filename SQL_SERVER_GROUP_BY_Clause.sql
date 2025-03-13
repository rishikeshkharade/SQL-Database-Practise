SELECT customer_id, YEAR (order_date) order_year
FROM sales.orders WHERE customer_id IN (1, 2)
ORDER BY customer_id;

SELECT customer_id, YEAR (order_date) order_year
FROM sales.orders
WHERE customer_id IN (1, 2)
GROUP BY customer_id, YEAR (order_date)
ORDER BY customer_id;


--SQL Server GROUP BY clause and aggregate functions
SELECT customer_id, YEAR (order_date) order_year, COUNT (order_id) order_placed
FROM sales.orders
WHERE customer_id IN (1, 2)
GROUP BY  customer_id, YEAR (order_date)
ORDER BY customer_id;


--1) Using GROUP BY clause with the COUNT() function example
SELECT city, COUNT (customer_id) customer_count
FROM sales.customers
GROUP BY city
ORDER BY city;

SELECT city, state, COUNT (customer_id) customer_count
FROM sales.customers
GROUP BY state, city
ORDER BY city, state;


--2) Using GROUP BY clause with the MIN and MAX functions example
SELECT brand_name, MIN (list_price) min_price, MAX (list_price) max_price
FROM production.products p
INNER JOIN production.brands b ON b.brand_id = p.brand_id
WHERE model_year = 2018
GROUP BY brand_name
ORDER BY brand_name;


--3) Using GROUP BY clause with the AVG() function example
SELECT brand_name, AVG (list_price) avg_price
FROM production.products p
INNER JOIN production.brands b ON b.brand_id = p.brand_id
WHERE model_year = 2018
GROUP BY brand_name
ORDER BY brand_name;


--4) Using GROUP BY clause with the SUM function example
SELECT order_id, SUM (quantity * list_price * (1 - discount)) net_value
FROM sales.order_items
GROUP BY order_id;