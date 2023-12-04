SELECT * FROM people ORDER BY ppoints DESC
LIMIT 2;

UPDATE people SET pfirstname = 'James'
 plastname = 'Bond' 
 WHERE pid = (SELECT * FROM people 
 ORDER BY ppoints DESC
LIMIT 1)
RETURNING *;