-- Using subqueries, find the names of the cats whose owners are either George Beatty or Melynda Abshire
-- Your code here
SELECT
  name
FROM
  cats
WHERE
  id in (
    SELECT
      cat_id
    FROM
      cat_owners
    WHERE
      owner_id in (
        (
          SELECT
            id
          from
            owners
          WHERE
            first_name = "George"
            AND last_name = "Beatty"
        ),
        (
          SELECT
            id
          from
            owners
          WHERE
            first_name = "Melynda"
            AND last_name = "Abshire"
        )
      )
  )