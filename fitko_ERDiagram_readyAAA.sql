
-- Vytvoření databáze
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Tabulka Clenstvi
CREATE TABLE Clenstvi (
    idClenstvi INT AUTO_INCREMENT PRIMARY KEY,
    typ VARCHAR(50),
    cena DECIMAL(6,2),
    pocet_vstupu INT,
    platnost_od DATE,
    platnost_do DATE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Tabulka Zamestnanci
CREATE TABLE Zamestnanci (
    idZamestnance INT AUTO_INCREMENT PRIMARY KEY,
    jmeno VARCHAR(50),
    prijmeni VARCHAR(50),
    pozice VARCHAR(50),
    telefon VARCHAR(20),
    email VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Tabulka Sluzby
CREATE TABLE Sluzby (
    idSluzby INT AUTO_INCREMENT PRIMARY KEY,
    nazev VARCHAR(50),
    popis TEXT,
    trvani INT,
    cena DECIMAL(6,2),
    idZamestnance INT,
    FOREIGN KEY (idZamestnance) REFERENCES Zamestnanci(idZamestnance)
        ON DELETE SET NULL
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Tabulka Rezervace
CREATE TABLE Rezervace (
    idRezervace INT AUTO_INCREMENT PRIMARY KEY,
    idClena INT,
    idSluzby INT,
    datum DATE,
    cas TIME,
    FOREIGN KEY (idClena) REFERENCES Clenove(idClena)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (idSluzby) REFERENCES Sluzby(idSluzby)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Tabulka Rozvrh
CREATE TABLE Rozvrh (
    idRozvrhu INT AUTO_INCREMENT PRIMARY KEY,
    idSluzby INT,
    den VARCHAR(20),
    cas_od TIME,
    cas_do TIME,
    FOREIGN KEY (idSluzby) REFERENCES Sluzby(idSluzby)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Tabulka Oteviraci_doba
CREATE TABLE Oteviraci_doba (
    den VARCHAR(20) PRIMARY KEY,
    cas_od TIME,
    cas_do TIME
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;
