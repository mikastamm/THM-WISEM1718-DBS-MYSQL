SELECT p.ProjektName FROM projekt p
LEFT JOIN projektmitarbeit pm ON p.ProjektNr = pm.ProjektNr AND pm.Status = "Leiter"
WHERE Status IS NULL