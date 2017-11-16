SELECT DISTINCT mitarbeiter.Name, mitarbeiter.PNr, abteilung.AName, reisen.Kosten, reisen.Beginndatum 
FROM mitarbeiter, reisen, abteilung 
WHERE mitarbeiter.ANr = abteilung.ANr 
AND mitarbeiter.PNr = reisen.Mitarbeiter 
AND reisen.Kosten = (SELECT max(reisen.Kosten) FROM reisen);
