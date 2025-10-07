create schema practice;

use practice;

create table books(
Id int,
Title varchar(100),
Type varchar(100),
Author_id int,
Editor_id int,
Translator_id int
);

create table author(
Id int,
First_name varchar(100),
Last_name varchar(100)
);

create table editor(
Id int,
First_name varchar(100),
Last_name varchar(100)
);

create table translator(
Id int,
First_name varchar(100),
Last_name varchar(100)
);

INSERT INTO books (Id, Title, Type, Author_id, Editor_id, Translator_id)
VALUES
(1, 'Time to Grow Up!', 'original', 11, 21, NULL),
(2, 'Your Trip', 'translated', 15, 22, 32),
(3, 'Lovely Love', 'original', 14, 24, NULL),
(4, 'Dream Your Life', 'original', 11, 24, NULL),
(5, 'Oranges', 'translated', 12, 25, 31),
(6, 'Your Happy Life', 'translated', 15, 22, 33),
(7, 'Applied AI', 'translated', 13, 23, 34),
(8, 'My Last Book', 'original', 11, 28, NULL);

select * from books;

INSERT INTO author (id, first_name, last_name)
VALUES
(11, 'Ellen', 'Writer'),
(12, 'Olga', 'Savelieva'),
(13, 'Jack', 'Smart'),
(14, 'Donald', 'Brain'),
(15, 'Yao', 'Dou');

select * from author;

INSERT INTO editor(id, first_name, last_name)
VALUES
(21, 'Daniel', 'Brown'),
(22, 'Mark', 'Johnson'),
(23, 'Maria', 'Evans'),
(24, 'Cathrine', 'Roberts'),
(25, 'Sebastian', 'Wright'),
(26, 'Barbara', 'Jones'),
(27, 'Matthew', 'Smith');

select * from editor;

INSERT INTO translator(id, first_name, last_name)
VALUES
(31, 'Ira', 'Davies'),
(32, 'Ling', 'Weng'),
(33, 'Kristian', 'Green'),
(34, 'Roman', 'Edwards');

select * from translator;

select b.Id, b.Title, a.first_name, a.last_name
from books b
Inner join author a
on b.Author_id = a.Id;

SELECT b.Id, b.Title, b.Type, t.First_name, t.Last_name 
FROM books b
JOIN translator t
ON b.Translator_Id = t.Id
ORDER BY b.Id;

