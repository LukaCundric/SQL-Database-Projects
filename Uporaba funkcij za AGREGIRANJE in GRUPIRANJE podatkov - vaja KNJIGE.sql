SELECT
    *
FROM
    zaposleni;

SELECT
    MIN(starost)
FROM
    zaposleni;

SELECT
    MAX(starost)
FROM
    zaposleni;

SELECT
    COUNT(starost)
FROM
    zaposleni;

SELECT
    SUM(starost)
FROM
    zaposleni;

SELECT
    AVG(starost)
FROM
    zaposleni;

SELECT
    COUNT(*)
FROM
    zaposleni
WHERE
    starost IS NULL;

SELECT
    COUNT(*) - COUNT(starost)
FROM
    zaposleni;

SELECT
    starost,
    starost + 10,
    starost * 10,
    starost / 10
FROM
    zaposleni;

CREATE TABLE knjige (
    id_knjige      INT PRIMARY KEY,
    priimek        VARCHAR(20),
    ime            VARCHAR(20),
    naslov         VARCHAR(20),
    leto_izdaje    INT,
    stevilo_strani INT,
    cena           NUMBER(5, 2)
);

INSERT INTO knjige (
    id_knjige,
    priimek,
    ime,
    naslov,
    leto_izdaje,
    stevilo_strani,
    cena
) VALUES (
    1,
    'Cankar',
    'Ivan',
    'Na klancu',
    1968,
    150,
    15.5
);

INSERT INTO knjige (
    id_knjige,
    priimek,
    ime,
    naslov,
    leto_izdaje,
    stevilo_strani,
    cena
) VALUES (
    2,
    'Levstik',
    'Fran',
    'Martin Krpan',
    1993,
    80,
    24.55
);

INSERT INTO knjige (
    id_knjige,
    priimek,
    ime,
    naslov,
    leto_izdaje,
    stevilo_strani,
    cena
) VALUES (
    3,
    'Vašte',
    'Ilka',
    'Roman o Prešernu',
    2000,
    467,
    32.45
);

INSERT INTO knjige (
    id_knjige,
    priimek,
    ime,
    naslov,
    leto_izdaje,
    stevilo_strani,
    cena
) VALUES (
    4,
    'Voranc',
    'Prežihov',
    'Samorastniki',
    2000,
    355,
    13.26
);

INSERT INTO knjige (
    id_knjige,
    priimek,
    ime,
    naslov,
    leto_izdaje,
    stevilo_strani,
    cena
) VALUES (
    5,
    'Jurèiè',
    'Josip',
    'Deseti brat',
    1965,
    360,
    24.65
);

INSERT INTO knjige (
    id_knjige,
    priimek,
    ime,
    naslov,
    leto_izdaje,
    stevilo_strani,
    cena
) VALUES (
    8,
    'Kersnik',
    'Janko',
    'Jara gospoda',
    1960,
    149,
    28.25
);

SELECT * FROM KNJIGE;
Iz tabele KNJIGE izpiši ime in priimek avtorja in naslov knjige
SELECT ime, priimek, naslov FROM KNJIGE;

*Iz tabele KNJIGE izpiši dva stolpca - ime in priimek avtorja in naslov knjige. 
Stolpca poimenuj Pisatelj in Naslov knjige. (ALIAS)
SELECT ime || ' ' || priimek AS "PISATELJ", naslov FROM KNJIGE;

Iz tabele KNJIGE izpiši vsa imena in priimke avtorjev. Vsak avtor naj bo izpisan samo enkrat.
SELECT DISTINCT ime, priimek FROM KNJIGE;

*Iz tabele KNJIGE izpiši vsa imena in priimke avtorjev. Vsak avtor naj bo izpisan samo enkrat. 
Rezultate izpiši v enem stolpcu, katerega naslov naj bo Pisatelj. (ALIAS)
SELECT DISTINCT ime || ' ' || priimek AS "PISATELJ" FROM KNJIGE;

