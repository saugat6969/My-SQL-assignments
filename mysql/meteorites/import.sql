CREATE TABLE meteorites_temp (
    name TEXT,
    id INTEGER,
    nametype TEXT,
    class TEXT,
    mass INTEGER,
    discovery TEXT,
    year INTEGER,
    lat REAL,
    long REAL,
    PRIMARY KEY("id")
);
UPDATE "meteorites_temp"
SET "mass" =NULL
WHERE mass=0;

UPDATE "meteorites_temp"
SET "year" =NULL
WHERE year LIKE '';


UPDATE "meteorites_temp"
SET "long" =NULL
WHERE long=0;


UPDATE "meteorites_temp"
SET  long =ROUND(long,2),
     mass=ROUND(mass,2),
     lat=ROUND(lat,2);



CREATE TABLE "meteorites" (
    name TEXT,
    id INTEGER,

    class TEXT,
    mass INTEGER,
    discovery TEXT,
    year INTEGER,
    lat REAL,
    long REAL,
    PRIMARY KEY("id")
);


INSERT INTO "meteorites" ("name", "id", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "id", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
WHERE "nametype" NOT LIKE '%relict%'
ORDER BY "year", "name";
