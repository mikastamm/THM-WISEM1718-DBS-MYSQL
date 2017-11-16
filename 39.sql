SELECT k.Nachname, 
	k.Vorname, 
	k.Email, 
	f.Titel, 
	fi.Name, 
	fi.Stadt,
	ROUND((DATEDIFF(CURDATE(), v.Verleihdatum)-7)*0.8,2) AS 'Strafgebühr'
FROM
	verleih v,
	kunde k,
	film f,
	filiale fi
WHERE
	v.k_idKunde = k.idKunde AND
	v.fihf_idFilm = f.idFilm AND
	fi.idFiliale = v.fihf_idFiliale AND
	DATEDIFF(CURDATE(), v.Verleihdatum) > 7;
	