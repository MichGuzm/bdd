create table registros_entrada(
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint registros_entrada_pk primary key(codigo_registro)
)

select cedula_empleado, fecha, hora from registros_entrada

select * from registros_entrada
where hora between '07:00' and '14:00'

select * from registros_entrada
where hora >'08:00'
