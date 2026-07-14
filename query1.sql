SELECT "id","name", "year" FROM "movies" WHERE "year" >= 2000 ORDER BY "year" ASC;

SELECT "first_name", "last_name" FROM "actors" WHERE "last_name" LIKE '%s';

SELECT * FROM "movies" WHERE "rankscore" >= 5 AND "rankscore" <= 7 AND "year" >= 2004 AND "year" <= 2006; 

SELECT COUNT(*) FROM "movies" WHERE "rankscore" = 6; 