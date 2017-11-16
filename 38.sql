SELECT DISTINCT f.idFilm, f.Titel FROM film f
left join filialehatfilme fihf ON fihf.f_idFilm = f.idFilm AND fihf.fi_idFiliale = 2
WHERE Stueckzahl IS NULL
ORDER BY f.idFilm;