zadatak 3.2.
USE fakultet;
SELECT
mbtStud,
concat(imeStud,' ',prezStud) AS 'Ime i prezime'
FROM stud;/* 
zadatak 3.3.
SELECT imeStus FROM stud
GROUP BY imeStud
ORDER BY imeStud DESC;
zadatak 3.4.
SELECT mbrStud from ispit
WHERE sifPred=146;
zadatak 3.5.
SELCET
imeNastavnik,
prezNastavnik,
(koef+0.4)*800 AS 'Placa'
FROM nastavnik;
zadatak 3.6.
imeNastavnik,
prezNastavnik,
(koef+0.4)*800 AS 'Placa'
FROM nastavnik;
WHERE
( (koef+0.4)*800<3500) OR ((koef+0.4)*800>8000);
zadatak3.7.
SELECT
imeStud,prezStud
FROM
stud, ispit
WHERE
stud.mbrStud = ispit.mbrStud
AND
ocjena=1
AND
(sifPred BETWEEN 220 AND 240);
3.8.
SELECT DISTINCT imeStud, prezStud
FROM stud JOIN ispit ON stud.mbrSrud=ispit.mbrStud
WHERE ocjena=3;
zadatak 3.9.
SELECT nazPred
FROM pred
WHERE nazPred NOT IN
(SELECT DISTINCT nazPred
from pred, ispit
WHERE ispit.sifPred = pred.sifPred);
zadatak 3.10
SELECT DISTINCT nazPred
FROM pred JOIN ispit ON ispit.sifPred = pred.sifPred;
zadatak 3.11.
SELECT * FROM stud
WHERE
LEFT(ime Stud,1) IN ('a', 'e', 'i', 'o','u')
OR
RIGHT(imeStud,1) IN ('a', 'e', 'i', 'o', 'u');
zadatak 3.12
SELECT * FROM stud
WHERE
LEFT(ime Stud,1) NOT IN ('a', 'e', 'i', 'o','u')
OR
RIGHT(imeStud,1) NOT IN ('a', 'e', 'i', 'o', 'u');
zadatak 3.12
SELECT * FROM stud
WHERE
imeStus LIKE '%nk%'
OR
prezStud LIKE '%nk%';
zadatak 3.13.
SELECT * FROM stud
WHERE
LEFT(ime Stud,1)  IN ('a', 'e', 'i', 'o','u')
OR
RIGHT(imeStud,1)  IN ('a', 'e', 'i', 'o', 'u');
zadatak 3.14.
SELECT * FROM stud
WHERE
imeStus LIKE '%nk%'
OR
prezStud LIKE '%nk%';
zadatak 3.15
SELECT imeStud,prezStud,nazPred,ocjena
FROM ispit i 
JOIN stud s ON immbrStud=s.mbrStud
JOIN pred p ON p.sifPred=i.sifPred;
zadatak 3.16.
SELECT imeStud,prezStud,
m.nazMjesto AS 'Mjesto rođenja',
z.nazZupanija AS 'Zupanija rođenja',
m2.nazMjesto AS 'Mjesto Boravka'
z2.nazZupanja AS 'Zupanija boravka'
FROM stud s
JOIN mjesto m ON m.pbr=s.pbrRod
JOIN zupanija z ON z.sifZupanija=m.sifZupanija
JOIN mjesto m2 ON s.pbrStan=m2.pbr
JOIN zupanija z2 ON z2.sifZupanija=m2.sifZupanija;
zadatak 3.17.
SELECT nazPred, nazOrgjed, upisanoStud
FROM pred
JOIN orgjed ON pred.sifOrgjed=orgjed.sifOrgjed
WHERE upisanoStud>20;
zadatak 3.18.
SELECT DISTINCT nazMjesto
FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan;
3.19.
SELECT DISTINCT nazMjesto
FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan;
WHERE pbrStan=pbrRod;
zadatak 3.20.
SELECT nazPred, oznDvorana
FROM pred
LEFT JOIN rezervacija
ON pred.sifPred = rezervacija.sifPred
WHERE brojSatiTjedno>2;
zadatak 3.21.
SELECT nazPred, oznDvorana,nazOrgjed
FROM pred
JOIN rezervacija ON pred.sifPred=rezervacija.sifPred
JOIN orgjed ON orgjed.sifOrgjed=pred.sifOrgjed;
zadatak 3.22.
SELECT DISTINCT imeNastavnik,prezNastavnik
FROM nastavnik
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN stud ON ispit.mbrStud=stud.mbrStud
JOIN mjesto m1 ON m1.pbr=stud.pbrStan
JOIN mjesto m2 ON m2.pbr=nastavnik.pbrStan
WHERE m1.sifZupanija=m2.sifZupanija;
zadatak 3.23.
SELECT imeStud, prezStud
FROM stud
JOIN mjesto m1 on stud.pbrrod=m1.pbr
JOIN mjesto m2 on stud.pbrstan=m2.pbr
WHERE stud.pbrrod<>stud.pbrstan
AND m1.sifzupanija=m2.sifzupanija;
zadatak 3.24.
SELECT stud.*, nastavnik.*
FROM stud,nastavnik
WHERE stud.prezStud=nastavnik.prezNastavnik;
zadatak 3.25.
SELECT DISTINCT imeStud,prezStud,nazMjesto
FROM stud
JOIN mjesto ON mjesto.pbr=stud.pbrStan
JOIN ispit ON stud.mbrStud=ispit.mbrStud
JOIN pred ON pred.sifPred=ispit.sifPred
WHERE nazPred='Osnove baza podataka' AND ocjena=1;
zadatak 3.26.
SELECT
imeNastavnik, prezNastavnik,
nazMjesto, nazZupanija, nazPred, ocjena
FROM nastavnik
JOIN mjesto
ON mjesto.pbr=nastavnik.pbrStan JOIN ispit
ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN pred
ON pred.sifPred=ispit.sifPred
WHERE ocjena=2 OR ocjena=3
ORDER BY nazPred;
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Mislav
 * Created: 03.04.2018.
 */

