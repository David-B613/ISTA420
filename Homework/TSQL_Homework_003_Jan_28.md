### Homework Chapter 3
### David Babers
### ISTA 420:  T-SQL fundamemethntals
### Charles Carter
### January 28, 2020

1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.

* **To have the ability to operate on two input tables**

2. Describe in your own words then output from an *inner join*

**It select records that are the same in both tables**

3. Describe in your own words the output from an *outer join*.

* **Outer join is used to get results by combining rows from two or more tables.**

4. Describe in your own words the output from an *cross join*.

* **Cross join is used to create a combination of every row from two tables**

5. A convenient mnemonic for remembering the various joins is \Ohio." Why is this true?

* **Round on the ends and high in the middle. **

6. Give an example of a *composite join*.

* **A composite join matches multiple Attributes**

7. What is the difference between the following two queries? The business problem is \How many orders
do we have from each customer?"

================first query===============
SELECT C.custid, COUNT(*) AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
GROUP BY C.custid;

================second query===============
SELECT C.custid, COUNT(O.orderid) AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
GROUP BY C.custid;

* **The first query will the count * will count all rows regardless of the order**
**The second query COUNT (O.ORDERID) will count the orders for each customer.**

8. What might be one reason the following query does not return the column custID in this query?
SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE O.orderdate >= '20160101';

* **Any value with a null value will be discarded**
