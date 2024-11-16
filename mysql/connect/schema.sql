CREATE table users(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT UNIQUE,
    "password" TEXT,
    PRIMARY KEY("id")

);
CREATE table schools_university(
    "id" INTEGER,
    "name" TEXT,
    "type_of_schools" TEXT,
    "location" TEXT,
    "year_of_foundation" INTEGER,
    PRIMARY KEY("id")
);
CREATE table companies(
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY ("id")
);
CREATE table users_connections(
    "user1_id" INTEGER,
    "user2_id" INTEGER,
    PRIMARY KEY("user1_id","user2_id"),
    FOREIGN KEY("user1_id") REFERENCES users("id"),
    FOREIGN KEY("user2_id") REFERENCES users("id")
);

CREATE table schools_connections(
    "users_id" INTEGER,
    "schools_id" INTEGER,
    "start_date" INTEGER,
    "end_date" INTEGER,
    "type_of_degree" TEXT,
    PRIMARY KEY("users_id","schools_id"),
    FOREIGN KEY("users_id") REFERENCES users("id"),
    FOREIGN KEY("schools_id") REFERENCES schools_university("id")
);
CREATE TABLE company_connections(
  "users_id" INTEGER,
   "company_id" INTEGER,
   "start_date" INTEGER,
   "end_date" INTEGER,
   "position"  TEXT,
    PRIMARY KEY("users_id","company_id"),
    FOREIGN KEY("users_id") REFERENCES users("id"),
    FOREIGN KEY("company_id") REFERENCES companies("id")
);
