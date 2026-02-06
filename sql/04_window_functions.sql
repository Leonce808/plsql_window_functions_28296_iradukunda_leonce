-- rank customers by total quantity
SELECT customer_id,SUM(quantity) AS total_qty,RANK() OVER(ORDER BY SUM(quantity) DESC) AS rank_position FROM sales GROUP BY customer_id;
-- running total per customer
SELECT customer_id,sale_date,quantity,SUM(quantity) OVER(PARTITION BY customer_id ORDER BY sale_date) AS running_total FROM sales;
-- lag previous quantity
SELECT customer_id,sale_date,quantity,LAG(quantity) OVER(PARTITION BY customer_id ORDER BY sale_date) AS previous_quantity FROM sales;
-- customer segmentation using ntile
SELECT customer_id,SUM(quantity) AS total_qty,NTILE(4) OVER(ORDER BY SUM(quantity)) AS customer_group FROM sales GROUP BY customer_id;
