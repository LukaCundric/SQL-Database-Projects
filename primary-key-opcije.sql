CREATE TABLE telefon (
    id_telefon INT PRIMARY KEY,
    znamka     VARCHAR(30),
    tip        VARCHAR(30),
    cene       INT
);

INSERT INTO telefon (
    id_telefon,
    znamka,
    tip,
    cene
) VALUES (
    1,
    'Iphone',
    '16',
    800
);

INSERT INTO telefon (
    id_telefon,
    znamka,
    tip,
    cene
) VALUES (
    2,
    'Samsung',
    'S25 Ultra',
    1500
);

INSERT INTO telefon (
    id_telefon,
    znamka,
    tip,
    cene
) VALUES (
    3,
    'Iphone',
    '15 Pro Max',
    1000
);

INSERT INTO telefon (
    id_telefon,
    znamka,
    tip,
    cene
) VALUES (
    4,
    'Xiaomi',
    '15 Pro',
    500
);

select * from telefon


create table telefona (
 id_telefona int,
 znamka varchar(30),
 tip varchar(30),
 cena int,
 primary key(id_telefona)
);

alter table telefona
add primary key(id_telefona);