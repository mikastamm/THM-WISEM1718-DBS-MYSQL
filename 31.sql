SELECT 
	Titel,
	Ceil(TIME_TO_SEC(Laufzeit)/60)
FROM 
	film
WHERE 
	Erscheinungsjahr > 1980 
ORDER BY 
	Titel ASC;