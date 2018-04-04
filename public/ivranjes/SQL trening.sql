SELECT 
DISTINCT
nastavnik.imeNastavnik,nastavnik.prezNastavnik
FROM
 nastavnik INNER JOIN ispit ON ispit.sifNastavnik = nastavnik.sifNastavnik
INNER JOIN stud ON ispit.mbrStud = stud.mbrStud
INNER JOIN mjesto AS m1 ON m1.pbr = stud.pbrStan
INNER JOIN mjesto AS m2 ON m2.pbr=nastavnik.pbrStan
INNER JOIN zupanija ON zupanija.sifZupanija = m1.sifZupanija
WHERE m1.sifZupanija=m2.sifZupanija;


