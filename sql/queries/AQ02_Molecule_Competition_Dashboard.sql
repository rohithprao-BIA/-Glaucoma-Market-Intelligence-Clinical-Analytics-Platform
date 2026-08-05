SELECT P.generic_name AS Molecules,
COUNT(C.Company_Name) AS Total_Companies,
COUNT(DISTINCT P.brand_name) AS Brands,
AVG(Pr.MRP) AS AVG_MRP,
MIN(Pr.MRP) AS MIN_MRP,
MAX(Pr.MRP) AS MAX_MRP,
SUM(
    CASE
	WHEN P.preservative_Category= 'Preservative free'
	THEN 1
	ELSE 0
	END
	) AS PF_BRANDS
FROM Products as P
INNER JOIN Companies AS C
ON P.company_id= C.company_id
INNER JOIN Pricing AS Pr
ON P.product_id= Pr.product_id
GROUP BY generic_name
ORDER BY Total_Companies DESC,
         AVG_MRP DESC;