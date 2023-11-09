-- 1.	Your company delivers fruit and vegetables to local grocery stores, and
-- you need to track the mileage driven by each driver each day to a tenth
-- of a mile. Assuming no driver would ever travel more than 999 miles in a
-- day, what would be an appropriate data type for the mileage column in
-- your table? Why?

numeric(4,1)

-- numeric(4,1) provides four digits total (the precision) and one digit after
-- the decimal (the scale). You can store a value as large as 999.9.


-- 2.	In the table listing each driver in your company, what are appropriate
-- data types for the drivers’ first and last names? Why is it a good idea to
-- separate first and last names into two columns rather than having one
-- larger name column?

varchar(50)

-- 50 characters is a reasonable length for names, and varchar() ensures you
-- will not waste space when names are shorter. Separating first and last names
-- into their own columns will let you later sort on each independently.


-- 3.	Assume you have a text column that includes strings formatted as dates.
-- One of the strings is written as '4//2017'. What will happen when you try
-- to convert that string to the timestamp data type?

--It will result in an error. this date format will no work.
--see example, which tries to cast the string as a timestamp. it will not work.

SELECT CAST('4//2017' AS timestamp with time zone);