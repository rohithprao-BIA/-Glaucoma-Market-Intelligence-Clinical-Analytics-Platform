WITH Company_Average AS
(
    SELECT
           C.Company_Name,
           ROUND(AVG(Pr.MRP),2) AS Average_MRP

    FROM Products AS P

    INNER JOIN Companies AS C
    ON P.Company_ID = C.Company_ID

    INNER JOIN Pricing AS Pr
    ON P.Product_ID = Pr.Product_ID

    GROUP BY C.Company_Name
)

SELECT *
FROM Company_Average
ORDER BY Average_MRP DESC;