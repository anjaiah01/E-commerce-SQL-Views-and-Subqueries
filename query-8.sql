SELECT
  DISTINCT order_id
FROM
  order_product
WHERE
  product_id IN (291, 292, 293, 294, 296) -- Includes orders with mobile products
  AND order_id NOT IN (
    -- Excludes orders with screen guard products
    SELECT
      DISTINCT order_id
    FROM
      order_product
    WHERE
      product_id IN (301, 302, 303, 304)
  );
