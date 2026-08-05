WITH Product_Ranking AS
(
    SELECT
           C.Company_Name,
           P.Brand_Name,
           P.Generic_Name,
           Pr.MRP,

           ROW_NUMBER() OVER(
               PARTITION BY C.Company_Name
               ORDER BY Pr.MRP DESC
           ) AS Product_Rank

    FROM Products AS P

    INNER JOIN Companies AS C
    ON P.Company_ID = C.Company_ID

    INNER JOIN Pricing AS Pr
    ON P.Product_ID = Pr.Product_ID
)

SELECT
       Company_Name,
       Brand_Name,
       Generic_Name,
       MRP,
       Product_Rank

FROM Product_Ranking

WHERE Product_Rank <= 3

ORDER BY
       Company_Name,
       Product_Rank;