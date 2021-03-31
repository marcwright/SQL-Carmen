SELECT name FROM country
WHERE population = (SELECT MIN(population) FROM country 
WHERE region = 'Southern Europe');

SELECT language FROM countrylanguage
WHERE isofficial = true
AND countrycode = (SELECT code FROM country 
					WHERE name LIKE '%Holy See%');
					
SELECT name, code AS neededcode FROM country
WHERE code = (SELECT countrycode FROM countrylanguage
			  WHERE language = 'Italian' 
			  AND percentage = 100);

SELECT name from city
WHERE countrycode = 'SMR'
AND name != 'San Marino';

SELECT * FROM city
WHERE name LIKE 'Serra%'
AND countrycode IN(
SELECT code FROM country
WHERE region = 'South America');
					