CREATE TABLE cats(name VARCHAR(50), age INT);

INSERT INTO cats(name, age) values('Blue',  1);

INSERT INTO cats(age, name) values (11, 'Draco');


CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
);

INSERT INTO employees (first_name, last_name, middle_name, age, current_status) VALUES ('Putin', 'Bladimir', 'Rasputin', 25, 'Employed');
INSERT INTO employees (first_name, last_name, middle_name, age, current_status) VALUES ('Dest', 'Gavi', 'Rasputin', 18, 'Employed');

INSERT INTO cats(name, breed, age)
    VALUES ('Ringo', 'Tabby', 4),
            ('Cindyy', 'Maine Coon', 2),
            ('Jairo', 'Maine Coon', 12),
            ('Egg', 'Persian', 4),
            ('Must', 'Tabby', 12),
            ('George', 'Ragdoll', 9),
            ('Jackson', 'Sphynx', 7);

select name from cats;
select age from cats;
select cat_id from cats;
select name, age from cats;
select cat_id, name, age, breed from cats;

select name from cats where breed = 'Maine Coon';
select * from cats where name = 'Egg';


select cat_id from cats;
select name, breed  from cats;
select name, age from cats where breed = 'Tabby';

select cat_id, name, age from cats where cat_id = age;

        /*Alieses*/

select cat_id AS id, name FROM cats;


select name as 'Cat name', breed as 'Kitti breed' from cats;

/* Update*/

UPDATE cats set breed = 'Shorthair' WHERE breed = 'Tabby';

UPDATE cats SET age = 14 where name = 'Must';
Update cats set age = 5 where breed = 'Maine Coon';

UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';


/*Delete*/

Delete from cats where name = 'Egg';

INSERT INTO cats(name, breed, age) values('Egg', 'Persian Modern', 4);

Update cats set cat_id = 4 where name = 'Egg';

Delete from cats;

/*Delete all cats that are 4 years old*/
Delete from cats where age = 4;
/*Delete all cats that cat_id is equal to their age*/
Delete from cats where cat_id = age;

CREATE TABLE inventory(
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(200) NOT NULL,
    color VARCHAR(200) NOT NULL,
    shirt_size VARCHAR(100) NOT NULL,
    last_worn INT NOT NULL,
    PRIMARY KEY (shirt_id)
)


INSERT INTO inventory(article, color, shirt_size, last_worn) VALUES(
    "tank top",
    "blue",
    "S",
    "50"
    ),
    ("t-shirt",
    "pink",
    "S",
    "0"),
    ("Polo shirt",
    "red",
    "M",
    "5"),
    ("tank top",
    "white",
    "S",
    "200"),
    ("tank top",
    "blue",
    "M",
    "15");

select article, color from inventory;
select article, color, shirt_size, last_worn from inventory where shirt_size = 'M';
select * from inventory where article = 'Polo shirt';
UPDATE inventory set shirt_size = 'L' where article = 'Polo shirt';
Select * from inventory where last_worn <= 15;

Update inventory set last_worn = 0 where last_worn <= 15;

Update inventory set color = 'off white' where color = "white";

Delete from inventory where article = 'tank top';
delte from inventory;

drop table inventory;

create database cat_app;

