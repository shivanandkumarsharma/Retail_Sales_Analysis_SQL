-- 1. Total sales per region
SELECT region, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC;

-- 2. Top 5 customers by revenue
SELECT customer_name, SUM(total_sales) AS total_spent
FROM retail_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 3. Monthly revenue trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

-- 4. Best-selling product categories
SELECT category, SUM(quantity) AS total_qty_sold, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

-- 5. Average order value
SELECT ROUND(AVG(total_sales),2) AS avg_order_value FROM retail_sales;

-- 6. Top 5 products by revenue
SELECT product_name, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- 7. Customer count by region
SELECT region, COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY region;
