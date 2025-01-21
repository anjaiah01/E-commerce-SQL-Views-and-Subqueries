SELECT
  customer_id,
  AVG(total_amount) AS avg_amount_spent
FROM
  order_details
GROUP BY
  customer_id
HAVING
  AVG(total_amount) > (
    SELECT
      AVG(total_amount)
    FROM
      order_details
  );
