-- SELECT MIN(salary) as SecondHighestSalary FROM ( SELECT salary from Employee ORDER BY salary DESC LIMIT 2) AS salary;

-- WE CAN USES THIS COMMAND BUT THIS COMMAND CAN'T HANDEL NULL VALUE RETURN . SO WE  USES SUBQUERY 
-- SELECT  DISTINCT salary AS SecondHighestSalary from Employee ORDER BY salary LIMIT 1 OFFSET 1;
 SELECT(SELECT  DISTINCT salary from Employee ORDER BY salary DESC LIMIT 1 OFFSET 1)AS SecondHighestSalary ;