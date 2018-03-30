-- Zadatak 3.2
-- Ispišite matične brojeve te imena i prezimena svih studenata. Ime i prezime treba ispisati zajedno,
-- u jednom stupcu.
SELECT stud.mbrStud, CONCAT(stud.imeStud,' ',stud.prezStud) student
FROM stud;

-- Zadatak 3.3
-- Ispišite sva imena studenata tako da se ni jedno ne pojavi dva puta. Sortirajte imena silazno po abecedi;
SELECT DISTINCT stud.imeStud
FROM stud
ORDER BY stud.imeStud DESC;

-- Zadatak 3.4
-- Ispišite matične brojeve studenata koji su položili ispit iz predmeta sa šifrom 146

SELECT stud.mbrStud
FROM stud
INNER JOIN ispit ON stud.mbrStud = ispit.mbrStud
WHERE ispit.sifPred=146;

-- ILI
 
SELECT mbrStud
FROM ispit
WHERE sifPred=146
ORDER BY mbrStud;

-- Zadatak 3.5
-- Ispišite imena i prezimena nastavnika te njihovu plaću dobivenu formulom: (koeficijent + 0.4) * 800

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 placa
FROM nastavnik
ORDER BY nastavnik.prezNastavnik;

-- Zadatak 3.6
-- Ispišite imena i prezimena nastavnika iz prethodnog zadatka koji imaju plaću manju od 3.500,00 
-- ili veću od 8.000,00 kn

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 placa
FROM nastavnik
WHERE (nastavnik.koef+0.4)*800 < 3500 OR (nastavnik.koef+0.4)*800 > 8000
ORDER BY (nastavnik.koef+0.4)*800;

-- Zadatak 3.7
-- Ispišite imena i prezimena studenata koji su barem jednom pali na ispitu iz predmeta sa šiframa od 220 do 240;


SELECT stud.imeStud, stud.prezStud, ispiti.ocjena
FROM stud
INNER JOIN (
SELECT ispit.mbrStud, ispit.sifPred, ispit.ocjena
FROM ispit
WHERE ispit.sifPred BETWEEN 220 AND 240 AND ispit.ocjena = 1) ispiti ON stud.mbrStud=ispiti.mbrStud;
				                             
-- Zadatak 3.8
-- Ispiši imena i prezimena studenata koji su na nekom ispitu dobili 3.

SELECT DISTINCT stud.imeStud, stud.prezStud, ispiti.ocjena
FROM stud
INNER JOIN (
SELECT ispit.mbrStud, ispit.sifPred, ispit.ocjena
FROM ispit
WHERE ispit.ocjena = 3) ispiti ON stud.mbrStud=ispiti.mbrStud;

-- Zadatak 3.9
-- Ispišite nazive predmeta na koje nije izašao niti jedan student.

-- moj preferirani nacin
SELECT pred.sifPred, pred.nazPred
FROM pred
LEFT JOIN ispit ON pred.sifPred = ispit.sifPred
WHERE ispit.sifPred IS NULL;
-- ili (kod većih tablica se desilo da ne vrati sve podatke)
SELECT pred.sifPred, pred.nazPred
FROM pred
WHERE pred.sifPred NOT IN (
SELECT sifPred
FROM ispit);
-- ili (drugi preferirani nacin)
SELECT pred.sifPred, pred.nazPred
FROM pred
WHERE NOT EXISTS (
SELECT 1
FROM ispit
WHERE ispit.sifPred = pred.sifPred);

-- Zadatak 3.10
-- Ispišite nazive predmeta na koje je izašao barem jedan student

SELECT DISTINCT pred.sifPred, pred.nazPred
FROM pred
INNER JOIN ispit ON pred.sifPred = ispit.sifPred;
-- ili (kod većih tablica se desilo da ne vrati sve podatke)
SELECT pred.sifPred, pred.nazPred
FROM pred
WHERE pred.sifPred IN (
SELECT sifPred
FROM ispit);
-- ili (drugi preferirani nacin)
SELECT pred.sifPred, pred.nazPred
FROM pred
WHERE EXISTS (
SELECT 1
FROM ispit
WHERE ispit.sifPred = pred.sifPred);

-- Zadatak 3.11
-- Ispišite sve podatke o studentima čije ime počinje i završava samoglasnikom.

SELECT *
FROM stud
WHERE SUBSTR(stud.imeStud,1,1) IN ('A','E','I','O','U') AND SUBSTR(UPPER(stud.imeStud), LENGTH(stud.imeStud),1) IN ('A','E','I','O','U');

-- Zadatak 3.12
-- Ispišite sve podatke o studentima kojima ime počinje i završava bilo kojim znakom osim samoglasnikom

