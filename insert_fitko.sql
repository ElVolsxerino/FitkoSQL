
USE fitko;

-- Vkládání členů
INSERT INTO Clenove (jmeno, prijmeni, email, telefon, datum_registrace) VALUES
('Jan', 'Novák', 'jan.novak@email.cz', '+420123456789', '2024-05-01'),
('Petra', 'Svobodová', 'petra.svobodova@email.cz', '+420234567890', '2024-04-15'),
('Lukáš', 'Krejčí', 'lukas.krejci@email.cz', '+420345678901', '2024-05-20'),
('Eva', 'Procházková', 'eva.prochazkova@email.cz', '+420456789012', '2024-06-01'),
('Tomáš', 'Dvořák', 'tomas.dvorak@email.cz', '+420567890123', '2024-06-02'),
('Klára', 'Malá', 'klara.mala@email.cz', '+420678901234', '2024-06-03'),
('David', 'Sedlák', 'david.sedlak@email.cz', '+420789012345', '2024-06-04');

-- Vkládání členství
INSERT INTO Clenstvi (typ, cena, pocet_vstupu, platnost_od, platnost_do) VALUES
('Měsíční', 899.00, 30, '2024-06-01', '2024-06-30'),
('Roční', 8990.00, 365, '2024-01-01', '2024-12-31'),
('Student', 699.00, 30, '2024-06-01', '2024-06-30'),
('Senior', 599.00, 30, '2024-06-01', '2024-06-30'),
('Flexi', 399.00, 10, '2024-06-01', '2024-07-01'),
('Prázdniny', 1200.00, 60, '2024-07-01', '2024-08-31'),
('Týdenní', 299.00, 7, '2024-06-01', '2024-06-07');

-- Vkládání zaměstnanců
INSERT INTO Zamestnanci (jmeno, prijmeni, pozice, telefon, email) VALUES
('Roman', 'Hlaváč', 'Trenér', '+420111111111', 'roman.hlavac@email.cz'),
('Jana', 'Horáková', 'Recepční', '+420222222222', 'jana.horakova@email.cz'),
('Marek', 'Kolář', 'Instruktor', '+420333333333', 'marek.kolar@email.cz'),
('Lucie', 'Novotná', 'Instruktorka', '+420444444444', 'lucie.novotna@email.cz'),
('Pavel', 'Růžička', 'Manažer', '+420555555555', 'pavel.ruzicka@email.cz'),
('Simona', 'Fialová', 'Trenérka', '+420666666666', 'simona.fialova@email.cz'),
('Radek', 'Kučera', 'Údržba', '+420777777777', 'radek.kucera@email.cz');

-- Vkládání služeb
INSERT INTO Sluzby (nazev, popis, trvani, cena, idZamestnance) VALUES
('Spinning', 'Intenzivní cyklistika', 60, 200.00, 1),
('Jóga', 'Uvolňující cvičení', 45, 150.00, 3),
('Kruhový trénink', 'Střídání stanovišť', 50, 180.00, 1),
('Pilates', 'Posílení středu těla', 55, 160.00, 4),
('Osobní trénink', 'Individuální cvičení', 60, 300.00, 1),
('Masáž', 'Regenerační masáž', 45, 350.00, 2),
('Zumba', 'Taneční cvičení', 50, 170.00, 3);

-- Vkládání rezervací
INSERT INTO Rezervace (idClena, idSluzby, datum, cas) VALUES
(1, 1, '2024-06-05', '09:00:00'),
(2, 2, '2024-06-06', '10:00:00'),
(3, 3, '2024-06-07', '11:00:00'),
(4, 4, '2024-06-08', '12:00:00'),
(5, 5, '2024-06-09', '13:00:00'),
(6, 6, '2024-06-10', '14:00:00'),
(7, 7, '2024-06-11', '15:00:00');

-- Vkládání rozvrhu
INSERT INTO Rozvrh (idSluzby, den, cas_od, cas_do) VALUES
(1, 'Pondělí', '09:00:00', '10:00:00'),
(2, 'Úterý', '10:00:00', '10:45:00'),
(3, 'Středa', '11:00:00', '11:50:00'),
(4, 'Čtvrtek', '12:00:00', '12:55:00'),
(5, 'Pátek', '13:00:00', '14:00:00'),
(6, 'Sobota', '14:00:00', '14:45:00'),
(7, 'Neděle', '15:00:00', '15:50:00');

-- Vkládání otevírací doby
INSERT INTO Oteviraci_doba (den, cas_od, cas_do) VALUES
('Pondělí', '06:00:00', '22:00:00'),
('Úterý', '06:00:00', '22:00:00'),
('Středa', '06:00:00', '22:00:00'),
('Čtvrtek', '06:00:00', '22:00:00'),
('Pátek', '06:00:00', '22:00:00'),
('Sobota', '08:00:00', '20:00:00'),
('Neděle', '08:00:00', '20:00:00');
