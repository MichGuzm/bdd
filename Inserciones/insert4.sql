create table registros_entrada(
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(01,'1234567891','03/03/1998','08:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(02,'1234567834','23/12/1999','08:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(03,'1234567893','05/04/1945','09:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(04,'1234567864','01/01/1980','09:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(05,'1234567991','13/03/1998','10:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(06,'1233567891','23/09/1988','10:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(07,'1434567891','14/01/1999','11:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(08,'1234587691','26/07/1987','12:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(09,'1234564551','01/05/1976','13:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(10,'1234561231','18/10/1994','15:00')

select * from registros_entrada

