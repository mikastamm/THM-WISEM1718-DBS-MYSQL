SELECT
	fi.Name,
	fi.Stadt,
	COUNT(fihf.f_idFilm) AS 'Anzahl Filme'
FROM
	filiale fi,
	filialehatfilme fihf
WHERE
	fihf.fi_idFiliale = fi.idFiliale
GROUP BY
	fihf.fi_idFiliale
HAVING
	COUNT(fihf.f_idFilm) = 
    (
		SELECT 
			COUNT(fihf2.f_idFilm) AS c
		FROM
			filiale fi2,
			filialehatfilme fihf2
		WHERE
			fihf2.fi_idFiliale = fi2.idFiliale
		GROUP BY
			fihf2.fi_idFiliale
		ORDER BY c DESC
        LIMIT 1
	)
ORDER BY
	fi.Name ASC;