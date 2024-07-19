-- This will create a database called 'bookshelf' to hold information about the books in my book shelf
CREATE DATABASE bookshelf;

-- Create a table called 'authors'.
-- The 'authors' table contain the following:
--  - 'id': a unqiue identifier for each author, set as a primary key and auto-incremented.
--  - 'name': the name of the author, which cannot be null.
CREATE TABLE authors (
    id bigserial PRIMARY key,
    name varchar(255) not null
);

-- Create a table called 'books'.
-- The 'books' table contain the following:
--  - 'id': a unqiue identifier on the number in books, set as primary key and auto-incremented.
--  - 'title': the title of the book, which can hold up to 255 characters and cannot be null.
--  - 'author_id': a foreign key that references the 'id' column in the 'authors' table, which cannot be null.
--  - 'publish_date': contains the information when the book was published.
--  - 'ISBN': the International Standard Book Number, which must be unique.
--  - 'is_read': a boolean value indicating whether the book has been read, defaulting to false.
CREATE TABLE books (
    id bigserial PRIMARY key,
    title varchar(255) not null,
    author_id BIGINT not null,
    publish_date varchar(255) not null,
    ISBN   varchar(255) UNIQUE,
    FOREIGN KEY (author_id) REFERENCES authors (id) ON DELETE CASCADE,
    is_read BOOLEAN DEFAULT false
);