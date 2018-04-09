-- Zadatak 5.1
-- Ispišite imena i prezimena te mjesta rođenja studenata kojima ime počinje slovom F.

SELECT
stud.imeStud,stud.prezStud, mjesto.nazMjesto
FROM
stud
JOIN mjesto ON mjesto.pbr=stud.pbrRod
WHERE LEFT(imeStud,1)='F'
;
-- Zadatak 5.2
-- Ispišite ime i prezime nastavnika koji živi u mjestu koje na trećem mjestu ima slovo Z.
SELECT imeNastavnik, prezNastavnik
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
WHERE SUBSTRING(nazMjesto,3,1)='Z';

-- Zadatak 5.3
-- Ispišite ime i prezime studenata te imena i prezimena nastavnika koji u imenu na petom mjestu imaju isto slovo.
SELECT imeStud, prezStud, imeNastavnik, prezNastavnik
FROM stud
JOIN ispit ON ispit.mbrStud=stud.mbrStud
JOIN nastavnik ON ispit.sifNastavnik=nastavnik.sifNastavnik
WHERE SUBSTRING(imeStud,5,1)=SUBSTRING(imeNastavnik,5,1);
-- Zadatak 5.4
-- Ispišite nazive županija kojima je duljina imena duža od 13 znakova, a kraća od 20 znakova
SELECT 
nazZupanija 
FROM 
zupanija
WHERE LENGTH(nazZupanija) BETWEEN 13 and 20;

-- 5.5
-- Ispišite ime i prezime studenata koji su rođeni u svibnju
SELECT imeStud, prezStud 
FROM 
stud
WHERE MONTH(datRodStud)=5;
-- 5.6
-- Ispišite ime i prezime studenata koji su na ispit izašli između 10. i 20. u mjesecu.
SELECT DISTINCT
imeStud, prezStud 
FROM 
stud
JOIN ispit ON stud.mbrStud=ispit.mbrStud
WHERE DAY(datIspit) BETWEEN 10 and 20;
-- 5.7
-- Pronađite podatke o nastavnicima koji su u lipnju ispitivali studente čije je mjesto rođenja isto mjestu nastavnikova stanovanja. Ispišite ime i prezime nastavnika, naziv mjesta u kojem stanuje, ime i prezime studenta te naziv mjesta u kojem je rožen.
SELECT 
imeNastavnik, prezNastavnik, m1.nazMjesto,imeStud, prezStud, m2.nazMjesto
FROM 
nastavnik
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN mjesto m1 ON m1.pbr=nastavnik.pbrStan
JOIN stud ON stud.mbrStud=ispit.mbrStud
JOIN mjesto m2 ON m2.pbr=stud.pbrRod
WHERE MONTH(datIspit)=6 AND m1.nazMjesto=m2.nazMjesto;  
      