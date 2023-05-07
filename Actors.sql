/* Table for actors */
CREATE TABLE actors (id integer IDENTITY (1,1) primary key , ActorName TEXT, Age INTEGER, Gender TEXT);

/* Inserts data into the actors table */
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Tom Cruise',60,'Male' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Brad Pitt',59,'Male' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Scarlett Johansson',38,'Female' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Florence Pugh',27,'Female' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Anne Hathaway',40,'Female' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Jennifer Lawrence',32,'Female' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Emily Blunt',40,'Female' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Emma Watson',33,'Female' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Margot Robbie',32,'Female' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Daniel Radcliffe',33,'Male' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Leonardo DiCaprio',48,'Male' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Robert Downey Jr',58,'Male' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Christian Bale',49,'Male' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('Johnny Depp',59,'Male' );
INSERT INTO actors (ActorName, Age, Gender)VALUES ('George Clooney',61,'Male' );

/*Creates movie tables*/
CREATE TABLE movies (id integer IDENTITY(1,1) primary key, Title TEXT, Release_Date INTEGER, actor_id INTEGER);

/* Inserts data into the movie table */
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Top Gun: Maverick', 2022, 1);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Fight Club', 1999, 2);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Lucy', 2014, 3);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Midsommar', 2019,  4);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('The Princess Diaries', 2001, 5);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('The Hunger Games', 2012, 6);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('A Quiet Place', 2018, 7);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Beauty and the Beast', 2017, 8);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Harley Quinn: Birds of Prey', 2020, 9);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Harry Potter and the Philosophers Stone', 2001, 10);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Titanic', 1997, 11);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Iron Man', 2008,12);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('The Dark Knight', 2008, 13);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Edward Scissorhands', 1990, 14);
INSERT INTO movies (Title, Release_Date, actor_id)VALUES ('Oceans Eleven', 2001, 15);

/* Creates a table for friends */
CREATE TABLE friends (id integer IDENTITY(1,1) primary key , Actor1_id INTEGER, Actor2_id INTEGER);

/* Inserts data into the friends table */
INSERT INTO friends (Actor1_id, Actor2_id)VALUES (1,2);

INSERT INTO friends (Actor1_id, Actor2_id)VALUES (3,4);

INSERT INTO friends (Actor1_id, Actor2_id)VALUES (5,13);

INSERT INTO friends (Actor1_id, Actor2_id)VALUES (8,10);

INSERT INTO friends (Actor1_id, Actor2_id)VALUES (2,11);

INSERT INTO friends (Actor1_id, Actor2_id)VALUES (2,9);

INSERT INTO friends (Actor1_id, Actor2_id)VALUES (2,15);

INSERT INTO friends (Actor1_id, Actor2_id)VALUES (3,12);

/*Selects name from actors and via actors id correctly puts in the actors name into 
friends, This is because it makes easier to understand the data by using their names
instead of id*/

SELECT a.ActorName, b.ActorName
        FROM friends
        JOIN actors a
        ON a.id = friends.Actor1_id
        JOIN actors b
        ON b.id = friends.Actor2_id;

/*Selects actors name from table actors and movie title
from tables movies and joins them together via actors id*/

SELECT actors.ActorName Movie_stars, movies.Title Movie
FROM actors
JOIN movies
ON actors.id = movies.actor_id;