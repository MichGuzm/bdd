create table transacciones(
codigo int not null,
numero_cuenta char(5) not null,
monto money not null,
tipo varchar(1) not null,
fecha date not null,
hora time not null,
constraint transacciones_pk primary key(codigo) 
)

select * from transacciones
where tipo = 'D'

select * from transacci ones
where monto between money(200) and money(2000)

select codigo, monto, tipo, fecha from transacciones
where fecha is null