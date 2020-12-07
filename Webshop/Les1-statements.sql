CREATE DATABASE Webshop;
USE Webshop;

-- Table
Create TABLE album(
    ID SMALLINT AUTO_INCREMENT PRIMARY KEY,
    titel VARCHAR(45), 
    artiest VARCHAR(45), 
    genre VARCHAR(15), 
    prijs DECIMAL(18.2), 
    voorraad MEDIUMINT  
);

-- truncate table , deletes everything INSIDE a table!!
-- Truncate table album;
-- Alter Table album DROP prijs;
-- dit doe je als je een kolom wilt verwijderen!!
-- om het weer toe te voegen doe je:
-- Alter Table album ADD prijs Decimal(18,2);
-- Decimal(4,2) werkt niet gebruik (18,2)!!

-- INSERT Statement
INSERT INTO album(titel, artiest, genre, prijs, voorraad)
    Values
        ("Cafe ATlantico", "Cesarie Evora", "World", 3.00, 100),
        ("Rumba Azul", "Ceatano Veloso", "Latin",4.90, 50),
        ("Survivor", "Destiny's Child", "R&B", 3.00, 789),
        ("Oh Girl", "The Chi-lites", "Pop", 3.00, 2),
        ("Der Herr ist mein getre", "Ton Koopman", "Klassiek", 5.50, 30),
        ("Closing Time", "Tom Waits", "Rock", 3.00, 0),
        ("Irresistible", "Celia Cruz", "Latin", 3.50, 23),
        ("Marvin Gaye II", "Marvin Gaye", "R&B", 4.00, 154),
        ("Mi Sangre", "Juanes", "Latin", 3.90, 123),
        ("Greatest Hits 2", "Queen", "ROck", 3.45, 0),
        ("3121", "Prince", "Rock", 3.45, 0),
        ("Antologia I", "Paco de Lucia", "World", 3.00, 320);

-- Table
CREATE TABLE klant(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR(255),
    achternaam VARCHAR(255),
    straat VARCHAR(255),
    postcode VARCHAR(255),
    woonplaats VARCHAR(255),
    email Nvarchar(255) 
);

-- INSERT Statement
    INSERT INTO klant(voornaam, achternaam, straat, postcode, woonplaats, email)
        Values
            ("Dylan", "Huisden", "Middenweg 11", "1088 VV", "Amsterdam", "dhuisden@roc.nl"),
            ("Nitin", "Bosman", "Leidseweg 22", "9900 BB", "Amsterdam", "nbosman@roc.nl"),
            ("Joseph", "Demirel", "Lediseplein 33", "9988 BB", "Utrecht", "josdem@hotmail.com"),
            ("Franco", "Taslyan", "Kruislaan 444", "3300 VV", "Utrect", "frantas@wanadoo.nl"),
            ("Akash", "Kabil", "Galilleiplantsoen 333", "2299 NN", "Amstelveen", "aka@hetnet.nl"),
            ("Tamara", "Kabil", "Mozartstraat 22", "3388 XX", "Amsterdam", "tamka@hotmail.com"),
            ("Arnold", "Shaw", "Kruislaan 1", "9876 FF", "Rotterdam", "asha@roc.nl");

-- Table
CREATE TABLE weborder(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    klant_ID int NOT NULL,
    datum Datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
    );

-- INSERT Statement
INSERT INTO weborder(klant_ID, datum)
    Values
        (1, "2015-01-01 00:00:00"),
        (1, "2015-01-01 00:00:00"),
        (2, "2015-02-15 00:00:00"),
        (3, "2015-02-20 00:00:00"),
        (3, "2015-03-13 00:00:00");

-- Table
CREATE TABLE item(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    weborder_ID INT,
    klant_ID INT,
    album_ID INT,
    aantal INT,
    prijs_eenheid DECIMAL(18.2)    
);

-- INSERT Statement
INSERT INTO item( weborder_ID, klant_ID , album_ID ,aantal ,prijs_eenheid)
    Values
        (1, 1, 1, 1, 3.00),
        (1, 1, 5, 2, 5.50),
        (2, 5, 8, 1, 4.00),
        (2, 5, 10, 2, 3.00),
        (3, 3, 1, 1, 3.00),
        (4, 2, 5, 1, 5.50),
        (4, 2, 8, 1, 4.00),
        (4, 2, 6, 1, 3.00),
        (5, 6, 4, 2, 3.00),
        (5, 6, 6, 1, 3.00),
        (5, 6, 1, 1, 3.00),
        (5, 6, 9, 1, 3.90),
        (5, 6, 10, 3, 3.00);