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

SELECT imeStud,prezStud FROM stud,ispit
WHERE stud.mbrStud=ispit.mbrStud AND ocjena = 1 AND (sifPred BETWEEN 220 AND 240);

				                             
-- Zadatak 3.8
-- Ispiši imena i prezimena studenata koji su na nekom ispitu dobili 3.

SELECT DISTINCT imeStud, prezStud FROM stud
JOIN ispit ON stud.mbrStud=ispit.mbrStud WHERE ocjena=3;

-- Zadatak 3.9
-- Ispišite nazive predmeta na koje nije izašao niti jedan student.

SELECT nazPRED FROM pred
LEFT JOIN ispit ON pred.sifPred=ispit.sifPred WHERE datIspit IS NULL
ORDER BY nazPred;

-- Zadatak 3.10
-- Ispišite nazive predmeta na koje je izašao barem jedan student

SELECT DISTINCT nazPred FROM pred
INNER JOIN ispit ON pred.sifPred = ispit.sifPred;


-- Zadatak 3.11
-- Ispišite sve podatke o studentima čije ime počinje i završava samoglasnikom.

SELECT
*
FROM stud
WHERE LEFT(imeStud,1) IN ('A','E','I','O','U') AND RIGHT(imeStud,1) IN ('A','E','I','O','U');

-- Zadatak 3.12
-- Ispišite sve podatke o studentima kojima ime počinje i završava bilo kojim znakom osim samoglasnikom

SELECT
*
FROM stud
WHERE LEFT(imeStud,1) NOT IN ('A','E','I','O','U') AND RIGHT(imeStud,1) NOT IN ('A','E','I','O','U');


-- Zadatak 3.14
-- Ispiši sve podatke o studentima kojima ime ili prezime bilo gdje sadržava slova n i k jedno iza drugog.

SELECT *
FROM stud
WHERE INSTR(UPPER(imeStud),'NK') > 0 OR INSTR(UPPER(prezStud),'NK') > 0;

--  ILI

SELECT
*
FROM stud
WHERE imeStud LIKE '%nk%' OR prezStud LIKE '%nk%';

-- Zadatak 3.15
-- Ispišite ime i prezime studenta te naziv i ocjenu za svaki ispit.

SELECT imeStud,prezStud,nazPred,ocjena
FROM ispit
INNER JOIN stud ON stud.mbrStud = ispit.mbrStud
INNER JOIN pred ON ispit.sifPred = pred.sifPred
ORDER BY prezStud,imeStud,nazPred;

-- Zadatak 3.16
-- Ispišite imena i prezimena studenata te mjesto i županiju u kojoj su rođeni. Nakon toga dodajte mjesto i županiju gdje stanuju

SELECT imeStud, prezStud, m.nazMjesto AS "Mjesto rođenja", z.nazZupanija AS "Županija rođenja", 
 m2.nazMjesto AS "Mjesto boravka", z2.nazZupanija AS "Županija boravka"
FROM stud s
INNER JOIN mjesto m ON m.pbr = s.pbrRod
INNER JOIN zupanija z ON m.sifZupanija = z.sifZupanija
INNER JOIN mjesto m2 ON s.pbrStan = m2.pbr
INNER JOIN zupanija z2 ON z2.sifZupanija = m2.sifZupanija;

-- Zadatak 3.17
-- Ispišite nazive predmeta i organizacijske jedinice kojima pripadaju za one kolegije koji imaju više od 20 upisanih studenata

SELECT nazPred,nazOrgjed,upisanoStud
FROM pred
INNER JOIN orgjed ON pred.sifOrgjed = orgjed.sifOrgjed
WHERE upisanoStud > 20
ORDER BY nazOrgjed,nazPred;

-- Zadatak 3.18
-- Ispišite sve nazive mjesta u kojima stanuje barem jedan student. Imena mjesta smiju se pojaviti samo jednom.

