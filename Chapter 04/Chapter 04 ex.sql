-- 1. Write a WITH statement to include with COPY to handle the import of an
-- imaginary text file that has a first couple of rows that look like this:

-- id:movie:actor
-- 50:#Mission: Impossible#:Tom Cruise

-- Answer: The WITH statement will need the options seen here:

COPY actors
FROM 'C:\SQL\Chapter_04\movies.txt'
WITH (FORMAT CSV, HEADER, DELIMITER ':', QUOTE '#');

-- If you'd like to try actually importing this data, save the data in a file
-- called movies.txt and create the actors table below. You can then run the COPY
-- statement.
DROP TABLE actors;
SELECT * FROM actors;
CREATE TABLE actors (
    id integer,
    movie text,
    actor text
);

-- Note: You may never encounter a file that uses a colon as a delimiter and
-- pound sign for quoting, but anything is possible.

-- 2. Using the table us_counties_2010 you created and filled in this chapter,
-- export to a CSV file the 20 counties in the United States that have the most
-- housing units. Make sure you export only each county's name, state, and
-- number of housing units. (Hint: Housing units are totaled for each county in
-- the column housing_unit_count_100_percent.

-- Answer:

COPY (
    SELECT geo_name, state_us_abbreviation, housing_unit_count_100_percent
    FROM us_counties_2010 ORDER BY housing_unit_count_100_percent DESC LIMIT 20
     )
TO 'C:\SQL\Chapter_04\us-counties-housing-export.txt'
WITH (FORMAT CSV, HEADER);

-- Note: This COPY statement uses a SELECT statement to limit the output to
-- only the desired columns and rows.

-- 3. Imagine you're importing a file that contains a column with these values:
      -- 17519.668
      -- 20084.461
      -- 18976.335
-- Will a column in your target table with data type numeric(3,8) work for these
-- values? Why or why not?

-- Answer:
-- No, it won't. In fact, you won't even be able to create a column with that
-- data type because the precision must be larger than the scale. The correct
-- type for the example data is numeric(8,3).