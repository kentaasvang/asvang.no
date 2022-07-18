-- This file should undo anything in `up.sql`
DROP TABLE posts;
CREATE TABLE posts (
    id INTEGER PRIMARY KEY,
    title VARCHAR NOT NULL,
    body TEXT
);