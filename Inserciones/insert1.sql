create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int,
	constraint productos_pk primary key(codigo)
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(22,'KZ','audifonos in-ear',5.00,18)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(01,'Stanley','Termo 30 onz',55.00,3)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(32,'Reloj','reloj de pared',32.45,8)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(56,'Sharpie','marcadores permamentes',13.85,14)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(12,'Multicolor','set de acuarelas',33.99,24)

insert into productos(codigo,nombre,precio)
values(13,'Blusa',23.99)

insert into productos(codigo,nombre,precio)
values(36,'Zapatos',47.99)

insert into productos(codigo,nombre,precio)
values(98,'Bandana',0.99)

select * from productos