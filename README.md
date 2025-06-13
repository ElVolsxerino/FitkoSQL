# Projekt – Databáze fitness centra

Tento repozitář obsahuje:

- `fitko_full.sql` – vytvoření celé databáze + SQL dotazy
- `insert_fitko.sql` – ukázková data (7 záznamů v každé tabulce)
- `fitko_dotazy.sql` – pouze dotazy dle zadání

💾 Importovatelné v phpMyAdminu.



# Fitko – Databázový projekt

Tento repozitář obsahuje databázový projekt pro fiktivní fitness centrum. V rámci projektu byly vytvořeny skripty pro vytvoření databáze, vložení dat a SQL dotazy dle požadavků zadání.

---

## Soubory v repozitáři

### `fitko_full_with_er.sql`
- Obsahuje kompletní strukturu databáze včetně tabulek a relací
- Zahrnuje **textový ER diagram** jako komentář na začátku souboru
- Obsahuje také 15 SQL dotazů dle zadání, opatřených komentářem přirozeným jazykem

### `insert_fitko.sql`
- Vkládá testovací data do všech tabulek
- Každá tabulka obsahuje alespoň 7 záznamů

### `fitko_dotazy.sql`
- Obsahuje pouze SQL dotazy z `fitko_full.sql`, samostatně
- Pro přehledné použití a import

### `fitko_designer_ready.sql`
- Verze SQL skriptu připravená speciálně pro **phpMyAdmin Designer**
- Obsahuje správné `FOREIGN KEY` a `ENGINE=InnoDB` pro vizuální zobrazení vztahů v Designeru

---

## ER diagram

ER diagram je dostupný:
- **jako komentář** v souboru `fitko_full_with_er.sql` na začátku
- **vizuálně** po importu `fitko_designer_ready.sql` do phpMyAdmin – zobrazí se automaticky v záložce **Designer**

---

## Testování

1. Importuj `fitko_designer_ready.sql` pro zobrazení ER diagramu
2. Importuj `insert_fitko.sql` pro otestování dat
3. Spusť dotazy z `fitko_dotazy.sql` nebo `fitko_full_with_er.sql` dle potřeby
