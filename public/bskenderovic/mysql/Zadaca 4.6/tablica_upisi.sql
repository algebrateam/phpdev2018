CREATE DATABASE Upisi_polaznika;

USE Upisi_polaznika;

CREATE TABLE Polaznici(
  sifra_polaznika INT NOT NULL,
  ime VARCHAR (50) NOT NULL,
  prezime VARCHAR (50) NOT NULL,
  mjesto_stanovanja CHAR (25),
  PRIMARY KEY (sifra_polaznika)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Tecajevi(
  sifra_tecaja CHAR(3) NOT NULL,
  naziv_tecaja VARCHAR (50) NOT NULL,
  PRIMARY KEY (sifra_tecaja)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Upisi(
  sifra_polaznika INT,
  sifra_tecaja CHAR(3),
  PRIMARY KEY (sifra_polaznika, sifra_tecaja),
  KEY (sifra_polaznika),
  KEY (sifra_tecaja)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE Upisi
ADD CONSTRAINT upisi_fk1 FOREIGN KEY (sifra_polaznika) REFERENCES Polaznici (sifra_polaznika),
ADD CONSTRAINT upisi_fk2 FOREIGN KEY (sifra_tecaja) REFERENCES Tecajevi (sifra_tecaja);


INSERT INTO Polaznici VALUES
(1,'ANA','Milić','Zagreb');

INSERT INTO Polaznici VALUES
(2,'Sanja','Tarak','Split');

INSERT INTO Polaznici VALUES
(3,'Mladen','Gork','Osijek');

INSERT INTO Polaznici VALUES
(4,'Ivana','Matkić','Split');

INSERT INTO Polaznici VALUES
(5,'Marina','Anić','Osijek');

INSERT INTO Polaznici VALUES
(6,'Ivica','Limić','Split');


INSERT INTO Tecajevi VALUES
('P01','Osnove rada PC računala');

INSERT INTO Tecajevi VALUES
('P02','Microsoft Word');

INSERT INTO Tecajevi VALUES
('N01','SQL Osnove');

INSERT INTO Tecajevi VALUES
('O01','Računalni operator');

INSERT INTO Tecajevi VALUES
('O02','Specijalist poslovne primjene računala');

INSERT INTO Tecajevi VALUES
('O03','Grafički dizajner');


INSERT INTO Upisi VALUES (1,'P01');
INSERT INTO Upisi VALUES (2,'P02');
INSERT INTO Upisi VALUES (3,'N01');
INSERT INTO Upisi VALUES (4,'O01');
INSERT INTO Upisi VALUES (5,'O02');
INSERT INTO Upisi VALUES (6,'O03');

