SELECT
    P.Brand_Name,
    P.Generic_Name,
    C.Company_Name,
    P.Preservative_Category,
    P.Preservative_Type,
    S.Common_Adverse_Effects,
    S.Serious_Adverse_Effects
FROM Products AS P
INNER JOIN Companies AS C
    ON P.Company_ID = C.Company_ID
INNER JOIN "Safety Profile" AS S
    ON P.Molecule_ID = S.Molecule_ID
WHERE P.Preservative_Category = 'Preservative free'
ORDER BY
    C.Company_Name,
    P.Brand_Name;