/*

Insert : 
- Used to add one or more new rows to a table
- Can insert data into all columns or specific columns

1️.Insert into all columns (values must match column order):

INSERT INTO table_name 
VALUES (value1, value2, value3, ...);

-------------------------------------------------------------
2️.Insert into specific columns:

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-------------------------------------------------------------
3️.Insert multiple rows at once:

INSERT INTO table_name (column1, column2)
VALUES (value1, value2),
       (value3, value4),
       (value5, value6);
*/

USE instagram;

-- Insert a single user with all columns specified
INSERT INTO users (username, age, email, followings, followers) 
VALUES ('Pranav_Nikam', 22, 'pranavnikam@gmail.com', 90, 70);

-- Insert a single user with all columns specified
INSERT INTO users (username, age, email, followings, followers)
VALUES ('Unknown', 21, 'unknown@gmail.com', 150, 80);

-- followings & followers will take DEFAULT value 0
INSERT INTO users (email, age, username) 
VALUES ('john@gmail.com', 18, 'john');

-- -------------------------------------------------------------

-- Insert multiple rows at once
INSERT INTO posts (content, user_id)
VALUES 
('Hello World!', 1),
('My First Post', 2),
('Enjoying SQL Practice!', 1);

SELECT * from users;
SELECT * from posts;