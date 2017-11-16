SELECT 
	p1.PNr,
	p2.PNr,
	hotel.HName,
	r1.Beginndatum
FROM
	mitarbeiter p1, 
	mitarbeiter p2, 
	reisen r1, 
	reisen r2, 
	hotel
WHERE 
	p1.PNr = r1.Mitarbeiter AND 
	p2.PNr = r2.Mitarbeiter AND 
	p1.PNr < p2.PNr AND 
	r1.Hotel = r2.Hotel
AND 
	r1.Beginndatum = r2.Beginndatum AND 
	hotel.HNr = r1.Hotel
ORDER BY 
	p1.PNr,
	p2.PNr ASC;