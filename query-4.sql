SELECT
  name,
  (
    (
      SELECT
        AVG(rating)
      FROM
        product
    ) - rating
  ) AS rating_variance
FROM
  product;
