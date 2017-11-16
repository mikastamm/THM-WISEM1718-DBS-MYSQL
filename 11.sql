select mitarbeiter.Name, mitarbeiter.PNr 
from mitarbeiter, abteilung 
where mitarbeiter.ANr = abteilung.ANr AND abteilung.AName = 'Vertrieb' 
order by mitarbeiter.Name, mitarbeiter.PNr asc;