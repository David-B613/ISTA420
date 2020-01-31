### Homework 002
### David Babers
### ISTA 420:  T-SQL Fundamentals
### Charles Carter
### January 20, 2020

1. List the order of execution of a SQL query.

* **SQL has no order of execution. It executes any order to produce the best execution time.**

2. What does the *from* clause do?

* **It is the first query clause that is logically processed.**

3. What does the *where* clause do?

* **You are specify a predicate or logical expression to a filter the rows returned by the FORM phase.**

4. What does the *group by* clause do?

* **Used to arrange the rows returned by the previous logical query processing phase in groups.**

5. What does the *having* clause do?

* **HAVING clause is a group filter. Only groups for which the HAVING predicate evaluates to TRUE are returned by the HAVING phase to the next logical query processing phase. Groups for which the predicate evaluates to FALSE or UNKNOWN are discarded.**

6. What does the *select* clause do?

* **A SELECT statement retrieves zero or more rows from one or more database tables or database views.**

7. What does the *distinct* keyword do

* **The SQL DISTINCT keyword is used in conjunction with the SELECT statement to eliminate all the duplicate records and fetching only unique records. There may be a situation when you have multiple duplicate records in a table.**

8. What does the *order by* clause do?

* **You use the ORDER BY clause to sort the rows in the output for presentation purposes. In terms of logical query processing, ORDER BY is the very last clause to be processed.**

9. What does the *limit* clause do? This is not in the book.

* **LIMIT clause is used to set an upper limit on the number of tuples returned by SQL.**

10. What does the *top* clause do?

* **The SQL TOP clause is used to fetch a TOP N number or X percent records from a table.**

11. What do the *offset...fetch...* clauses do?

* **OFFSET-FETCH filter is considered an extension to the ORDER BY clause. With the OFFSET clause you indicate how many rows to skip, and with the FETCH clause you indicate how many rows to filter after the skipped rows.**
