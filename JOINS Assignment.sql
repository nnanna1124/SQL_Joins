-- Question 1 Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Select SUM(City.Population)
from City
JOIN Country
ON CITY.CountryCode = Country.Code
WHERE Country.Continent = 'ASIA'

-- Q2 Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT CITY.NAME
From CITY
JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
Where COUNTRY.Continent = 'Africa'

-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population))
FROM COUNTRY
JOIN CITY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent