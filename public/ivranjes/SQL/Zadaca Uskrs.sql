explain crud;
/* Affected rows: 0  Found rows: 5  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
JOIN stud on CRUD.id = stud.mbrStud;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
INNER JOIN stud on CRUD.id = stud.mbrStud;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`dvorana`;
SELECT brojcipela,bojacipela FROM CRUD
LEFT JOIN stud on CRUD.id = stud.mbrStud;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
RIGHT JOIN stud on CRUD.id = stud.mbrStud;
/* Affected rows: 0  Found rows: 302  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
Left JOIN stud on CRUD.id = stud.mbrStud;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`password_resets`;
SHOW CREATE TABLE `fakultet`.`users`;
SELECT brojcipela,bojacipela FROM CRUD
Left JOIN stud on CRUD.id = stud.mbrStud;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
WHERE brojcipela=44 AND bojacipela=žuta;
/* SQL Error (1054): Unknown column 'žuta' in 'where clause' */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
WHERE brojcipela = 44 AND bojacipela = žuta;
/* SQL Error (1054): Unknown column 'žuta' in 'where clause' */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
WHERE brojcipela = 44;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
WHERE brojcipela = 44,bojacipela = žuta;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'bojacipela = žuta' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT brojcipela,bojacipela FROM CRUD
WHERE brojcipela = 44;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT DISTINCT imeStud FROM stud
GROUP BY imeStud
ORDER BY imeStud;
/* Affected rows: 0  Found rows: 171  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT imeStud FROM stud
GROUP BY imeStud
ORDER BY imeStud;
/* Affected rows: 0  Found rows: 171  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT mbrStud FROM stud
WHERE sifPred=146;
/* SQL Error (1054): Unknown column 'sifPred' in 'where clause' */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT mbrStud FROM ispit
WHERE sifPred=146;
/* Affected rows: 0  Found rows: 9  Warnings: 0  Duration for 1 query: 0,000 sec. */
explain ispit;
/* Affected rows: 0  Found rows: 5  Warnings: 0  Duration for 1 query: 0,015 sec. */
SELECT sifPred FROM ispit WHERE mbrStud LIKE '%1%';
/* Affected rows: 0  Found rows: 639  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT sifPred FROM ispit WHERE mbrStud LIKE '1%';
/* Affected rows: 0  Found rows: 639  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT sifPred FROM ispit WHERE mbrStud LIKE '%37%';
/* Affected rows: 0  Found rows: 24  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT sifPred FROM ispit WHERE mbrStud LIKE '%37%';
/* Affected rows: 0  Found rows: 24  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT sifPred FROM ispit;
/* Affected rows: 0  Found rows: 639  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT DISTINCT sifPred FROM ispit;
/* Affected rows: 0  Found rows: 68  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM `fakultet`.`users` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`users`;
SHOW CREATE TABLE `fakultet`.`migrations`;
SHOW CREATE TABLE `fakultet`.`mjesto`;
EXPLAIN nastavnik;
/* Affected rows: 0  Found rows: 6  Warnings: 0  Duration for 1 query: 0,016 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200;
/* Affected rows: 0  Found rows: 20  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200
CONCAT;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONCAT' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200
GROUP BY sifNastavnik;
/* Affected rows: 0  Found rows: 20  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200
;
/* Affected rows: 0  Found rows: 20  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200
;
/* Affected rows: 0  Found rows: 20  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200
;
/* Affected rows: 0  Found rows: 20  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik (BETWEEN 1 AND 200) AND koef< 7.10;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'BETWEEN 1 AND 200) AND koef< 7.10' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200 AND koef< 7.10;
/* Affected rows: 0  Found rows: 12  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM nastavnik WHERE sifNastavnik BETWEEN 1 AND 200 AND koef<= 7.10;
/* Affected rows: 0  Found rows: 13  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM users;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,016 sec. */
INSERT INTO users VALUES (1,'Ivan','ivan.vranjes@t.ht.hr','password','Y','01032018','03032018');
/* SQL Error (1292): Incorrect datetime value: '01032018' for column 'created_at' at row 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
explain users;
/* Affected rows: 0  Found rows: 7  Warnings: 0  Duration for 1 query: 0,000 sec. */
INSERT INTO users VALUES (1,'Ivan','ivan.vranjes@t.ht.hr','password','Y',' ',' ');
/* SQL Error (1292): Incorrect datetime value: ' ' for column 'created_at' at row 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
INSERT INTO users VALUES (1,'Ivan','ivan.vranjes@t.ht.hr','password','Y','y ',' y');
/* SQL Error (1292): Incorrect datetime value: 'y ' for column 'created_at' at row 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
INSERT INTO users VALUES (1,'Ivan','ivan.vranjes@t.ht.hr','password','Y','04:30 ',' 06:30');
/* SQL Error (1292): Incorrect datetime value: '04:30 ' for column 'created_at' at row 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`rezervacija`;
explain rezervacija;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,015 sec. */
select * FROM stus;
/* SQL Error (1146): Table 'fakultet.stus' doesn't exist */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select * FROM stud;
/* Affected rows: 0  Found rows: 302  Warnings: 0  Duration for 1 query: 0,000 sec. */
select mbrStud,pbrRod
CONCAT (imestud,prezStud) AS 'Ime '' 'Prezime
 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(imestud,prezStud) AS 'Ime '' 'Prezime
 FROM stud' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select mbrStud,pbrRod
