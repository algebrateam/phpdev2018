CREATE DATABASE Tenis;
USE Tenis;

CREATE TABLE Tenisaci(
id INT(11) UNSIGNED NOT NULL PRIMARY KEY,
ime VARCHAR(100) NOT NULL,
trener_id INT(11) UNSIGNED NULL,
index trener_idx (trener_id),
CONSTRAINT trener_fk FOREIGN KEY (trener_id) REFERENCES tenisaci(id))
ENGINE=INNODB;


USE tenis;
CREATE TABLE susreti(
id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
domacin_id INT(11) UNSIGNED NOT NULL,
gost_id INT(11) UNSIGNED NOT NULL,
pobjednik BIT NOT NULL,
vrijeme TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
index dom_idx(domacin_id),
index gost_idx(gost_id),
CONSTRAINT dom_fk FOREIGN KEY (domacin_id) REFERENCES tenisaci(id),
CONSTRAINT gost_fk FOREIGN KEY (gost_id) REFERENCES tenisaci(id)
);



SELECT
domacin_id,
SUM(pobjednik)
FROM 
susreti
GROUP BY domacin_id;

SELECT
gost_id,
COUNT(pobjednik)
FROM 
susreti
WHERE pobjednik=0
GROUP BY gost_id;



SELECT
domacin_id,
SUM(pobjednik)
FROM 
susreti
GROUP BY domacin_id;

SELECT
gost_id,
COUNT(pobjednik)
FROM 
susreti
WHERE pobjednik=0
GROUP BY gost_id;

SELECT t1.igrac, sum(t1.bodovi) AS rezultat, tenisaci.ime FROM (
SELECT
domacin_id AS igrac,
SUM(pobjednik) AS bodovi
FROM 
susreti
GROUP BY domacin_id

UNION ALL

SELECT
gost_id,
COUNT(pobjednik)
FROM 
susreti
WHERE pobjednik=0
GROUP BY gost_id
) as t1

LEFT JOIN tenisaci on igrac=tenisaci.id

GROUP BY igrac
ORDER BY rezultat DESC
LIMIT 5
;