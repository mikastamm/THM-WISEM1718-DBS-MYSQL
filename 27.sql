SELECT m.Name, Sum(pm.Stunden) AS 'Gesamtstunden' FROM mitarbeiter m, projektmitarbeit pm, projekt p 
WHERE m.PNr = pm.PNR AND p.ProjektNr = pm.ProjektNr AND pm.Status = "Leiter" AND p.Budget > 250000
GROUP BY pm.PNr;