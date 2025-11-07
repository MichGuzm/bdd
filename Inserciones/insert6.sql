create table transacciones(
codigo int not null,
numero_cuenta char(5) not null,
monto money not null,
tipo varchar(1) not null,
fecha date not null,
hora time not null,
constraint transacciones_pk primary key(codigo) 
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(01,'12345',10.00,'C','13/11/2025','12:23')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(02,'22345',230.20,'D','23/01/2025','10:30')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(03,'32345',23.23,'D','23/11/2025','11:34')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(04,'42345',60.29,'C','03/11/2025','00:30')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(05,'52345',350.00,'D','29/11/2025','15:37')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(06,'62345',56.98,'C','09/12/2025','16:38')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(07,'72345',67.57,'C','19/11/2025','18:47')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(08,'82345',453.78,'D','28/11/2025','09:07')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(09,'92345',3500.00,'D','29/11/2025','05:37')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(10,'10345',464.40,'C','27/11/2025','18:59')

select * from transacciones