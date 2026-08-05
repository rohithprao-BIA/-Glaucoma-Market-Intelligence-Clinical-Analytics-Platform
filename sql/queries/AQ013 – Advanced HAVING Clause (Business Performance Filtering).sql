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
       ) AS PF_Products,

       ROUND(AVG(Pr.MRP),2) AS Average_MRP,

       MAX(Pr.MRP) AS Highest_MRP,

       CASE
           WHEN AVG(Pr.MRP) >= 500 THEN 'Premium Competitor'
           WHEN AVG(Pr.MRP) >= 300 THEN 'Mid-tier Competitor'
           ELSE 'Value Competitor'
       END AS Competitor_Type

FROM Products AS P

INNER JOIN Companies AS C
ON P.Company_ID = C.Company_ID

INNER JOIN Pricing AS Pr
ON P.Product_ID = Pr.Product_ID

GROUP BY
       C.Company_Name

HAVING

       COUNT(P.Product_ID) >= 5

AND    COUNT(DISTINCT P.Generic_Name) >= 5

AND    AVG(Pr.MRP) > 300

AND    SUM(
           CASE
               WHEN P.Preservative_Category = 'Preservative free'
               THEN 1
               ELSE 0
           END
       ) >= 2

ORDER BY
       Average_MRP DESC,
       Total_Products DESC;