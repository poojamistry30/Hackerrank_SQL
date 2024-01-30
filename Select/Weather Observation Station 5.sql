--Problem STATEMENT
/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Explanation
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  and .
The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.
Note
You can write two separate queries to get the desired output. It need not be a single query.
*/

--Solution

SELECT TOP 1 CITY, LEN(CITY) AS Length
FROM STATION ORDER BY Length ASC, CITY ASC;

SELECT TOP 1 CITY, LEN(CITY) AS Length
FROM STATION ORDER BY Length DESC, CITY ASC;

SELECT TOP 1 CITY, LEN(CITY) AS Length
FROM STATION ORDER BY Length ASC, CITY ASC;

SELECT TOP 1 CITY, LEN(CITY) AS Length
FROM STATION ORDER BY Length DESC, CITY ASC;
