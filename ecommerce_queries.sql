-- Top Customers by Total Spending

SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS customer_name,
    SUM(o.total_amount) AS total_spent,
    COUNT(o.order_id) AS total_orders
FROM 
    users u
JOIN 
    orders o ON u.user_id = o.user_id
GROUP BY 
    u.user_id
ORDER BY 
    total_spent DESC
LIMIT 10;

    -- Monthly Revenue Trends
    SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue,
    COUNT(order_id) AS total_orders
FROM 
    orders
GROUP BY 
    month
ORDER BY 
    month;

-- Top-Selling Products by Revenue

SELECT 
    p.product_id,
    p.name AS product_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM 
    products p
JOIN 
    order_items oi ON p.product_id = oi.product_id
GROUP BY 
    p.product_id
ORDER BY 
    total_revenue DESC
LIMIT 10;

--  Best & Worst Reviewed Products

SELECT 
    p.product_id,
    p.name,
    AVG(pr.rating) AS avg_rating,
    COUNT(pr.review_id) AS review_count
FROM 
    products p
LEFT JOIN 
    product_reviews pr ON p.product_id = pr.product_id
GROUP BY 
    p.product_id
ORDER BY 
    avg_rating DESC;

-- Most Popular Payment Methods

SELECT 
    payment_method,
    COUNT(payment_id) AS usage_count,
    SUM(amount) AS total_revenue
FROM 
    payments
GROUP BY 
    payment_method
ORDER BY 
    usage_count DESC;
