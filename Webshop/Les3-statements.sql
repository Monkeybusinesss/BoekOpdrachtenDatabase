-- opgave 19
UPDATE klant 
    SET straat = "Galilleiplein 111", postcode = "1010 RR"
        WHERE klant.ID = 5;

-- opgave 20
INSERT INTO klant(voornaam, achternaam, straat, postcode, woonplaats, email)
    Values ("Lex", "Camilla", "Hagabakka 24", "4656 RR", "Utrecht", "Lecam@wanadoo.nl");

-- opgave 21
DELETE FROM klant
    WHERE klant.voornaam = 'Lex';

-- opgave 22
select COUNT(album_ID)
    FROM item GROUP By weborder_ID;

-- opgave 23
SELECT MIN(prijs) FROM album;

-- opgave 24
SELECT MAX(prijs) FROM album;

-- opgave 25
SELECT SUM(aantal) FROM item;

-- opgave 26
SELECT SUM(voorraad) FROM album;

-- opgave 27
SELECT AVG(prijs) FROM album;

-- opgave 28
SELECT AVG(voorraad) FROM album;

-- voorbeeld
SELECT voornaam
    FROM klant
        WHERE ID IN (SELECT klant_ID
            FROM weborder);

-- opgave 29 (Dylan)
SELECT voornaam
    FROM klant 
        WHERE ID IN (
            SELECT klant_ID
                FROM weborder 
                    WHERE datum="2015-01-01");

-- opgave 30
SELECT titel, artiest, genre, prijs 
    FROM album
        WHERE prijs > (
            SELECT AVG(prijs)
                FROM album
        );

-- opgave 31
SELECT weborder_ID, SUM(aantal * prijs_eenheid) AS Totaal
    FROM item  
        GROUP By weborder_ID;

-- opgave 32
SELECT weborder_ID, SUM(aantal) AS Totaal_items
    FROM item
        GROUP By weborder_ID;

-- opgave 33
SELECT weborder_ID, album_ID, SUM(aantal) AS Totaal_items
    FROM item   
        GROUP By weborder_ID
            HAVING album_ID = 1;

-- JOIN
-- ik begrijp die inner, left, full JOINS niet, inprincipe alle JOINS niet!!!!
-- opgave 34
SELECT klant.voornaam, weborder.datum
    FROM klant  
        INNER JOIN weborder
            ON klant.ID = weborder.klant_ID;

-- opgave 35
SELECT album.artiest, album.titel, max(item.aantal)
    FROM album 
        INNER JOIN item ON item.aantal = 1;


