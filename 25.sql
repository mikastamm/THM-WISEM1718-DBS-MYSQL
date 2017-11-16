SELECT p.ProjektName, Count(pm.PNr) AS 'Anzahl Mitarbeiter' FROM projekt p, projektmitarbeit pm 
WHERE p.ProjektNr = pm.ProjektNr
GROUP BY pm.ProjektNr;