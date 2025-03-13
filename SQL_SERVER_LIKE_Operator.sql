--1) Using the LIKE operator with the % wildcard examples
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE 'z%'
ORDER BY first_name;

SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '%er'
ORDER BY first_name;

SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE 't%s'
ORDER BY first_name;


--2) Using the LIKE operator with the _ (underscore) wildcard example
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '_u%'
ORDER BY first_name;


--3) Using the LIKE operator with the [list of characters] wildcard example
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '[YZ]%'
ORDER BY last_name;


--4) Using the LIKE operator with the [character-character] wildcard example
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '[A-C]%'
ORDER BY first_name;


--5) Using the LIKE operator with the [^Character List or Range] wildcard example
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '[^A-X]%'
ORDER BY last_name;


--6) Using the NOT LIKE operator example
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE first_name NOT LIKE 'A%'
ORDER BY first_name;


--7) Using the LIKE operator with ESCAPE example
CREATE TABLE sales.feedbacks
(
	feedback_id INT IDENTITY(1,1) PRIMARY KEY,
	comment VARCHAR(255) NOT NULL
);

INSERT INTO sales.feedbacks(comment)
VALUES('Can you give me 30% discount?'),
	  ('May I get me 30USD off?'),
	  ('Is this having 20% discount today?');

SELECT * FROM sales.feedbacks;

SELECT feedback_id, comment
FROM sales.feedbacks
WHERE comment LIKE '%30%';

SELECT feedback_id, comment
FROM sales.feedbacks
WHERE comment LIKE '%30%%' ESCAPE '!';

