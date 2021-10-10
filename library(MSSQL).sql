drop table author; 
drop table patron;
drop table reference_books;
drop table genre; 
drop table loan;

CREATE TABLE book (
   book_id INT not null PRIMARY KEY identity,
   author_id INT,
   title VARCHAR(255),
   isbn INT,
   available bit,
   genre_id INT
);

insert into book (title, author_id, isbn, available, genre_id)
values ('A Midsummer"s Night Dream',2,978149413,1,23);

insert into book (title, author_id, isbn, available, genre_id)
values ('Romeo and Juliet',2,988535196,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Golden Compass',1,451664226,1,1);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Subtle Knife',1,160419390,1,1);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Amber Spyglass',1,94387895,1,1);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Alchemist',3,464069772,1,2);

insert into book (title, author_id, isbn, available, genre_id)
values ('And Then There Were None',4,335973357,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Joy Luck Club',5,990050329,1,10);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Moon Lady',5,91720786,1,24);

insert into book (title, author_id, isbn, available, genre_id)
values ('Sense and Sensibility',6,156879860,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('Northanger Abbey',6,951273178,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('Pride and Prejudice',6,415886839,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('Mansfield Park',6,188534067,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('Emma',6,994896202,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('Persuasion',6,28150097,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('Lady Susan',6,230962926,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('Wuthering Heights',7,280569946,1,3);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Handmaid"s Tale',8,639239663,1,5);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Testaments',8,826875490,1,5);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Parable of the Sower',9,283359358,1,5);

insert into book (title, author_id, isbn, available, genre_id)
values ('Little Women',10,495409887,1,23);

insert into book (title, author_id, isbn, available, genre_id)
values ('Still Life',11,455128657,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('A Fatal Grace',11,832517012,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Cruelest Month',11,419285319,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Murder Stone',11,656621400,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('The Brutal Telling',11,144255852,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('Bury Your Dead',11,208180961,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('A Trick of the Light',11,93451531,1,6);

insert into book (title, author_id, isbn, available, genre_id)
values ('Midnight"s Children',12,881082293,1,10);

insert into book (title, author_id, isbn, available, genre_id)
values ('Don"t Let the Pigeon Drive the Bus!',13,18409532,1,24);

insert into book (title, author_id, isbn, available, genre_id)
values ('Beezus and Ramona',14,744412630,1,24);

insert into book (title, author_id, isbn, available, genre_id)
values ('Organic Chemistry',15,604328803,1,25);

insert into book (title, author_id, isbn, available, genre_id)
values ('I Know Why the Caged Bird Sings',16,909947112,1,12);

insert into book (title, author_id, isbn, available, genre_id)
values ('Beloved',17,46736233,1,10);

insert into book (title, author_id, isbn, available, genre_id)
values ('Brassbones and Rainbows',18,330608463,1,26);

select * from book;

CREATE TABLE author (
   author_id INT not null PRIMARY KEY identity,
   first_name VARCHAR(255),
   last_name VARCHAR(255),
   birthday DATE,
   deathday DATE
);

insert into author(first_name, last_name, birthday, deathday)
values ('Philip','Pullman','1946-10-19',null);

insert into author(first_name, last_name, birthday, deathday)
values ('William','Shakespeare','1564-04-26','1616-04-23');

insert into author(first_name, last_name, birthday, deathday)
values ('Paulo','Coelho','1947-08-24',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Agatha','Christie','1890-09-15','1976-01-12');

insert into author(first_name, last_name, birthday, deathday)
values ('Amy','Tan','1952-02-19',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Jane','Austen','1775-12-16','1817-07-18');

insert into author(first_name, last_name, birthday, deathday)
values ('Emily','Bronte','1818-07-30','1848-12-19');

insert into author(first_name, last_name, birthday, deathday)
values ('Margaret','Atwood','1939-11-18',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Octavia','Butler','1947-06-22','2006-02-24');

insert into author(first_name, last_name, birthday, deathday)
values ('Louisa May','Alcott','1832-11-29','1888-03-06');

insert into author(first_name, last_name, birthday, deathday)
values ('Louise','Penny','1958-07-01',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Salman','Rushdie','1947-06-19',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Mo','Willems','1968-02-11',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Beverly','Cleary','1916-04-12',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Peter','Vollhardt','1946-03-07',null);

insert into author(first_name, last_name, birthday, deathday)
values ('Maya','Angelou','1928-04-04','2014-05-28');

insert into author(first_name, last_name, birthday, deathday)
values ('Toni','Morrison','1931-02-18','2019-08-05');

insert into author(first_name, last_name, birthday, deathday)
values ('Shirley','LeFlore','1940-03-06','2019-05-12');

select * from author;

CREATE TABLE patron (
   patron_id INT not null PRIMARY KEY identity,
   first_name VARCHAR(255),
   last_name VARCHAR(255),
   loan_id INT
);

insert into patron(first_name, last_name, loan_id)
values ('Jennifer','Slayny',null);

insert into patron(first_name, last_name, loan_id)
values ('Susan','Traviss',null);

insert into patron(first_name, last_name, loan_id)
values ('Vincent','Ritelli',null);

insert into patron(first_name, last_name, loan_id)
values ('Tasia','Laybourne',null);

insert into patron(first_name, last_name, loan_id)
values ('Wren','Gergler',null);

insert into patron(first_name, last_name, loan_id)
values ('Tory','Lees',null);

insert into patron(first_name, last_name, loan_id)
values ('Estelle','Di Lorio',null);

insert into patron(first_name, last_name, loan_id)
values ('Dorian','Betje',null);

insert into patron(first_name, last_name, loan_id)
values ('Frank','Jelk',null);

insert into patron(first_name, last_name, loan_id)
values ('Chris','Endon',null);

insert into patron(first_name, last_name, loan_id)
values ('Gillie','Fritz',null);

insert into patron(first_name, last_name, loan_id)
values ('Leisha','Defty',null);

insert into patron(first_name, last_name, loan_id)
values ('Erika','Bompass',null);

insert into patron(first_name, last_name, loan_id)
values ('Gabe','Moxstead',null);

insert into patron(first_name, last_name, loan_id)
values ('Blake','Teresse',null);

insert into patron(first_name, last_name, loan_id)
values ('Joshua','Tinmouth',null);

insert into patron(first_name, last_name, loan_id)
values ('Tasha','Coldtart',null);

insert into patron(first_name, last_name, loan_id)
values ('Neil','Davie',null);

insert into patron(first_name, last_name, loan_id)
values ('Emmeline','Pitherick',null);

insert into patron(first_name, last_name, loan_id)
values ('Josiah','Staner',null);

insert into patron(first_name, last_name, loan_id)
values ('James','Greetham',null);

insert into patron(first_name, last_name, loan_id)
values ('Isaac','Barstowk',null);

insert into patron(first_name, last_name, loan_id)
values ('Dean','Nelane',null);

insert into patron(first_name, last_name, loan_id)
values ('Carolina','Cranmere',null);

insert into patron(first_name, last_name, loan_id)
values ('Champ','Lardiner',null);

insert into patron(first_name, last_name, loan_id)
values ('Abbie','Quaif',null);

insert into patron(first_name, last_name, loan_id)
values ('Camile','Milbourne',null);

insert into patron(first_name, last_name, loan_id)
values ('Quentin','Crose',null);

insert into patron(first_name, last_name, loan_id)
values ('Silvano','Horlick',null);

insert into patron(first_name, last_name, loan_id)
values ('Phyllis','Cicchillo',null);

insert into patron(first_name, last_name, loan_id)
values ('Jerrie','Brownhall',null);

insert into patron(first_name, last_name, loan_id)
values ('Ludovika','Leist',null);

insert into patron(first_name, last_name, loan_id)
values ('Tara','Knatt',null);

insert into patron(first_name, last_name, loan_id)
values ('Keslie','Parkeson',null);

insert into patron(first_name, last_name, loan_id)
values ('Jodi','Leopard',null);

insert into patron(first_name, last_name, loan_id)
values ('Rosanna','Cultcheth',null);

insert into patron(first_name, last_name, loan_id)
values ('Remy','Fairpool',null);

insert into patron(first_name, last_name, loan_id)
values ('Megan','Blyth',null);

insert into patron(first_name, last_name, loan_id)
values ('Rikki','McLernon',null);

insert into patron(first_name, last_name, loan_id)
values ('Clarie','Haacker',null);

insert into patron(first_name, last_name, loan_id)
values ('Dorry','Chettle',null);

insert into patron(first_name, last_name, loan_id)
values ('Sybil','Costanza',null);

insert into patron(first_name, last_name, loan_id)
values ('Jonas','Sinclaire',null);

insert into patron(first_name, last_name, loan_id)
values ('Claire','Bendel',null);

insert into patron(first_name, last_name, loan_id)
values ('Kathleen','Welband',null);

insert into patron(first_name, last_name, loan_id)
values ('Kylie','Crannage',null);

select * from patron;

CREATE TABLE reference_books (
   reference_id INT not null PRIMARY KEY identity,
   edition INT,
   book_id INT,
   FOREIGN KEY (book_id)
      REFERENCES book(book_id)
      ON UPDATE SET NULL
      ON DELETE SET NULL
);

INSERT INTO reference_books(edition, book_id)
VALUES(5,32);

select * from reference_books;

CREATE TABLE genre (
   genre_id INT PRIMARY KEY,
   genres VARCHAR(100)
)

INSERT INTO genre(genre_id, genres)
VALUES(1,'Fantasy');

INSERT INTO genre(genre_id, genres)
VALUES(2,'Adventure');

INSERT INTO genre(genre_id, genres)
VALUES(3,'Romance');

INSERT INTO genre(genre_id, genres)
VALUES(4,'Contemporary');

INSERT INTO genre(genre_id, genres)
VALUES(5,'Dystopian');

INSERT INTO genre(genre_id, genres)
VALUES(6,'Mystery');

INSERT INTO genre(genre_id, genres)
VALUES(7,'Horror');

INSERT INTO genre(genre_id, genres)
VALUES(8,'Thriller');

INSERT INTO genre(genre_id, genres)
VALUES(9,'Paranormal');

INSERT INTO genre(genre_id, genres)
VALUES(10,'Historial Fiction');

INSERT INTO genre(genre_id, genres)
VALUES(11,'Science Fiction');

INSERT INTO genre(genre_id, genres)
VALUES(12,'Memoir');

INSERT INTO genre(genre_id, genres)
VALUES(13,'Cooking');

INSERT INTO genre(genre_id, genres)
VALUES(14,'Art');

INSERT INTO genre(genre_id, genres)
VALUES(15,'Self-help');

INSERT INTO genre(genre_id, genres)
VALUES(16,'Development');

INSERT INTO genre(genre_id, genres)
VALUES(17,'Motivational');

INSERT INTO genre(genre_id, genres)
VALUES(18,'Health');

INSERT INTO genre(genre_id, genres)
VALUES(19,'History');

INSERT INTO genre(genre_id, genres)
VALUES(20,'Travel');

INSERT INTO genre(genre_id, genres)
VALUES(21,'Guide');

INSERT INTO genre(genre_id, genres)
VALUES(22,'Families and Relationships');

INSERT INTO genre(genre_id, genres)
VALUES(23,'Humor');

INSERT INTO genre(genre_id, genres)
VALUES(24,'Children"s');

INSERT INTO genre(genre_id, genres)
VALUES(25,'Reference');

INSERT INTO genre(genre_id, genres)
VALUES(26,'Poetry');

select * from genre;

CREATE TABLE loan (
   loan_id INT not null PRIMARY KEY identity,
   patron_id INT,
   date_out DATE,
   date_in DATE,
   book_id INT,
   FOREIGN KEY (book_id)
      REFERENCES book(book_id)
      ON UPDATE SET NULL
      ON DELETE SET NULL
);

select * from loan;

select b.title, g.genres, b.isbn from book b
join genre g on b.genre_id = g.genre_id
where genres = 'Mystery';

select b.title, a.first_name, a.last_name from book b
join author a on b.author_id = a.author_id
where a.deathday is null;

-- check out The Joy Luck Club to Erika Bompass
-- change available to false
-- add new rows to loan table with today's date as date_out and ids in row matching patron_id and book_id
-- update the patron table for patron id with loan_id for the new row created in load table

-- For performance reasons, I chose to select the keys from information provided ONCE and pass them to subsequent statements as 
-- temporary variables. This could also be accomplished via subqueries within each statement (repetitive). 
-- check-out and check-in would be better implemented as functions or stored procedures 

declare @title varchar = 'The Joy Luck Club';
declare @first_name varchar = 'Erika';
declare @last_name varchar = 'Bompass';
declare @book_id int = (select book_id from book where title = @title);
declare @patron_id int = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

-- verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

-- verify
declare @loan_id int = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

-- check in The Joy Luck Club from Erika Bompass
-- change available to true
-- update loan table with today's date as date_in for row matching patron_id and book_id
-- update patron by changing loan_id to null for matching patron_id

set @title = 'The Joy Luck Club';
set @first_name = 'Erika';
set @last_name = 'Bompass';
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 1
where book_id = @book_id;

-- verify
select * from book where title = @title;

update loan 
set date_in = now() 
where patron_id = @patron_id AND book_id = @book_id;

-- verify
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron 
set loan_id = null
where patron_id = @patron_id;

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;



-- Check out 5 new books to 5 different patrons --
-- 1

set @title =  'Romeo and Juliet';
set @first_name = 'Erika';
set @last_name = 'Bompass';
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

-- verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

-- verify
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron 
set loan_id = @loan_id
where patron_id = @patron_id;

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

-- 2
set @title = 'The Amber Spyglass';
set @first_name = 'Estelle';
set @last_name = 'Di Lorio';
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

-- verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

-- verify
select * from loan;
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

-- 3
set @title = 'The Moon Lady';
set @first_name = 'Gabe';
set @last_name = 'Moxstead';
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

-- verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

-- verify
select * from loan;
declare @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

-- 4
set @title = 'Sense and Sensibility';
set @first_name = 'Tasha';
set @last_name = 'Coldtart';
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

-- verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

-- verify
select * from loan;
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

-- 5
set @title = 'Wuthering Heights';
set @first_name = 'Erika';
set @last_name = 'Bompass';
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

-- verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

-- verify
select * from loan;
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

-- Names of the patrons with the genre of every book they currently have checked out.
select p.first_name, p.last_name, b.title, g.genres from loan l
    join book b on l.book_id = b.book_id
    join genre g on b.genre_id = g.genre_id
    join patron p on l.patron_id = p.patron_id
	where b.available = 0
    order by last_name, first_name;
    
-- counts of books by genres
select g.genres, count(*) from book b
join genre g on b.genre_id = g.genre_id
group by g.genres;

-- prevent a reference book from being checked out

set @title =  'Organic Chemistry';
set @first_name = 'Isaac';
set @last_name = 'Barstowk';
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 1
where book_id = @book_id and not exists (select @book_id from reference_books);

-- verify
select * from book where title = @title;

-- insert into loan (patron_id, date_out, book_id)
-- values (@patron_id, now(), @book_id);

--# DO NOT INSERT RECORD INTO LOAN WHEN BOOK EXISTS IN REFERENCE_BOOKS --#
insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

-- verify
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron 
set loan_id = @loan_id
where patron_id = @patron_id and not exists (select @book_id from reference_books);

-- verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;