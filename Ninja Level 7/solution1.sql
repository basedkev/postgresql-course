-- SELECT pfirstname || '' || plastname || '' || ppoints FROM people ORDER BY ppoints DESC;
SELECT 
    pfirstname || ' ' || plastname || ' ' || CAST(ppoints AS TEXT) AS "Customer Points"
FROM 
    people
ORDER BY 
    ppoints DESC;