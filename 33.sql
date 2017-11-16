SELECT 
	fi.Name,
	fi.Stadt,
	f.Titel, 
	COUNT(v.k_idKunde) AS Kunden
FROM
	filiale fi,
	film f,
	verleih v
WHERE
	v.fihf_idFilm = f.idFilm 
	AND fi.idFiliale = v.fihf_idFiliale
GROUP BY 
	v.fihf_idFilm
ORDER BY
	fi.Name ASC,
	f.Titel ASC