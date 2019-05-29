-- Person table
CREATE TABLE person ( id SERIAL, name VARCHAR(100), age INT, height INT, city VARCHAR(100), favorite_color VARCHAR(100) )

-- Add people to person table
INSERT INTO person 
( name, age, height, city, favorite_color)
VALUES 
( 'Chris', 27, 169, 'Baltimore', 'green' ),
( 'Kevin', 32, 180, 'Autin', 'blue' ),
( 'Mark', 33, 158, 'Washington D.C.', 'purple' ),
( 'Rachel', 20, 159, 'Jacksonville', 'red' ),
( 'Tom', 26, 189, 'Baltimore', 'grey' );

-- height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC

-- height from shortest to tallest.
SELECT * FROM person
ORDER BY height ASC

-- age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC

-- older than age 20
SELECT * FROM person
WHERE age > 20

-- exactly 18
SELECT * FROM person
WHERE age = 18

-- less than 20 and older than 30
SELECT * FROM person
WHERE age < 20 AND age > 30

-- are not 27
SELECT * FROM person
WHERE age != 27

-- favorite color is not red
SELECT * FROM person
WHERE favorite_color != 'red'

-- favorite color is not red and is not blue
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue'

-- favorite color is orange or green
SELECT * FROM person
WHERE favorite_color = 'red' OR favorite_color = 'blue'

-- favorite color is orange, green or blue (use IN)
SELECT * FROM person
WHERE favorite_color IN ( 'orange', 'green', 'blue' )

-- favorite color is yellow or purple (use IN)
SELECT * FROM person
WHERE favorite_color IN ( 'yellow', 'purple' )
