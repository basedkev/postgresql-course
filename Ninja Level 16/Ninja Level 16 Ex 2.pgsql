SELECT * FROM people ORDER BY ppoints DESC
LIMIT 2;

UPDATE people SET pfirstname = 'James',
 plastname = 'Bond' 
 WHERE ppoints IN (SELECT MAX(ppoints) FROM people)
RETURNING *;