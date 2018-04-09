SELECT
imeStud,pbrStud,pbrRod
FROM stud
WHERE imeStud LIKE 'f%';
/* SQL Error (1054): Unknown column 'pbrStud' in 'field list' */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT
imeStud,prezStud,pbrRod
FROM stud
WHERE imeStud LIKE 'f%';
/* Affected rows: 0  Found rows: 8  Warnings: 0  Duration for 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`mjesto1`;
SHOW CREATE VIEW `fakultet`.`nastavnice`;
SELECT LOAD_FILE(CONCAT(IFNULL(@@GLOBAL.datadir, CONCAT(@@GLOBAL.basedir, 'data/')), 'fakultet/nastavnice.frm'));
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE   TABLE_NAME='nastavnice'   AND TABLE_SCHEMA='fakultet' ;
SELECT CURRENT_USER();
SELECT
imeNastavnik,prezNastavnik,nazMjesto
FROM nastavnik
INNER JOIN mjesto ON mjesto.pbr=nastavnik.sifNastavnik
;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`mjesto1`;
SHOW CREATE TABLE `fakultet`.`zupanija`;
SELECT * FROM nastavnik;
/* Affected rows: 0  Found rows: 98  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT
imeNastavnik,prezNastavnik,pbrStan,nazMjesto
FROM nastavnik
INNER JOIN mjesto ON mjesto.pbr=nastavnik.sifNastavnik
;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`mjesto1`;
SELECT * FROM `fakultet`.`mjesto1` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`mjesto1`;
SELECT * FROM `fakultet`.`stud` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`stud`;
SELECT
imeNastavnik,prezNastavnik
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
WHERE SUBSTRING(nazMjesto,3,1) = 'Z'
;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM `fakultet`.`ispit` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`ispit`;
SELECT imeStud,prezStud,imeNastavnik,prezNastavnik
FROM stud
JOIN ispit
ON ispit.mbrStud = stud.mbrStud
JOIN nastavnik
ON ispit.sifNastavnik = nastavnik.sifNastavnik
WHERE
SUBSTRING (imeStud,5,1) = SUBSTRING (imeNastavnik,5,1);
/* SQL Error (1630): FUNCTION fakultet.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT imeStud,prezStud,imeNastavnik,prezNastavnik
FROM stud
JOIN ispit
ON ispit.mbrStud = stud.mbrStud
JOIN nastavnik
ON ispit.sifNastavnik = nastavnik.sifNastavnik
WHERE
SUBSTRING (imeStud,5,1) = SUBSTRING (imeNastavnik,5,1);
/* SQL Error (1630): FUNCTION fakultet.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`zupanija`;
SELECT * FROM zupanija 
WHERE LENGTH (nazZupanija)
BETWEEN 13 and 20;
/* Affected rows: 0  Found rows: 11  Warnings: 0  Duration for 1 query: 0,015 sec. */
SELECT * FROM `fakultet`.`stud` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`stud`;
SELECT imeStud,prezStud
FROM stud
WHERE MONTH(datRodStud) = 5;
/* Affected rows: 0  Found rows: 25  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT DISTINCT imeStud,prezStud FROM stud 
JOIN ispit ON stud.mbrStud = ispit.mbrStud
WHERE DAY(datIspit) BETWEEN 10 AND 20;
/* Affected rows: 0  Found rows: 74  Warnings: 0  Duration for 1 query: 0,016 sec. */

