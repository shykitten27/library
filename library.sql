
## drop table author; 
## drop table patron;
## drop table reference_books;
## drop table genre; 
## drop table book;
## drop table loan;

CREATE TABLE book (
   book_id INT AUTO_INCREMENT PRIMARY KEY,
   author_id INT,
   title VARCHAR(255),
   isbn INT,
   available BOOL,
   genre_id INT
);

CREATE TABLE author (
   author_id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(255),
   last_name VARCHAR(255),
   birthday DATE,
   deathday DATE
);

CREATE TABLE patron (
   patron_id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(255),
   last_name VARCHAR(255),
   loan_id INT
);

CREATE TABLE reference_books (
   reference_id INT AUTO_INCREMENT PRIMARY KEY,
   edition INT,
   book_id INT,
   FOREIGN KEY (book_id)
      REFERENCES book(book_id)
      ON UPDATE SET NULL
      ON DELETE SET NULL
);

## import data from C:\Users\dseid\launchcode\csharp-practice\Chpt18\sql-starter-data\lesson-15-studio

INSERT INTO reference_books(edition, book_id)
VALUE (5,32);

CREATE TABLE genre (
   genre_id INT PRIMARY KEY,
   genres VARCHAR(100)
);
## import data from C:\Users\dseid\launchcode\csharp-practice\Chpt18\sql-starter-data\lesson-15-studio

CREATE TABLE loan (
   loan_id INT AUTO_INCREMENT PRIMARY KEY,
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

select b.title, b.isbn from book b
join genre g on b.genre_id = g.genre_id
where genres = "Mystery";

select b.title, a.first_name, a.last_name from book b
join author a on b.author_id = a.author_id
where a.deathday is null;

## check out The Joy Luck Club to Erika Bompass
## change available to false
## add new rows to loan table with today's date as date_out and ids in row matching patron_id and book_id
## update the patron table for patron id with loan_id for the new row created in load table

## For performance reasons, I chose to select the keys from information provided ONCE and pass them to subsequent statements as 
## temporary variables. This could also be accomplished via subqueries within each statement (repetitive). 
## check-out and check-in would be better implemented as functions or stored procedures 

set @title = "The Joy Luck Club";
set @first_name = "Erika";
set @last_name = "Bompass";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

## verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

## verify
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

## check in The Joy Luck Club from Erika Bompass
## change available to true
## update loan table with today's date as date_in for row matching patron_id and book_id
## update patron by changing loan_id to null for matching patron_id

set @title = "The Joy Luck Club";
set @first_name = "Erika";
set @last_name = "Bompass";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 1
where book_id = @book_id;

## verify
select * from book where title = @title;

update loan 
set date_in = now() 
where patron_id = @patron_id AND book_id = @book_id;

## verify
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron 
set loan_id = null
where patron_id = @patron_id;

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;



## Check out 5 new books to 5 different patrons ##
## 1

set @title =  "Romeo and Juliet";
set @first_name = "Erika";
set @last_name = "Bompass";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

## verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

## verify
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron 
set loan_id = @loan_id
where patron_id = @patron_id;

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

## 2
set @title = "The Amber Spyglass";
set @first_name = "Estelle";
set @last_name = "Di Lorio";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

## verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

## verify
select * from loan;
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

## 3
set @title = "The Moon Lady";
set @first_name = "Gabe";
set @last_name = "Moxstead";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

## verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

## verify
select * from loan;
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

## 4
set @title = "Sense and Sensibility";
set @first_name = "Tasha";
set @last_name = "Coldtart";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

## verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

## verify
select * from loan;
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

## 5
set @title = "Wuthering Heights";
set @first_name = "Erika";
set @last_name = "Bompass";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 0
where book_id = @book_id;

## verify
select * from book where title = @title;

insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

## verify
select * from loan;
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron
set loan_id = @loan_id
where patron_id = @patron_id;

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;

## Names of the patrons with the genre of every book they currently have checked out.
select p.first_name, p.last_name, b.title, g.genres from loan l
    join book b on l.book_id = b.book_id
    join genre g on b.genre_id = g.genre_id
    join patron p on l.patron_id = p.patron_id
	where b.available = 0
    order by last_name, first_name;
    
## counts of books by genres
select g.genres, count(*) from book b
join genre g on b.genre_id = g.genre_id
group by g.genres;

#BONUS
## prevent a reference book from being checked out

set @title =  "Organic Chemistry";
set @first_name = "Isaac";
set @last_name = "Barstowk";
set @book_id = (select book_id from book where title = @title);
set @patron_id = (select p.patron_id from patron p where p.first_name = @first_name and p.last_name = @last_name);

update book 
set available = 1
where book_id = @book_id and not exists (select @book_id from reference_books);

## verify
select * from book where title = @title;

## insert into loan (patron_id, date_out, book_id)
## values (@patron_id, now(), @book_id);

### DO NOT INSERT RECORD INTO LOAN WHEN BOOK EXISTS IN REFERENCE_BOOKS ###
insert into loan (patron_id, date_out, book_id)
values (@patron_id, now(), @book_id);

## verify
set @loan_id = (select loan_id from loan where patron_id = @patron_id AND book_id = @book_id);
select * from loan where loan_id = @loan_id;

update patron 
set loan_id = @loan_id
where patron_id = @patron_id and not exists (select @book_id from reference_books);

## verify
select * from book where book_id = @book_id;
select * from loan where loan_id = @loan_id; 
select * from patron where patron_id = @patron_id;