create table cats(
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO cats(name, age)
    VALUES(
        "Charlie",
        2
),(
    "Connie",
    5
);

//---------------------------WORKING WITH Concat----------------------------------

CONCAT(author_fname, author_lname);
CONCAT(column, 'text', anotherColumn, 'moreText');
CONCAT(author_fname, '', author_lname);

SELECT CONCAT(author_fname, ' ', author_lname) from books;
SELECT CONCAT(author_fname, ' ', author_lname) AS 'full name' from books;
SELECT author_fname AS first, author_lname AS last, 
    CONCAT (author_fname, ' ' ,author_lname) AS full
    from books;

SELECT CONCAT_WS(' - ', title, author_fname, author_lname) from books;

// --------------------Substring-------------------------------------
SELECT SUBSTRING('Hello World', 1, 4);
SELECT SUBSTRING('Hello World', -3);
SELECT SUBSTRING("Where I'm Calling from: Selecred Stories", 1, 10);
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;

//---book_code.sql
SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title' FROM books;

//--------------------REPLACE-----------------------------------------
SELECT REPLACE('Hello World', 'l', '7');

SELECT REPLACE(title, 'e', '3') FROM books;

SELECT SUBSTRING(REPLACE(title, 'e', 3), 1, 10) AS 'Weird name' FROM books;

//-------------------------REVERSE-----------------------------------
SELECT REVERSE('meow, meow');
SELECT CONCAT(author_fname, REVERSE(author_fname)) AS 'Reverse name and concat' FROM books;

//-------------------------CHAR_LENGHT-----------------------------------
SELECT CHAR_LENGTH('Hello World hahaha');

SELECT
  author_fname AS 'Author',
  CHAR_LENGTH(author_fname) AS 'Length'
FROM books;
//------------------------------ Upper & LOWER -------------------------------
SELECT UPPER('Hello World');
SELECT LOWER('Hello World');
SELECT UPPER(title) FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

//----------------------Challenges----------------------------------------
SELECT REPLACE(title, ' ', '->') AS 'title' from books;
SELECT author_fname AS 'forward', REVERSE(author_fname) AS 'backwards' from books;
SELECT CONCAT(UPPER(author_fname),' ', UPPER(author_lname)) AS 'full name in caps' from books;
SELECT CONCAT(title, ' was released in ', released_year) AS 'blurb' from books;
SELECT title, CHAR_LENGTH(title) AS 'Character count' FROM books;
SELECT CONCAT(SUBSTRING(title, 1, 10 ), '...') AS 'Short title', CONCAT(author_lname, ',', author_fname) AS 'author', CONCAT(stock_quantity, ' in stock') AS 'quantity' FROM books;


//-------Adding new books---------
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES (
        '10% Happier',
        'Dan',
        'Harris',
        2014,
        29,
        256
    ),
    (
        'fake book',
        'Freida',
        'Harris',
        2001,
        287,
        428
    ),
    (
        'Lincoln In The Bardo',
        'George',
        'Saunders',
        2017,
        1000,
        367
    )
/------------DISTINCT----------------//-- que no se repite
SELECT author_lname from books;
SELECT DISTINCT author_lname from books;
SELECT DISTINCT released_year from books;
SELECT DISTINCT CONCAT(author_fname, author_lname) from books;
SELECT DISTINCT author_fname, author_lname FROM books;

/-------------ORDER BY-------------------------
SELECT title from books ORDER BY title DESC;/***Descendente*/
SELECT released_year FROM 
SELECT title, released_year, pages from books ORDER BY released_year DESC;
SELECT title, author_fname, author_lname FROM books ORDER BY 2;/**/
SELECT author_fname, author_lname from books ORDER BY author_lname, author_fname;/*ORDERNAR POR ORDEN ASCENDENTE UNICAMENTE AUTHOR_LNAME, EL AUTHOR_FNAME LO IGNORA */
SELECT author_lname, title FROM books ORDER BY 2;/* ORDERNAR POR ORDEN ASCENDENTE LA COLUMNA TITLE*/
SELECT title, author_fname, author_lname FROM books ORDER BY 1 DESC; /* ORDERNAR POR ORDEN DESCENDENTE LA COLUMAN TITLE*/
SELECT title, author_fname, author_lname FROM books ORDER BY 1;/* ORDERNAR POR ORDEN ASCENDENTE LA COLUMAN TITLE*/ 
SELECT title, author_fname, author_lname FROM books ORDER BY 3;/* ORDERNAR POR ORDEN ASCENDENTE LA COLUMAN AUTHOR_LNAME*/
SELECT title, author_fname, author_lname FROM books ORDER BY 2;/* ORDERNAR POR ORDEN ASCENDENTE LA COLUMAN AUTHOR_FNAME*/

/*-------------LIMIT--------*/
SELECT * FROM books LIMIT 1;
SELECT title, pages from books LIMIT 2;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;

/*---------------LIKE ------------------*/
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
SELECT title FROM books WHERE  title LIKE '%the%';
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';/*DEVUELVE TODOS LOS STOCK QUANTITY QUE TENGAN 4 DIGITOS (4 GUIONES BAJOS = 4 DIGITOS)*/
SELECT title FROM books WHERE title LIKE '%\%%'; /*INDICA QUE ENCUENTRE LOS TITULOS QUE CONTENGAN SIMBOLO %*/
SELECT title FROM books WHERE title LIKE '%\_%';

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The_other_book', 'Unknown', 'Unknown', 2011, 32, 2922);

SELECT title from books WHERE title LIKE '%stories%';

SELECT title, pages from books ORDER BY CHAR_LENGTH(TITLE) DESC LIMIT 1;

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 2;

SELECT CONCAT(title, ' - ', released_year) AS 'Summary' FROM books ORDER BY released_year DESC LIMIT 3;

SELECT CONCAT('MY FAVORITE AUTHOR IS ', author_fname,' ', author_lname, '!') AS 'yell' FROM books ORDER BY author_lname;



------------------------------------------------
/*-----------------FUNCTIONS-----------------*/
------------------------------------------------
-----------------COUNT------------------
SELECT COUNT(*) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%the%'; /*Regrese solo el conteo*/
SELECT title FROM books WHERE title LIKE '%the%'; /*Regresa los titulos*/


/*----------GROUP BY--------------------*/
SELECT title, author_lname FROM books GROUP BY author_lname;
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
SELECT title, author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS 'Year' FROM books GROUP BY released_year;


/*----------------min, max---------------------*/
SELECT MIN(released_year) FROM books;
SELECT MAX(released_year) FROM books;
SELECT * FROM books WHERE pages = (SELECT MIN(pages) FROM books);
SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);

