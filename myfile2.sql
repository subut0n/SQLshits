CREATE DATABASE book_shop;
USE book_shop;
CREATE TABLE books
(
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR (100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY(book_id)
);
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
    ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
    ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
    ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
    ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
    ('A Hologram for the King: A Novel' , 'Dave', 'Eggers', 2012, 154, 352),
    ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
    ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
    ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
    ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
    ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
    ('What We Talk About When We Talk About Love: Stories' , 'Raymond', 'Carver', 1981, 23, 176),
    ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
    ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
    ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
    ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
    ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
SELECT * FROM books;
SELECT CONCAT(author_fname, ' ', author_lname) AS full_name FROM books;
SELECT SUBSTRING(title, 1, 10) AS short_title FROM books;
SELECT REPLACE(title,' ', '_') FROM books;
SELECT REVERSE(title) FROM books;
SELECT LENGTH(title) FROM books;
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS full_name FROM books;
SELECT DISTINCT(author_lname) FROM books;
SELECT author_lname FROM books ORDER BY author_lname;
SELECT released_year FROM books ORDER BY released_year LIMIT 5;
SELECT * FROM books WHERE title LIKE '%the%';
SELECT * FROM books WHERE title LIKE 'the%';
SELECT SUM(stock_quantity) FROM books;
SELECT COUNT(DISTINCT(author_fname)) FROM books; 
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year ORDER BY released_year;
SELECT title, released_year FROM books WHERE released_year < 2004 ORDER BY released_year;
SELECT title, released_year FROM books WHERE title LIKE 'the%' AND released_year > 2000; /*2000 exclus*/
SELECT NOW();
SELECT title, stock_quantity FROM books
CASE
    WHEN stock_quantity > 100 THEN stock = '***'
    WHEN stock_quantity > 50 AND stock_quantity < 101 THEN stock = '**'
    WHEN stock_quantity < 51 THEN stock = '*'