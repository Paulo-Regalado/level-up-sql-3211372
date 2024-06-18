-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select l.DueDate, b.Title, p.FirstName, p.LastName, p.Email
from Loans l
join Books b on l.BookID = b.BookID
join Patrons p on l.PatronID = p.PatronID
where l.DueDate = '2022-07-13'
AND l.ReturnedDate IS NULL;