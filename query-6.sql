SELECT
  name,
  rating
FROM
  product
WHERE
  category = 'WATCH'
  AND rating > (
    SELECT
      AVG(rating)
    FROM
      product
    WHERE
      category = 'WATCH'
  );
