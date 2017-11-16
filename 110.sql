select count(HNr) AS 'Nie gebucht'
from hotel h left join reisen r on h.HNr = r.Hotel
where Mitarbeiter is null;