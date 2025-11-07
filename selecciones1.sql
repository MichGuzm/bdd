select * from personas 
where fecha_nacimiento = '22/05/2000'
where fecha_nacimiento between'22/05/1995' and '22/05/2000'
where apellido like '%a%'
where fecha_nacimiento is null
where fecha_nacimiento is not null
where estatura <> 1.85
where estatura != 1.85

insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('1238472809','Jeff','Bezzos','10/07/1945')

insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('1234472809','Jwff','Boezos','10/0/1945')