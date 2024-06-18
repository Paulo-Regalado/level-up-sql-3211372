-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select count(o.orderID) as OrderCount, c.FirstName, c.LastName
from orders o
join customers c on o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
ORDER BY OrderCount DESC
LIMIT 15;