SELECT DISTINCT nazMjesto
FROM mjesto
INNER JOIN stud ON mjesto.pbr=stud.pbrStan
WHERE pbrStan=pbrRod;

-- Zadatak 3.19
-- Ispišite nazive mjesta u kojima je barem jedan studen i rođen i stanuje. Imena mjesta smiju se pojaviti samo jednom.

SELECT DISTINCT nazMjesto
FROM mjesto
INNER JOIN stud ON mjesto.pbr=stud.pbrStan
WHERE pbrStan=pbrRod
ORDER BY nazMjesto;

-- Zadatak 3.20
-- Ispišite oznake dvorana i nazive kolegija za one kolegije koji imaju više od 2 sata predavanja tjedno.

SELECT nazPred,oznDvorana
FROM pred
LEFT JOIN rezervacija ON pred.sifPred=rezervacija.sifPred
WHERE brojSatiTjedno>2
ORDER BY pred.sifPred,oznDvorana;
 
-- Zadatak 3.21
-- Ispišite nazive kolegija i oznake dvorana u kojima imaju rezerviran temrin. Ispišite i naziv organizacijske jedinice kojoj kolegij pripada.

SELECT DISTINCT nazPred,oznDvorana,nazOrgjed
FROM pred
INNER JOIN rezervacija ON pred.sifPred = rezervacija.sifPred
INNER JOIN orgjed ON pred.sifOrgjed = orgjed.sifOrgjed
ORDER BY nazPred;

-- Zadatak 3.22
-- Ispišite podatke o nastavnicima koji su ispitivali studente koji stanuju u istoj županiji u kojoj stanuje i nastavnik

SELECT DISTINCT imeNastavnik,prezNastavnik
FROM nastavnik
INNER JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
INNER JOIN stud ON ispit.mbrStud=stud.mbrStud
INNER JOIN mjesto m1 ON m1.pbr=stud.pbrStan
INNER JOIN mjesto m2 ON m2.pbr=nastavnik.pbrStan
WHERE m1.sifZupanija=m2.sifZupanija
ORDER BY prezNastavnik;

-- Zadatak 3.23
-- Ispišite podatke o studentima koji studiraju u mjestu različitom od mjesta rođenja, ali koje se nalazi u istoj županiji u kojoj su rođeni

SELECT *
FROM stud
INNER JOIN mjesto AS m1 ON stud.pbrRod = m1.pbr
INNER JOIN mjesto AS m2 ON stud.pbrStan = m2.pbr
WHERE stud.pbrRod <> stud.pbrStan AND m1.sifZupanija = m2.sifZupanija;

-- Zadatak 3.24
-- Ispišite podatke o studentima i nastavnicima koji imaju ista prezimena

SELECT stud.*,nastavnik.*
FROM stud,nastavnik
WHERE stud.prezStud=nastavnik.prezNastavnik;


-- Zadatak 3.25
-- Ispišite podatke o studentima i njihovim mjestima stanovanja za one studente koji su barem jednom pali na ispitu "Osnove baza podataka".

SELECT DISTINCT imeStud,prezStud,nazMjesto
FROM stud
JOIN mjesto ON stud.pbrStan = mjesto.pbr
JOIN ispit ON ispit.mbrStud = stud.mbrStud
JOIN pred ON pred.sifPred=ispit.sifPred
WHERE nazPred='Osnove baza podataka' AND ocjena=1;
   
-- Zadatak 3.26
-- Ispišite imena i prezimena, mjesta stanovanja i županiju nastavnika te naziv kolegija za nastavnike koji su ispitivali studente koji su dobili ocjenu 2 ili 3 iz tog kolegija


SELECT imeNastavnik,prezNastavnik,nazMjesto,nazZupanija,nazPred,ocjena
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
JOIN zupanija ON zupanija.sifZupanija=mjesto.sifZupanija
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN pred ON pred.sifPred=ispit.sifPred
WHERE ocjena=2 OR ocjena=3
ORDER BY nazPred;