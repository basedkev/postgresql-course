SELECT cname, count(rid) AS amt FROM customers
LEFT JOIN rentals USING(cid)
GROUP BY cname
ORDER BY amt DESC;

-- SELECT cname, count(rid) AS amt FROM customers
-- LEFT JOIN rentals USING(cid)
-- GROUP BY cname
-- HAVING cname LIKE '%e%'
-- ORDER BY amt DESC;

