#standardSQL
SELECT
  REGEXP_EXTRACT(tags, r"^.*(sparql).*$") AS Tag,
  EXTRACT(YEAR FROM creation_date) AS Year,
  COUNT(title) AS Qty
FROM
  `bigquery-public-data.stackoverflow.posts_questions`
WHERE
  tags LIKE '%sparql%'
GROUP BY
  Year, Tag
ORDER BY
  Year
