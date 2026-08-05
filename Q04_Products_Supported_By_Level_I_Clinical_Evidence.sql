SELECT P.brand_name,
       P.generic_name,
	   P.drug_class,
	   C.Company_Name,
	   Ce.Study_Name,
	   Ce.Journal,
	   Ce.Publication_Year,
	   Ce.Level_of_Evidence
FROM products AS P
INNER JOIN Companies AS C 
ON P.company_id= C.company_id
INNER JOIN Clinical_Evidence AS Ce
ON P.Molecule_ID= Ce.Molecule_ID
WHERE Level_of_Evidence = 'Level I'
ORDER BY C.Company_Name,
         P.brand_name,
		 Ce.Publication_Year;