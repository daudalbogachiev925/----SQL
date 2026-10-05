CREATE TABLE restaurants (id INTEGER PRIMARY KEY, name TEXT, city TEXT);
CREATE TABLE dishes (id INTEGER PRIMARY KEY, restaurant_id INTEGER,
    name TEXT, price REAL);
CREATE TABLE couriers (id INTEGER PRIMARY KEY, name TEXT, phone TEXT);
CREATE TABLE orders (id INTEGER PRIMARY KEY, restaurant_id INTEGER,
    courier_id INTEGER, customer TEXT, total REAL, created DATE);
