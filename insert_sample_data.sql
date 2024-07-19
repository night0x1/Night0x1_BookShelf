-- Insert author names into the 'authors' table.
INSERT INTO authors(name)
VALUES
     ('Anthony BeBarros'),
     ('Daniel G. Grahm'),
     ('Corey J. Ball');

-- Insert the information for the books:
--  -'title': the title of the book
--  -'author_id': the ID of the author from the 'authors' table.
--  -'isbn': the Ineternational Standard Book Number of the book.
--  -'publish_date': the date the book was published
--  -'is_read': a boolean value indicating whether the book has been read.
INSERT INTO books(title, author_id, isbn, publish_date, is_read)
VALUES  
    ('Practical Sql', 1, '9781718501065', '2018-05-01', TRUE),
    ('Ethical Hacking', 2, '9781718591874', '2021-10-19', FALSE),
    ('Hacking Api\`s', 3, '9781718502444', '2022-07-12', FALSE);