-- opgave 77
SELECT date(datum) 
    FROM weborder 
        WHERE ID=1;

-- opgave 78
-- datum is 12-12-2020
-- antwoord = 2172, klopt bijna 6 jaar
SELECT DATEDIFF(CURDATE(),"2015-01-01");

-- opgave 79
-- Tot nu toe
SELECT CURDATE(), FORMAT(CURDATE(),'MMMM');

-- opgave 80
SELECT LAST_DAY("2020-12-12");

-- opgave 81
-- opgave 82
-- tijd = 15:01
-- antwoord = 15:01:29
SELECT SUBTIME(CURTIME(),"00:00:00");

-- opgave 83
SELECT ADDTIME(CURTIME(),"50:00:00")

-- opgave 84
-- New Database
CREATE DATABASE boekhandel;
USE boekhandel;

-- Table
CREATE TABLE boeken(
    ID MEDIUMINT NOT NULL AUTO_INCREMENT,
    isbn VARCHAR(17),
    titel VARCHAR(22),
    auteur VARCHAR(15),
    prijs DECIMAL(5,2) DEFAULT "0.00",
    voorraad INT(11) DEFAULT "0",
    PRIMARY KEY (ID)
);

-- Insert Into
INSERT INTO boeken(isbn, titel, auteur, prijs, voorraad)
    VALUES 
        ("978 90 395 2781 3", "Basis JavaScript", "R.W Castaneda", 44,50),
        ("978 90 395 2781 4", "Basis PHP", "B. Desmet", 53.00, 78),
        ("978 90 395 2781 5", "Basis MySQL", "Q.Q Marquez", 25.00, 200);

-- opgave 85
CREATE PROCEDURE
    proc_voorraad(INOUT totaal FLOAT)
        BEGIN
            SELECT SUM(voorraad)
                INTO totaal 
                    FROM boeken;
        END;
        //

-- om procedure aan te roepen
SET @totaal= 0.0;
    CALL proc_voorraad(@totaal);
        SELECT @totaal;

-- opgave 86
CREATE PROCEDURE 
    proc_maxprijs(INOUT maxprijs FLOAT, OUT antwoord VARCHAR(255))
BEGIN

END;//

-- om procedure aan te roepen
SET @antwoord="";
    CALL proc_maxprijs(@maxprijs, @antwoord);
        SELECT @antwoord;

-- opgave 88
SHOW CREATE PROCEDURE proc_maxprijs;