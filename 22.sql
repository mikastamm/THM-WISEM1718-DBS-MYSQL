
SELECT 
	p1.ProjektName, 
	'Groesstes Budget' AS Budget
FROM 
	projekt p1 
WHERE 
	p1.Budget = (SELECT MAX(Budget) FROM projekt)
UNION SELECT 
	p2.ProjektName,
	'Kleinstes Budget'  AS Budget
FROM 
	projekt p2 
WHERE 
p2.Budget = (SELECT MIN(Budget) FROM projekt);