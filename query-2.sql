CREATE VIEW user_order_details AS
SELECT
  user.id AS user_id,
  user.name,
  user.age,
  user.gender,
  user.pincode,
  order_details.order_id,
  order_details.total_amount
FROM
  user
  INNER JOIN order_details ON user.id = order_details.customer_id
