

SELECT count(name),city FROM schools
WHERE type="Public School"
GROUP BY "city"
ORDER BY COUNT(name) DESC
 LIMIT 10;
