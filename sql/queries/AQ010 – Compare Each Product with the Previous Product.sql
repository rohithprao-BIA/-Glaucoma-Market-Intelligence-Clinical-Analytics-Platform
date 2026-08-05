SELECT
       C.Company_Name,
       P.Brand_Name,
       P.Generic_Name,
       Pr.MRP,

       LAG(Pr.MRP) OVER(
           PARTITION BY C.Company_Name
           ORDER BY Pr.MRP DESC
       ) AS Previous_Product_MRP,

       ROUND(
           Pr.MRP -
           LAG(Pr.MRP) OVER(
               PARTITION BY C.Company_Name
               ORDER BY Pr.MRP DESC
           ),
           2
       ) AS Difference_From_Previous

FROM Products AS P

INNER JOIN Companies AS C
ON P.Company_ID = C.Company_ID

INNER JOIN Pricing AS Pr
ON P.Product_ID = Pr.Product_ID

ORDER BY
       C.Company_Name,
       Pr.MRP DESC;