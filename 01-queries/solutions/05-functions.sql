-- I want to know how many rows are in the table
SELECT COUNT(*)
FROM movies

-- I want to know how many drama movies there are
SELECT COUNT(genre)
FROM movies
WHERE genre = "drama";

-- I want to see the lowest priced rental
SELECT MIN(title) as title, MIN(rental_price) as price
FROM movies;

-- I want to find the highest priced rental
SELECT MAX(title) as title,MAX(rental_price) as price 
FROM MOVIES;

-- what the sum of all movies rental price
SELECT SUM(rental_price)
FROM MOVIES;



-- I want to know the Total amount from round to the nearth tenth
SELECT genre, ROUND(SUM(rental_price), 2) as totalPrice
FROM movies
GROUP BY genre;

-- I want to know the avarage rental price rounded to the nearth 10th
SELECT genre, ROUND(AVG(rental_price),2) as avgPrice
FROM movies
GROUP BY genre;
