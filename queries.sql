-- 1. Total revenue from all orders
SELECT SUM(quantity * price) AS total_revenue
FROM sales_data;

-- 2. Revenue by customer
SELECT customer, SUM(quantity * price) AS customer_revenue
FROM sales_data
GROUP BY customer
ORDER BY customer_revenue DESC;

-- 3. Most sold product (by quantity)
SELECT product, SUM(quantity) AS total_quantity_sold
FROM sales_data
GROUP BY product
ORDER BY total_quantity_sold DESC;

-- 4. Highest value single order
SELECT order_id, customer, product, quantity * price AS order_value
FROM sales_data
ORDER BY order_value DESC
LIMIT 1;

-- 5. Average price per product
SELECT product, AVG(price) AS avg_price
FROM sales_data
GROUP BY product;
