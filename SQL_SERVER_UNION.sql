--UNION and UNION ALL examples
SELECT first_name, last_name
FROM sales.staffs
UNION
SELECT first_name, last_name
FROM sales.customers;

SELECT COUNT (*)
FROM sales.staffs;

SELECT COUNT (*)
FROM sales.customers;

SELECT first_name, last_name
FROM sales.staffs
UNION ALL
SELECT first_name, last_name
FROM sales.customers;


--UNION and ORDER BY example
SELECT first_name, last_name
FROM sales.staffs
UNION ALL
SELECT first_name, last_name
FROM sales.customers
ORDER BY first_name, last_name;



