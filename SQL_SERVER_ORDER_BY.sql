-- Sort a result set by one coloumn in ascending order
SELECT first_name, last_name FROM sales.customers 
ORDER BY first_name;

SELECT first_name, last_name FROM sales.customers
ORDER BY first_name ASC;


-- Sort a result set by one column in descending order
SELECT first_name, last_name FROM sales.customers 
ORDER BY first_name DESC;


--Sort a result set by multiple columns
SELECT city, first_name, last_name FROM sales.customers
ORDER BY city, first_name;


-- Sort a result set by multiple columns in different orders
SELECT city, first_name, last_name FROM sales.customers
ORDER BY city DESC, first_name ASC;


-- Sort a result set by a column that is not in the select list
SELECT city, first_name, last_name FROM sales.customers 
ORDER BY state;


-- Sort a result set by an expression
SELECT first_name, last_name FROM sales.customers
ORDER BY LEN(first_name) DESC;


-- Sort by ordinal positions of columns
SELECT first_name, last_name FROM sales.customers 
ORDER BY 1, 2;