-- Zadatak 4.1
USE upisi;

SELECT *
FROM tecajevi;

UPDATE tecajevi SET `Naziv tecaja`='Osnove obrade teksta - MS Word'
WHERE `Naziv tecaja` = 'Microsoft Word';
SELECT *

FROM tecajevi;

-- Zadatak 4.2
SELECT *
FROM upisi;

UPDATE upisi SET `Sifra tecaja` = 'O03'
WHERE `Šifra polaznika`=6;

SELECT *
FROM upisi;

-- Zadatak 4.3
SELECT *
FROM upisi;

DELETE
FROM upisi
WHERE `Sifra tecaja`='P01';

SELECT *
FROM upisi;

-- Zadatak 4.4
USE fakultet;

CREATE TABLE PredmetiDvorane (
sifPred INT(11) NOT NULL,
oznDvorana CHAR(5) NOT NULL);

-- Zadatak 4.5
CREATE VIEW nastavnik_stanovanje AS
SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, mjesto.nazMjesto
FROM nastavnik
INNER JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan;

SELECT *
FROM nastavnik_stanovanje;

-- Zadatak 4.6
CREATE VIEW student_ocjena AS
SELECT stud.imeStud, stud.prezStud, pred.nazPred, ispit.ocjena, nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM stud
INNER JOIN ispit ON stud.mbrStud=ispit.mbrStud
INNER JOIN pred ON pred.sifPred=ispit.sifPred
INNER JOIN nastavnik ON nastavnik.sifNastavnik=ispit.sifNastavnik;

SELECT *
FROM student_ocjena;