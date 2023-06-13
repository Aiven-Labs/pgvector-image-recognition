CREATE EXTENSION vector;

CREATE TABLE pictures (picture text PRIMARY KEY, embedding vector(768));