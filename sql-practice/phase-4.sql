-- Give "Red" the cat one of every toy the other cats have
-- Your code here
INSERT INTO
  toys (name, cat_id)
SELECT
  toys.name,
  cats.id
FROM
  toys,
  cats
WHERE
  cats.name = "Red";

-- Query spoiled cats reporting the most spoiled first
-- Your code here
SELECT
  cats.name,
  toys.id as toys_number
FROM
  cats,
  toys
WHERE
  cats.id = toys.cat_id
GROUP by
  cats.id
ORDER by
  toys_number DESC
LIMIT
  1