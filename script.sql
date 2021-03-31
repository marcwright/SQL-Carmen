-- Clue #1:
SELECT name FROM country
WHERE population = (SELECT MIN(population) FROM country 
WHERE region = 'Southern Europe');
-- Holy See (Vatican City State)

-- Clue #2:
SELECT language FROM countrylanguage
WHERE isofficial = true
AND countrycode = (SELECT code FROM country 
					WHERE name LIKE '%Holy See%');
-- Italian

-- Clue #3:
SELECT name, code AS neededcode FROM country
WHERE code = (SELECT countrycode FROM countrylanguage
			  WHERE language = 'Italian' 
			  AND percentage = 100);
-- San Marino

-- Clue #4:
SELECT name from city
WHERE countrycode = 'SMR'
AND name != 'San Marino';
-- Serravalle

-- Clue #5:
SELECT name, countrycode FROM city
WHERE name LIKE 'Serra%'
AND countrycode IN(
SELECT code FROM country
WHERE region = 'South America');
-- Serra

-- Clue #6:
SELECT name FROM city
WHERE id = (SELECT capital FROM country
WHERE code = 'BRA');
-- Brasï¿½lia

-- Clue #7:
SELECT name, countrycode FROM city 
WHERE population = 91084;

-- She's in Santa Monica!
					