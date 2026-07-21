-- ============================================
-- Advanced Sales Analysis
-- Author: Renitha Mojela
-- Description: Advanced queries using CTEs,
-- window functions and ranking
-- ============================================


-- ── 1. Running total of revenue over time ────
-- Shows cumulative revenue month by month

WITH monthly_revenue AS (
    SELECT
        strftime('%Y-%m', o.order_date) AS month,
        SUM(oi.quantity * oi.unit_price) AS revenue
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY month
)
SELECT
    month,
    revenue,
    SUM(revenue) OVER (ORDER BY month) AS running_total
FROM monthly_revenue
ORDER BY month;


-- ── 2. Rank products by revenue ──────────────
-- Uses window function to rank all products

SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    RANK() OVER (ORDER BY SUM(oi.quantity * oi.unit_price) DESC) AS revenue_rank
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id;


-- ── 3. Customer purchase frequency segment ───
-- Segments customers into High, Mid, Low value

WITH customer_spend AS (
    SELECT
        c.customer_id,
        c.first_name || ' ' || c.last_name AS customer_name,
        COUNT(DISTINCT o.order_id) AS total_orders,
        SUM(oi.quantity * oi.unit_price) AS total_spend
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY c.customer_id
)
SELECT
    customer_name,
    total_orders,
    total_spend,
    CASE
        WHEN total_spend >= 2000 THEN 'High Value'
        WHEN total_spend >= 1000 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM customer_spend
ORDER BY total_spend DESC;


-- ── 4. Month with highest revenue per category
-- Uses CTE to find peak month per category

WITH category_monthly AS (
    SELECT
        p.category,
