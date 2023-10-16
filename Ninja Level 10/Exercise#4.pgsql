SELECT pfirstname, plastname, pdob FROM people 
WHERE pdob < CAST('NOW' AS TIMESTAMP) - CAST('10 years' AS INTERVAL);