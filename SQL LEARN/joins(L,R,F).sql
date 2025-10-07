use practice;
select * from books;

select b.Id,b.Title,e.First_name,e.Last_name
from books b
left join editor e
on b.Editor_id = e.Id
order by b.Id;


select b.Id,b.Title,e.First_name,e.Last_name
from books b
right join editor e
on b.Editor_id = e.Id
order by b.Id;

#full join
(
    SELECT b.Id, b.Title, a.Last_name AS Author, e.Last_name AS Editor,t.Last_name AS Translator
    FROM books b
    LEFT JOIN author a ON b.Author_id = a.Id
    LEFT JOIN editor e ON b.Editor_id = e.Id
    LEFT JOIN translator t ON b.Translator_id = t.Id
)
UNION
(
    SELECT b.Id, b.Title, a.Last_name AS Author, e.Last_name AS Editor,t.Last_name AS Translator
    FROM books b
    RIGHT JOIN author a ON b.Author_id = a.Id
    RIGHT JOIN editor e ON b.Editor_id = e.Id
    RIGHT JOIN translator t ON b.Translator_id = t.Id
)
ORDER BY Id;

