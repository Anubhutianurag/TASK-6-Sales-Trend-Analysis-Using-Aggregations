# TASK-6-Sales-Trend-Analysis-Using-Aggregations

##  Overview

This project is part of the **Data Analyst Internship (Task 6)** and focuses on analyzing **monthly revenue** and **order volume** using SQL. The objective was to practice and demonstrate the use of aggregate functions, grouping, and time-based analytics using SQL queries.

---
## 🛠 Tools & Technologies

- **SQL Engine:** MySQL Workbench
- **Dataset:** `Online Sales Data.csv`
- **Scripts & Results:**
  - All SQL queries are provided in `sales_Queries.sql`]
  - All output results are documented in `ResultTable.docx`

---
## Objective

- Group sales data by year and month
- Calculate monthly revenue and transaction volume
- Sort and limit results to identify key sales trends

---

## Sample SQL Query

```sql
SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month,
    SUM(`Total Revenue`) AS monthly_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM online_sales 
GROUP BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`)
ORDER BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`);


