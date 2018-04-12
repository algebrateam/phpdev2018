USE upisi_polaznika;

-- Zadatak 4.1

UPDATE Tecajevi
SET naziv_tecaja='Osnovne obrade teksta - MS Word'
WHERE naziv_tecaja='Microsoft Word';

-- Zadatak 4.2

USE upisi_polaznika;

UPDATE Upisi
SET sifra_tecaja='O03'
WHERE sifra_polaznika=6;


-- Zadatak 4.3

USE upisi_polaznika;

DELETE FROM Upisi
WHERE sifra_tecaja='P01';


-- Zadatak 4.4

USE fakultet;
 
CREATE TABLE PredmetiDvorane (
   sifPred INT(11) NOT NULL,
   oznDvorana CHAR(7) NOT NULL
);
   
   
-- Zadatak 4.5

USE fakultet;

CREATE VIEW Stanovanje AS
  SELECT nastavnik.imeNastavnik,nastavnik.prezNastavnik,mjesto.nazMjesto
  FROM nastavnik
  INNER JOIN mjesto ON nastavnik.pbrStan = mjesto.pbr;
  
SELECT
*
FROM Stanovanje;


-- Zadatak 4.6

CREATE VIEW ProlaznostIspita AS
SELECT stud.imeStud, stud.prezStud, pred.nazPred, ispit.ocjena, nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM stud
INNER JOIN ispit ON stud.mbrStud=ispit.mbrStud
INNER JOIN pred ON pred.sifPred=ispit.sifPred
INNER JOIN nastavnik ON nastavnik.sifNastavnik=ispit.sifNastavnik;

SELECT
*
FROM ProlaznostIspita; 