SELECT *
FROM stud
WHERE SUBSTR(stud.imeStud,1,1) NOT IN ('A','E','I','O','U') AND SUBSTR(UPPER(stud.imeStud), LENGTH(stud.imeStud),1) NOT IN ('A','E','I','O','U');

-- Zadatak 3.13
-- isti je kao zadatak 3.11

-- Zadatak 3.14
-- Ispiši sve podatke o studentima kojima ime ili prezime bilo gdje sadržava slova n i k jedno iza drugog.

SELECT *
FROM stud
WHERE INSTR(UPPER(imeStud),'NK') > 0 OR INSTR(UPPER(prezStud),'NK') > 0;

-- Zadatak 3.15
-- Ispišite ime i prezime studenta te naziv i ocjenu za svaki ispit.

SELECT stud.mbrStud, stud.imeStud, stud.prezStud, pred.nazPred, ispit.ocjena
FROM stud
INNER JOIN ispit ON stud.mbrStud = ispit.mbrStud
INNER JOIN pred ON ispit.sifPred = pred.sifPred
ORDER BY stud.prezStud, stud.imeStud, pred.nazPred;

-- Zadatak 3.16
-- Ispišite imena i prezimena studenata te mjesto i županiju u kojoj su rođeni. Nakon toga dodajte mjesto i 
-- županiju gdje stanuju

SELECT stud.imeStud AS "Ime studenta", stud.prezStud AS "Prezime studenta", mjesto.nazMjesto AS "Mjesto rođenja", zupanija.nazZupanija AS "Županija rođenja", 
 mj_stan.nazMjesto AS "Mjesto stanovanja", zup_stan.nazZupanija AS "Županija stanovanja"
FROM stud
INNER JOIN mjesto ON stud.pbrRod = mjesto.pbr
INNER JOIN zupanija ON mjesto.sifZupanija = zupanija.sifZupanija
INNER JOIN mjesto AS mj_stan ON stud.pbrStan = mj_stan.pbr
INNER JOIN zupanija AS zup_stan ON mj_stan.sifZupanija = zup_stan.sifZupanija;

-- Zadatak 3.17
-- Ispišite nazive predmeta i organizacijske jedinice kojima pripadaju za one kolegije koji imaju
-- više od 20 upisanih studenata

SELECT pred.nazPred, orgjed.nazOrgjed, pred.upisanoStud
FROM pred
INNER JOIN orgjed ON pred.sifOrgjed = orgjed.sifOrgjed
WHERE pred.upisanoStud > 20
ORDER BY orgjed.nazOrgjed, pred.nazPred;

-- Zadatak 3.18
-- Ispišite sve nazive mjesta u kojima stanuje barem jedan student. Imena mjesta smiju se pojaviti samo jednom.

SELECT mjesto.nazMjesto
FROM mjesto
WHERE mjesto.pbr IN (
SELECT pbrStan
FROM stud)
ORDER BY nazMjesto;
-- ili
SELECT mjesto.nazMjesto
FROM mjesto
WHERE EXISTS (
SELECT 1
FROM stud
WHERE stud.pbrStan = mjesto.pbr)
ORDER BY nazMjesto;

-- Zadatak 3.19
-- Ispišite nazive mjesta u kojima je barem jedan studen i rođen i stanuje. Imena mjesta smiju se pojaviti samo jednom.

SELECT mjesto.nazMjesto
FROM mjesto
WHERE EXISTS (
SELECT 1
FROM (
SELECT stud.pbrRod
FROM stud
WHERE stud.pbrRod = stud.pbrStan) st
WHERE st.pbrRod = mjesto.pbr)
ORDER BY mjesto.nazMjesto;

-- Zadatak 3.20
-- Ispišite oznake dvorana i nazive kolegija za one kolegije koji imaju više od 2 sata predavanja tjedno.

SELECT rez.oznDvorana, pred.nazPred
FROM pred
LEFT JOIN (
SELECT DISTINCT oznDvorana, sifPred
FROM rezervacija) rez ON pred.sifPred = rez.sifPred
WHERE pred.brojSatiTjedno > 2
ORDER BY pred.sifPred, rez.oznDvorana;
 
-- Zadatak 3.21
-- Ispišite nazive kolegija i oznake dvorana u kojima imaju rezerviran temrin.
-- Ispišite i naziv organizacijske jedinice kojoj kolegij pripada.

SELECT DISTINCT pred.nazPred, rezervacija.oznDvorana, orgjed.nazOrgjed
FROM pred
INNER JOIN rezervacija ON pred.sifPred = rezervacija.sifPred
INNER JOIN orgjed ON pred.sifOrgjed = orgjed.sifOrgjed
ORDER BY pred.nazPred;

