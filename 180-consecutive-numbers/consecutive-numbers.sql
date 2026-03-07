# Write your MySQL query statement below
SELECT DISTINCT l1.num AS ConsecutiveNums 
 FROM Logs l1
JOIN Logs l2 ON l1.id= l2.id-1
JOIN Logs l3 ON l1.id= l3.id-2
WHERE l1.num=l2.num
AND l2.num = l3.num;


-- SELECT num AS ConsecutiveNums 
-- FROM ( SELECT num , LAG(num,1) OVER(ORDER BY id) AS l1 , LAG(num,2) OVER (ORDER BY id) AS l2 FROM Logs )  AS T
-- WHERE num=l1 AND num=l2;