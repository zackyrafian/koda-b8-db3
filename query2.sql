SELECT "movies"."name" AS "movie_name", "movies"."year" AS "movie_year", "directors"."first_name" AS "director_first_name", "directors"."last_name" AS "director_last_name", "directors_genres"."genre" AS "director_movie_genre" FROM "movies" 
JOIN "movies_directors" ON "movies"."id" = "movies_directors"."director_id"
JOIN "directors" ON "movies_directors"."director_id" = "directors"."id"
JOIN "directors_genres" ON "directors"."id" = "directors_genres"."director_id" LIMIT 50;

SELECT "actors"."first_name" AS "actor_first_name", "actors"."last_name" AS "actor_last_name", "actors"."gender" AS "actor_gender", "roles"."role" AS "role", "movies"."name" AS "movie_name" FROM "actors" 
JOIN "roles" ON "actors"."id" = "roles"."actor_id"
JOIN "movies" ON "roles"."movie_id" = "movies"."id" LIMIT 100;
