-- Create retail sales table
CREATE TABLE retail_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(10),
    customer_name VARCHAR(50),
    region VARCHAR(20),
    category VARCHAR(30),
    product_name VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(10,2)
);
