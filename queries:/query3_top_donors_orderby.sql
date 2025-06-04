-- Query 3: Top 5 donors by donation amount (ORDER BY + LIMIT)

SELECT donor_name, amount
FROM donation
ORDER BY amount DESC
LIMIT 5;