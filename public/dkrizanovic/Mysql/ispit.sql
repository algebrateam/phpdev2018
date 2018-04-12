SELECT 
clanovi.ime,clanovi.prezime
FROM
clanovi
LEFT JOIN posudba ON clanovi.clanski_broj=posudba.clanski_broj
WHERE
posudba.datum_povratka IS NULL;
