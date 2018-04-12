CREATE DATABASE vidoteka;

USE vidoteka;

CREATE TABLE korisnici(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ime varchar(30)  NOT NULL,
  prezime varchar(30) NOT NULL,
  adresa varchar(30) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE filmovi (
  id_sifra_filma INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  naziv varchar(30) NOT NULL,
  redatelj varchar(30) NOT NULL,
  godina_izdanja int(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE posudbe(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_sifra_filma INT(11) UNSIGNED NOT NULL,
  datum_posudbe datetime NOT NULL,
  datum_povratka datetime DEFAULT NULL,
  index ind_sifra_filma (id_sifra_filma),
  CONSTRAINT pos_cla_fk FOREIGN KEY (id) REFERENCES korisnici (id),
  CONSTRAINT pos_fil_fk FOREIGN KEY (id_sifra_filma) REFERENCES filmovi (id_sifra_filma)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


INSERT INTO korisnici VALUES
(1,'Ana','Milić','I. Gundulića 128, Osijek');

INSERT INTO korisnici VALUES
(2,'Bela','Skenderović','I. Gundulića 2, Josipovac');

INSERT INTO korisnici VALUES
(3,'Mirko','Mirić','A. Stepinca 12, Čepin');


INSERT INTO filmovi VALUES
(1,'Gladijator','R. Scott',2004);

INSERT INTO filmovi VALUES
(2,'Mad Max','R. Miller',2016);

INSERT INTO filmovi VALUES
(3,'IT','S. King',2017);

-- 4.

SELECT
ime,prezime
FROM korisnici
INNER JOIN posudbe ON posudbe.id=korisnici.id
WHERE posudbe.datum_povratka IS NOT NULL;







