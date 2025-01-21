SELECT
  user_id,
  pincode,
  SUM(total_amount) AS total_amount_spent
FROM
  location_order_details
GROUP BY
  user_id,
  pincode
HAVING
  SUM(total_amount) > 50000;
