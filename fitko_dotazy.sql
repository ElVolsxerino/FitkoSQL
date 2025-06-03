-- 1. Členové registrovaní po 1. 5. 2024
SELECT * FROM Clenove WHERE datum_registrace > '2024-05-01';

-- 2. Členové s telefonem začínajícím na +420
SELECT * FROM Clenove WHERE telefon LIKE '+420%';

-- 3. Členství dražší než 1000 Kč
SELECT * FROM Clenstvi WHERE cena > 1000;

-- 4. Služby trvající déle než 60 minut
SELECT * FROM Sluzby WHERE trvani > 60;

-- 5. Rezervace na dané datum
SELECT * FROM Rezervace WHERE datum = '2024-06-01';

-- 6. Zaměstnanci s pozicí "Trenér"
SELECT * FROM Zamestnanci WHERE pozice = 'Trenér';

-- 7. Aktivní členství
SELECT * FROM Clenstvi WHERE platnost_do >= CURDATE();

-- 8. Rozvrh na pondělí
SELECT * FROM Rozvrh WHERE den = 'Pondělí';

-- 9. Služby s cenou mezi 200 a 500 Kč
SELECT * FROM Sluzby WHERE cena BETWEEN 200 AND 500;

-- 10. Členové, jejichž příjmení začíná na "K"
SELECT * FROM Clenove WHERE prijmeni LIKE 'K%';

-- 11. Rezervace se jménem člena
SELECT Clenove.jmeno, Clenove.prijmeni, Rezervace.datum, Rezervace.cas
FROM Rezervace
JOIN Clenove ON Rezervace.idClena = Clenove.idClena;

-- 12. Rezervace se jménem služby
SELECT Sluzby.nazev, Rezervace.datum, Rezervace.cas
FROM Rezervace
JOIN Sluzby ON Rezervace.idSluzby = Sluzby.idSluzby;

-- 13. Všichni zaměstnanci a jejich služby (LEFT JOIN)
SELECT Zamestnanci.jmeno, Sluzby.nazev
FROM Zamestnanci
LEFT JOIN Sluzby ON Zamestnanci.idZamestnance = Sluzby.idZamestnance;

-- 14. Všechny služby a jejich zaměstnanci (RIGHT JOIN)
SELECT Sluzby.nazev, Zamestnanci.jmeno
FROM Sluzby
RIGHT JOIN Zamestnanci ON Sluzby.idZamestnance = Zamestnanci.idZamestnance;

-- 15. Počet rezervací na každou službu (GROUP BY + HAVING)
SELECT Sluzby.nazev, COUNT(*) AS pocet_rezervaci
FROM Rezervace
JOIN Sluzby ON Rezervace.idSluzby = Sluzby.idSluzby
GROUP BY Sluzby.nazev
HAVING COUNT(*) >= 1;
