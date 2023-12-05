requests['Display all actors'] = 
"SELECT * 
FROM actors;"

requests['Display all genres'] = 
"SELECT * 
FROM genres;"

requests['Display the name and year of the movies'] = 
"SELECT mov_title,mov_year 
FROM movies;"

requests['Display reviewer name from the reviews table'] = 
"SELECT rev_name 
FROM reviews;"

requests["Find the year when the movie American Beauty released"] = 
"SELECT CAST(SUBSTR(mov_dt_rel,1,4) AS INTEGER) 
FROM movies 
WHERE mov_title = 'American Beauty';"

requests["Find the movie which was released in the year 1999"] = 
"SELECT mov_title 
FROM movies 
WHERE mov_dt_rel >= '1999-01-01' AND mov_dt_rel <= '1999-12-31';"

requests["Find the movie which was released before 1998"] = 
"SELECT mov_title 
FROM movies 
WHERE mov_year < 1998;"

requests["Find the name of all reviewers who have rated 7 or more stars to their rating order by reviews rev_name (it might have duplicated names :-))"] = 
"SELECT rev_name 
FROM reviews 
JOIN movies_ratings_reviews ON reviews.id = movies_ratings_reviews.rev_id 
WHERE rev_stars >= 7 ORDER BY reviews.rev_name;"

requests["Find the titles of the movies with ID 905, 907, 917"] = 
"SELECT mov_title 
FROM movies 
WHERE id IN (905, 907, 917);"

requests["Find the list of those movies with year and ID which include the words Boogie Nights"] = 
"SELECT id, mov_title, mov_year 
FROM movies 
WHERE mov_title 
LIKE '%Boogie Nights%';"

requests["Find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'"] = 
"SELECT id 
FROM actors 
WHERE act_fname = 'Woody' AND act_lname = 'Allen';"

requests["Find the actors with all information who played a role in the movies 'Annie Hall'"] = 
"SELECT actors.* 
FROM actors 
JOIN movies_actors ON actors.id = movies_actors.act_id 
JOIN movies ON movies.id = movies_actors.mov_id 
WHERE mov_title = 'Annie Hall';"

requests["Find the first and last names of all the actors who were cast in the movies 'Annie Hall', and the roles they played in that production"] = 
"SELECT act_fname, act_lname, role 
FROM actors 
JOIN movies_actors ON movies_actors.act_id = actors.id 
JOIN movies ON movies.id = movies_actors.mov_id 
WHERE mov_title = 'Annie Hall';"

requests["Find the name of movie and director who directed a movies that casted a role as Sean Maguire"] = 
"SELECT directors.dir_fname, directors.dir_lname, movies.mov_title
FROM movies 
JOIN movies_actors ON movies.id = movies_actors.mov_id
JOIN directors ON directors.id = directors_movies.dir_id
JOIN directors_movies ON movies.id = directors_movies.mov_id 
WHERE role = 'Sean Maguire';"

requests["Find all the actors who have not acted in any movie between 1990 and 2000 (select only actor first name, last name, movie title and release year)"] = 
"SELECT actors.act_fname, actors.act_lname, movies.mov_title, CAST(SUBSTR(movies.mov_dt_rel, 1, 4) AS INTEGER) AS release_year
FROM actors
LEFT JOIN movies_actors ON actors.id = movies_actors.act_id
LEFT JOIN movies ON movies.id = movies_actors.mov_id
WHERE actors.id NOT IN (
    SELECT DISTINCT actors.id
    FROM actors
    JOIN movies_actors ON actors.id = movies_actors.act_id
    JOIN movies ON movies.id = movies_actors.mov_id
    WHERE CAST(SUBSTR(movies.mov_dt_rel, 1, 4) AS INTEGER) BETWEEN 1990 AND 2000
)
AND (release_year < 1990 OR release_year > 2000 OR release_year IS NOT NULL)
ORDER BY actors.id;
"

# I still think is line 86
# Now names are correct, but years are off. But If I switch types of years, then names are off YEAAAH BOOOOIIIII
#"SELECT actors.act_fname, actors.act_lname, movies.mov_title, CAST(SUBSTR(movies.mov_dt_rel, 1, 4) AS INTEGER) AS yr_rel
#FROM actors 
#LEFT JOIN movies_actors ON actors.id = movies_actors.act_id 
#LEFT JOIN movies ON movies_actors.mov_id = movies.id 
#WHERE NOT yr_rel >= 1990 AND yr_rel <= 2000
#ORDER BY actors.id ASC;"

#CAST(SUBSTR(movies.mov_dt_rel, 1, 4) AS INTEGER) AS yr_rel
#LEFT JOIN - add another table ON table1.column = table2.column 