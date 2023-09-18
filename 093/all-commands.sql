DROP TABLE IF EXISTS listitems;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS people;

CREATE TABLE people (
    pID SERIAL PRIMARY KEY,
    pFirstName VARCHAR(50) NOT NULL
);

CREATE TABLE lists (
    lID SERIAL PRIMARY KEY,
    pID INT REFERENCES people NOT NULL,
    lName VARCHAR(50) NOT NULL
);

CREATE TABLE items (
    iID SERIAL PRIMARY KEY,
    iName VARCHAR(50) NOT NULL
);

CREATE TABLE listItems (
    liID SERIAL PRIMARY KEY,
    lID INT REFERENCES lists NOT NULL,
    iID INT REFERENCES items NOT NULL,
    liDesired INT NOT NULL DEFAULT 1,
    liPurchased INT NOT NULL DEFAULT 0
);

ALTER TABLE people
    ADD COLUMN plastname VARCHAR(50) NOT NULL,
    ADD COLUMN pcity VARCHAR(50) NOT NULL,
    ADD COLUMN pstate VARCHAR(50) NOT NULL;

INSERT INTO people (pfirstname, plastname, pstate, pcity) VALUES
('Elijah', 'Bennett', 'CA', 'San Francisco'),
('Olivia', 'Mitchell', 'NY', 'New York City'),
('Liam', 'Anderson', 'TX', 'Houston'),
('Ava', 'Parker', 'FL', 'Miami'),
('Noah', 'Nelson', 'IL', 'Chicago'),
('Isabella', 'Foster', 'AZ', 'Phoenix'),
('Sophia', 'Ramirez', 'NV', 'Las Vegas'),
('Mason', 'Carter', 'CO', 'Denver'),
('Lucas', 'Powell', 'GA', 'Atlanta'),
('Oliver', 'Turner', 'WA', 'Seattle'),
('Harper', 'Lewis', 'MA', 'Boston'),
('Emma', 'Murphy', 'OH', 'Columbus'),
('Aiden', 'Bennett',  'MI', 'Detroit'),
('Liam', 'Wright', 'PA', 'Philadelphia');

INSERT INTO items (iname) VALUES 
('Item 1'),
('Item 2'),
('Item 3'),
('Item 4'),
('Item 5'),
('Item 6'),
('Item 7'),
('Item 8'),
('Item 9'),
('Item 10');


INSERT INTO lists (pid, lname) VALUES
(1, 'Shopping List 1'),
(2, 'Shopping List 2'),
(3, 'Shopping List 3'),
(4, 'Shopping List 4'),
(5, 'Shopping List 5'),
(6, 'Shopping List 6'),
(7, 'Shopping List 7'),
(8, 'Shopping List 8'),
(9, 'Shopping List 9'),
(10, 'Shopping List 10');

INSERT INTO listitems (lid, iid, lidesired, lipurchased) VALUES
(1, 1, 3, 0),  -- 3 of item 1 desired, 0 purchased
(1, 2, 2, 1),  -- 2 of item 2 desired, 1 purchased
(1, 3, 5, 2),  -- 5 of item 3 desired, 2 purchased
(2, 4, 2, 0),  -- 2 of item 4 desired, 0 purchased
(2, 5, 1, 1),  -- 1 of item 5 desired, 1 purchased
(2, 6, 4, 0),  -- 4 of item 6 desired, 0 purchased
(3, 7, 3, 3),  -- 3 of item 7 desired, 3 purchased
(3, 8, 2, 1),  -- 2 of item 8 desired, 1 purchased
(3, 9, 4, 2),  -- 4 of item 9 desired, 2 purchased
(4, 10, 2, 0), -- 2 of item 10 desired, 0 purchased
(4, 1, 5, 3),  -- 5 of item 1 desired, 3 purchased
(5, 2, 3, 2),  -- 3 of item 2 desired, 2 purchased
(5, 3, 2, 0),  -- 2 of item 3 desired, 0 purchased
(6, 4, 1, 0),  -- 1 of item 4 desired, 0 purchased
(6, 5, 6, 4),  -- 6 of item 5 desired, 4 purchased
(6, 6, 2, 1),  -- 2 of item 6 desired, 1 purchased
(7, 7, 3, 3),  -- 3 of item 7 desired, 3 purchased
(7, 8, 2, 1),  -- 2 of item 8 desired, 1 purchased
(8, 9, 4, 0),  -- 4 of item 9 desired, 0 purchased
(9, 10, 3, 2); -- 3 of item 10 desired, 2 purchased