/*----------------min, max GROUP BY---------------------*/
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;

/*-----------------SUM FUNCTION--------------*/
SELECT sum(pages) from books;
SELECT sum(released_year) FROM books;
SELECT author_fname, author_lname, sum(pages) FROM books GROUP BY author_lname, author_fname;
SELECT author_fname, author_lname, sum(released_year) FROM books GROUP BY author_lname, author_fname;

/*-----------------AVG--------------*/
SELECT AVG(pages) FROM books; /*4 decimals*/
SELECT released_year, AVG(stock_quantity) from books GROUP BY released_year;
SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;
SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname ORDER BY AVG(pages);

Select COUNT(*) FROM books;

SELECT COUNT(title) AS 'Number of books', released_year FROM books GROUP By released_year;

SELECT sum(stock_quantity) AS 'Number of books in stock' FROM books;

SELECT AVG(released_year), author_fname, author_lname FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Full Name' FROM books ORDER BY pages DESC limit 2;
SELECT CONCAT(author_fname, ' ', author_lname) AS 'Full Name' FROM books WHERE pages = (SELECT Max(pages) FROM books)

SELECT released_year AS 'year', COUNT(title) AS '# books', AVG(pages) AS ' avg pages' FROM books GROUP BY released_year;

/*---------------------------Revisiting DATA TYPES----------------------------------------*/

/*-----------------------------CHAR AND VARCHAR----------------------------------------*/

CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10)); /*LIMIT NAME TO 5 CHARACTERS AND BREED TO 10*/

INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');
INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');
INSERT INTO dogs (name, breed) VALUES ('jane', 'retriever');


/*----------------------------------DECIMAL------------------------------------*/
DECIMAL(5,2); /*Maximum number of digit (the precision) it has a range of 1 to 65
2 --> is the number of digitis to the right of the decimal point (the scale)
*/

CREATE TABLE items(price DECIMAL(5,2));
INSERT INTO items(price) VALUES(7);
INSERT INTO items(price) VALUES(79865);
INSERT INTO items(price) VALUES(34.88);
INSERT INTO items(price) VALUES(298.99999);
INSERT INTO items(price) VALUES(1.999999);

