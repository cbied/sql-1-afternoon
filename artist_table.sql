-- Add 3 new artists
INSERT INTO artist
( name )
VALUES
( 'Freddie Mercurry'),
( 'Fetty Wap'),
( 'Nirvana');

-- Select 10 artists in reverse alphabetical order
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10

-- Select 5 artists in alphabetical order
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5

-- Select all artists that start with the word 'Black'
SELECT * FROM artist
WHERE name LIKE 'Black%'

-- Select all artists that contain the word 'Black'
SELECT * FROM artist
WHERE name LIKE '%Black%'