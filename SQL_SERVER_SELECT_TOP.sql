-- Using SQL Server SELECT TOP with a constant value
SELECT TOP 10 product_name, list_price
FROM production.products
ORDER BY list_price DESC;


-- Using SELECT TOP to return a percentage of rows
SELECT TOP 1 PERCENT product_name, list_price
FROM production.products
ORDER BY list_price DESC;


-- Using SELECT TOP  WITH TIES to include rows that match values in the last row
SELECT TOP 3 WITH TIES product_name, list_price FROM production.products
ORDER BY list_price DESC;
