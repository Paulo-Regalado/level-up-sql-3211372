-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select count(Title) from Books where Title = 'Dracula'
select * from loans where ReturnedDate is null

select count(b.Title) from Books b
join loans l on b.BookID = l.BookID
where b.Title = 'Dracula' AND l.ReturnedDate is null

select (
  select count(Title)
  from Books 
  where Title = 'Dracula'
) - (select count(b.Title) from Books b
join loans l on b.BookID = l.BookID
where b.Title = 'Dracula' AND l.ReturnedDate is null)
as AvailableCopies