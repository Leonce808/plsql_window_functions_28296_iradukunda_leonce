SQL JOINs & Window Functions Project

Course: Database Development with PL/SQL (INSY 8311)
Student: Iradukunda Leonce
Group: [evening]
Instructor: Eric Maniraguha

1. Business Problem
Business Context

The project is based on a retail company operating in the sales industry, focusing on customer transactions and product sales performance.

Data Challenge

The company needs to analyze customer purchasing behavior, product sales activity, and sales trends over time using relational data stored across multiple tables.

Expected Outcome

The analysis aims to identify top-performing customers and products, detect inactive records, and support data-driven business decisions through analytical SQL queries.

2. Success Criteria

The project fulfills the following measurable analytical goals:

Identify ranked customer performance using RANK()

Compute running totals using SUM() OVER()

Compare sales across time using LAG() and LEAD()

Segment data into groups using NTILE()

Analyze trends using aggregate window functions

3. Database Schema & ER Diagram

The database consists of three related tables:

customers (customer_id, customer_name, region)

products (product_id, product_name, price)

sales (sale_id, customer_id, product_id, sale_date, quantity)

Primary and foreign keys enforce relational integrity between customers, products, and sales.

📌 ER Diagram:


4. Part A — SQL JOINs Implementation

The following JOINs were implemented to analyze relationships across tables:

INNER JOIN to retrieve valid sales transactions

LEFT JOIN to identify customers without sales

RIGHT/FULL JOIN to detect products with no sales activity

FULL OUTER JOIN to compare unmatched customers and products

SELF JOIN to compare customers within the same region

Each JOIN includes:

SQL query

Screenshot of results

Business interpretation

📁 Screenshots available in:
screenshoot/joins/

5. Part B — Window Functions Implementation

All required window function categories were implemented:

Ranking Functions: ROW_NUMBER(), RANK(), DENSE_RANK()

Aggregate Functions: SUM() OVER(), AVG() OVER()

Navigation Functions: LAG(), LEAD()

Distribution Functions: NTILE()

Each query includes:

SQL implementation

Output screenshot

Interpretation

📁 Screenshots available in:
screenshoot/window_functions/

6. View Creation

A database view named customer_sales_analysis was created to combine multiple window function analyses into a single reusable object.
The view supports customer ranking, running totals, and previous-sale comparison.

📁 Screenshots available in:
screenshoot/views/

7. Results Analysis
Descriptive Analysis

The results show varying customer purchasing patterns, with some customers consistently contributing higher sales quantities. Running totals highlight cumulative growth over time.

Diagnostic Analysis

Higher-ranked customers tend to make frequent purchases and larger transactions. Variations in sales performance are influenced by purchase timing and customer behavior.

Prescriptive Analysis

The business should prioritize high-performing customers through loyalty programs and use targeted promotions to re-engage low-activity customers. Sales trends should inform inventory and marketing strategies.

8. Key Insights

Window functions provide powerful analytical capabilities without complex subqueries

JOINs reveal hidden relationships and inactive records

Views improve query reusability and reporting efficiency

9. References

PostgreSQL Official Documentation

SQL Window Functions Tutorials

Course lecture materials

10. Integrity Statement

All sources were properly cited. Implementations and analysis represent original work. No AI-generated content was copied without attribution or adaptation.
