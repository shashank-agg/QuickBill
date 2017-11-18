DROP DATABASE IF EXISTS quickbilldb;
DROP USER IF EXISTS quickbilluser;

CREATE USER quickbilluser;
CREATE DATABASE quickbilldb;

GRANT ALL PRIVILEGES ON DATABASE quickbilldb to quickbilluser;
ALTER DATABASE quickbilldb OWNER TO quickbilluser;

\c quickbilldb quickbilluser;
DROP TABLE IF EXISTS shops;
CREATE TABLE shops(
   shop_id SERIAL PRIMARY KEY,
   shop_name VARCHAR(50)
);

DROP TABLE IF EXISTS master_inventory;
CREATE TABLE master_inventory(
   item_id SERIAL PRIMARY KEY,
   item_name VARCHAR(50),
   item_cost float
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
   customer_id SERIAL PRIMARY KEY,
   customer_name VARCHAR(50)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
   order_id SERIAL PRIMARY KEY,
   customer_id INTEGER REFERENCES customers(customer_id),
   shop_id INTEGER REFERENCES shops(shop_id),
   order_date VARCHAR(50),
   order_amount float,
   order_status VARCHAR(20)
);

DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items(
   order_id INTEGER REFERENCES orders(order_id),
   item_id INTEGER REFERENCES master_inventory(item_id),
   item_price float,
   item_quantity float
);

