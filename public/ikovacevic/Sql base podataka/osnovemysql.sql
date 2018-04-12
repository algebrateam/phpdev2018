CREATE DATABASE drugadatabase 
USE drugadatabase


CREATE TABLE korisnici (
id_clan int(11) NOT NULL,
ime char(100) NOT NULL,
prezime char(100) NOT NULL,
kontakt varchar(40) NOT NULL,
PRIMARY KEY (`id_clan`)
)

INSERT INTO korisnici (id_clan, ime, prezime, kontakt) 
VALUES
(1, 'Mateo', 'Horvat', '1917891219'),
(2, 'Ivan', 'Tomić', '9848987408'),
(3, 'Marija', 'Hren', '3947853535')

	
CREATE TABLE filmovi (
id_film INT(11) NOT NULL,
naziv VARCHAR(40) NOT NULL, PRIMARY KEY (`id_film`)
)


INSERT INTO filmovi (id_film, naziv) VALUES
	
(1, 'Forrest Gump'),
(2, 'Batman'),
(3, 'Avatar')


	
CREATE TABLE posudba (
id_clan INT(11) NOT NULL,
id_film INT(11) NOT NULL,
dat_posudbe DATETIME NOT NULL,
dat_povrata DATETIME DEFAULT NULL, PRIMARY KEY (`id_clan`,`id_film`),
KEY `FK_posudba_filmovi` (`id_film`),
CONSTRAINT `FK_posudba_korisnici` FOREIGN KEY (`id_clan`) REFERENCES `korisnici` (`id_clan`), 
CONSTRAINT `FK_posudba_filmovi` FOREIGN KEY (`id_film`) REFERENCES `filmovi` (`id_film`)
)

INSERT INTO posudba (id_clan, id_film, dat_posudbe, dat_povrata) VALUES
	(1, 3, '2018-06-10 11:00:00', '2018-06-13 20:00:00'),
	(2, 1, '2018-05-11 20:00:00', NULL),
	(3, 2, '2018-08-12 20:00:00', NULL)



SELECT * FROM korisnici, posudba, filmovi

	
SELECT CONCAT(korisnici.ime,' ',korisnici.prezime) AS 'Ime i Prezime onih koji nisu vratili film'
FROM korisnici
INNER JOIN posudba ON korisnici.id_clan=posudba.id_clan
WHERE posudba.dat_povrata IS NULL;


SELECT CONCAT(korisnici.ime,' ',korisnici.prezime) AS 'Ime i Prezime',
filmovi.naziv AS 'Naslov filma koji nije vraćen'
FROM korisnici
INNER JOIN posudba ON korisnici.id_clan=posudba.id_clan
INNER JOIN filmovi ON filmovi.id_film=posudba.id_film
WHERE posudba.dat_povrata IS NULL;