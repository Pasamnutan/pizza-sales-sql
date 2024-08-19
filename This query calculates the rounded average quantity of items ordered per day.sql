-- This query calculates the rounded average quantity of items ordered per day.

SELECT ROUND(AVG(total_quantity), 0) AS average_quantity
FROM (
  SELECT SUM(order_details.quantity) AS total_quantity
  FROM orders
  JOIN order_details ON orders.order_id = order_details.order_id
  GROUP BY orders.order_date
) AS order_quantity;
