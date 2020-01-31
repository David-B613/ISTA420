### Homework 002b
### David Babers
### ISTA 420:  T-SQL Fundamentals
### Charles Carter
### January 22, 2020

1. What is a data type? Why do we have data types?

* **The data type of a value (or variable in some contexts) is an attribute that tells what kind of data that value can have**

2. What is a collation? Name four elements of a collation.

* **Type of character data that can encapsulates several aspects: language support sort order, case sensitivity and more.**

3. How would you strip whitespaces from a string? For example, suppose you had "____Dave____" but only wanted "Dave".

* **public string Trim (params char[] trimChars)**

4. Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.

* **Select collegename, universitynamea from Institute**

5. How would you find the number of the index of the first space in a string? For example, the index of the firs space in "Barack Hussein Obama" would be 7.

* **SELECT CHARINDEX(' ','Barack Hussein Obama');**

6. How would you select just the first name in a list of the presidents. Each record looks like the "George Washington" , "John Adams", "Thomas Jefferson". First names can be an arbitrary length, from "Cal" to Benjamin". (e.g. Cal College, Benjamin Harrison)

* **Through the use of a string and a substring
 select substr ("John Adams", 1. instr ("John Adams., " "));**

7. What is the order of precedence for the logical operators?

* **Logical complements are performed first, logical conjunction, and logical disjunctions**

8. What is the order of precedence for math operators?

* **Paraentheses, exponentiations, multiplication, division, addition and subtraction .**

9. What is the difference between a simple and a searched CASE expression?;

* **The simple CASE performs a simple equality check of "n" against each of the "when" options. The searched CASE evaluates the conditions independently under each of the "when" options. With this structure, far more complex conditions can be implemented with a searched CASE than a simple CASE **

10. How would you turn a list of names like this: LASTNAME, FIRSTNAME", to a list like this:
FIRSTNAME LASTNAME"?

* **Select empid, firstname + N' ' + lastname AS lastname, firstname FROM HR.Employees**

11. How would you turn a list of names like this: FIRSTNAME LASTNAME", to a list like this: LAST-
NAME, FIRSTNAME"?

* **Select empid, lastname + N' ' + firstname AS lastname, firstname FROM HR.Employees**
