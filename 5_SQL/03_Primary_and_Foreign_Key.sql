CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

-- USERS TABLE
CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    age INT,
	username VARCHAR(25) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    followings INT DEFAULT 0 CHECK (followings >= 0),
    followers INT DEFAULT 0 CHECK (followers >= 0),
	CONSTRAINT check_age CHECK (age >= 13)
);

-- POSTS TABLE
CREATE TABLE posts (
	post_id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(200) NOT NULL,

    -- Foreign key referencing users table
    user_id INT,

    -- Foreign key constraint
    CONSTRAINT FOREIGN KEY (user_id)
    REFERENCES users(id)
    ON DELETE CASCADE     -- ON DELETE CASCADE deletes posts if user is deleted
);

-- ---------------------------------------------------------------------------------

/*

PRIMARY KEY :
- A PRIMARY KEY is a constraint used to uniquely identify each record (row) in a table.

Properties of PRIMARY KEY:
   1. Must contain UNIQUE values
   2. Cannot contain NULL values
   3. Each table can have ONLY ONE primary key
   - (it may consist of one or multiple columns → composite key)

In this schema:
- users.id      → PRIMARY KEY of users table
- posts.post_id → PRIMARY KEY of posts table


FOREIGN KEY :
- A FOREIGN KEY is a constraint used to establish a relationship between two tables.
- It ensures that the value in a column of one table must match an existing value in the referenced column of another table.

In this schema:
- posts.user_id  → references  users.id

This means:
   1. A post cannot exist without a valid user.
   2. user_id in posts must already exist in users table.
   3. Prevents orphan records (posts without users).

Syntax used:
- FOREIGN KEY (user_id) REFERENCES users(id)

ON DELETE CASCADE:
- If a row in the parent table (users) is deleted,
- all related rows in the child table (posts) are automatically deleted.

Parent Table: users
Child Table : posts

*/