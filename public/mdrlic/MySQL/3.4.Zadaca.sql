-- Zadatak 3.2
-- Ispišite matične brojeve, te imena i prezimena svih studenata. Ime i prezime treba ispisati
-- zajedno, u jednom stupcu.

USE fakultet;
SELECT mbrStud, CONCAT (imeStud, ' ', prezStud) AS 'Ime i prezime' FROM stud;


-- Zadatak 3.3
-- Ispišite sva imena studenata tako da se ni jedno ne pojavi dva puta. Sortirajte imena silazno po
-- abecedi.


SELECT DISTINCT imeStud FROM stud ORDER BY imeStud DESC;


-- Zadatak 3.4
-- Ispišite matične brojeve studenata koji su položili ispit iz predmeta sa šifrom 146.

SELECT mbrStud FROM ispit WHERE sifPred=146;


-- Zadatak 3.5
-- Ispišite imena i prezimena nastavnika, te njihovu plaću dobivenu formulom: (koeficijent + 0.4)*800.

SELECT imeNastavnik, prezNastavnik, (koef+0.4)*800 AS 'Plaća' FROM nastavnik;


-- Zadatak 3.6
-- Ispišite imena i prezimena nastavnika iz prethodnog zadatka koji imaju plaću manju od 3.500,00 kn ili
-- veću od 8.000,00 kn.

SELECT imeNastavnik, prezNastavnik, (koef+0.4)*800 AS 'Plaća' FROM nastavnik
WHERE ((koef+0.4)*800<3500 OR (koef+0.4)*800>8000);


-- Zadatak 3.7
-- Ispišite imena i prezimena studenata koju su barem jednom pali na ispitu iz predmeta sa
-- šiframa od 220 do 240.

SELECT imeStud, prezStud FROM stud, ispit WHERE stud.mbrStud=ispit.mbrStud AND ocjena=1
AND (sifPred BETWEEN 220 AND 240);


-- Zadatak 3.8
-- Ispišite imena i prezimena studenata koji su na nekom ispitu dobili 3.

SELECT DISTINCT imeStud, prezStud FROM stud JOIN ispit ON stud.mbrStud=ispit.mbrStud WHERE ocjena=3;


-- Zadatak 3.9
-- Ispišite nazive predmeta na koje nije izašao niti jedan student.

SELECT nazPred FROM pred LEFT JOIN ispit ON pred.sifPred=ispit.sifPred WHERE
datIspit IS NULL ORDER BY nazPred;


-- Zadatak 3.10
-- Ispišite nazive predmeta na koje je izašao barem jedan student.

SELECT DISTINCT nazPred FROM pred JOIN ispit ON ispit.sifPred=pred.sifPred; 


-- Zadatak 3.11
-- Ispišite sve podatke o studentima čije ime počinje i završava samoglasnikom.

SELECT * FROM stud WHERE LEFT (imeStud, 1) IN ('a', 'e', 'i', 'o', 'u') AND
RIGHT (imeStud, 1) IN ('a', 'e', 'i', 'o', 'u');


-- Zadatak 3.12
-- Ispišite sve podatke o studentima kojima ime počinje i završava bilo kojim znakom osim samoglasnikom.

SELECT * FROM stud WHERE LEFT (imeStud, 1) NOT IN ('a', 'e', 'i', 'o', 'u') AND
RIGHT (imeStud, 1) NOT IN ('a', 'e', 'i', 'o', 'u');


-- Zadatak 3.13
-- Ispišite sve podatke o studentima kojima ime počinje ili završava samoglasnikom.

SELECT * FROM stud WHERE LEFT (imeStud, 1) IN ('a', 'e', 'i', 'o', 'u') OR
RIGHT (imeStud, 1) IN ('a', 'e', 'i', 'o', 'u');


-- Zadatak 3.14
-- Ispišite sve podatke o studentima kojima ime ili prezime bilo gdje sadržava slova n i k
-- jedno iza drugog.

SELECT * FROM stud WHERE imeStud LIKE '%nk%' OR prezStud LIKE '%nk%';


-- Zadatak 3.15
-- Ispišite ime i prezime studenta, te naziv i ocjenu za svaki ispit.

SELECT imeStud, prezStud, nazPred, ocjena FROM ispit i JOIN stud s ON i.mbrStud=s.mbrStud
JOIN pred p ON p.sifPred=i.sifPred;


-- Zadatak 3.16
-- Ispišite imena i prezimena studenata, te mjesto i županiju u kojoj su rođeni. Nakon
-- toga dodajte mjesto i županiju u kojoj stanuju.

