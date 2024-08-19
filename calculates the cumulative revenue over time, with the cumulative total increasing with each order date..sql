-- This query calculates the cumulative revenue over time, with the cumulative total increasing with each order date.
SELECT 
    order_date,
    SUM(revenue) OVER (ORDER BY order_date) AS cum_revenue
FROM (
    SELECT 
        orders.order_date,
        SUM(order_details.quantity * pizzas.price) AS revenue
    FROM 
        order_details
    JOIN 
        pizzas ON order_details.pizza_id = pizzas.pizza_id
    JOIN 
        orders ON orders.order_id = order_details.order_id
    GROUP BY 
        orders.order_date
) AS sales;
