--makes all of the following code will affect the database 
USE mysqlReview;

-- we want to retrieve all columns from the movie table
SELECT * 
FROM movies;

-- I want to retrieve just the movie name and price  
SELECT title, rental_price
FROM movies;

-- I want to change the name of the rental_price columns to just price
SELECT
title,
movie_score AS score,
rental_price AS price
FROM movies;

-- I just want to see 10 movies from the list
SELECT title, movie_score, rental_price
FROM movies
LIMIT 10;

-- I want to see the movies from most popular to least popular
SELECT title, year, movie_score
FROM movies
ORDER by movie_score DESC;




















