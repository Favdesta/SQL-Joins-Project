# Bookstore Database Outline:

	Tables:

	author
		- Columns
			- authorid
			- authorname
		- Indexes
			- PRIMARY
		- Foreign Keys
		- Triggers

	customer
		- Columns
			- customerrid
			- customername
			- address
			- city
		- Indexes
			- PRIMARY
		- Foreign Keys
		- Triggers
	
	employees
		- Columns
			- employeeid
			- firstname
			- lastname
			- employeerole
		- Indexes
			- PRIMARY
	 	- Foreign Keys
		- Triggers

	item
		- Columns
			- itemrid
			- booktitle
			- authorid
		- Indexes
			- PRIMARY
			- authorid
		- Foreign Keys
			- item_ibfk_1
		- Triggers

	orderinfo
		- Columns
			- id
			- itemid
			- customerid
		- Indexes
			- PRIMARY
			- itemid
			- customerid
		- Foreign Keys
			- orderinfo_ibfk_1
			- orderinfo_ibfk_2
		- Triggers

	supplier
		- Columns
			- supplierid
			- suppliername
			- city
		- Indexes
			- PRIMARY
		- Foreign Keys
		- Triggers

	Views:

	Stored Procedures:

	Functions:



# Questions:

Q1: What is meant by an inner join?

An inner join selects all the records that have matching values in both tables.

Q2: What is a left join?

The left join is a join that returns all the rows from the left table, with the matching rows in the right table.

Q3: What is the right join?

The right join keyword returns all the records from the right table and the matched results from the left table.

Q4: What is a self-join?

The self-join is where a table joins to itself and is used when a table is referencing itself.

Q5: What is meant by the cross-join?

A cross-join is where a result set is produced which is the number of rows in the first table multiplied by the number of rows in the second table.

Q6:
False - the UNION ALL keyword brings back only distinct values in the result set.

the UNION ALL keyword brings back all the values even duplicate values whereas the UNION keyword brings back only distinct values.