CONCAT imestud,prezStud AS 'Ime '' 'Prezime
 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'imestud,prezStud AS 'Ime '' 'Prezime
 FROM stud' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select mbrStud,pbrRod
CONCAT (imestud,' ',prezStud) AS 'Ime Prezime'
 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(imestud,' ',prezStud) AS 'Ime Prezime'
 FROM stud' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select mbrStud,pbrRod
CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'
 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(imeStud,' ',prezStud) AS 'Ime Prezime'
 FROM stud' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select mbrStud,pbrRod,
CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'
 FROM stud;
/* Affected rows: 0  Found rows: 302  Warnings: 0  Duration for 1 query: 0,000 sec. */
select mbrStud,pbrRod,
DISTINCT
CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'
 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DISTINCT
CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'
 FROM stud' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select DISTINCT mbrStud,pbrRod,

CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'
 FROM stud;
/* Affected rows: 0  Found rows: 302  Warnings: 0  Duration for 1 query: 0,000 sec. */
select DISTINCT mbrStud,pbrRod,

CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'
WHERE pbrRod = 31000
 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE pbrRod = 31000
 FROM stud' at line 4 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select DISTINCT mbrStud,pbrRod,

CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'
WHERE pbrRod = 31000,
 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE pbrRod = 31000,
 FROM stud' at line 4 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select DISTINCT mbrStud,pbrRod,
WHERE pbrRod = 31000,
CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'

 FROM stud;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE pbrRod = 31000,
CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'

 FROM s' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
select DISTINCT mbrStud,pbrRod,

CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'

 FROM stud;
/* Affected rows: 0  Found rows: 302  Warnings: 0  Duration for 1 query: 0,000 sec. */
CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime';
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
EXPLAIN select DISTINCT mbrStud,pbrRod,

CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'

 FROM stud;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
EXPLAIN select DISTINCT mbrStud,pbrRod,

CONCAT (imeStud,' ',prezStud) AS 'Ime Prezime'

 FROM stud;
