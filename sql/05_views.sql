-- view combining joins and window functions
CREATE VIEW customer_sales_view AS SELECT c.customer_id,c.customer_name,s.sale_date,s.quantity,SUM(s.quantity) OVER(PARTITION BY c.customer_id ORDER BY s.sale_date) AS running_total FROM customers c JOIN sales s ON c.customer_id=s.customer_id;
