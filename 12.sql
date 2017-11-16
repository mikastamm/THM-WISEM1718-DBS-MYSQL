SELECT PNr, Name, Gehalt
FROM mitarbeiter 
WHERE Gehalt = (SELECT MAX(Gehalt) FROM mitarbeiter)