# SQL JOINs & Window Functions Project

**Course:** Database Development with PL/SQL (INSY 8311)  
**Student:** Iradukunda Leonce  
**Group:** Evening  
**Instructor:** Eric Maniraguha  

---

# Business Context
This project is based on a retail company operating in the sales industry.  
The company manages customer information, products, and sales transactions stored in a relational PostgreSQL database.

---

# Data Challenge
The company needs to analyze:
- Customer purchasing behavior  
- Product sales activity  
- Sales trends over time  

This analysis is performed using SQL JOINs and Window Functions.

---

## Expected Outcomes
The project aims to:
- Identify top-performing customers  
- Detect customers or products with no sales  
- Analyze sales trends using analytical SQL queries  
- Support data-driven decision-making  

---

#Success Criteria
The project successfully demonstrates:
- Customer ranking using `RANK()`  
- Running totals using `SUM() OVER()`  
- Time-based comparison using `LAG()` and `LEAD()`  
- Data segmentation using `NTILE()`  
- Analytical queries using window functions  

---

# Database Schema
The database consists of **three tables**:

### `customers`
- `customer_id` (PK)
- `customer_name`
- `region`

### `products`
- `product_id` (PK)
- `product_name`
- `price`

### `sales`
- `sale_id` (PK)
- `customer_id` (FK)
- `product_id` (FK)
- `sale_date`
- `quantity`

Primary and foreign keys enforce referential integrity between the tables.

---

# ER Diagram
The ER diagram illustrates the relationships between customers, products, and sales.

📁 ER diagram image available in:  
`screenshots/setup/`

---

# Part A — SQL JOINs
The following JOINs were implemented:

- **INNER JOIN** – retrieves valid sales transactions  
- **LEFT JOIN** – identifies customers without sales  
- **RIGHT JOIN / FULL JOIN** – detects products with no sales  
- **FULL OUTER JOIN** – compares unmatched customers and products  
- **SELF JOIN** – compares customers within the same region  

Each JOIN includes:
- SQL query  
- Screenshot of the output  
- Business interpretation  

Screenshots available in:  
`screenshots/joins/`

---

#Part B — Window Functions
The following window function categories were implemented:

### Ranking Functions
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`

### Aggregate Window Functions
- `SUM() OVER()`
- `AVG() OVER()`

### Navigation Functions
- `LAG()`
- `LEAD()`

### Distribution Functions
- `NTILE()`

Each query includes:
- SQL implementation  
- Output screenshot  
- Interpretation  

 Screenshots available in:  
`screenshots/window_functions/`

---

# View Creation
A view named **`customer_sales_analysis`** was created to combine:
- Customer ranking  
- Running sales totals  
- Previous-sale comparison  

This view simplifies analytical queries and improves reusability.

Screenshots available in:  
`screenshots/views/`

---

# Results Analysis

### Descriptive Analysis
The results show different customer purchasing patterns.  
Some customers consistently generate higher sales quantities over time.

### Diagnostic Analysis
Higher-ranked customers tend to purchase more frequently and in larger quantities.

### Prescriptive Analysis
The business should:
- Reward high-performing customers with loyalty programs  
- Re-engage low-activity customers using targeted promotions  
- Use sales trends for inventory and marketing planning  

---

# Key Insights
- Window functions enable advanced analytics without complex subqueries  
- JOINs expose hidden relationships and inactive records  
- Views improve query reusability and reporting efficiency  

---

## References
- PostgreSQL Official Documentation  
- SQL Window Functions Tutorials  
- Course lecture materials  

---

# Integrity Statement
This project represents original academic work.  
AI tools were used only as a learning aid and all implementations were understood, adapted, and executed by the student.
