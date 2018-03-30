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


select stud.imeStud, stud.prezStud, ispiti.ocjena from stud
inner join (
            select ispit.mbrStud, ispit.sifPred, ispit.ocjena from ispit
             where ispit.sifPred between 220 and 240
               and ispit.ocjena = 1) ispiti 
				                             on stud.mbrStud=ispiti.mbrStud;
				                             
-- Zadatak 3.8
-- Ispiši imena i prezimena studenata koji su na nekom ispitu dobili 3.

select distinct stud.imeStud, stud.prezStud, ispiti.ocjena from stud
inner join (select ispit.mbrStud, ispit.sifPred, ispit.ocjena from ispit
             where ispit.ocjena = 3) ispiti 
				                             on stud.mbrStud=ispiti.mbrStud;

-- Zadatak 3.9
-- Ispišite nazive predmeta na koje nije izašao niti jedan student.

-- moj preferirani nacin
select pred.sifPred, pred.nazPred from pred
   left join ispit on pred.sifPred = ispit.sifPred
 where ispit.sifPred is null;
-- ili (kod većih tablica se desilo da ne vrati sve podatke)
select pred.sifPred, pred.nazPred from pred
where pred.sifPred not in (select sifPred from ispit);
-- ili (drugi preferirani nacin)
select pred.sifPred, pred.nazPred from pred
where not exists (select 1 from ispit where ispit.sifPred = pred.sifPred);

-- Zadatak 3.10
-- Ispišite nazive predmeta na koje je izašao barem jedan student

select distinct pred.sifPred, pred.nazPred from pred
   inner join ispit on pred.sifPred = ispit.sifPred;
-- ili (kod većih tablica se desilo da ne vrati sve podatke)
select pred.sifPred, pred.nazPred from pred
where pred.sifPred in (select sifPred from ispit);
-- ili (drugi preferirani nacin)
select pred.sifPred, pred.nazPred from pred
where exists (select 1 from ispit where ispit.sifPred = pred.sifPred);

-- Zadatak 3.11
-- Ispišite sve podatke o studentima čije ime počinje i završava samoglasnikom.

select * from stud
where substr(stud.imeStud,1,1) in ('A','E','I','O','U')
  and substr(upper(stud.imeStud),length(stud.imeStud),1) in  ('A','E','I','O','U');

-- Zadatak 3.12
-- Ispišite sve podatke o studentima kojima ime počinje i završava bilo kojim znakom osim samoglasnikom

select * from stud
where substr(stud.imeStud,1,1) not in ('A','E','I','O','U')
  and substr(upper(stud.imeStud),length(stud.imeStud),1) not in  ('A','E','I','O','U');

-- Zadatak 3.13
-- isti je kao zadatak 3.11

-- Zadatak 3.14
-- Ispiši sve podatke o studentima kojima ime ili prezime bilo gdje sadržava slova n i k jedno iza drugog.

select * from stud
where instr(upper(imeStud),'NK') > 0 or instr(upper(prezStud),'NK') > 0;

-- Zadatak 3.15
-- Ispišite ime i prezime studenta te naziv i ocjenu za svaki ispit.

select stud.mbrStud, stud.imeStud, stud.prezStud, pred.nazPred, ispit.ocjena from stud
  inner join ispit on stud.mbrStud = ispit.mbrStud
  inner join pred  on ispit.sifPred = pred.sifPred
order by stud.prezStud, stud.imeStud, pred.nazPred;

-- Zadatak 3.16
-- Ispišite imena i prezimena studenata te mjesto i županiju u kojoj su rođeni. Nakon toga dodajte mjesto i 
-- županiju gdje stanuju

select stud.imeStud as "Ime studenta", stud.prezStud as "Prezime studenta", mjesto.nazMjesto as "Mjesto rođenja", zupanija.nazZupanija as "Županija rođenja", 
       mj_stan.nazMjesto as "Mjesto stanovanja", zup_stan.nazZupanija as "Županija stanovanja" from stud
inner join mjesto on stud.pbrRod = mjesto.pbr
inner join zupanija on mjesto.sifZupanija = zupanija.sifZupanija
inner join mjesto as mj_stan on stud.pbrStan = mj_stan.pbr
inner join zupanija as zup_stan on mj_stan.sifZupanija = zup_stan.sifZupanija;

-- Zadatak 3.17
-- Ispišite nazive predmeta i organizacijske jedinice kojima pripadaju za one kolegije koji imaju
-- više od 20 upisanih studenata

select pred.nazPred, orgjed.nazOrgjed, pred.upisanoStud from pred
 inner join orgjed on pred.sifOrgjed = orgjed.sifOrgjed
where pred.upisanoStud > 20
order by orgjed.nazOrgjed, pred.nazPred;

-- Zadatak 3.18
-- Ispišite sve nazive mjesta u kojima stanuje barem jedan student. Imena mjesta smiju se pojaviti samo jednom.

select mjesto.nazMjesto from mjesto
where mjesto.pbr in (select pbrStan from stud)
order by nazMjesto;
-- ili
select mjesto.nazMjesto from mjesto
where exists (select 1 from  stud where stud.pbrStan = mjesto.pbr)
order by nazMjesto;

-- Zadatak 3.19
-- Ispišite nazive mjesta u kojima je barem jedan studen i rođen i stanuje. Imena mjesta smiju se pojaviti samo jednom.

select mjesto.nazMjesto from mjesto
where exists (select 1 from (
select stud.pbrRod from stud
where stud.pbrRod = stud.pbrStan) st where st.pbrRod = mjesto.pbr)
order by mjesto.nazMjesto;

-- Zadatak 3.20
-- Ispišite oznake dvorana i nazive kolegija za one kolegije koji imaju više od 2 sata predavanja tjedno.

select rez.oznDvorana, pred.nazPred
  from pred
  left join (select distinct oznDvorana, sifPred from rezervacija) rez on pred.sifPred = rez.sifPred
 where pred.brojSatiTjedno > 2
 order by pred.sifPred, rez.oznDvorana;
 
-- Zadatak 3.21
-- Ispišite nazive kolegija i oznake dvorana u kojima imaju rezerviran temrin.
-- Ispišite i naziv organizacijske jedinice kojoj kolegij pripada.

select distinct pred.nazPred, rezervacija.oznDvorana, orgjed.nazOrgjed
  from pred
 inner join rezervacija on pred.sifPred = rezervacija.sifPred
 inner join orgjed on pred.sifOrgjed = orgjed.sifOrgjed
 order by pred.nazPred;

-- Zadatak 3.22
-- Ispišite podatke o nastavnicima koji su ispitivali studente koji stanuju u istoj županiji u kojoj
-- stanuje i nastavnik

select distinct nastavnik.imeNastavnik, nastavnik.prezNastavnik, nastavnik.sifZupanija
  from stud
 inner join mjesto on stud.pbrStan = mjesto.pbr
 inner join (select distinct ispit.mbrStud, ispit.sifNastavnik from ispit) ispit  on stud.mbrStud = ispit.mbrStud
 inner join  (select nas.sifNastavnik, nas.imeNastavnik, nas.prezNastavnik, nas.pbrStan, nas.sifOrgjed, mjesto.sifZupanija
                from nastavnik nas
               inner join mjesto on nas.pbrStan = mjesto.pbr) nastavnik on ispit.sifNastavnik = nastavnik.sifNastavnik
where mjesto.sifZupanija = nastavnik.sifZupanija
order by nastavnik.prezNastavnik;