/*----------------------------------FLOAT AND DOUBLE------------------------------------*/

CREATE TABLE thingies (price FLOAT);

INSERT INTO thingies(price) VALUES (88.45);

SELECT * FROM thingies;

INSERT INTO thingies(price) VALUES (8877.45);

SELECT * FROM thingies;

INSERT INTO thingies(price) VALUES (8877665544.45);

SELECT * FROM thingies;

/*----------------------------------DATES & TIMES------------------------------------*/
CREATE TABLE people(
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES
    ('Padma', '1998-11-1', '10:59:00', '1998-11-1 10:59:00');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
/*
CURDATE()-gives current DATE
CURTIME()-gives current TIME
NOW*()-gives current DATETIME
*/
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Microwave', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;

/*----------------------------------FORMATTING DATES------------------------------------*/
SELECT name , birthdate, MINUTE(birthtime) FROM people;
SELECT name, birthtime, HOUR(birthtime) FROM people;
SELECT name , birthdate, DAY(birthdate) FROM people;/*DAY OF THE MONTH*/
SELECT name , birthdate, DAYNAME(birthdate) FROM people; 
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
SELECT name, birthdt, MONTH(birthdt) FROM people;
SELECT name , birthdate, MONTHNAME(birthdate) FROM people;
SELECT name , birthdate, DAYOFYEAR(birthdate) FROM people;

SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
SELECT DATE_FORMAT(birthdt, '%m/%d/%y') FROM people;
SELECT DATE_FORMAT(birthdt, '%m/%d/%y AT %h:%i') FROM people;

/*----------------------------------DATE MATH------------------------------------*/
SELECT * FROM people;

SELECT DATEDIFF(NOW(), birthdate) FROM people;

SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;

SELECT birthdt FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;

SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;

SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;

SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;

/*----------------------------------TIMESTAMP------------------------------------*/
mysql-ctl cli

CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments(content) VALUES (
    'los lusos ganaron en lisboa y lideran...'
);

INSERT INTO comments(content) VALUES (
    'Dame la pasta #2 - Don IBAI LLANOS'
);

CREATE TABLE comments2 (
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments2 (content) VALUES('Es realmente dificil la programacion');

INSERT INTO comments2 (content) VALUES('Juan se transforma y mata a uno enfrente de todos');


SELECT * FROM comments2;
SELECT * FROM comments2 ORDER BY changed_at;

select CURDATE();
select CURTIME();


CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets(content, username) VALUES(
    'El pichichi es messi',
    '@goleador1771'
)

/*------------------------NOT EQUAL----------------*/
Select title, released_year FROM books WHERE released_year = 2017;
Select title, released_year FROM books WHERE released_year != 2017;

Select title, author_lname from books where author_lname = 'Harris';
Select title, author_lname from books where author_lname != 'Harris';
/*------------------------NOT LIKE----------------*/
Select title from books where title like 'W';
Select title from books where title like 'W%';
Select title from books where title like '%W%';

Select title from books where title not like 'W';
Select title from books where title not like 'W%';
Select title from books where title not like '%W%';
/*------------------------GREATER THAN----------------*/
SELECT title, released_year From books order by released_year;
SELECT title, released_year From books Where released_year > 2000;
SELECT title, released_year From books Where released_year >= 2000;
SELECT title, released_year From books Where stock_quantity >= 100;

Select 'a' > 'b'; /*false*/
Select 'A' > 'a'; /*false*/
/*------------------------LESS THAN----------------*/
SELECT title, released_year FROM books Where stock_quantity <= 100;
SELECT title, released_year FROM books Where stock_quantity < 100;
SELECT title, released_year FROM books Where released_year < 2000;
SELECT 'a' < 'b'; /*true*/
SELECT 'A' < 'a'; /*false*/
SELECT 'A' = 'a'; /*true*/
/*------------------------AND----------------*/
SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;
SELECT * FROM products WHERE brand = 'lego' AND instock = 'true';
SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel';
/*------------------------OR----------------*/
/*|| pipe character*/
SELECT * FROM books WHERE author_lname = 'Eggers' OR released_year > 2010;
SELECT * FROM books WHERE author_lname = 'Eggers' || released_year > 2010;
SELECT * FROM books WHERE author_lname = 'Eggers' || released_year > 2010 || stock_quantity > 100;

/*------------------------BETWEEN----------------*/
SELECT * FROM books WHERE released_year >= 2004 AND released_year <= 2015;
SELECT * FROM books WHERE released_year BETWEEN 2004 AND 2015;
SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015;

SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);

SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';

/*------------------------IN and NOT IN----------------*/
SELECT title, author_lname FROM books 
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, author_lname, released_year FROM books 
WHERE released_year NOT IN(
    2000,
    2002,
    2004,
    2006,
    2008,
    2010,
    2012,
    2014,
    2016
); 

SELECT title, author_lname, released_year FROM books 
WHERE released_year % 2 != 0 AND
released_year >= 2000;

/*-----------------CASE STATEMENTS---------------*/
SELECT title, released_year,
       CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

SELECT title,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS STOCK
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books; 

/*---------------SOLUTION----------------------*/
SELECT 10 != 10;
-- false
 
SELECT 15 > 14 && 99 - 5 <= 94;
-- true
 
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
-- true
 
SELECT title, released_year FROM books WHERE released_year < 1980;
 
SELECT title, author_lname FROM books WHERE author_lname='Eggers' OR author_lname='Chabon';
 
SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers','Chabon');
 
SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Lahiri' && released_year > 2000;
 
SELECT title, pages FROM books WHERE pages >= 100 && pages <=200;
 
SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;
 
SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    author_lname LIKE 'C%' OR 
    author_lname LIKE 'S%';
 
SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    SUBSTR(author_lname,1,1) = 'C' OR 
    SUBSTR(author_lname,1,1) = 'S';
 
SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');
 
SELECT 
    title, 
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;
 
SELECT author_fname, author_lname,
    CASE 
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books 
GROUP BY author_lname, author_fname;



/*-----------------------ONE TO MANY----------------*/
/*CUSTOMERS AND ORDERS*/
create table customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100), 
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

