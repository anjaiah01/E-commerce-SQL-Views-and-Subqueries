SELECT
  name,
  (
    (
      SELECT
        AVG(rating)
      FROM
        product
      WHERE
        category = 'MOBILE'
    ) - rating
  ) AS rating_variance
FROM
  product
WHERE
  category = 'MOBILE';
