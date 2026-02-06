-- inner join customers, sales and products
SELECT c.customer_name,p.product_name,s.quantity,s.sale_date FROM sales s INNER JOIN customers c ON s.customer_id=c.customer_id INNER JOIN products p ON s.product_id=p.product_id;
-- left join customers without sales
SELECT c.customer_name,s.sale_id FROM customers c LEFT JOIN sales s ON c.customer_id=s.customer_id;
-- right join products without sales
SELECT p.product_name,s.sale_id FROM sales s RIGHT JOIN products p ON s.product_id=p.product_id;
-- full outer join customers and sales
SELECT c.customer_name,s.sale_id FROM customers c FULL OUTER JOIN sales s ON c.customer_id=s.customer_id;
-- self join customers by region
SELECT a.customer_name,b.customer_name,a.region FROM customers a JOIN customers b ON a.region=b.region AND a.customer_id<b.customer_id;
