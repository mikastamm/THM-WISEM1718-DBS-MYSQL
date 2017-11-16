SELECT r1.Mitarbeiter,
	m1.Name, 
	r2.Mitarbeiter, 
	m2.Name, 
	h.HName, 
	r1.Beginndatum
FROM 
	reisen r1
INNER JOIN 
	reisen r2 on r1.Hotel = r2.Hotel 
AND r1.Beginndatum = r2.Beginndatum
INNER JOIN mitarbeiter m1 ON m1.Pnr = r1.Mitarbeiter
INNER JOIN mitarbeiter m2 ON m2.Pnr = r2.Mitarbeiter
INNER JOIN hotel h ON h.Hnr = r1.Hotel
WHERE m1.PNr <  m2.PNr