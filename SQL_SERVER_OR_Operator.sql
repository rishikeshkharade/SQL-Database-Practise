--1) Basic SQL Server OR operator example
SELECT product_name, list_price
FROM production.products
WHERE list_price < 200 OR list_price > 6000
ORDER BY list_price;


--2) Using multiple OR operators
SELECT product_name, brand_id
FROM production.products
WHERE brand_id = 1 OR brand_id = 2 OR brand_id = 4
ORDER BY brand_id DESC;

SELECT product_name, brand_id
FROM production.products
WHERE brand_id IN (1, 2, 3)
ORDER BY brand_id DESC;


--3) Combining the OR operator with the AND operator
SELECT product_name, brand_id, list_price
FROM production.products
WHERE brand_id = 1 OR brand_id =2 AND list_price > 500
ORDER BY brand_id DESC, list_price;

SELECT product_name, brand_id, list_price
FROM production.products
WHERE (brand_id = 1 OR brand_id = 2) AND list_price > 500
ORDER BY brand_id;