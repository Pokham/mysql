--CREATE TABLE books 
--	(
--		book_id INT NOT NULL AUTO_INCREMENT,
--		title VARCHAR(100),
--		author_fname VARCHAR(100),
--		author_lname VARCHAR(100),
--		released_year INT,
--		stock_quantity INT,
--		pages INT,
--		PRIMARY KEY(book_id)
--	);

--INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
--VALUES
--('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
--('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
--('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
--('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
--('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
--('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
--('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
--('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
--('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
--('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
--('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
--("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
--('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
--('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
--('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
--('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

--INSERT INTO books
--    (title, author_fname, author_lname, released_year, stock_quantity, pages)
--    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

--SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
--SELECT DISTINCT author_fname, author_lname FROM books;
--SELECT author_lname FROM books ORDER BY author_lname; ascending order
--SELECT author_lname FROM books ORDER BY author_lname DESC;

--select title, author_lname from books;
--select title, author_lname from books where author_lname = 'Harris';
--select title, author_lname from books where author_lname != 'Harris'; 
--select title from books where title LIKE 'W%';
--select title from books where title LIKE '%W%';
--select title from books where title NOT LIKE 'W%';   

-- Greater than
--select * from books where released_year > 2000;
--select title, released_year from books where released_year > 2000 order by released_year;
--select title, released_year from books where released_year >= 2000 order by released_year;

-- AND &&
--select * from books where author_lname = 'Eggers'&& released_year > 2010;
--select title, author_lname, released_year from books where author_lname = 'Eggers' && released_year > 2010;

-- BETWEEN X AND Y
--select title, released_year from books where released_year >= 2004 && released_year <= 2015;
--select title, released_year from books where released_year between 2004 and 2015;

--CAST()
--select cast('2017-05-02' as datetime);
--select name, birthdt from people where birthdt between '1980-01-01' and '2000-01-01';
--select name, birthdt from people where birthdt between cast('1980-01-01'as datetime) and cast('2000-01-01' as datetime);  

--change databases, show databases; use new_testing_db;

-- IN
--select title, author_lname from books where author_lname in ('Carver', 'Lahiri', 'Smith');
--select title, released_year from books where released_year in (2017, 1985);  

-- NOT IN
--select title, released_year from books where released_year not in (2000,2002,2004,2006,2008,2010,2012,2014,2016);
--select title, released_year from books where released_year >= 2000 and released_year % 2 != 0;

