--A) Simple EXCEPT example
SELECT product_id
FROM production.products
EXCEPT
SELECT product_id
FROM sales.order_items


--B) EXCEPT with ORDER BY example
SELECT product_id
FROM production.products
EXCEPT
SELECT product_id
FROM sales.order_items
ORDER BY product_id;