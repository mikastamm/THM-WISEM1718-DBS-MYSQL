SELECT 
	k.Nachname,
	k.Vorname, 
	COUNT(dv.k_idKunde) AS 'Filialen'
FROM 
	kunde k,
	(SELECT DISTINCT k_idKunde, fihf_idFiliale FROM verleih) dv
WHERE 
	k.idKunde = dv.k_idKunde
GROUP BY 
	dv.k_idKunde
HAVING
	COUNT(dv.k_idKunde) > 1
ORDER BY 
	k.Nachname ASC, 
	k.Vorname ASC;