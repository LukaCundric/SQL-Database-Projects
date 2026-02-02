1. Ustvarjanje kopije tabele
Najprej ustvarite kopijo tabele ZAPOSLENI z imenom ZAPOSLENI_KOPIJA.
create table ZAPOSLENI_KOPIJA as SELECT * FROM ZAPOSLENI;
Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe z imenom Jaklin.

2. Brisanje podatkov
Sestavite SQL ukaze za naslednje zahteve:

Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe s priimkom Jaklin.
DELETE FROM ZAPOSLENI_KOPIJA
where priimek='Jaklin';

Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe z imenom Gregor.
DELETE FROM ZAPOSLENI_KOPIJA
where ime='Gregor';

Iz tabele ZAPOSLENI_KOPIJA izbriši osebo Sebastjan Simèiè.
DELETE FROM ZAPOSLENI_KOPIJA
WHERE ime = 'Sebastjan'
AND priimek = 'Simèiè';

Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe, ki živijo v Italiji.
DELETE FROM ZAPOSLENI_KOPIJA
WHERE drzava = 'Italija';

Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe, ki so stare 52 let.
DELETE FROM ZAPOSLENI_KOPIJA
WHERE starost = 52;

Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe, ki so starejše od 50 let.
DELETE FROM ZAPOSLENI_KOPIJA
WHERE starost > 50;

Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe, ki živijo v Sloveniji in so starejše od 44 let.
DELETE FROM ZAPOSLENI_KOPIJA
WHERE drzava = 'Slovenija'
  AND starost > 44;
  
Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe, ki živijo v Postojni ALI Sežani.
DELETE FROM ZAPOSLENI_KOPIJA
WHERE mesto = 'Postojna'
   OR mesto = 'Sežana';
   
Iz tabele ZAPOSLENI_KOPIJA izbriši vse osebe, katerih imena se zaènejo na èrko 'E'.
DELETE FROM ZAPOSLENI_KOPIJA
WHERE ime LIKE 'E%';


Uporabite ukaz TRUNCATE TABLE ZAPOSLENI_KOPIJA za hitrejše izpraznjenje tabele.
TRUNCATE TABLE ZAPOSLENI_KOPIJA;
Uporabite ukaz DELETE FROM ZAPOSLENI_KOPIJA za brisanje vseh zapisov.
DELETE FROM ZAPOSLENI_KOPIJA;

4. Odstranitev tabele
Za konec fizièno izbrišite tabelo ZAPOSLENI_KOPIJA iz baze podatkov.
DROP TABLE ZAPOSLENI_KOPIJA;

commit;
set autocommit 10;

rollback;
CREATE TABLE zaposleni (
    ime VARCHAR(40),
    priimek VARCHAR(40),
    sifra INT,
    starost INT,
    mesto VARCHAR(40),
    drzava VARCHAR(40)
);

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Johan', 'Jaklin', 45, 99980, 'Ptuj', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Marija', 'Jaklin', 25, 99982, 'Ptuj', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Erik', 'Erjavec', 32, 88232, 'Trst', 'Italija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Marija', 'Erjavec', 32, 88233, 'Pivka', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Gregor', 'Hrovat', 42, 98002, 'Celje', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Sebastjan', 'Simèiè', 23, 92001, 'Grosuplje', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Peter', 'Grašiè', 35, 22322, 'Bled', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Marija', 'Maver', 52, 32326, 'Trbovlje', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Erika', 'Weber', 60, 32327, 'Sežana', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Lado', 'Brezovar', 22, 32380, 'Postojna', 'Slovenija');

INSERT INTO zaposleni (ime, priimek, starost, sifra, mesto, drzava) VALUES 
    ('Edvard', 'Cankar', 22, 32382, 'Globe', 'Slovenija');

Sestavi SQL ukaze za spreminjanje podatkov v tabeli ZAPOSLENI oz. dopolni strukturo tabele ZAPOSLENI (dodajanje primarnega kljuèa):

Kreiraj primarni kljuè z ukazom ALTER TABLE.
ALTER TABLE zaposleni
add primary key (sifra);

desc zaposleni;

Vse osebe s priimkom Jaklin preseli na Dunaj v Avstrijo.
select * from zaposleni;

update zaposleni
set drzava='Avstrija'
where priimek='Jaklin';

update zaposleni
set mesto='Dunaj'
where priimek='Jaklin';

Osebo Erik Erjavec preseli v državo Kongo.
UPDATE ZAPOSLENI
SET drzava = 'Kongo'
WHERE ime = 'Erik'
AND priimek = 'Erjavec';
  
Vse osebe s priimkom Erjavec postaraj za eno leto.
update zaposleni
set starost=starost+1
where priimek='Erjavec';

Osebi Peter Grašiè popravi šifro na 12345.
UPDATE ZAPOSLENI
SET sifra = 12345
WHERE ime = 'Peter'
AND priimek = 'Grašiè';
  
Vse osebe postaraj za eno leto.
UPDATE ZAPOSLENI
SET starost = starost + 1;

Vsem osebam, ki živijo v Sloveniji, popravi mesto na Ljubljano.
UPDATE ZAPOSLENI
SET mesto = 'Ljubljana'
WHERE drzava = 'Slovenija';

Osebo Peter Grašiè preseli na Dunaj v Avstrijo. Uporabi samo en UPDATE stavek.
UPDATE ZAPOSLENI
SET mesto = 'Dunaj',
drzava = 'Avstrija'
WHERE ime = 'Peter'
AND priimek = 'Grašiè';

