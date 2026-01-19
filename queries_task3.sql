
-- Task 3: SQL Basics – Filtering, Sorting, Aggregations
-- Dataset: Superstore (assumed table name: sales)

-- 1. View all records
SELECT * FROM sales;

-- 2. Count total records
SELECT COUNT(*) AS total_rows FROM sales;

-- 3. Filter: Technology category
SELECT * 
FROM sales
WHERE category = 'Technology';

-- 4. Sorting: Top 10 sales
SELECT order_id, product_name, sales
FROM sales
ORDER BY sales DESC
LIMIT 10;

-- 5. Aggregation: Sales & Profit by Category
SELECT 
    category,
    SUM(sales) AS total_sales,
    AVG(profit) AS avg_profit,
    COUNT(*) AS order_count
FROM sales
GROUP BY category;

-- 6. Aggregation with HAVING
SELECT 
    category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(sales) > 100000;

-- 7. Sales by Region
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- 8. Date Range (Monthly Sales)
SELECT 
    DATE(order_date) AS order_date,
    SUM(sales) AS daily_sales
FROM sales
WHERE order_date BETWEEN '2017-01-01' AND '2017-12-31'
GROUP BY DATE(order_date);

-- 9. Pattern Search (Customer Name)
SELECT *
FROM sales
WHERE customer_name LIKE 'A%';
