--The general syntax to exclude first n records and to return first/next n rows: 
ORDER BY column_list [ASC |DESC]
OFFSET offset_row_count {ROW | ROWS}
FETCH {FIRST | NEXT} fetch_row_count {ROW | ROWS} ONLY



--example Write a SQL query to get the 2 highest salary from the Employee table.
select Salary
from employee
order by Salary DESC
offset 1 rows
fetch first 1 rows only;