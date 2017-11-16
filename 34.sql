SELECT DISTINCT
	f.Titel,
	fi.Name,
	fi.Stadt,
    fihf.Stueckzahl
FROM
	film f,
	filiale fi,
	verleih v,
	filialehatfilme fihf
WHERE
	f.idFilm = fihf.f_idFilm AND
	fi.idFiliale = fihf.fi_idFiliale AND
    fihf.f_idFilm = f.idFilm AND
    fihf.Stueckzahl - (SELECT COUNT(*) FROM verleih WHERE f.idFilm = verleih.fihf_idFilm AND fi.idFiliale = verleih.fihf_idFiliale GROUP BY verleih.fihf_idFilm) = 0
ORDER BY
	f.Titel ASC;

	