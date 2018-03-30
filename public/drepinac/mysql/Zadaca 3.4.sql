-- Zadatak 3.2
-- Ispišite matične brojeve te imena i prezimena svih studenata. Ime i prezime treba ispisati zajedno,
-- u jednom stupcu.
select stud.mbrStud, concat(stud.imeStud,' ',stud.prezStud) student from stud;

-- Zadatak 3.3
-- Ispišite sva imena studenata tako da se ni jedno ne pojavi dva puta. Sortirajte imena silazno po abecedi;
select distinct stud.imeStud from stud order by stud.imeStud desc;

-- Zadatak 3.4
-- Ispišite matične brojeve studenata koji su položili ispit iz predmeta sa šifrom 146

select stud.mbrStud from stud
 inner join ispit on stud.mbrStud = ispit.mbrStud
 where ispit.sifPred=146;

-- ILI
 
select mbrStud from ispit
where sifPred=146
order by mbrStud;

-- Zadatak 3.5
-- Ispišite imena i prezimena nastavnika te njihovu plaću dobivenu formulom: (koeficijent + 0.4) * 800

select nastavnik.imeNastavnik, nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 placa from nastavnik
order by nastavnik.prezNastavnik;

-- Zadatak 3.6
-- Ispišite imena i prezimena nastavnika iz prethodnog zadatka koji imaju plaću manju od 3.500,00 
-- ili veću od 8.000,00 kn

select nastavnik.imeNastavnik, nastavnik.prezNastavnik, (nastavnik.koef+0.4)*800 placa from nastavnik
where (nastavnik.koef+0.4)*800 < 3500 or (nastavnik.koef+0.4)*800 > 8000
order by (nastavnik.koef+0.4)*800;

-- Zadatak 3.7
-- Ispišite imena i prezimena studenata koji su barem jednom pali na ispitu iz predmeta sa šiframa od 220 do 240;


select stud.imeStud, stud.prezStud from stud
inner join (
            select ispit.mbrStud, ispit.sifPred, ispit.ocjena from ispit
             where ispit.sifPred between 220 and 240
               and ispit.ocjena = 1
             order by ispit.mbrStud) ispiti 
				                             on stud.mbrStud=ispiti.mbrStud;
				                             
-- Zadatak 3.8
-- Ispiši imena i prezimena studenata koji su na nekom ispitu dobili 3.

select mbrStud, stud.imeStud, stud.prezStud from stud
inner join (
            select ispit.mbrStud, ispit.sifPred, ispit.ocjena from ispit
             where ispit.sifPred between 220 and 240
               and ispit.ocjena = 1
             order by ispit.mbrStud) ispiti 
				                             on stud.mbrStud=ispiti.mbrStud;
			                             
