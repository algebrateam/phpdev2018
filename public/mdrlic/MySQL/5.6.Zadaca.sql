-- Zadatak 5.1
USE fakultet;

SELECT imeStud, prezStud, nazMjesto
FROM stud
JOIN mjesto ON mjesto.pbr=stud.pbrRod
WHERE imeStud LIKE 'F%';


-- Zadatak 5.2
SELECT imeNastavnik, prezNastavnik
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
WHERE SUBSTRING(nazMjesto,3,1)='Z';


-- Zadatak 5.3
SELECT imeStud, prezStud, imeNastavnik, prezNastavnik
FROM stud
JOIN ispit
ON ispit.mbrStud=stud.mbrStud
JOIN nastavnik
ON ispit.sifNastavnik=nastavnik.sifNastavnik
WHERE SUBSTRING(imeStud,5,1)=SUBSTRING(imeNastavnik,5,1);


-- Zadatak 5.4
SELECT nazZupanija FROM zupanija
WHERE LENGTH(nazZupanija) BETWEEN 13 and 20;


-- Zadatak 5.5
SELECT imeStud, prezStud FROM stud
WHERE DATE_FORMAT(datRodStud,'%M')='May';


-- Zadatak 5.6
SELECT DISTINCT imeStud, prezStud FROM stud
JOIN ispit ON stud.mbrStud=ispit.mbrStud
WHERE DAY(datIspit) BETWEEN 10 and 20;


-- Zadatak 5.7
SELECT imeNastavnik, prezNastavnik, m1.nazMjesto,
       imeStud, prezStud, m2.nazMjesto
FROM nastavnik
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN mjesto m1 ON m1.pbr=nastavnik.pbrStan
JOIN stud ON stud.mbrStud=ispit.mbrStud
JOIN mjesto m2 ON m2.pbr=stud.pbrRod
WHERE MONTH(datIspit)=6 AND m1.nazMjesto=m2.nazMjesto;        



/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

