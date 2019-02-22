--RANK 1 1 3 4 5 5 7
RANK ( ) OVER ( [ partition_by_clause ] order_by_clause )  

--DENSE_RANK  1 1 2 3 4 4 5
DENSE_RANK ( ) OVER ( [ <partition_by_clause> ] < order_by_clause > ) 

--ROW_NUMBER  1 2 3 4 5 6 7
ROW_NUMBER ( )   
	OVER ( [ PARTITION BY value_expression , ... [ n ] ] order_by_clause )  

--example
USE AdventureWorks2012;  
GO  
SELECT p.FirstName, p.LastName  
    ,ROW_NUMBER() OVER (ORDER BY a.PostalCode) AS "Row Number"  
    ,RANK() OVER (ORDER BY a.PostalCode) AS Rank  
    ,DENSE_RANK() OVER (ORDER BY a.PostalCode) AS "Dense Rank"  
    ,NTILE(4) OVER (ORDER BY a.PostalCode) AS Quartile  
    ,s.SalesYTD  
    ,a.PostalCode  
FROM Sales.SalesPerson AS s   
    INNER JOIN Person.Person AS p   
        ON s.BusinessEntityID = p.BusinessEntityID  
    INNER JOIN Person.Address AS a   
        ON a.AddressID = p.BusinessEntityID  
WHERE TerritoryID IS NOT NULL AND SalesYTD <> 0;  










