SELECT 
	fi.Name,
	fi.Stadt, 
	f.Titel, 
	fihf.Stueckzahl - IFNULL(verliehen.Ausgeliehen, 0) AS 'Menge'
FROM 
	filiale fi, 
	film f,
	filialehatfilme fihf
LEFT JOIN
	(
	SELECT 
		fihf_idFiliale, 
		fihf_idFilm, 
		COUNT(fihf_idFilm) AS 'Ausgeliehen'
	FROM 
		verleih 
	GROUP BY 
		fihf_idFiliale, 
		fihf_idFilm
	) verliehen 
ON 
	fihf.fi_idFiliale = verliehen.fihf_idFiliale AND
	fihf.f_idFilm = verliehen.fihf_idFilm
WHERE
	fi.idFiliale = fihf.fi_idFiliale AND
    f.idFilm = fihf.f_idFilm
ORDER BY
	fi.Name ASC,
    fihf.Stueckzahl - IFNULL(verliehen.Ausgeliehen, 0) DESC;