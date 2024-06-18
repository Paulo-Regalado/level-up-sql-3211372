-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
select * from loans order by LoanID desc
select * from Patrons where email = 'jvaan@wisdompets.com'

insert into loans (BookID, PatronID, LoanDate, DueDate)
VALUES
((Select BookID from Books where Barcode = '2855934983'),
 (Select PatronID from Patrons where email = 'jvaan@wisdompets.com'),
 '2022-08-25',
 '2022-09-8'
)

insert into loans (BookID, PatronID, LoanDate, DueDate)
VALUES
((Select BookID from Books where Barcode = '4043822646'),
 (Select PatronID from Patrons where email = 'jvaan@wisdompets.com'),
 '2022-08-25',
 '2022-09-8'
)