*Iz tabele KNJIGE izpiši vsa imena in priimke avtorjev. Vsak avtor naj bo izpisan samo enkrat. 
Izpis uredi narašèajoèe po priimku avtorja narašèajoèe.
SELECT DISTINCT ime, priimek FROM KNJIGE ORDER BY priimek ASC;

*Iz tabele KNJIGE izpiši vsa imena in priimke avtorjev. Vsak avtor naj bo izpisan samo enkrat. 
Izpis uredi narašèajoèe po priimku avtorja padajoèe.
SELECT DISTINCT ime, priimek FROM KNJIGE ORDER BY priimek DESC;

Iz tabele KNJIGE izpiši – leto izdaje, naslov in ceno knjige. Stolpec leto_izdaje poimenuj 'Leto izdaje'.  
Izpis naj bo urejen padajoèe po letu izdaje. V primeru enakih vrednosti v stolpcu leto_izdaje, 
se zapisi uredijo po ceni narašèajoèe.
SELECT leto_izdaje AS "Leto izdaje", naslov, cena FROM KNJIGE ORDER BY leto_izdaje DESC, cena ASC;

*Iz tabele KNJIGE izpiši naslov in ceno knjige. Dodaj še tretji stolpec z imenom 'Cena s popustom'. 
V tem stolpcu izpiši cene znižane za 10%.*
SELECT naslov, cena, cena * 0.9 AS "Cena s popustom" FROM KNJIGE;

Izpiši vse naslove knjig in cene, pri tem nas zanimajo samo knjige, ki so dražje od 12 EUR.
SELECT naslov, cena FROM KNJIGE WHERE cena > 12;

*Izpiši vse naslove knjig in cene, pri tem nas zanimajo samo knjige, ki so dražje od 18 eur. 
Izpis uredi po ceni padajoèe.
SELECT naslov, cena FROM KNJIGE WHERE cena > 18 ORDER BY cena DESC;

Zanimajo nas naslovi vseh knjig v bazi, ki jih je napisal Ivan Cankar.
SELECT naslov FROM KNJIGE WHERE ime = 'Ivan' AND priimek = 'Cankar';

Zanimajo nas naslovi, cene in leto izdaje - vseh knjig v bazi, ki so bile izdane leta 1995 ali leta 2005.
SELECT naslov, cena, leto_izdaje FROM KNJIGE WHERE leto_izdaje = 1995 OR leto_izdaje = 2005;

Zanimajo nas naslovi, cene in leto izdaje - vseh knjig v bazi, ki so bile izdane v letih od 1995 do 2005 (vkljuèno).(BETWEEN)
SELECT naslov, cena, leto_izdaje FROM KNJIGE WHERE leto_izdaje BETWEEN 1995 AND 2005;

Zanimajo nas naslovi, cene in leto izdaje - vseh knjig v bazi, ki so bile izdane v letih 1992, 1995,1998 in 2000.
SELECT naslov, cena, leto_izdaje FROM KNJIGE WHERE leto_izdaje IN (1992, 1995, 1998, 2000);

Zanimajo nas naslovi, cene in leto izdaje - vseh knjig v bazi, razen tistih, ki so bile izdane v 
letih 1992, 1995,1998 in 2000.
SELECT naslov, cena, leto_izdaje FROM KNJIGE WHERE leto_izdaje NOT IN (1992, 1995, 1998, 2000);

Zanimajo nas priimki vseh avtorjev, ki se priènejo s èrko V.
SELECT priimek FROM KNJIGE WHERE priimek LIKE 'V%';

Zanimajo nas priimki vseh avtorjev, ki imajo na drugem mestu èrko a.
SELECT priimek FROM KNJIGE WHERE priimek LIKE '_a%';

*Zanima nas koliko zapisov imamo v tabeli KNJIGE.*
SELECT COUNT(*) FROM KNJIGE;

