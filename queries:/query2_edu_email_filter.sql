-- Query 2: Filter adopters with .edu emails (WHERE + LIKE)

SELECT full_name, email
FROM adopter
WHERE email LIKE '%.edu%';