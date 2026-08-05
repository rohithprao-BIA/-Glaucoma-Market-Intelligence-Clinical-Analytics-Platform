SELECT 
       C.Company_Name,
COUNT(P.preservative_Category) AS preservative_Category
FROM Products AS P
INNER JOIN Companies AS C
ON P.company_id= C.company_id
WHere preservative_Category= 'Preservative free'
GROUP BY C.Company_Name
ORDER BY C.Company_Name Desc;