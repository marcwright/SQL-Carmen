
1.
SELECT name FROM country WHERE region = 'Southern Europe' ORDER BY population LIMIT 1;
"Holy See (Vatican City State)"

2.
SELECT code FROM country WHERE region = 'Southern Europe' ORDER BY population LIMIT 1;
"VAT"
SELECT language FROM countrylanguage WHERE countrycode = 'VAT'
"Italian"

3.
 SELECT name 
 FROM country INNER JOIN countrylanguage
                ON country.code = countrylanguage.countrycode
 WHERE language = 'Italian' AND region = 'Southern Europe' AND isofficial = TRUE
 ORDER BY percentage DESC LIMIT 1;

"San Marino"

4.

SELECT city.name 
FROM city INNER JOIN country
                 ON country.code = city.countrycode
WHERE  country.name = 'San Marino' AND city.name != country.name;

"Serravalle"

5.
SELECT country.name 
FROM city INNER JOIN country
                 ON country.code = city.countrycode
WHERE  country.region = 'South America' AND city.name LIKE 'Serra%'

"Brazil"

6.
SELECT city.name 
FROM city INNER JOIN country
                ON country.code = city.countrycode
WHERE  country.name = 'Brazil' AND city.id = country.capital

"Brasï¿½lia"

7.
SELECT * FROM city WHERE population = 91084;
"Santa Monica"






