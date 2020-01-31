### Homework 2C
### David Babers
### ISTA 420:  T-SQL fundamemethntals
### Charles Carter
### January 27, 2020

1. List the date/time types in T-SQL.

* **DATETIME, SMALLDATETIME, DATE, TIME, DATETIME2, DATETIMEOFFSET**

2. How do you express a date/time literal in T-SQL?

* **T-SQL does not provide the means to express a date and time literal; instead, you can specify a literal of a different type that can be converted explicitly or implicitly. For example
SELECT orderid, cusid, empid, orderdate
          FROM Sales.Orders
          WHERE orderdate ="20160212";**

3. What is the setting DATEFORMAT used for?

* **The DATEFORMAT setting is expressed as a combination of the characters d, m, and y.**

4. Write a T-SQL snippet changing the date format to German. Read the documentation on how to do this

* **SET LANGUAGE British;SELECT CAST('02/12/2016' AS DATE);**

5. What is the difference between CAST (), CONVERT(), and PARSE ()?

* **You can only do this with CONVERT() because: CAST() doesn't support the style argument; and. PARSE() doesn't convert from a date/time to a string value (it also doesn't support the style argument)**

6. What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins.

* **GETDATE, CURRENT_TIMESTAMP, GETUTCDATE, SYSDATETIME, SYSUTCDATETIME, and SYSDATETIMEOFFSET**

7. How do you add one day to the current date? Add one week? Add one month? Add one year?

* **SELECT DATEADD(day, 1, '2020/01/26') AS DateAdd;
SELECT DATEADD(week, 1, '2020/01/26') AS DateAdd;
SELECT DATEADD(month, 1, '2020/01/26') AS DateAdd;
SELECT DATEADD(year, 1, '2020/01/26') AS DateAdd;**

8. Write a SQL snippet to return the number of years between your birthdate and today's date.

* **select datediff(Y, '1986-09-14',getdate());**

9. How do you check a string literal to see if it represents a valid date?

* **Through the use of a check constraint
ADD CONSTRAINT CHK_Orders2_orderdate**

10. What does EOMONTH () do? Give an example of why this might be very useful.

* **This gives you the last day of the month. This would be useful in the case of you want to know all the sales or orders that took place on the last day of a particular month.**

11. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries.

* **DATEADD (YEAR, 30 INPUT DATE)**

12. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this. (DAYS, "NOW", )
select datediff(D, '2036-01-28',getdate());
