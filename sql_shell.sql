/**
this is the blank project file for the Georgia Tech Viz Lab SQL Intro Workshop
(initially written in Spring 2022)

please make sure that the HR database is loaded:
https://www.sqltutorial.org/sql-sample-database/
**/

### WORKSHOP ###

### QUICK EXPLORATION ###
/** use statement
this will allow us to use the database we want to work with, since you can have multiple DBs loaded into mysql
	-> you can also just click on it in the mysql left sidebar under "Schemas"
**/



/** show tables
this is a quick way to get information on what you're dealing with
	-> other ways include looking under Schemas at HR -> Tables on left side
**/



/** basic select statement and limit statement
helpful if you have a huge dataset and just want a sample
**/



/** select where
allows you to put a constraint on which data you're getting
**/



/** order by
allows you to sort data
**/



/** sum / avg
**/



/** max / min
**/



### MORE INVOLVED QUERIES ###

/** nested query
sometimes the data you need requires more than one step to get
for example if we want to find the maximum salary, but also show the rest of the info with that row
**/



/** count / group by
count and group by allow us to see how many of a certain piece of data we have
you can also use "having" to constrain a function

here we use it to find the number of employees with each job_id, where the number of employees exceeds 1
**/



/** distinct
allows you to count the distinct number of something in a table
**/



### TABLE JOINS ###

/** basic join
this uses foreign keys, which is a "link" from one table to another
in this case, the job_id column from the jobs table matches the job_id column from the employees table
therefore, we can use a join to get information from both tables

for a simple (2-table) join, the first table you talk about is referred to as the "left" table ...
... and the 2nd table you are joining is the "right" table

this join is also known as an "inner join" - see venn diagrams
note: you can give the tables nicknames - here we use "e" for employees and "j" for jobs. you can also do this with other joins
**/



/** natural join
this is a type of inner join which finds the matching foreign keys for you
effectively the same as the join above, but you do not need to include the "on" clause
**/



/** selecting from two tables at once as join / naming shortcuts
this is a method of implicitly joining tables where it we select from two different tables and join PKs on a "where"
**/



/** joining three tables
sometimes you will find you need to join more than two tables
you can theoretically link an infinite number of tables as long as you handle the foreign keys correctly
in this example we take each city, its corresponding country, and region name through using two join statements
**/



/** outer join example
the difference between this join and the other is that this will also display employees that have no dependents.
in short, an outer join displays every rows from one table along with matching rows from the other table
**/



							### CHALLENGE 1 ###
# using what you have learned, write a query to get the following data:
#	the first name, last name, and job title of all employees
#	along with the first and last name of any dependents they have
#	do NOT display employees that don't have dependents



							### CHALLENGE 2 ###
# write your own query including the following and describe its usefulness
#	at least one where statement
# 	a join statement OR nested query
#	an order by statement


							### CHALLENGE 3 ###
# write your own query including the following and describe its usefulness
#	an aggregating function (sum, max, avg, ...) alongside a group by statement
#	at least one join statement
#	an "as" statement to rename returned column



/** order of operations
this query is to demonstrate the order in which you're supposed to perform statements in sql
this is copied from https://sqlbolt.com/lesson/select_queries_order_of_execution

I wasn't clever enough to come up with a query containing every single one of these
I'm not sure one is possible. if you can generate one then you are better at SQL than the instructor

anyway, this block will error if you run it
**/
-- SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
-- FROM mytable
--     JOIN another_table
--       ON mytable.column = another_table.column
--     WHERE constraint_expression
--     GROUP BY column
--     HAVING constraint_expression
--     ORDER BY column ASC/DESC
--     LIMIT count OFFSET COUNT; -- we didn't talk about offset. it will skip a given number of rows in the return