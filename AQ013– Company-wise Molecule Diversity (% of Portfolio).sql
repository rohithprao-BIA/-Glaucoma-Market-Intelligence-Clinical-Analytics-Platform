WITH Portfolio AS
(
    SELECT
        C.Company_Name,
        COUNT(P.Product_ID) AS Total_Products,
        COUNT(DISTINCT P.Generic_Name) AS Unique_Molecules

    FROM Products AS P

    INNER JOIN Companies AS C
        ON P.Company_ID = C.Company_ID

    GROUP BY
        C.Company_Name
)

SELECT

    Company_Name,

    Total_Products,

    Unique_Molecules,

    ROUND(
        (Unique_Molecules * 100.0) / Total_Products,
        2
    ) AS Molecule_Diversity_Percentage,

    DENSE_RANK() OVER
    (
        ORDER BY
        (Unique_Molecules * 100.0) / Total_Products DESC
    ) AS Diversity_Rank

FROM Portfolio

ORDER BY
    Diversity_Rank,
    Company_Name;