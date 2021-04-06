-- 1. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japanese-cities-name/problem
SELECT NAME FROM CITY WHERE COUNTRYCODE='JPN';

-- 2. Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem
SELECT CITY FROM STATION WHERE (ID % 2) = 0 GROUP BY CITY;

-- 3. Query the average population for all cities in CITY, rounded down to the nearest integer.
-- https://www.hackerrank.com/challenges/average-population/problem
SELECT ROUND(AVG((SUM(POPULATION) / COUNT(*)))) FROM CITY GROUP BY NAME;

-- 4. Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to  decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem
SELECT ROUND(CAST (LONG_W AS decimal (6,4)), 4) FROM STATION WHERE (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780) = STATION.LAT_N;

-- 5. Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- https://www.hackerrank.com/challenges/asian-population/problem
SELECT SUM(CITY.POPULATION) FROM CITY INNER JOIN COUNTRY ON (CITY.COUNTRYCODE = COUNTRY.CODE) WHERE CONTINENT = 'Asia';

-- 6. Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- https://www.hackerrank.com/challenges/african-cities/problem
SELECT CITY.NAME FROM CITY INNER JOIN COUNTRY on (CITY.COUNTRYCODE = COUNTRY.CODE) WHERE CONTINENT = 'Africa';