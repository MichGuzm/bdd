create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

select numero_cuenta, saldo from cuentas

select * from cuentas
where fecha_creacion between '07/11/2025' and '07/09/2025'

select numero_cuenta, saldo from cuentas
where fecha_creacion between '07/11/2025' and '07/09/2025'

