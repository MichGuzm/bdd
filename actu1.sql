select * from personas

update personas set estatura=1.57
where cedula='1723489736'

update personas set cantidad_ahorrada=0.0
where cantidad_ahorrada is null

update personas set numero_hijos=0
where numero_hijos is null

update personas set estatura=1.60, fecha_nacimiento='02/10/2000'
where cedula='1723489745'