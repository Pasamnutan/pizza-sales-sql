#List the top 5 most ordered pizza types along with their quantities.
SELECT pizzas.size, SUM(order_details.quantity) AS total_quantity
FROM pizza_types
JOIN pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size
ORDER BY total_quantity DESC
LIMIT 5;



