# Write your MySQL query statement below
Select Visits.customer_id, COUNT(Visits.visit_id) as count_no_trans
FROM Visits
LEFT JOIN Transactions ON Visits.visit_id = transactions.visit_id
WHERE transactions.transaction_id IS NULL
GROUP BY Visits.customer_id;