### Homework 04
### David Babers
### ISTA 420:  T-SQL fundamemethntals
### Charles Carter
### February 03, 2020

1. In your own words, what is a *subquery*?

* **A subquery is a query within a larger query.**

2. In your own words, what is a *self contained subquery*?

* **It does not depend on anything outside the query it  can be ran by itself**

3. In your own words, what is a *correlated subquery*?

* **correlated subquery is a subquery that uses values from the outer query**

4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?

* **When would you use this kind of subquery?
A scalar subquery is a subquery that returns a single value. Such a subquery can appear anywhere in the outer query where a single-valued expression can appear (such as WHERE or SELECT).
 You would use this subquery if you wanted to pull a single piece of data like the first name on a table of x amount of people.**

5. Give an example of a subquery that returns multivalued tables values. When would you use this kind of subquery?

* **Predicates such as the IN predicate and operates on a multivalued subquery. You would want to use this if you wanted multiple values that are all within the same column. Such as orderdate, productid, and customerid **

6. Give an example of a subquery that returns table values. When would you use this kind of subquery?

* **A table valued subquery is a nothing more than a table that holds information. You would use the correlated subquery if you needed to compare information with the outer query and the subquery, you would utilize this if you needed specific information from two tables**

7. What does the *exists* predicate do? Give an example.

* **EXISTS that accepts a subquery as input and returns TRUE if the subquery returns any rows and FALSE otherwise.**

8. What happens if we use the *not* operator before a predicate? Give example.

* **The NOT operator will make it so the predicate following the operator is negated.**

9. When you use *exists* or *not exists* with respect to a row in a database, does it return two or three values. Explain your answer.

* **Two values because it when the query is ran it is either true or false.**

10. How would you use a subquery to calculate aggregates? For example. you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.  

* **Running aggregates are aggregates that accumulate values based on some order.
 SELECT orderyear, qty,
(SELECT SUM(O2.qty)
FROM Sales.OrderTotalsByYear AS O2
WHERE O2.orderyear <= O1.orderyear) AS runqty
 FROM Sales.OrderTotalsByYear AS O1
 ORDER BY orderyear;**
