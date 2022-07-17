-- Your SQL goes here
CREATE TABLE IF NOT EXISTS posts (
    id INTEGER PRIMARY KEY,
    title VARCHAR NOT NULL,
    body TEXT NOT NULL   
);