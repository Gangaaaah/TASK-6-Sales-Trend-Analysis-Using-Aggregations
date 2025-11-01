PRAGMA table_info(orders);


SELECT 
    STRFTIME('%Y', o.order_purchase_timestamp) AS year,
    STRFTIME('%m', o.order_purchase_timestamp) AS month,
    SUM(p.payment_value) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders AS o
JOIN order_payments AS p 
    ON o.order_id = p.order_id
WHERE o.order_purchase_timestamp BETWEEN '2017-01-01' AND '2017-06-30'  
AND o.order_status IN ('delivered', 'shipped')
GROUP BY year, month
ORDER BY year, month;



