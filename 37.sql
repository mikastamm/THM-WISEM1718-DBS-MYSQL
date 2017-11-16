SELECT f.Titel
FROM film f
LEFT JOIN verleih v ON f.idFilm = v.fihf_idFilm
WHERE v.k_idKunde IS NULL
ORDER BY f.Titel ASC;
