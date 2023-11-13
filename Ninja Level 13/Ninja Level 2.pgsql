SELECT customers.cname, movies.mname, rentals.rid
FROM customers JOIN rentals USING (cid)
JOIN movies USING (mid)
LIMIT 10;