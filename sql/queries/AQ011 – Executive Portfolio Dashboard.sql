WITH Company_Summary AS
(
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

           MAX(Pr.MRP) AS Highest_MRP

    FROM Products AS P

    INNER JOIN Companies AS C
    ON P.Company_ID = C.Company_ID

    INNER JOIN Pricing AS Pr
    ON P.Product_ID = Pr.Product_ID

    GROUP BY
           C.Company_Name
),

Premium_Product_Count AS
(
    SELECT
           Company_Name,

           COUNT(*) AS Premium_Products

    FROM
    (
        SELECT
               C.Company_Name,
               P.Brand_Name,
               Pr.MRP,

               AVG(Pr.MRP) OVER
               (
                   PARTITION BY C.Company_Name
               ) AS Company_Average

        FROM Products AS P

        INNER JOIN Companies AS C
        ON P.Company_ID = C.Company_ID

        INNER JOIN Pricing AS Pr
        ON P.Product_ID = Pr.Product_ID
    )

    WHERE MRP > Company_Average

    GROUP BY Company_Name
)

SELECT

       CS.Company_Name,

       CS.Total_Products,

       CS.Total_Molecules,

       CS.PF_Products,

       CS.Average_MRP,

       CS.Highest_MRP,

       CASE
           WHEN CS.Total_Products >=10
           THEN 'Large Portfolio'

           WHEN CS.Total_Products BETWEEN 5 AND 9
           THEN 'Medium Portfolio'

           ELSE 'Small Portfolio'
       END AS Portfolio_Size,

       CASE
           WHEN CS.Average_MRP >=500
           THEN 'Premium'

           WHEN CS.Average_MRP BETWEEN 300 AND 499.99
           THEN 'Mid Premium'

           ELSE 'Economy'
       END AS Pricing_Strategy,

       IFNULL(PPC.Premium_Products,0) AS Premium_Products

FROM Company_Summary AS CS

LEFT JOIN Premium_Product_Count AS PPC

ON CS.Company_Name = PPC.Company_Name

ORDER BY

       CS.Average_MRP DESC,
       CS.Total_Products DESC;