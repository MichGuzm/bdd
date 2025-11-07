create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
	
)
insert into personas(cedula,nombre,apellido)
values('1723489736','Mich','Guzman')

insert into personas(cedula,nombre,apellido,estatura)
values('1723489735','Santi','Garzon',1.85)

insert into personas(cedula,nombre,apellido,numero_hijos)
values('1723489745','Sara','Salazar',2)

insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values('1723489345','Estefy','ramos',2,1.65,'22/05/2000','22:43',200.34)

select cedula,nombre,numero_hijos,estatura from personas

select * from personas