-- Zadatak 3.2
-- Ispišite matične brojeve te imena i prezimena svih studenata. Ime i prezime treba ispisati zajedno,
-- u jednom stupcu.
SELECT stud.mbrStud, CONCAT(stud.imeStud,' ',stud.prezStud) AS `Ime i prezime`
FROM stud;

-- Zadatak 3.3
-- Ispišite sva imena studenata tako da se ni jedno ne pojavi dva puta. Sortirajte imena silazno po abecedi;
SELECT DISTINCT stud.imeStud
FROM stud
ORDER BY stud.imeStud DESC;

-- Zadatak 3.4
-- Ispišite matične brojeve studenata koji su položili ispit iz predmeta sa šifrom 146

SELECT mbrStud FROM ispit
WHERE sifPred=146
ORDER BY mbrStud;

-- Zadatak 3.5
-- Ispišite imena i prezimena nastavnika te njihovu plaću dobivenu formulom: (koeficijent + 0.4) * 800

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 AS `plaća`
FROM nastavnik
ORDER BY nastavnik.imeNastavnik;

-- Zadatak 3.6
-- Ispišite imena i prezimena nastavnika iz prethodnog zadatka koji imaju plaću manju od 3.500,00 
-- ili veću od 8.000,00 kn

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 AS `plaća`
FROM nastavnik
WHERE (nastavnik.koef+0.4)*800 < 3500 OR (nastavnik.koef+0.4)*800 > 8000
-- ORDER BY (nastavnik.koef+0.4)*800;
ORDER BY nastavnik.prezNastavnik;


-- Zadatak 3.7
-- Ispišite imena i prezimena studenata koji su barem jednom pali na ispitu iz predmeta sa šiframa od 220 do 240;


