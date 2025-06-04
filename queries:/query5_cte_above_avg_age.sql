-- Query 5: Animals older than average age (CTE)

WITH avg_age AS (
    SELECT AVG(age) AS average_age
    FROM animal
)
SELECT animal_id, animal_name, age
FROM animal, avg_age
WHERE animal.age > avg_age.average_age;