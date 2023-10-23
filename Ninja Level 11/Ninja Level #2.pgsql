SELECT customers.cname, movies.mname, rentals.rid FROM
customers JOIN rentals ON (customers.cid = rentals.cid) 
JOIN movies ON (rentals.mid = movies.mid)
LIMIT 10;
