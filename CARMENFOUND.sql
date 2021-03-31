-- SELECT code, name, population FROM country WHERE population <= 1000 AND continent LIKE '%Eu%';

-- SELECT countrycode, language FROM countrylanguage WHERE countrycode LIKE '%VAT%' AND language LIKE '%Italian%';
-- SELECT name FROM country WHERE name LIKE '%Italy%';
-- SELECT id, name FROM city WHERE name LIKE '%Roma%' AND countrycode LIKE '%ITA%';
-- SELECT id, name, countrycode FROM city WHERE name LIKE '%Roma%' AND countrycode LIKE '%DOM%' ;
-- SELECT id, name, countrycode, population FROM city WHERE name LIKE '%Santo Domingo%' AND population >1000000 ;
 SELECT id, name, countrycode, population FROM city WHERE population <86 ;
SELECT code, name, continent from country WHERE population <86  AND code LIKE '%PCN%';