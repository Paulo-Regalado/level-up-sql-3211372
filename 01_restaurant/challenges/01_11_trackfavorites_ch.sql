-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * from customers where lastname = 'Goldwater'
select * from Dishes

update customers
set FavoriteDish = '9'
where LastName = 'Goldwater'

SELECT Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name 
FROM Customers 
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID
WHERE FirstName = 'Cleo';