/*CUSTOMERS AND ORDERS -----------------v2*/
CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT
);


INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);

/*---------------------CROSS JOIN-----------------------*/
SELECT * FROM customers WHERE last_name = 'George';
select * from orders where customer_id =1;

select * from orders where customer_id = 
    (
        select id from customers
        where last_name = 'George'
    );
Select * from customers, orders;

/*---------------------INNER JOIN-----------------------*/
Select * from customers, orders where customers.id = orders.customer_id; /*this or the below*/
Select * from customers, orders where customers.id = customer_id;

select first_name, last_name, order_date, amount
from customers, orders 
where customers.id = orders.customer_id;

-----------Explicit inner join--------------
Select * from customers
join orders
    on customers.id = orders.customer_id;


Select first_name, last_name, order_date, amount
from customers
join orders
    on customers.id = customer_id;

/*-----------------ARBITRARY JOIN-----------------------*/
SELECT * FROM customers
JOIN orders ON customers.id = orders.id;

/*--------------------LEFT JOIN----------------------------*/
Select first_name, last_name, order_date, amount
from customers
left join orders
    on customers.id = customer_id;

SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

/*--------------------RIGHT JOIN----------------------------*/
SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
SELECT * FROM orders
RIGHT JOIN customers
    ON customers.id = orders.customer_id;    
SELECT * FROM orders
LEFT JOIN customers
    ON customers.id = orders.customer_id;    
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;

/*------------------------------------------------------------*/
CREATE TABLE students(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100)
);
CREATE TABLE papers(
    title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id)
        ON DELETE CASCADE/*WTF IS THIS*/
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);
-- FIRST ------------------------------------------------------
select first_name, title, grade from students
left join papers
    on id = papers.student_id
    where grade is not null
    ORDER BY grade desc;

