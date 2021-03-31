SELECT name FROM country
WHERE population = (SELECT MIN(population) FROM country 
WHERE region = 'Southern Europe');

SELECT language FROM countrylanguage
WHERE isofficial = true
AND countrycode = (SELECT code FROM country 
					WHERE name LIKE '%Holy See%');
					
SELECT name FROM country
WHERE code = (SELECT countrycode FROM countrylanguage
			  WHERE language = 'Italian' 
			  AND percentage = 100);
					