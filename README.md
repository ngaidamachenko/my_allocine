# Welcome to My Allocine
**************************************************************************************

## Task
Write all the corresponding sql requests following the Description:
requests['Display all actors'] = "SELECT * FROM actors;"
requests['Display all genres'] = ""
requests['Display the name and year of the movies'] = ""
requests['Display reviewer name from the reviews table'] = ""

requests["Find the year when the movie American Beauty released"] = ""
requests["Find the movie which was released in the year 1999"] = ""
requests["Find the movie which was released before 1998"] = ""
requests["Find the name of all reviewers who have rated 7 or more stars to their rating order by reviews rev_name (it might have duplicated names :-))"] = ""
requests["Find the titles of the movies with ID 905, 907, 917"] = ""
requests["Find the list of those movies with year and ID which include the words Boogie Nights"] = ""
requests["Find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'"] = ""

requests["Find the actors with all information who played a role in the movies 'Annie Hall'"] = ""
requests["Find the first and last names of all the actors who were cast in the movies 'Annie Hall', and the roles they played in that production"] = ""

requests["Find the name of movie and director who directed a movies that casted a role as Sean Maguire"] = ""
requests["Find all the actors who have not acted in any movie between 1990 and 2000 (select only actor first name, last name, movie title and release year)"] = ""

## Description
Created a list of requests using such commands as SELECT, *, FROM, JOIN, WHERE, CAST, SUBSTR, ORDER BY etc

## Installation
To install and run the project locally, follow these steps:
- Clone the repository
- Install SQLite and Ruby
- Run the project using queries identified in my_allocine.rb

## Usage
Run requests by copy pasting query from inside of "" such as:

SELECT * FROM actors


```
./sqlite3 movies.db
> your request
> SELECT * FROM actors; [EXAMPLE]
```

### The Core Team
Project completed by Nikita Gaidamachenko

<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>
