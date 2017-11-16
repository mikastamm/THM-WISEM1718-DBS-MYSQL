SELECT mitarbeiter.Name, mitarbeiter.PNr, Count(reisen.Mitarbeiter) AS 'Anzahl Reisen', ROUND(AVG(Kosten),2) AS Durchschnittskosten
FROM mitarbeiter, reisen 
WHERE mitarbeiter.PNr = reisen.Mitarbeiter
GROUP BY reisen.Mitarbeiter
ORDER BY mitarbeiter.Name DESC;