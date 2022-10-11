-- Find the name of the cats co-owned by both George Beatty and Melynda Abshire
-- Your code here
-- select cat id owned by each of them then selecting the union between them 
SELECT
  name
FROM
  cats
WHERE
  id in (
    SELECT
      cat_id
    from
      cat_owners
    WHERE
      cat_id in(
        SELECT
          cat_id
        FROM
          cat_owners
        WHERE
          owner_id = (
            SELECT
              id
            from
              owners
            WHERE
              first_name = "George"
              AND last_name = "Beatty"
          )
      )
      AND cat_id in (
        SELECT
          cat_id
        FROM
          cat_owners
        WHERE
          owner_id =(
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