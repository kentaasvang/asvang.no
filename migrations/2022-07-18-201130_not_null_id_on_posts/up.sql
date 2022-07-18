-- Your SQL goes here
DROP TABLE posts;
CREATE TABLE posts (
    id INTEGER PRIMARY KEY NOT NULL,
    title VARCHAR NOT NULL,
    body TEXT NOT NULL
);