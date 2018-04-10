-- Zadatak 3.2
-- Ispišite matične brojeve te imena i prezimena svih studenata. Ime i prezime treba ispisati zajedno, u jednom stupcu.

SELECT 
stud.mbrStud, CONCAT(ImeStud,  prezStud) Studenti
FROM
stud;

-- Zadatak 3.3
-- Ispišite sva imena studenata tako da se ni jedno ne pojavi dva puta. Sortirajte imena silazno po abecedi
SELECT
DISTINCT stud.imeStud
FROM
stud
ORDER BY imeStud DESC;

-- Zadatak 3.4
-- Ispišite matične brojeve studenata koji su položili ispit iz predmeta sa šifrom 146
SELECT
mbrStud
FROM
ispit
WHERE ispit.sifPred=146;

-- Zadatak 3.5
-- Ispišite imena i prezimena nastavnika te njihovu plaću dobivenu formulom: (koeficijent + 0.4) * 800
SELECT
nastavnik.imeNastavnik,nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 AS Placa
FROM
nastavnik;
-- Zadatak 3.6
-- Ispišite imena i prezimena nastavnika iz prethodnog zadatka koji imaju plaću manju od 3.500,00 
-- ili veću od 8.000,00 kn
SELECT 
nastavnik.imeNastavnik, nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 AS Placa
FROM
nastavnik
WHERE ((nastavnik.koef+0.4)*800 <3500) OR ((nastavnik.koef+0.4)*800 > 8000);

-- Zadatak 3.7
-- Ispišite imena i prezimena studenata koji su barem jednom pali na ispitu iz predmeta sa šiframa od 220 do 240;
SELECT
stud.imeStud,stud.prezStud
FROM
stud
INNER JOIN (
SELECT ispit.mbrStud, ispit.sifPred, ispit.ocjena
FROM ispit
WHERE ispit.sifPred BETWEEN 220 AND 240 AND ispit.ocjena = 1) ispiti ON stud.mbrStud=ispiti.mbrStud;