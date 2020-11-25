-- Opgave 3
SELECT * FROM weborder;

-- opgave 4
SELECT artiest, titel, genre FROM album;

-- opgave 5
SELECT voornaam, achternaam, straat 
    FROM klant;

-- opgave 6
SELECT artiest, titel, genre, prijs 
    FROM album 
        ORDER BY artiest ASC;

-- opgave 7
SELECT * FROM album 
    ORDER BY titel ASC;

-- opgave 8
SELECT * FROM album 
    ORDER BY titel DESC;

-- Opgave 9
SELECT * FROM klant 
    WHERE woonplaats = "Amsterdam";

-- opgave 10
SELECT * FROM album 
    WHERE genre = "Latin";

-- opgave 11
SELECT * FROM albums 
    WHERE prijs 
        BETWEEN 3.00 and 4.00;

-- opgave 12
SELECT * FROM weborder 
    WHERE datum 
        BETWEEN "2015-01-01" AND "2015-03-01";

-- opgave 13
SELECT * FROM album 
    WHERE prijs 
        BETWEEN 3.00 AND 4.00 LIMIT 5;

-- opgave 14
SELECT * FROM weborder LIMIT 3;

-- opgave 15
SELECT DISTINCT weborder_ID FROM item;

-- opgave 16
SELECT DISTINCT album_ID FROM item;

-- opgave 17
SELECT * FROM album 
    WHERE artiest 
        LIKE "%to%";

-- opgave 18
SELECT * FROM album 
    WHERE titel 
        LIKE "%Girl%";




-- New Databse 
CREATE DATABASE Schiphol;
USE Schiphol;

-- Tables
CREATE TABLE gebruiker(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(255),
    tussenVoegsel VARCHAR(255),
    achternaam VARCHAR(255),
    geslacht VARCHAR(20), 
    postcode VARCHAR(60),
    geboorteDatum VARCHAR(60),
    email NVARCHAR(255)      
);

-- Table
CREATE TABLE klachtsoort(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    beschrijving VARCHAR(255)  
);

-- Table
CREATE TABLE postcode(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    postcode VARCHAR(255)  
);

-- Table
CREATE TABLE klacht(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    klant_ID INT NOT NULL,
    aantal INT NOT NULL,
    postcode VARCHAR(255),
    datum DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP   
);

-- INSERT Statement
INSERT INTO gebruiker(naam, tussenVoegsel, achternaam, geslacht, postcode, geboorteDatum, email)
    VALUES
        ("John", "van den", "Berg","M", "1098 LV", "1984-10-87", "jvdb@live.nl"),
        ("Celia", "", "Hayna", "V" , "1999 BB", "1986-05-24", "ch@gmail.com"),
        ("Justin", "", "Boom", "M", "2000 AA", "1991-05-03", "jv@live.nl"),
        ("Roemer", "", "Gallo", "M", "1990 BB", "1885-05-31", "rg@hotmail.com");

-- INSERT Statement
INSERT INTO klachtsoort(beschrijving)
    VALUES
        ("milieu"),
        ("veiligheid"),
        ("geluid");

-- INSERT Statement
INSERT INTO postcode(postcode)
    VALUES
        ("1098 LV"),
        ("1098 XX"),
        ("1098 LX"),
        ("1099 TT"),
        ("1999 BB"),
        ("2000 AA");

-- INSERT Statement
INSERT INTO klacht(klant_ID, aantal, postcode, datum)
    VALUES
        (1, 1, "1098 LV", "2016-05-01 18:00:00"),
        (2, 2, "1999 BB", "2016-05-11 19:30:00"),
        (3, 3, "2000 AA", "2016-05-10 09:30:00"),
        (3, 3, "1999 BB", "2016-05-10 11:45:00");