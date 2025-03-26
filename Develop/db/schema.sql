DROP DATABASE IF EXISTS ecommerce_db;

CREATE DATABASE ecommerce_db;

\c ecommerce_db;


CREATE TABLE category (
  id SERIAL PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL
);


CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  price DECIMAL NOT NULL,
  stock INTEGER NOT NULL DEFAULT 10,
  category_id INTEGER REFERENCES category(id) ON DELETE CASCADE
);


CREATE TABLE tag (
  id SERIAL PRIMARY KEY,
  tag_name VARCHAR(100)
);


CREATE TABLE product_tag (
  id SERIAL PRIMARY KEY,
  product_id INTEGER REFERENCES product(id) ON DELETE CASCADE,
  tag_id INTEGER REFERENCES tag(id) ON DELETE CASCADE
);