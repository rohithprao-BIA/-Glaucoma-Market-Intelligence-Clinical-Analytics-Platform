SELECT
       P.brand_name,
	   P.generic_name,
	   P.preservative_Category,
	   C.Company_Name,
	   Pr.MRP,
	   G.Recommendation,
	   Ce.Level_of_Evidence
FROM products AS P
INNER JOIN Companies AS C
ON C.company_id= P.company_id
INNER JOIN Clinical_Evidence AS Ce
ON P.Molecule_ID= Ce.Molecule_ID
INNER JOIN Pricing AS Pr
ON P.product_id= Pr.product_id
INNER JOIN Guidelines AS G
ON P.Molecule_ID= G.Molecule_ID
WHERE Ce.Level_of_Evidence= 'Level I'
AND G.Recommendation= 'First-line Therapy'
AND P.preservative_Category= 'Preservative free'
AND Pr.MRP>= 500
ORDER BY Pr.MRP DESC;