-- check first 5 rows 
SELECT *
FROM bestsellers
LIMIT 5;

-- highest rating for every year 
SELECT Year, MAX("User Rating")
FROM bestsellers
GROUP BY Year;

-- lowest rating for every year 
SELECT Year, MIN("User Rating")
FROM bestsellers
GROUP BY Year;

-- average rating for every year 
SELECT Year, ROUND(AVG("User Rating"), 2)
FROM bestsellers
GROUP BY Year;

-- top 5 books for each year
SELECT * 
FROM bestsellers
WHERE Year = '2009' AND "User Rating" = '4.8'
ORDER BY "# of Reviews" DESC
LIMIT 5;

SELECT * 
FROM bestsellers
WHERE Year = '2010' AND "User Rating" = '4.8'
ORDER BY "# of Reviews" DESC
LIMIT 5;

SELECT * 
FROM bestsellers
WHERE Year = '2011' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5; -- only one entry

SELECT * 
FROM bestsellers
WHERE Year = '2011' AND "User Rating" = '4.8'
ORDER BY "# of Reviews" DESC
LIMIT 4; -- gives rest of top 5 for 2011

SELECT * 
FROM bestsellers
WHERE Year = '2012' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5; -- gives 3 entries

SELECT * 
FROM bestsellers
WHERE Year = '2012' AND "User Rating" = '4.8'
ORDER BY "# of Reviews" DESC
LIMIT 2; -- gives rest of top 5

SELECT * 
FROM bestsellers
WHERE Year = '2013' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5; 

SELECT * 
FROM bestsellers
WHERE Year = '2014' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5; 

SELECT * 
FROM bestsellers
WHERE Year = '2015' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5;  -- gives 4 entries

SELECT *
FROM bestsellers
WHERE Year = '2015' AND "User Rating" = '4.8'
ORDER BY "# of Reviews" DESC
LIMIT 1; -- finish top 5

SELECT * 
FROM bestsellers
WHERE Year = '2016' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5;

SELECT * 
FROM bestsellers
WHERE Year = '2017' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5;

SELECT * 
FROM bestsellers
WHERE Year = '2018' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5;

SELECT * 
FROM bestsellers
WHERE Year = '2019' AND "User Rating" = '4.9'
ORDER BY "# of Reviews" DESC
LIMIT 5;

-- get most popular author for each year 
SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2009'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2010'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2011'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2012'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2013'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2014'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2015'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2016'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2017'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2018'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

SELECT Author, Year, COUNT(*) as "# of Books"
FROM bestsellers
WHERE Year = '2019'
GROUP BY Author, Year
HAVING COUNT(*) > 1
ORDER BY "# of Books" DESC;

-- average # of reviews written each year
SELECT Year, ROUND(AVG("# of Reviews"), 2)
FROM bestsellers
GROUP BY Year;

-- average price of books each year 
SELECT Year, ROUND(AVG(Price), 2)
FROM bestsellers
GROUP BY Year;

-- find most expensive price each year 
SELECT Year, MAX(Price)
FROM bestsellers
GROUP BY Year;

-- find least expensive price each year 
SELECT Year, MIN(Price)
FROM bestsellers
GROUP BY Year;

-- fiction vs nonfiction counts each year 
SELECT Year, Genre, COUNT(Genre)
FROM bestsellers
GROUP BY Year, Genre;