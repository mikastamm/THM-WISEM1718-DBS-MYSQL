SELECT m.Name FROM mitarbeiter m, projekt p, projektmitarbeit pm 
WHERE p.ProjektNr = pm.ProjektNr AND p.ProjektName = "Mobile Business Intelligence" AND m.PNr = pm.PNr;