use Northwind; 
--1. List the employee IDs With the number of sales by each employee from most sales to least.
select employeeid, count(orderid) as number_of_sales from orders group by employeeid order by number_of_sales desc;

--2. I want to look at the average discounts taken by all customers for products that cost more than 
-- $50.00. Specifically, I want to know the average discount of all orders for each product from 
-- the highest price to the lowest price.

select ProductID, 
 avg(Discount) as AvgDiscount 
 from [Order Details]
 where UnitPrice > 50.0
 group by ProductID;

 select ProductID, UnitPrice, 
 avg(Discount) as AvgDiscount 
 from [Order Details]
 where UnitPrice > 50.0
 group by ProductID, UnitPrice
 order by UnitPrice desc;

 --3. I am doing an analysis of which shippers ship to each country,
 -- and I need a report showing the number of orders each shipper delivered 
 --to each country and the nuber of orders. I don’t need the data 
 --where the number of orders is ten or less, but I need the report
 -- listed by country and the number of orders shipped to that country.

 select shipvia, shipcountry,
count(orderid) as number_of_orders_develiverd 
from orders group by shipvia, shipcountry
having count(orderid) > 10
order by shipcountry, number_of_orders_develiverd desc; 

--4. For each order, what was the time lag between the order date and the ship date?

select orderdate, ShippedDate,
datediff(D, OrderDate, shippeddate) as lag
from orders;

--5. Continuing with the previous query, I need the average time lag for each shipper.

select shipvia, avg(DATEDIFF(day, orderdate, shippeddate)) as Avg
from orders
group by shipvia;


--6. I am doing inventory, and I need to know the total price of each product on hand, 
-- that is, the price of each product line, sorted alphabetically by product name.

select * from Products; 

--7.  What is the dollar total we have tied up in inventory?

	select sum(UnitPrice * UnitsInStock) as TotalValue   
	 From Products; 

--8. We have discovered that some customers favor certain employees. I need to know this information. 
-- I need a report of the most common employee/customer pairs, the nuber of times the employee took orders from the customer, 
-- and the number of orders. Alphabetize this by customer id. Omit customer/employee pairs whre the number of orders is less than five.

select CustomerID, EmployeeID, 
 count(CustomerID) as total_customers 
from orders
group by CustomerID, EmployeeID
having count(CustomerID) >= 5  
order by customerId; 

--9. How many days were in the service (if you are a veteran), 
-- or how many days will you serve (assuming you know your ETS date)?

select datediff(d, '2005-01-19',getdate());  



--10. Answer these questions using the built in time and date function.
-- • What is today’s date?
-- • What was the first day of the month?
-- • What will be the first day of the next month?
-- • What is the last day of this month?

SELECT GETDATE();
select DATEFROMPARTS(year(getdate()), month(getdate()), 1);
select DATEFROMPARTS(year(getdate()), month(getdate()) + 1, 1);
select EOMONTH(getdate());




 






