-- customers table
CREATE TABLE customers(customer_id SERIAL PRIMARY KEY,customer_name VARCHAR(100),region VARCHAR(50));

-- products table
CREATE TABLE products(product_id SERIAL PRIMARY KEY,product_name VARCHAR(100),price NUMERIC(10,2));

-- sales table
CREATE TABLE sales(sale_id SERIAL PRIMARY KEY,customer_id INT REFERENCES customers(customer_id),product_id INT REFERENCES products(product_id),sale_date DATE,quantity INT);
