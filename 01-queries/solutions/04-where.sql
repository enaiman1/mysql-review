-- I want to know which movies are in since 2014
SELECT title, year, movie_score
FROM movies
WHERE year <= 2014;

-- I want to see movies that are comedies and came out 2011 - 2014 
SELECT title, year, movie_score
FROM movies
WHERE year BETWEEN 2011 AND 2014
AND genre = "comedy";

-- I want to see all movies that are either horror or romance
SELECT title, year, genre, movie_score
FROM movies
WHERE genre = 'horror'
OR genre = 'romance';

--  I want to see the movies from most popular to least popular during 2011-2014 
SELECT title, year, movie_score
FROM movies
WHERE year BETWEEN 2011 AND 2014
ORDER BY movie_score DESC;


-- I want to see the top 10 most popular movie during 2011-2014 
SELECT title, year, movie_score
FROM movies
WHERE year BETWEEN 2011 AND 2014
ORDER by movie_score DESC
limit 10;