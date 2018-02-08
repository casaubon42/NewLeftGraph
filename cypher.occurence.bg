#standardSQL
SELECT
  REGEXP_EXTRACT(tags, r"^.*(cypher).*$") AS Tag,
  EXTRACT(YEAR FROM creation_date) AS Year,
  COUNT(title) AS Qty
FROM
  `bigquery-public-data.stackoverflow.posts_questions`
WHERE
  tags LIKE '%cypher%'
GROUP BY
  Year, Tag
ORDER BY
  Year
