
-- ============================================
-- ER DIAGRAM (textový popis vztahů)
-- ============================================
-- Clenove (idClena, jmeno, prijmeni, email, telefon, datum_registrace)
-- Clenstvi (idClenstvi, typ, cena, pocet_vstupu, platnost_od, platnost_do)
-- Zamestnanci (idZamestnance, jmeno, prijmeni, pozice, telefon, email)
-- Sluzby (idSluzby, nazev, popis, trvani, cena, idZamestnance)
-- Rezervace (idRezervace, idClena, idSluzby, datum, cas)
-- Rozvrh (idRozvrhu, idSluzby, den, cas_od, cas_do)
-- Oteviraci_doba (den, cas_od, cas_do)

-- Vztahy:
-- Clenove ⟶ Rezervace (1:N)
-- Sluzby ⟶ Rezervace (1:N)
-- Sluzby ⟶ Rozvrh (1:N)
-- Zamestnanci ⟶ Sluzby (1:N)

-- ============================================

-- Vytvoření databáze s českým kódováním
CREATE DATABASE IF NOT EXISTS fitko
CHARACTER SET utf8mb4
COLLATE utf8mb4_czech_ci;
USE fitko;

-- Tabulka Clenove
CREATE TABLE Clenove (
    idClena INT AUTO_INCREMENT PRIMARY KEY,
    jmeno VARCHAR(50),
    prijmeni VARCHAR(50),
    email VARCHAR(100),
    telefon VARCHAR(20),
    datum_registrace DATE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;

-- Tabulka Clenstvi
CREATE TABLE Clenstvi (
    idClenstvi INT AUTO_INCREMENT PRIMARY KEY,
    typ VARCHAR(50),
    cena DECIMAL(6,2),
    pocet_vstupu INT,
    platnost_od DATE,
    platnost_do DATE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;

-- Tabulka Zamestnanci
CREATE TABLE Zamestnanci (
    idZamestnance INT AUTO_INCREMENT PRIMARY KEY,
    jmeno VARCHAR(50),
    prijmeni VARCHAR(50),
    pozice VARCHAR(50),
    telefon VARCHAR(20),
    email VARCHAR(100)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;

-- Tabulka Sluzby
CREATE TABLE Sluzby (
    idSluzby INT AUTO_INCREMENT PRIMARY KEY,
    nazev VARCHAR(50),
    popis TEXT,
    trvani INT,
    cena DECIMAL(6,2),
    idZamestnance INT,
    FOREIGN KEY (idZamestnance) REFERENCES Zamestnanci(idZamestnance)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;

-- Tabulka Rezervace
CREATE TABLE Rezervace (
    idRezervace INT AUTO_INCREMENT PRIMARY KEY,
    idClena INT,
    idSluzby INT,
    datum DATE,
    cas TIME,
    FOREIGN KEY (idClena) REFERENCES Clenove(idClena),
    FOREIGN KEY (idSluzby) REFERENCES Sluzby(idSluzby)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;

-- Tabulka Rozvrh
CREATE TABLE Rozvrh (
    idRozvrhu INT AUTO_INCREMENT PRIMARY KEY,
    idSluzby INT,
    den VARCHAR(20),
    cas_od TIME,
    cas_do TIME,
    FOREIGN KEY (idSluzby) REFERENCES Sluzby(idSluzby)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;

-- Tabulka Oteviraci_doba
CREATE TABLE Oteviraci_doba (
    den VARCHAR(20) PRIMARY KEY,
    cas_od TIME,
    cas_do TIME
) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;

-- ========================
-- NÁSLEDUJÍ SQL DOTAZY
-- ========================

-- (dotazy by následovaly zde, zkráceno pro přehlednost)
