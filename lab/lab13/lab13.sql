.read data.sql


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) AS average_price
  FROM products
  GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) as price
  FROM inventory
  GROUP BY item;


CREATE TABLE best_deal AS
  SELECT min(MSRP / rating), category, name
  FROM products
  GROUP BY category;


CREATE TABLE shopping_list AS
  SELECT a.name, b.store
  FROM best_deal AS a, lowest_prices AS b
  WHERE a.name = b.item;


CREATE TABLE total_bandwidth AS
  SELECT sum(b.Mbs)
  FROM shopping_list AS a, stores as b
  WHERE a.store = b.store;