-- Zadatak 3.22
-- Ispišite podatke o nastavnicima koji su ispitivali studente koji stanuju u istoj županiji u kojoj
-- stanuje i nastavnik

SELECT DISTINCT nastavnik.imeNastavnik, nastavnik.prezNastavnik, nastavnik.nazZupanija
FROM stud
INNER JOIN mjesto ON stud.pbrStan = mjesto.pbr
INNER JOIN (
SELECT DISTINCT ispit.mbrStud, ispit.sifNastavnik
FROM ispit) ispit ON stud.mbrStud = ispit.mbrStud
INNER JOIN (
SELECT nas.sifNastavnik, nas.imeNastavnik, nas.prezNastavnik, nas.pbrStan, nas.sifOrgjed, mjesto.sifZupanija, zupanija.nazZupanija
FROM nastavnik nas
INNER JOIN mjesto ON nas.pbrStan = mjesto.pbr
INNER JOIN zupanija ON mjesto.sifZupanija=zupanija.sifZupanija) nastavnik ON ispit.sifNastavnik = nastavnik.sifNastavnik
WHERE mjesto.sifZupanija = nastavnik.sifZupanija
ORDER BY nastavnik.prezNastavnik;

-- Zadatak 3.23
-- Ispišite podatke o studentima koji studiraju u mjestu različitom od mjesta rođenja, ali koje se nalazi u istoj
-- županiji u kojoj su rođeni

SELECT *
FROM stud
INNER JOIN mjesto AS mjr ON stud.pbrRod = mjr.pbr
INNER JOIN mjesto AS mjs ON stud.pbrStan = mjs.pbr
WHERE stud.pbrRod <> stud.pbrStan AND mjr.sifZupanija = mjs.sifZupanija;

-- Zadatak 3.24
-- Ispišite podatke o studentima i nastavnicima koji imaju ista prezimena

SELECT *
FROM stud
INNER JOIN nastavnik ON UPPER(stud.prezStud) = UPPER(nastavnik.prezNastavnik);

-- studenti i nastavnici kod kojih polažu ispite s istim prezimenima (nema podataka)
SELECT stud.imeStud, stud.prezStud, nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM stud
INNER JOIN mjesto ON stud.pbrStan = mjesto.pbr
INNER JOIN (
SELECT DISTINCT ispit.mbrStud, ispit.sifNastavnik
FROM ispit) ispit ON stud.mbrStud = ispit.mbrStud
INNER JOIN (
SELECT nas.sifNastavnik, nas.imeNastavnik, nas.prezNastavnik, nas.pbrStan, nas.sifOrgjed, mjesto.sifZupanija
FROM nastavnik nas
INNER JOIN mjesto ON nas.pbrStan = mjesto.pbr) nastavnik ON ispit.sifNastavnik = nastavnik.sifNastavnik
WHERE UPPER(stud.prezStud) = UPPER(nastavnik.prezNastavnik);

-- Zadatak 3.25
-- Ispišite podatke o studentima i njihovim mjestima stanovanja za one studente koji su barem jednom pali na ispitu
-- "Osnove baza podataka".

SELECT DISTINCT pred.nazPred, stud.imeStud, stud.prezStud, mjesto.nazMjesto
FROM ispit
INNER JOIN pred ON ispit.sifPred=pred.sifPred
INNER JOIN stud ON ispit.mbrStud = stud.mbrStud
INNER JOIN mjesto ON stud.pbrStan = mjesto.pbr
WHERE pred.nazPred = 'Osnove baza podataka' AND ispit.ocjena = 1;
   
-- Zadatak 3.26
-- Ispišite imena i prezimena, mjesta stanovanja i županiju nastavnika te naziv kolegija za
-- nastavnike koji su ispitivali studente koji su dobili ocjenu 2 ili 3 iz tog kolegija


SELECT DISTINCT nas.imeNastavnik, nas.prezNastavnik, nas.nazMjesto, nas.nazZupanija, pred.nazPred
FROM ispit
INNER JOIN pred ON pred.sifPred=ispit.sifPred
INNER JOIN (
SELECT nas.sifNastavnik, nas.imeNastavnik, nas.prezNastavnik, nas.pbrStan, mjesto.nazMjesto, mjesto.sifZupanija, zupanija.nazZupanija
FROM nastavnik nas
INNER JOIN mjesto ON nas.pbrStan = mjesto.pbr
INNER JOIN zupanija ON mjesto.sifZupanija = zupanija.sifZupanija) AS nas ON ispit.sifPred = nas.sifNastavnik
WHERE ispit.ocjena IN (2,3)
ORDER BY pred.nazPred;
