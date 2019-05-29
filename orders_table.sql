-- orders table
CREATE TABLE orders ( person_id SERIAL, product_name VARCHAR(100), product_price NUMERIC, quantity INT )

-- add orders to table
 INSERT INTO orders 
 ( person_id, product_name , product_price, quantity )
 VALUES
 ( 1, 'steak', 19.99, 1 ),
 ( 1, 'mashed potatoes', 4.99, 1 ),
 ( 2, 'swordfish', 26.99, 1 ),
 ( 2, 'green beans', 3.99, 1 ),
 ( 2, 'cake', 9.99, 1 );

--  select all
 SELECT * FROM orders

-- total number of products ordered
SELECT SUM(quantity) FROM orders

-- total order price
SELECT SUM(product_price * quantity) FROM orders

-- total order price by a single person_id
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2