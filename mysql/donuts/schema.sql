CREATE TABLE ingredients(
    "id" INTEGER,
    "name_of_ingredient" TEXT,
    "unit" TEXT,
    "price_per_unit" FLOAT,
    PRIMARY KEY("id")
);

CREATE TABLE donuts(
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" BOOLEAN,
    "price" FLOAT,
    PRIMARY KEY("id")
);

CREATE TABLE customers(
    "id" BIGINT,
    "first_name" TEXT,
    "last_name" TEXT,
    "no_of_orders" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE orders(
    "id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES customers("id")
);

CREATE TABLE donuts_ingredients(
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    PRIMARY KEY("donut_id", "ingredient_id"),
    FOREIGN KEY("donut_id") REFERENCES donuts("id"),
    FOREIGN KEY("ingredient_id") REFERENCES ingredients("id")
);

CREATE TABLE order_donuts(
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "quantity" INTEGER,
    PRIMARY KEY("order_id", "donut_id"),
    FOREIGN KEY("order_id") REFERENCES orders("id"),
    FOREIGN KEY("donut_id") REFERENCES donuts("id")
);
