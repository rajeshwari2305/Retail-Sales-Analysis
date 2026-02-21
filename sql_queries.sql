-- Monthly Revenue
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Top 5 Products by Revenue
SELECT 
    product_id,
    SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 5;

