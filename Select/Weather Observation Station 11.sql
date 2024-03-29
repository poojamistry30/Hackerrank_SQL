--Problem Statement
/*

Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/
--Solution

SELECT DISTINCT CITY FROM STATION 
WHERE SUBSTRING(CITY,1,1) NOT IN ('a','e','i','o','u') 
OR SUBSTRING(REVERSE(CITY),1,1) NOT IN ('a','e','i','o','u');
