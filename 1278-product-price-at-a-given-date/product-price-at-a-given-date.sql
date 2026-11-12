# Write your MySQL query statement below
WITH latest_price AS (
    SELECT product_id, MAX(change_date) AS latest_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

SELECT DISTINCT p1.product_id, COALESCE(p2.new_price, 10) AS price
FROM Products p1
LEFT JOIN latest_price lp
    ON p1.product_id = lp.product_id
LEFT JOIN Products p2
    ON lp.product_id = p2.product_id
    AND lp.latest_date = p2.change_date;