CREATE DATABASE Zaposlenici;

USE Zaposlenici;

CREATE TABLE Odjeli(
   Sifra_odjela char(11) NOT NULL,
   Naziv_odjela varchar(50) NOT NULL,
   Lokacija_odjela varchar(50) NOT NULL,
   PRIMARY KEY (Sifra_odjela)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Sefovi(
   Sifra_zaposlenika bigint(20) NOT NULL,
   Sifra_odjela char(11) NOT NULL,
   PRIMARY KEY (Sifra_zaposlenika,Sifra_odjela),
   KEY Sifra_zaposlenika (Sifra_zaposlenika),
   KEY Sifra_odjela (Sifra_odjela),
   CONSTRAINT Sef_Odj_fk FOREIGN KEY (Sifra_odjela) REFERENCES Odjeli (Sifra_odjela)
   /*CONSTRAINT Sef_zap_fk FOREIGN KEY (Sifra_zaposlenika) REFERENCES Radnici (Sifra_zaposlenika)*/
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Radnici(
   Sifra_zaposlenika bigint(20) NOT NULL,
   Ime varchar(50) NOT NULL,
   Prezime varchar(50) NOT NULL,
   Sifra_odjela char(11) NOT NULL,
   PRIMARY KEY (Sifra_odjela),
   KEY Sifra_odjela (Sifra_odjela),
   CONSTRAINT Radnici_fk FOREIGN KEY (Sifra_odjela) REFERENCES Odjeli (Sifra_odjela)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