select first_name, title, grade
From students
INNER JOIN papers
    ON students.id = papers.student_id;

select first_name, title, grade
From students
RIGHT JOIN papers
    ON students.id = papers.student_id;

--
-- SECOND ------------------------------------------------
Select first_name, title, grade 
from students
left join papers
    On id = papers.student_id;


--
--THIRD -------------------------------------------------
SELECT first_name, 
IFNULL(title, 'MISSING'), 
IFNULL(grade, 0)
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;
--
-- FOUR ------------------------------------------------
SELECT 
    first_name,
    IFNull(avg(grade), 0) AS average
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average desc;

-- FIVE --------------------------------------------------
SELECT 
    first_name,
    IFNull(avg(grade), 0) AS average,
        CASE
            WHEN avg(grade) >= 75 THEN 'PASSING'
            ELSE 'FAILING'
        END AS passing_status
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average desc;



/*--------------------MANY TO MANY---------------------------*/
CREATE TABLE reviewers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE series(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    released_year YEAR(4),
    genre VARCHAR(100)
);

CREATE TABLE reviews(
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL(2,1),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY(series_id) REFERENCES series(id),
    FOREIGN KEY(reviewer_id) REFERENCES reviewers(id)
);

SELECT * FROM reviews;

/*  TV JOINS #2*/
SELECT
    title,
    AVG(rating) as avg_rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating desc;

/*  TV JOINS #3*/
select 
    first_name,
    last_name,
    rating
FROM reviewers
JOIN reviews
    ON reviewers.id = reviews.reviewer_id;

/*  TV JOINS #4 unreview series*/
select
    title
from series
left join reviews
    on series.id = reviews.series_id
where reviews.rating is null;

/*  TV JOINS #5 genre and avg rating*/
select
    genre,
   avg(rating) AS avg_rating
from series
inner join reviews
    on series.id = reviews.series_id
GROUP by genre
ORDER BY avg(rating) desc;

/*  TV JOINS #6  reviewers stats*/
select
    first_name,
    last_name,
    count(rating) AS count,
    IFNULL(min(rating),0) AS min,
    IFNULL(max(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2)AS avg_rating,
    CASE
        WHEN count(rating) > 0 then 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
from reviewers
left join reviews
    on reviewers.id = reviews.reviewer_id
Group by first_name, last_name
order by count(rating) desc;

/*  TV JOINS #7  review PER REVIEWER AND SERIE*/
/*OPTION 1*/
SELECT 
    title,
    rating,
    concat(first_name, ' ', last_name) AS reviewer
from series
inner join reviews
    on series.id = reviews.series_id
inner join reviewers
    on reviewers.id = reviews.reviewer_id
ORDER BY title;
/*OPTION 2*/
SELECT 
    title,
    rating,
    CONCAT(first_name,' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;

/**/

CREATE DATABASE ig;
use ig;

CREATE TABLE users(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users(username) VALUES
    ('BlueTheCat'),
    ('CharlieBrown'),
    ('ColtSteele')
;

/**/
CREATE TABLE photos(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    img_url VARCHAR(100) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO photos(img_url, user_id) VALUES
('/bird', 1),
('/cat', 2),
('/dog', 3);

CREATE TABLE comments(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL, 
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)
);

INSERT INTO comments(comment_text, user_id, photo_id) VALUES
('Example photo 4 comment', 1, 4),
('Example photo 5 comment', 2, 5),
('Example photo 6 comment', 3, 6);

CREATE TABLE likes(
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id)
);

CREATE TABLE follows(
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

INSERT INTO follows(follower_id, followee_id) VALUES
(1,2),
(1,3),
(3,1),
(2,3);


/*indetify most popular photo*/
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

/*calcualte avg number */
SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg;

/*Five most popular hashtags */
SELECT *
FROM photo_tags
JOIN tags
    ON photo_tags.tag_id = tags.id;
GROUP BY tags.id;


SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5; 

SELECT * 
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id;
HAVING num_likes = 257;
