SELECT a.ActorName, b.ActorName
        FROM friends
        JOIN actors a
        ON a.id = friends.Actor1_id
        JOIN actors b
        ON b.id = friends.Actor2_id;

SELECT actors.ActorName Movie_stars, movies.Title Movie
FROM actors
JOIN movies
ON actors.id = movies.actor_id;