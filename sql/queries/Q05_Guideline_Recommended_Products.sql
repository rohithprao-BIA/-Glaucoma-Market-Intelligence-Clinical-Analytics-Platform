SELECT P.brand_name,
       P.generic_name,
	   C.Company_Name,
	   G.Organization,
	   G.Publication_Year,
	   G.Recommendation,
	   G.Recommendation_Strength,
	   G.Evidence_Level
FROM products AS P
INNER JOIN Companies AS C
ON P.company_id= C.company_id
INNER JOIN Guidelines AS G
ON P.Molecule_ID= G.Molecule_ID
ORDER BY C.Company_Name,
         G.Organization,
		 G.Publication_Year DESC;