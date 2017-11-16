select hotel.HNr, hotel.HName
from hotel, reisen 
WHERE hotel.HNr = reisen.Hotel
group by reisen.Hotel
HAVING count(reisen.Hotel) > 2;