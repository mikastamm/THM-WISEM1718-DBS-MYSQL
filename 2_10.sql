CREATE VIEW Projektzugehoerigkeit AS 
SELECT p.ProjektName, m.Name, pm.Status
FROM projekt p, mitarbeiter m, projektmitarbeit pm
WHERE 
p.ProjektNr = pm.ProjektNr
AND
m.PNr = pm.PNr
ORDER BY
p.ProjektName,
m.Name;