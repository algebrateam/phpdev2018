CREATE DATABASE Skladiste;

USE Skladiste;

CREATE TABLE Skladisno_mjesto(
   Sifra_skladista INT NOT NULL,
   Naziv char(30),
   Mjesto CHAR (20),
   PRIMARY KEY (Sifra_skladista)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Radnik(
  Sifra_radnika INT NOT NULL,
  Ime CHAR(30),
  Prezime CHAR (30),
  Sifra_skladista INT,
  PRIMARY KEY (Sifra_radnika),
  KEY (Sifra_skladista)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE Radnik
ADD CONSTRAINT Radnik_fk1 FOREIGN KEY (Sifra_skladista) REFERENCES Skladisno_mjesto (Sifra_skladista);

CREATE TABLE Proizvod(
  Sifra_proizvoda INT NOT NULL,
  Naziv CHAR(30),
  Sifra_skladista INT,
  PRIMARY KEY (Sifra_proizvoda),
  KEY (Sifra_skladista)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE Proizvod
ADD CONSTRAINT Proizvod_fk1 FOREIGN KEY (Sifra_skladista) REFERENCES Skladisno_mjesto (Sifra_skladista);

CREATE TABLE Voditelji(
  Sifra_radnika INT NOT NULL,
  Sifra_skladista INT NOT NULL,
  PRIMARY KEY (Sifra_radnika,Sifra_skladista),
  KEY (Sifra_radnika),
  KEY (Sifra_skladista)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE Voditelji
ADD CONSTRAINT Vod_fk1 FOREIGN KEY (Sifra_radnika) REFERENCES Radnik (Sifra_radnika),
ADD CONSTRAINT Vod_fk2 FOREIGN KEY (Sifra_skladista) REFERENCES Skladisno_mjesto (Sifra_skladista);