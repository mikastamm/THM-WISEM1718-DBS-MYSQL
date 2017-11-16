SELECT DISTINCT mitarbeiter.Name 
FROM mitarbeiter, reisen, hotel
WHERE mitarbeiter.PNr = reisen.Mitarbeiter AND reisen.Hotel = hotel.HNr AND hotel.Ort = "Hamburg";