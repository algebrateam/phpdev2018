-- Zadatak 4.1
USE upisi_polaznika;

UPDATE tecajevi
SET naziv_tecaja='Osnove obrade teksta - MS Word'
WHERE naziv_tecaja='Microsoft Word';

-- Zadatak 4.2
USE upisi_polaznika;

UPDATE upisi
SET sifra_tecaja='O03'
WHERE sifra_polaznika=6;

-- Zadatak 4.3
USE upisi_polaznika;

DELETE FROM upisi
WHERE sifra_tecaja='P01';

-- Zadatak 4.4
USE fakultet;

CREATE TABLE PredmetiDvorane
SELECT oznDvorana, nazPred, sat FROM pred
JOIN rezervacija ON pred.sifPred=rezervacija.sifPred;

-- Zadatak 4.5
USE fakultet;

CREATE VIEW Stanovanje AS
SELECT imeNastavnik, prezNastavnik, nazMjesto
FROM nastavnik
JOIN mjesto ON nastavnik.pbrStan=mjesto.pbr;

SELECT * FROM Stanovanje;

-- Zadatak 4.6
USE fakultet;

CREATE VIEW ProlaznostIspita AS 
SELECT imeStud, prezStud, nazPred, ocjena, imeNastavnik, prezNastavnik
FROM stud
JOIN ispit
ON stud.mbrStud=ispit.mbrStud
JOIN nastavnik
ON nastavnik.sifNastavnik=ispit.sifNastavnik
JOIN pred
ON pred.sifPred=ispit.sifPred;

SELECT * FROM ProlaznostIspita;