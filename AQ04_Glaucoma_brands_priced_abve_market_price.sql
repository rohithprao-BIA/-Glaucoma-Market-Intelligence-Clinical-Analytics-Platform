SELECT 
       P.brand_name,
	   P.generic_name,
	   C.Company_Name,
	   Pr.MRP,
	   Pr.MRP -
(
    SELECT AVG(MRP)
    FROM Pricing
) AS Price_difference
FROM products AS P
INNER JOIN Companies AS C
ON P.company_id= C.company_id
INNER JOIN Pricing AS Pr
ON P.product_id= Pr.product_id
WHERE Pr.MRP>= 
      (SELECT AVG(MRP)
	  FROM Pricing
	  )
ORDER BY Pr.MRP DESC;