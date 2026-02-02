
create table dijaki (
id_dijak int primary key,
ime varchar(30),
priimek varchar(30),
starost int
);

insert into dijaki (id_dijak, ime, priimek, starost) values (1,'Marko', 'Arniè', 18);
insert into dijaki (id_dijak, ime, priimek, starost) values (2,'Barbara', 'Bolha',19 );
insert into dijaki (id_dijak, ime, priimek, starost) values (3,'Aleš', 'Deèman',20 );
insert into dijaki (id_dijak, ime, priimek, starost) values (4,'Teja', 'Kralj', 22);
insert into dijaki (id_dijak, ime, priimek, starost) values (5,'Anica', 'Magušar',20 );
insert into dijaki (id_dijak, ime, priimek, starost) values (6,'Leon', 'Luznar',19 );
insert into dijaki (id_dijak, ime, priimek, starost) values (7,'Irena', 'Žagar',28 );
insert into dijaki (id_dijak, ime, priimek, starost) values (8,'Milena', 'Tovornik',22 );
insert into dijaki (id_dijak, ime, priimek, starost) values (9,'Sanja', 'Pliberšek',22 );
insert into dijaki (id_dijak, ime, priimek, starost) values (10,'Miha', 'Matevžiè', 23);
insert into dijaki (id_dijak, ime, priimek, starost) values (11,'Andrej', 'Mlakar', 23);
insert into dijaki (id_dijak, ime, priimek, starost) values (12,'Ana', 'Hribar',22 );
insert into dijaki (id_dijak, ime, priimek, starost) values (13,'Karmen', 'Kraèun', 21);

select * from dijaki

create table Dijaki_KOPIJA as select * from dijaki;

alter table Dijaki_KOPIJA
add primary key (id_dijak);
	

