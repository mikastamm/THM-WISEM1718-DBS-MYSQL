SELECT f.Titel, f.Erscheinungsjahr FROM film f, verleih v 
WHERE f.Erscheinungsjahr < year(CURDATE())-30
AND v.Verleihdatum > DATE_ADD(CURDATE(), INTERVAL -1 YEAR)
AND v.fihf_idFilm = f.idFilm
GROUP BY v.fihf_idFilm
HAVING COUNT(v.fihf_idFilm) < 3
ORDER BY f.Titel;