SELECT
       C.Company_Name,

       COUNT(P.Product_ID) AS Total_Products,

       COUNT(DISTINCT P.Generic_Name) AS Total_Molecules,

       SUM(
           CASE
               WHEN P.Preservative_Category = 'Preservative free'
               THEN 1
               ELSE 0
           END
       ) AS Preservative_Free,

       ROUND(AVG(Pr.MRP),2) AS Average_MRP,

       MAX(Pr.MRP) AS Highest_MRP,

       CASE
           WHEN COUNT(P.Product_ID) >= 10 THEN 'Large Portfolio'
           WHEN COUNT(P.Product_ID) BETWEEN 5 AND 9 THEN 'Medium Portfolio'
           ELSE 'Small Portfolio'
       END AS Portfolio_Size,

       CASE
           WHEN AVG(Pr.MRP) >= 500 THEN 'Premium'
           WHEN AVG(Pr.MRP) BETWEEN 300 AND 499.99 THEN 'Mid Premium'
           ELSE 'Economy'
       END AS Pricing_Strategy

FROM Products AS P

INNER JOIN Companies AS C
ON P.Company_ID = C.Company_ID

INNER JOIN Pricing AS Pr
ON P.Product_ID = Pr.Product_ID

GROUP BY C.Company_Name

ORDER BY
       Total_Products DESC,
       Average_MRP DESC;