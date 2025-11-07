create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1234567891,'Gala','Flores','lal@ej.d','01/01/2001')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1234567831,'Fiorella','Rea','dsl@ej.d','10/02/2011')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1234567591,'Sarah','Santino','sal@ej.d','11/11/2011')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1234547891,'Nicole','Avila','lalee@ej.d','14/01/2013')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1234567591,'Gabriel','Larrea','ladel@ej.d','01/01/2014')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1234367841,'Lalo','Ortiz','lalfd@ej.d','21/11/2012')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1236567991,'Bryab','Ress','lals@ej.d','30/11/2011')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values(1234566391,'Alex','Dalles','laltr@ej.d','29/10/2011')

select * from estudiantes