-- SELECT * FROM "directors_genres" 
-- JOIN "directores" ON "directors_genres"."director_id" = "directores"."director_id" LIMIT 100; 


-- SELECT * FROM "directors" 
-- JOIN "movies_directors" ON "directors"."id" = "movies_directors"."director_id" 
-- JOIN "movies" ON "movies_directors"."movie_id" = "movies"."id"
-- JOIN "movie_genres" ON "movies"."id" = "movie_genres"."movie_id" LIMIT 100


SELECT "directors"."first_name", COUNT(DISTINCT "movies_genres"."genre") AS "total" FROM "movies_genres"  
JOIN "movies" ON "movies_genres"."movie_id" = "movies"."id" 
JOIN "movies_directors" ON "movies"."id" = "movies_directors"."movie_id"
JOIN "directors" ON "movies_directors"."director_id" = "directors".id
GROUP BY "directors"."first_name"
ORDER BY "total" DESC LIMIT 100;

SELECT "actors"."first_name", COUNT("roles"."role") AS "total" FROM "actors" 
JOIN "roles" ON "actors"."id" = "roles"."actor_id" 
GROUP BY "actors"."first_name" 
HAVING COUNT("roles"."role") > 5
LIMIT 100;

SELECT "directors"."first_name", COUNT("directors"."first_name") AS "total" FROM "movies" 
JOIN "movies_directors" ON "movies"."id" = "movies_directors"."movie_id"
JOIN "directors" ON "movies_directors"."director_id" = "directors"."id"
GROUP BY "directors"."first_name"
ORDER BY "total" DESC LIMIT 1;

SELECT "year", COUNT("year") AS "total" FROM "movies"
GROUP BY "year" ORDER BY "total" DESC LIMIT 1;

-- SELECT * FROM "movies"
-- JOIN "moveis_genres" ON "movies"."id" = "moveis_genres"."movie_id"
-- GROUP BY "movies"."name" LIMIT 100;

SELECT "movies"."name", STRING_AGG("movies_genres"."genre", ', ') AS "genre" FROM "movies_genres"
JOIN "movies" ON "movies_genres"."movie_id" = "movies"."id"
GROUP BY "movies"."name" 
