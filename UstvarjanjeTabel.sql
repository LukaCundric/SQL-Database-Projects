DROP TABLE AVTO;

CREATE TABLE avtomobili (
    id_avtomobila INT PRIMARY KEY,
    znamka        VARCHAR(30),
    model         VARCHAR(30),
    letnik        INT
);

insert into avtomobili (id_avtomobila, znamka, model, letnik) values (1,'bmw', '5', 2020);
insert into avtomobili (id_avtomobila, znamka, model, letnik) values (2,'audi', 'a5', 2023);
insert into avtomobili (id_avtomobila, znamka, model, letnik) values (3,'mercedes', 'gls', 2024);
insert into avtomobili (id_avtomobila, znamka, model, letnik) values (4,'citroen', 'saxo', 2002);
select * from avtomobili

		
	

