CREATE DATABASE sales_trends;
USE sales_trends;
show databases;
show tables;
SELECT * FROM `online sales data` LIMIT 5;
RENAME TABLE `online sales data` TO online_sales;
select* from online_sales;
SELECT EXTRACT(MONTH FROM `Date`) AS order_month FROM  online_sales LIMIT 10;
describe online_sales;
SELECT 
EXTRACT(YEAR FROM `Date`) AS order_year,
EXTRACT(MONTH FROM `Date`) AS order_month,
SUM(`Total Revenue`) AS monthly_revenue,
COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM online_sales GROUP BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`)ORDER BY 
EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`);
SELECT EXTRACT(YEAR FROM `Date`) AS order_year,
EXTRACT(MONTH FROM `Date`) AS order_month
FROM online_sales GROUP BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`);
SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month,
    SUM(`Total Revenue`) AS monthly_revenue
FROM online_sales GROUP BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`);
SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM online_sales GROUP BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`);
SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month,
    SUM(`Total Revenue`) AS monthly_revenue
FROM online_sales GROUP BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`)
ORDER BY monthly_revenue DESC;
SELECT 
    EXTRACT(YEAR FROM `Date`) AS order_year,
    EXTRACT(MONTH FROM `Date`) AS order_month,
    SUM(`Total Revenue`) AS monthly_revenue
FROM online_sales
GROUP BY EXTRACT(YEAR FROM `Date`), EXTRACT(MONTH FROM `Date`)
ORDER BY monthly_revenue DESC
LIMIT 6;