SHOW CREATE TABLE `fakultet`.`dvorana`;
SHOW CREATE TABLE `fakultet`.`flights`;
SHOW CREATE TABLE `fakultet`.`migrations`;
SHOW CREATE TABLE `fakultet`.`migrations`;
SHOW CREATE TABLE `fakultet`.`mjesto`;
SHOW CREATE TABLE `fakultet`.`dvorana`;
SHOW CREATE TABLE `fakultet`.`dvorana`;
SELECT crud.brojcipela,crud.bojacipela,crud.marka,dvorana.kapacitet
FROM crud
LEFT JOIN dvorana
ON crud.id = dvorana.oznDvorana
;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,016 sec. */
SELECT crud.brojcipela,crud.bojacipela,crud.marka,dvorana.kapacitet
FROM crud
RIGHT JOIN dvorana
ON crud.id = dvorana.oznDvorana
;
/* Affected rows: 0  Found rows: 26  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT crud.brojcipela,crud.bojacipela,crud.marka,dvorana.kapacitet
FROM crud
INNER JOIN dvorana
ON crud.id = dvorana.oznDvorana
;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT crud.brojcipela,crud.bojacipela,crud.marka,dvorana.kapacitet
FROM crud
LEFT JOIN dvorana
ON crud.id = dvorana.oznDvorana
;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Ivan';
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,000 sec. */
explain nastavnik;
/* Affected rows: 0  Found rows: 6  Warnings: 0  Duration for 1 query: 0,016 sec. */
select * from nastavnik;
/* Affected rows: 0  Found rows: 98  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Marko';
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Marko0 AND koef =>4.20;;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''Marko0 AND koef =>4.20' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Marko0 AND koef = >4.20;;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''Marko0 AND koef = >4.20' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Marko' AND koef = >4.20;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>4.20' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Marko' AND koef >=4.20;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Marko' AND koef >=4.20
group by imeNastavnik;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * from nastavnik
WHERE imeNastavnik='Marko' AND koef >=4.20
ORDER BY imeNastavnik ;
/* Affected rows: 0  Found rows: 4  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT AVG (koef) from nastavnik;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT sifNastavnik,imeNastavnik,prezNastavnik FROM nastavnik;
/* Affected rows: 0  Found rows: 98  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT sifNastavnik,
CONCAT (imeNastavnik,' ',prezNastavnik) AS 'ime i prezime'
 FROM nastavnik;
/* Affected rows: 0  Found rows: 98  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT DISTINCT sifNastavnik,
CONCAT (imeNastavnik,' ',prezNastavnik) AS 'ime i prezime'
 FROM nastavnik;
/* Affected rows: 0  Found rows: 98  Warnings: 0  Duration for 1 query: 0,000 sec. */
DELETE FROM nastavnik where sifNastavnik = 122;
/* SQL Error (1451): Cannot delete or update a parent row: a foreign key constraint fails (`fakultet`.`ispit`, CONSTRAINT `ispit_ibfk_3` FOREIGN KEY (`sifNastavnik`) REFERENCES `nastavnik` (`sifNastavnik`)) */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud LIKE '%so%';
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud LIKE '%o%';
/* Affected rows: 0  Found rows: 146  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud LIKE '%kol%';
/* Affected rows: 0  Found rows: 2  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud,prezStud LIKE '%kol%';
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'prezStud LIKE '%kol%'' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM stud WHERE (imeStud,prezStud) LIKE '%kol%';
/* SQL Error (1241): Operand should contain 1 column(s) */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud OR preStud LIKE '%ko%;
;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''%ko%' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud OR prezStud LIKE '%kol%';
/* Affected rows: 0  Found rows: 5  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud OR prezStud LIKE '%kol%'
ORDER BY imeStud
;
/* Affected rows: 0  Found rows: 5  Warnings: 302  Duration for 1 query: 0,016 sec. */
SHOW WARNINGS LIMIT 5;
SELECT @@max_error_count;
SHOW WARNINGS;
/* Affected rows: 0  Found rows: 64  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM stud WHERE imeStud OR prezStud LIKE '%kol%'
ORDER BY imeStud
;
/* Affected rows: 0  Found rows: 5  Warnings: 302  Duration for 1 query: 0,000 sec. */
SHOW WARNINGS LIMIT 5;
SELECT @@max_error_count;
SELECT * FROM stud WHERE imeStud OR prezStud LIKE '%kol%'
ORDER BY imeStud LIMIT 5
;
/* Affected rows: 0  Found rows: 5  Warnings: 302  Duration for 1 query: 0,000 sec. */
SHOW WARNINGS LIMIT 5;
SELECT @@max_error_count;
SELECT * FROM stud WHERE imeStud OR prezStud LIKE '%kol%'
ORDER BY imeStud LIMIT 4
;
/* Affected rows: 0  Found rows: 4  Warnings: 302  Duration for 1 query: 0,000 sec. */
SHOW WARNINGS LIMIT 5;
SELECT @@max_error_count;
SELECT TOP 10 koef FROM nastavnik;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '10 koef FROM nastavnik' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM `fakultet`.`nastavnik` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`nastavnik`;
SHOW CREATE TABLE `fakultet`.`nl_address`;
SELECT * FROM `fakultet`.`nl_address` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`nl_address`;
SHOW CREATE TABLE `fakultet`.`orgjed`;
SELECT * FROM `fakultet`.`orgjed` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`orgjed`;
SELECT TOP 10 sifOrgjed FROM orgjed;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '10 sifOrgjed FROM orgjed' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT TOP 10 sifNadOrgjed FROM orgjed;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '10 sifNadOrgjed FROM orgjed' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT TOP 4 sifNadOrgjed FROM orgjed;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '4 sifNadOrgjed FROM orgjed' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SHOW CREATE TABLE `fakultet`.`password_resets`;
SELECT * FROM `fakultet`.`password_resets` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`password_resets`;
SELECT * FROM `fakultet`.`pred` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`pred`;
SHOW CREATE TABLE `fakultet`.`rezervacija`;
SELECT * FROM `fakultet`.`rezervacija` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`rezervacija`;
SELECT * FROM `fakultet`.`stud` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`stud`;
SHOW CREATE TABLE `fakultet`.`users`;
SHOW CREATE TABLE `fakultet`.`users_old`;
SHOW CREATE VIEW `fakultet`.`xxl`;
SELECT LOAD_FILE(CONCAT(IFNULL(@@GLOBAL.datadir, CONCAT(@@GLOBAL.basedir, 'data/')), 'fakultet/xxl.frm'));
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE   TABLE_NAME='xxl'   AND TABLE_SCHEMA='fakultet' ;
SHOW CREATE VIEW `fakultet`.`yyl`;
SELECT LOAD_FILE(CONCAT(IFNULL(@@GLOBAL.datadir, CONCAT(@@GLOBAL.basedir, 'data/')), 'fakultet/yyl.frm'));
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE   TABLE_NAME='yyl'   AND TABLE_SCHEMA='fakultet' ;
SHOW CREATE TABLE `fakultet`.`zupanija`;
SELECT * FROM `fakultet`.`zupanija` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`zupanija`;
SELECT TOP 4 sifZupanija FROM zupanija;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '4 sifZupanija FROM zupanija' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM zupanija WHERE sifZupanija=1;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT * FROM `fakultet`.`ispit` LIMIT 1000;
SHOW CREATE TABLE `fakultet`.`ispit`;
SELECT TOP 10 ocjena FROM ispit;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '10 ocjena FROM ispit' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT TOP 10 (ocjena) FROM ispit;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '10 (ocjena) FROM ispit' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT TAVG(ocjena) FROM ispit;
/* SQL Error (1305): FUNCTION fakultet.TAVG does not exist */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT AVG(ocjena) FROM ispit;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT TOP(ocjena) FROM ispit;
/* SQL Error (1305): FUNCTION fakultet.TOP does not exist */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT MIN(ocjena) FROM ispit;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT MAX(ocjena) FROM ispit;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT *(ocjena) FROM ispit;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(ocjena) FROM ispit' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * ocjena FROM ispit;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ocjena FROM ispit' at line 1 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0,000 sec. */
SELECT * FROM ispit;
/* Affected rows: 0  Found rows: 639  Warnings: 0  Duration for 1 query: 0,000 sec. */
SELECT ocjena FROM ispit;
/* Affected rows: 0  Found rows: 639  Warnings: 0  Duration for 1 query: 0,000 sec. */
/* Connection to 127.0.0.1 closed at 2018-04-04 08:13:39 */

