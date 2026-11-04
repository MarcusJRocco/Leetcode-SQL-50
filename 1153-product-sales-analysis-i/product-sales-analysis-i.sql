# Write your MySQL query statement below
SELECT Product.product_name, Sales.year, Sales.price
FROM Sales
LEFT JOIN Product ON Product.product_id = sales.product_id