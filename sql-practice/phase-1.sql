--Insert new cat named "Red" born this year
-- Your code here
INSERT INTO
  cats (name, birth_year)
VALUES
  ("Red", 2022);

--Assign ownership of new cat to George Beatty using subqueries
-- Your code here
INSERT INTO
  cat_owners (cat_id, owner_id)
VALUES
  (
    (
      SELECT
        id
      from
        cats
      WHERE
        name = 'Red'
    ),
    (
      SELECT
        id
      from
        owners
      WHERE
        first_name = "George"
        AND last_name = "Beatty"
    )
  );

--Query to verify INSERTs worked properly
-- Your code here
SELECT
  *
FROM
  cat_owners
WHERE
  owner_id =
SELECT
  id
from
  owners
WHERE
  first_name = "George"
  AND last_name = "Beatty"
  AND cat_id =
SELECT
  id
from
  cats
WHERE
  name = 'Red';