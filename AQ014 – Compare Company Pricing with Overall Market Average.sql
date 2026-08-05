WITH Market_Average AS
(
    SELECT
        ROUND(AVG(MRP),2) AS Overall_Market_Average
    FROM Pricing
),

Company_Average AS
(
    SELECT

        C.Company_Name,

        ROUND(AVG(Pr.MRP),2) AS Company_Average

    FROM Products AS P

    INNER JOIN Companies AS C
        ON P.Company_ID = C.Company_ID

    INNER JOIN Pricing AS Pr
        ON P.Product_ID = Pr.Product_ID

    GROUP BY
        C.Company_Name
)

SELECT

    CA.Company_Name,

    CA.Company_Average,

    MA.Overall_Market_Average,

    ROUND(
        CA.Company_Average -
        MA.Overall_Market_Average,
        2
    ) AS Difference_From_Market,

    CASE

        WHEN CA.Company_Average > MA.Overall_Market_Average
        THEN 'Above Market'

        WHEN CA.Company_Average < MA.Overall_Market_Average
        THEN 'Below Market'

        ELSE 'Equal to Market'

    END AS Market_Position

FROM Company_Average AS CA

CROSS JOIN Market_Average AS MA

ORDER BY
    Difference_From_Market DESC;