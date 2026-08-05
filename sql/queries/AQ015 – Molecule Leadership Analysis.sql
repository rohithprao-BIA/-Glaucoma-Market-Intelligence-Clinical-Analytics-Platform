WITH Molecule_Data AS
(
    SELECT

        P.Generic_Name,

        C.Company_Name,

        COUNT(P.Product_ID) AS Total_Products,

        ROUND(AVG(Pr.MRP),2) AS Average_MRP

    FROM Products AS P

    INNER JOIN Companies AS C
        ON P.Company_ID = C.Company_ID

    INNER JOIN Pricing AS Pr
        ON P.Product_ID = Pr.Product_ID

    GROUP BY

        P.Generic_Name,
        C.Company_Name
)

SELECT

    Generic_Name,

    Company_Name,

    Total_Products,

    Average_MRP,

    DENSE_RANK() OVER
    (
        PARTITION BY Generic_Name
        ORDER BY Total_Products DESC,
                 Average_MRP DESC
    ) AS Molecule_Leader_Rank

FROM Molecule_Data

ORDER BY

    Generic_Name,
    Molecule_Leader_Rank,
    Company_Name;