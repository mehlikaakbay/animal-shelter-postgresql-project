-- Query 4: List dogs and their cage locations (JOIN + WHERE)

SELECT a.animal_name, a.species, c.location
FROM animal a
JOIN cage c ON a.cage_id = c.cage_id
WHERE a.species = 'Dog';