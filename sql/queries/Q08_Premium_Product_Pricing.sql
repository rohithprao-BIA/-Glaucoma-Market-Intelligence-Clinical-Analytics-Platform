SELECT 
       P.brand_name,
	   P.generic_name,
	   P.drug_class,
	   C.Company_Name,
	   Pr.MRP
FROM products AS P
INNER JOIN Companies AS C
ON P.company_id= C.company_id
INNER JOIN Pricing AS Pr
ON P.product_id= Pr.product_id
WHERE MRP>= 700
ORDER BY Pr.MRP Desc;
