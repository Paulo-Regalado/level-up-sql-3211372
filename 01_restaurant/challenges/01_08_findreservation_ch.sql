-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
select * from reservations

select * from customers where LastName like 'Ste%'

select c.FirstName, c.LastName, r.Date, r.PartySize from reservations r
JOIN Customers C on r.CustomerID = c.CustomerID
where LastName like 'Ste%' and r.Date > '2018-06-14' and r.PartySize = '4'
order by r.Date DESC