create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(12212,12345,'02/02/1999',250.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(12342,12545,'13/05/1987',30.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(12142,32445,'30/09/1996',300.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(46372,12657,'01/04/1974',456.42)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(45565,15445,'23/11/2001',40.50)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(14565,45445,'26/01/2011',20.01)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(17565,95445,'03/12/2000',40.50)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(23965,46445,'24/12/1997',400.10)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(05565,14445,'25/04/2007',30.56)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values(59565,34445,'20/04/2009',82.35)

select * from cuentas