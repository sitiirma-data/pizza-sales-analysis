-- =====================================
-- PIZZA SALES ANALYSIS
-- =====================================

-- 1. Total Revenue
-- Business Question:
-- What is the total sales revenue of our pizza joint?

SELECT 
    SUM(od.quantity * p.price) AS total_revenue
FROM pza.order_details AS od
JOIN pza.pizzas AS p 
    ON od.pizza_id = p.pizza_id;

-- 2. Revenue per Month
-- Business Question:
-- What is the sales revenue of our pizza joint per month?

SELECT
    EXTRACT(YEAR FROM o.date) AS year,
    EXTRACT(MONTH FROM o.date) AS month,
    SUM(od.quantity * p.price) AS total_revenue
FROM pza.order_details AS od
JOIN pza.pizzas AS p
    ON od.pizza_id = p.pizza_id
JOIN pza.orders AS o
    ON od.order_id = o.order_id
GROUP BY year, month
ORDER BY year, month;

-- 3. Best Selling Pizza
-- Business Question:
-- How many pizzas were sold per pizza type?

SELECT
    p.pizza_type_id,
    SUM(od.quantity) AS total_quantity
FROM pza.order_details AS od
JOIN pza.pizzas AS p
    ON od.pizza_id = p.pizza_id
GROUP BY p.pizza_type_id
ORDER BY total_quantity DESC;

-- 4. Daily Orders in January
-- Business Question:
-- How many orders were placed per day during January?

SELECT
    o.date,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM pza.orders AS o
WHERE EXTRACT(MONTH FROM o.date) = 1
GROUP BY o.date
ORDER BY o.date;

-- 5. Vegetarian Pizza Performance
-- Business Question:
-- How is the sales performance of vegetarian pizza categories?

SELECT
    p.pizza_type_id,
    SUM(od.quantity) AS total_quantity,
    SUM(od.quantity * p.price) AS total_revenue,
    COUNT(DISTINCT od.order_id) AS total_orders
FROM pza.order_details AS od
JOIN pza.pizzas AS p
    ON od.pizza_id = p.pizza_id
JOIN pza.orders AS o
    ON od.order_id = o.order_id
WHERE p.pizza_type_id IN (
    'green_garden',
    'ital_veggie',
    'spin_pesto',
    'spinach_fet',
    'spinach_supr',
    'veggie_veg'
)
GROUP BY p.pizza_type_id
ORDER BY total_revenue DESC;
