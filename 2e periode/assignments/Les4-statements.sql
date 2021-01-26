-- opgave 39
CREATE DATABASE testing;
USE testing;

-- opgave 40
-- Tbale
CREATE TABLE tabelA(
    naam VARCHAR(15),
    leeftijd INT(2)
);

-- opgave 41
-- INSERT Statement
INSERT INTO tabelA(naam, leeftijd)
    VALUES
        ("Jozef", 20),
        ("Jasper", 19);

-- opgave 42
SELECT * FROM tabelA;

-- opgave 43
DROP TABLE tabelA;

-- opgave 44
DROP DATABASE testing;

-- opgave 45
CREATE DATABASE adminstratie;
USE adminstratie;

-- opgave 46
-- Table
CREATE TABLE leerlingen(
    ID MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    achternaam VARCHAR(15),
    voornaam VARCHAR(15),
    leeftijd INT(2),
    straat VARCHAR(15),
    postcode VARCHAR(6),
    woonplaats VARCHAR(15),
    telefoonnummer VARCHAR(10),
    email VARCHAR(15),
    opleiding VARCHAR(15)
);

-- opgave 47
-- INSERT Statement
INSERT INTO leerlingen
    (achternaam, voornaam, leeftijd, straat, postcode, woonplaats, telefoonnummer, email, opleiding)
        VALUES
            ("Huisden", "Dylan", 18, "Middenweg 11", "1008VV", "Amsterdam", "0204445555", "dhuisden@rocva.nl", "oct"),
            ("Bosman", "Nitin", 17, "Leidseweg 22", "9900BB", "Amstelveen", "0209994444", "nbosman@hotmail.com", "ict");

-- opgave 48
ALTER TABLE leerlingen
    RENAME student;

-- opgave 49
ALTER TABLE student
	MODIFY COLUMN postcode VARCHAR(10);

-- opgave 50
ALTER TABLE student
    MODIFY COLUMN postcode VARCHAR(6), 
    MODIFY COLUMN email VARCHAR(30);

-- opgave 51
ALTER TABLE student 
    ADD COLUMN testkolom VARCHAR(10);

-- opgave 52
ALTER TABLE student 
    DROP COLUMN testkolom;

-- opgave 53
ALTER TABLE student 
    ADD COLUMN klas VARCHAR(4);

-- Oopgave 54
INSERT INTO student(klas)
	VALUES
		("AO88"),
        ("AO99");
--  ^ dit is fout 
DELETE from student where ID=3;
DELETE from student where ID=4;

-- opgave54
-- opnieuw proberen
UPDATE student 
    SET klas="AO88" 
        WHERE ID=1;

UPDATE student
     SET klas="AO99"
        WHERE ID=2;

-- opgave55
ALTER TABLE student 
    CHANGE COLUMN woonplaats stad VARCHAR(30);

-- opgave 56
ALTER TABLE student MODIFY COLUMN ID INT;
ALTER TABLE student DROP PRIMARY KEY;
ALTER TABLE student ADD PRIMARY KEY(email);

-- opgave 57
ALTER TABLE student DROP PRIMARY KEY;
ALTER TABLE student ADD PRIMARY KEY(ID);
ALTER TABLE student MODIFY COLUMN ID INT NOT NULL AUTO_INCREMENT;

-- opgave 3.8 vaardigheid
-- hij stond er al op. heb het eerst even weggehaald!!
ALTER TABLE postcode MODIFY COLUMN ID INT;
ALTER TABLE postcode DROP PRIMARY KEY;
-- nu de opdracht maken
ALTER TABLE postcode ADD PRIMARY KEY(ID);
ALTER TABLE postcode MODIFY COLUMN ID INT NOT NULL AUTO_INCREMENT;
--  opgav vaardigheid 3.8 stap 3 klopt niet er is geen tabel klachten.

