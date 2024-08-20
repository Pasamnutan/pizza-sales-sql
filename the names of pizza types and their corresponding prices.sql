-- This query retrieves the names of pizza types and their corresponding prices.
-- JOIN operation link the tables and ensure the price matches the pizza type
SELECT pizza_types.name, pizzas.price
FROM pizza_types
JOIN pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id;
