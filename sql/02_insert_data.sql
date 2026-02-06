-- insert customers
INSERT INTO customers(customer_name,region) VALUES('Alice','East'),('Bob','West'),('Chris','South'),('NoSalesCustomer','North');

-- insert products
INSERT INTO products(product_name,price) VALUES('Laptop',1200),('Phone',800),('Tablet',500),('UnsoldProduct',300);

-- insert sales
INSERT INTO sales(customer_id,product_id,sale_date,quantity) VALUES(1,1,'2025-01-10',2),(1,2,'2025-02-15',1),(2,2,'2025-02-20',3),(3,3,'2025-03-05',4);
