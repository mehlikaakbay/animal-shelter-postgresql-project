-- Query 1: Total number of animals per species (GROUP BY + HAVING)

SELECT species, COUNT(*) AS total_animals
FROM animal
GROUP BY species
HAVING COUNT(*) > 5;