SELECT imeStud, prezStud, m.nazMjesto AS 'Mjesto rođenja', z.nazZupanija AS
'Županija rođenja', m2.nazMjesto AS 'Mjesto boravka', z2.nazZupanija AS 
'Županija boravka' FROM stud s JOIN mjesto m ON m.pbr=s.pbrRod JOIN
zupanija z ON z.sifZupanija=m.sifZupanija JOIN mjesto m2 ON s.pbrStan=m2.pbr
JOIN zupanija z2 ON z2.sifzupanija=m2.sifZupanija;


-- Zadatak 3.17
-- Ispišite nazive predmeta i organizacijaske jedinice kojima pripadaju za one
-- kolegije koji imaju više od 20 upisanih studenata.

SELECT nazPred, nazOrgjed, upisanoStud FROM pred JOIN orgjed ON pred.sifOrgjed=orgjed.sifOrgjed
WHERE upisanoStud>20;


-- Zadatak 3.18
-- Ispišite sve nazive mjesta u kojima stanuje barem jedan student. Imena mjesta smiju 
-- se pojaviti samo jednom.

SELECT DISTINCT nazMjesto FROM mjesto JOIN stud ON mjesto.pbr=stud.pbrStan;


-- Zadatak 3.19
-- Ispišite nazive mjesta u kojima je barem jedan student i rođen i stanuje. Imena mjesta smiju
-- se pojaviti samo jednom.
 
SELECT DISTINCT nazMjesto FROM mjesto JOIN stud ON mjesto.pbr=stud.pbrStan
WHERE pbrStan=pbrRod;


-- Zadatak 3.20
-- Ispišite oznake dvorana i nazive kolegija za one kolegije koji imaju više od 2 sata
-- predavanja tjedno.

SELECT nazPred, oznDvorana FROM pred LEFT JOIN rezervacija ON pred.sifPred=rezervacija.sifPred
WHERE brojSatiTjedno>2;


-- Zadatak 3.21
-- Ispišite oznake kolegija i oznake dvorana u kojima imaju rezerviran termin. Ispišite i
-- naziv organizacijske jedinice kojoj kolegij pripada.

SELECT nazPred, oznDvorana, nazOrgjed FROM pred JOIN rezervacija ON
pred.sifPred=rezervacija.sifPred JOIN orgjed ON orgjed.sifOrgjed=pred.sifOrgjed;


-- Zadatak 3.22
-- Ispišite podatke o nastavnicima koji su ispitivali studente koji stanuju u istoj
-- županiji u kojoj stanuje i nastavnik.

SELECT DISTINCT imeNastavnik, prezNastavnik FROM nastavnik JOIN ispit ON
ispit.sifNastavnik=nastavnik.sifNastavnik JOIN stud ON ispit.mbrStud=stud.mbrStud
JOIN mjesto m1 ON m1.pbr=stud.pbrStan JOIN mjesto m2 ON m2.pbr=nastavnik.pbrStan
WHERE m1.sifZupanija=m2.sifZupanija;


-- Zadatak 3.23
-- Ispišite podatke o studentima koji studiraju u mjestu različitom od mjesta rođenja,
-- ali koje se nalazi u istoj županiji u kojoj su i rođeni.

SELECT imeStud, prezStud FROM stud JOIN mjesto m1 ON stud.pbrRod=m1.pbr JOIN
mjesto m2 ON stud.pbrStan=m2.pbr WHERE stud.pbrRod <> stud.pbrStan AND
m1.sifZupanija=m2.sifZupanija;


-- Zadatak 3.24
-- Ispišite podatke o studentima i nastavnicima koji imaju ista prezimena.

SELECT stud.*, nastavnik.* FROM stud, nastavnik WHERE stud.prezStud=nastavnik.prezNastavnik;


-- Zadatak 3.25
-- Ispišite podatke o studentima i njihovim mjestima stanovanja za one studente koji su barem
-- jednom pali na ispitu "Osnove baza podataka".

SELECT DISTINCT imeStud, prezStud, nazMjesto FROM stud JOIN mjesto ON mjesto.pbr=stud.pbrStan
JOIN ispit ON stud.mbrStud=ispit.mbrStud JOIN pred ON pred.sifPred=ispit.sifPred WHERE
nazPred='Osnove baza podataka' AND ocjena=1;


-- Zadatak 3.26
-- Ispišite imena i prezimena, mjesta stanovanja i županiju nastavnika, te naziv kolegija za
-- nastavnike koji su ispitivali studente koji su dobili ocjenu 2 ili 3 iz tog kolegija.

SELECT imeNastavnik, prezNastavnik, nazMjesto, nazZupanija, nazPred, ocjena FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan JOIN zupanija ON zupanija.sifZupanija=mjesto.sifZupanija
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik JOIN pred ON pred.sifPred=ispit.sifPred 
WHERE ocjena=2 OR ocjena=3 ORDER BY nazPred;



/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
