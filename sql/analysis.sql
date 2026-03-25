-- =====================================
-- PIZZA SALES ANALYSIS
-- =====================================

-- 1. Total Revenue
SELECT SUM(od.quantity * p.price) AS total_revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id;

-- 2. Average Price per Size
SELECT size, AVG(price) AS avg_price
FROM pizzas
GROUP BY size;

-- 3. Total Orders per Day
SELECT date, COUNT(order_id) AS total_orders
FROM orders
GROUP BY date;
