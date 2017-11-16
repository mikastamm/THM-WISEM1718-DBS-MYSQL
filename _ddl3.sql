CREATE TABLE film(
idFilm INT AUTO_INCREMENT NOT NULL,
Titel VARCHAR(255),
Erscheinungsjahr INT,
Laufzeit TIME,
PRIMARY KEY(idFilm)
);

CREATE TABLE filiale(
idFiliale INT AUTO_INCREMENT NOT NULL,
Name VARCHAR(255),
Stadt VARCHAR(255),
PRIMARY KEY(idFiliale)
);

CREATE TABLE kunde (
idKunde INT AUTO_INCREMENT NOT NULL,
Vorname VARCHAR(255),
Nachname VARCHAR(255),
Email VARCHAR(255),
PRIMARY KEY(idKunde)
);

CREATE TABLE filialehatfilme(
fi_idFiliale INT NOT NULL,
f_idFilm INT NOT NULL,
Stueckzahl INT,
PRIMARY KEY(fi_idFiliale, f_idFilm),
FOREIGN KEY(fi_idFiliale) REFERENCES filiale(idFiliale),
FOREIGN KEY(f_idFilm) REFERENCES film(idFilm)
);

CREATE TABLE verleih(
k_idKunde INT NOT NULL,
fihf_idFiliale INT NOT NULL,
fihf_idFilm INT NOT NULL,
Verleihdatum DATE,
PRIMARY KEY (k_idKunde, fihf_idFiliale, fihf_idFilm),
FOREIGN KEY(k_idKunde) REFERENCES kunde(idKunde),
FOREIGN KEY (fihf_idFiliale) REFERENCES filialehatfilme(fi_idFiliale),
FOREIGN KEY (fihf_idFilm) REFERENCES filialehatfilme(f_idFilm)
);