*Zanima nas koliko razliènih avtorjev imamo v tabeli KNJIGE. *
SELECT COUNT(DISTINCT ime || ' ' || priimek) FROM KNJIGE;

*Zanima nas koliko knjig je bilo izdanih po posameznih letih izdaje. Spisek naj bo urejen po letih izdaje narašèajoèe. *
SELECT leto_izdaje, COUNT(*) FROM KNJIGE GROUP BY leto_izdaje ORDER BY leto_izdaje ASC;

*Zanima nas koliko knjig je bilo izdanih leta 1995. *
SELECT COUNT(*) FROM KNJIGE WHERE leto_izdaje = 1995;

*Zanimajo nas leta v katerih je bila izdana veè kot ena knjiga. Spisek naj bo urejen po letih narašèajoèe. *
SELECT leto_izdaje FROM KNJIGE GROUP BY leto_izdaje HAVING COUNT(*) > 1 ORDER BY leto_izdaje ASC;

*Koliko znaša skupna cena knjig v podatkovni zbirki? *
SELECT SUM(cena) FROM KNJIGE;

*Koliko znaša skupna cena knjig v podatkovni zbirki, kolikšen je znesek DDV pri 20% davèni stopnji in 
kolikšen je skupni znesek z DDV? *
SELECT SUM(cena) AS "Skupna cena", SUM(cena) * 0.2 AS "DDV", SUM(cena) * 1.2 AS "Skupni znesek z DDV" FROM KNJIGE;

*Kakšno je skupno število strani v knjigah - po posameznih letih izdaje? *
SELECT leto_izdaje, SUM(stevilo_strani) FROM KNJIGE GROUP BY leto_izdaje;

*Napiši SQL ukaz, ki izpiše leto izdaje in skupno število strani v knjigah. 
Podatki naj se izpišejo samo za leta izdaje, kjer je skupno število strani med 400 in 700 (vkljuèno). *
SELECT leto_izdaje, SUM(stevilo_strani) AS "Skupno število strani" 
FROM KNJIGE GROUP BY leto_izdaje HAVING SUM(stevilo_strani) BETWEEN 400 AND 700;

*Kakšno je povpreèno število strani – za vse knjige v podatkovni zbirki? *
SELECT AVG(stevilo_strani) FROM KNJIGE;

*Koliko znaša povpreèna cena za knjige izdane v letu 2001? *
SELECT AVG(cena) FROM KNJIGE WHERE leto_izdaje = 2001;

*Izpiši število strani in naslov knjige. Podatki naj se izpišejo samo za tri knjige, 
ki imajo najveè strani. Upoštevaj, da imata dve knjigi lahko enako število strani.*
SELECT stevilo_strani, naslov FROM KNJIGE ORDER BY stevilo_strani DESC FETCH FIRST 3 ROWS WITH TIES;

*Izpiši naslove knjig in njihovo ceno - za najdražjih 20% knjig. * 
SELECT naslov, cena FROM KNJIGE ORDER BY cena DESC FETCH FIRST 20 PERCENT ROWS ONLY;

*Izpiši leto izdaje in ceno najdražje knjige - za posamezno leto izdaje. Spisek naj bo urejen po letih izdaje padajoèe. *
SELECT leto_izdaje, MAX(cena) FROM KNJIGE GROUP BY leto_izdaje ORDER BY leto_izdaje DESC;

*Izpiši leto izdaje, ter ceno najdražje knjige in najcenejše knjige - za posamezno leto izdaje. 
Spisek naj bo urejen po letih izdaje narašèajoèe. *
SELECT leto_izdaje, MAX(cena) AS "Najdražja", MIN(cena) AS "Najcenejša" 
FROM KNJIGE GROUP BY leto_izdaje ORDER BY leto_izdaje ASC;

*Izpiši priimek in ime avtorja, ter naslov in ceno knjige - za 35% najdražjih knjig. Spisek naj bo urejen po ceni padajoèe. *
SELECT priimek, ime, naslov, cena FROM KNJIGE ORDER BY cena DESC FETCH FIRST 35 PERCENT ROWS ONLY;

