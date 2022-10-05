--
-- File generated with SQLiteStudio v3.3.3 on Wed Oct 5 12:48:18 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: item
CREATE TABLE item (id INTEGER PRIMARY KEY AUTOINCREMENT, itemid DATE (6), beschrijving CHAR (40), prijs DOUBLE);
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (1, 'I0002', 'Pizza snijder (Kunststof)', '3,90');
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (2, 'I0001', 'Pizza snijder (Metaal)', '6,75');
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (3, 'I0003', 'Pizzaplaat (Steen)', '39,75');
INSERT INTO item (id, itemid, beschrijving, prijs) VALUES (4, 'I0004', 'Luxe Koffie bewaarbus', '21,35');

-- Table: klant
CREATE TABLE klant (id INTEGER PRIMARY KEY AUTOINCREMENT, klantid CHAR (6) NOT NULL, naam CHAR (40), orderid REFERENCES orders (orderid) UNIQUE);
INSERT INTO klant (id, klantid, naam, orderid) VALUES (1, 'K001', 'Gadgets For You', 'OR0003');
INSERT INTO klant (id, klantid, naam, orderid) VALUES (2, 'K001', 'Gadgets For You', 'OR0006');
INSERT INTO klant (id, klantid, naam, orderid) VALUES (3, 'K002', 'Pizza Special', 'OR0005');

-- Table: orders
CREATE TABLE orders (id INTEGER PRIMARY KEY AUTOINCREMENT, orderid CHAR (6) UNIQUE, verkoperid REFERENCES verkoper (verkoperid));
INSERT INTO orders (id, orderid, verkoperid) VALUES (1, 'OR0003', 'V006');
INSERT INTO orders (id, orderid, verkoperid) VALUES (2, 'OR0002', 'V007');
INSERT INTO orders (id, orderid, verkoperid) VALUES (3, 'OR0001', 'V007');
INSERT INTO orders (id, orderid, verkoperid) VALUES (4, 'OR0005', 'V004');
INSERT INTO orders (id, orderid, verkoperid) VALUES (6, 'OR0006', 'V002');

-- Table: verkoper
CREATE TABLE verkoper (id INTEGER PRIMARY KEY AUTOINCREMENT, verkoperid CHAR (6) NOT NULL UNIQUE, naam CHAR (40) NOT NULL);
INSERT INTO verkoper (id, verkoperid, naam) VALUES (1, 'V007', 'Bill');
INSERT INTO verkoper (id, verkoperid, naam) VALUES (2, 'V006', 'April');
INSERT INTO verkoper (id, verkoperid, naam) VALUES (3, 'V005', 'Janice');
INSERT INTO verkoper (id, verkoperid, naam) VALUES (4, 'V004', 'Mo');
INSERT INTO verkoper (id, verkoperid, naam) VALUES (5, 'V003', 'Boris');
INSERT INTO verkoper (id, verkoperid, naam) VALUES (6, 'V002', 'Anna');
INSERT INTO verkoper (id, verkoperid, naam) VALUES (7, 'V001', 'Joost');
INSERT INTO verkoper (id, verkoperid, naam) VALUES (9, 'V008', 'Thijn Glas');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
