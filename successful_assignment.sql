#1. Showing only top 2 results based on a count condition and ordering by a column not in our select statement.

SELECT [col1] AS [alias]
,COUNT(col2) AS [alias2]
FROM [Table]
GROUP BY [col1]
ORDER BY [col3] DESC
LIMIT 10;

#2. checking to see how much inputs each distinct "ID" has.

SELECT [col1] AS [alias1]
,COUNT([col2]) AS [alias2]
FROM [Table1]
GROUP BY [col1]
ORDER BY [col2] DESC
LIMIT 10;

#3. Checking to see how many inputs a certain distinct value has (different from before and required other tables and thought process relating to the question).

SELECT [col1] as [alias1]
,COUNT([col2] as [alias2]
FROM [Table2]
GROUP BY [col1\alias1]
ORDER BY [col2\alias2]
LIMIT 10;


#4. Manipulating timestamps into dates for better formatting, counting "id's" for a certain period.

SELECT 
CONCAT(MONTHNAME([Datecol]),
',',' ',
YEAR([Datecol)) AS Month_
,[col1],
 count([col2]) AS Total_Number_of_
 FROM [Table]
 WHERE [col3] = 1
 GROUP BY [col1],[col2]
 
 #5. finding the average duration for inputs who appear at least N times, for only certain inputs in a different column.
 
 SELECT AVG(DATEDIFF([datecol] , [datecol2]))
 AS Average_Duration
 FROM (SELECT [col1]
 ,[col2]
 ,[col3]
 ,[col4]
 ,count([col4]) as count_
 FROM [Table]
 GROUP BY [col4] HAVING count_ >= N) Sub_query
 WHERE Product_ID IN ("[Certain Strings");
 
 #6. Retention rates. calculating probablities of values to appear again and again. it was hard without a loop like in python but it worked out quite clumsily.
 
 CREATE TABLE [TableName]
 SELECT [col1]
 ,count([col2]) AS [alias1]
 from [Table]
 WHERE
 ProductID = "Certain String"
 GROUP BY [col];
 
 CREATE TABLE [Tablename2]
 SELECT count( DISTINCT [col1]) AS [Alias1]
 from S[Table1];
 
 SELECT CONCAT('Month', [col1] -1) AS Month_, round(CONCAT([alias1] / (SELECT [col1] from [Table1]) * 100
 , '%'),2) AS Probablity

 
 
 
 