Uporaba ukazov INSERT, UPDATE in DELETE


*V podatkovni zbirki ustvari novo tabelo z imenom KNJIGE_ARHIV in vanjo prepiši vse podatke iz tabele KNJIGE.
CREATE TABLE KNJIGE_ARHIV AS SELECT * FROM KNJIGE;

*V tabelo KNJIGE_ARHIV dodaj knjigo Evalda Flisarja  'Èaj s kraljico', ki ima 554 strani, 
stane 17 EUR in je bila izdana leta 2006.
INSERT INTO KNJIGE_ARHIV (ime, priimek, naslov, stevilo_strani, cena, leto_izdaje) 
VALUES ('Evald', 'Flisar', 'Èaj s kraljico', 554, 17, 2006);

V tabelo KNJIGE_ARHIV dodaj knjigo Draga Janèarja 'Èlovek, ki je pogledal v Tolmin', ki ima 144 strani, 
stane 12 EUR in je bila izdana leta 2007 in knjigo Ferija Lainšèka 'Petelinji zajtrk', ki ima 220 strani,
stane 17 EUR in je bila izdana leta 2006.
INSERT INTO KNJIGE_ARHIV (ime, priimek, naslov, stevilo_strani, cena, leto_izdaje) VALUES 
('Drago', 'Janèar', 'Èlovek, Tolminje', 144, 12, 2007);
INSERT INTO KNJIGE_ARHIV (ime, priimek, naslov, stevilo_strani, cena, leto_izdaje) VALUES 
('Feri', 'Lainšèek', 'Petelinji zajtrk', 220, 17, 2006);

V tabelo KNJIGE_ARHIV dodaj knjigo Milana Dekleve 'Izkušnje z daljavo', ki ima 166 strani, 
za katero ne poznamo cene in je bila izdana leta 2005
INSERT INTO KNJIGE_ARHIV (ime, priimek, naslov, stevilo_strani, leto_izdaje) 
VALUES ('Milan', 'Dekleva', 'Izkušnje z daljavo', 166, 2005);

V tabelo KNJIGE_ARHIV dodaj vse KNJIGE iz tabele KNJIGE, ki so bile izdane leta 2000.
INSERT INTO KNJIGE_ARHIV SELECT * FROM KNJIGE WHERE leto_izdaje = 2000;

*V tabeli KNJIGE_ARHIV povišaj vse cene za 15%.
UPDATE KNJIGE_ARHIV SET cena = cena * 1.15;

*V tabeli KNJIGE_ARHIV za 5 EUR znižaj ceno vsem knjigam, ki so natisnjene leta 1995 ali prej in so dražje od 25 EUR.
UPDATE KNJIGE_ARHIV SET cena = cena - 5 WHERE leto_izdaje <= 1995 AND cena > 25;

V tabeli KNJIGE_ARHIV poveèaj cene vsem knjigam izdanim leta 1990 ali prej za 100%. 
Obenem spremeni leto izdaje za omenjene KNJIGE na 2007.*
UPDATE KNJIGE_ARHIV SET cena = cena * 2, leto_izdaje = 2007 WHERE leto_izdaje <= 1990;

V tabeli KNJIGE_ARHIV odstrani cene za KNJIGE , ki so bile natisnjene - vkljuèno - med leti 1997 in 2002.
UPDATE KNJIGE_ARHIV SET cena = NULL WHERE leto_izdaje BETWEEN 1997 AND 2002;

V tabeli KNJIGE_ARHIV odstrani vse KNJIGE dražje od 40 EUR.
DELETE FROM KNJIGE_ARHIV WHERE cena > 40;

*V tabeli KNJIGE_ARHIV odstrani KNJIGE pri katerih ni znana cena *
DELETE FROM KNJIGE_ARHIV WHERE cena IS NULL;
