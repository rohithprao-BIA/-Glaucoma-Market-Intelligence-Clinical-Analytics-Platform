SELECT

    C.Company_Name,

    COUNT(P.Product_ID) AS Total_Products,

    SUM(
        CASE
            WHEN P.Preservative_Category = 'Preservative free'
            THEN 1
            ELSE 0
        END
    ) AS PF_Products,

    ROUND(
        SUM(
            CASE
                WHEN P.Preservative_Category = 'Preservative free'
                THEN 1
                ELSE 0
            END
        ) * 100.0 /
        COUNT(P.Product_ID),
        2
    ) AS PF_Percentage,

    DENSE_RANK() OVER
    (
        ORDER BY
        ROUND(
            SUM(
                CASE
                    WHEN P.Preservative_Category = 'Preservative free'
                    THEN 1
                    ELSE 0
                END
            ) * 100.0 /
            COUNT(P.Product_ID),
            2
        ) DESC
    ) AS PF_Rank

FROM Products AS P

INNER JOIN Companies AS C
ON P.Company_ID = C.Company_ID

GROUP BY
    C.Company_Name

ORDER BY
    PF_Rank,
    PF_Percentage DESC,
    Total_Products DESC;