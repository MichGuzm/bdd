select cu.numero_cuenta, us.nombre 
from cuentas cu, usuario us
where saldo between money(100) and money(1000);

select * 
from cuentas 
where fecha_creacion between '2022-09-21' and '2023-09-21';
___________________
select nombre, apellido 
from clientes 
where cedula like '%7%';

select * 
from clientes 
where cedula = (select cedula from clientes where nombre = 'Monica');
____________________

select codigo_profesor, nombre, apellido 
from estudiantes
where apellido like '%n%';

select e.*
from estudiantes e
where e.codigo_profesor = (select codigo_profesor from profesores where lower(nombre) = 'francisco');
____________________
select p.cantidad_ahorrada, pr.monto, pr.garante
from persona p
join prestamo pr on p.cedula = pr.cedula
where pr.monto between money(100) and money(1000);

select * from persona
where cedula = (select cedula from persona where lower(nombre) = 'sean' limit 1);
_____________________
select p.nombre, p.stock, v.cantidad
from productos p, ventas v 
where p.nombre like '%m%' or p.descripcion is null;

select p.nombre, p.stock
from productos p
where p.codigo in(select codigo_producto from ventas where cantidad = 5);
_________________________
select *from transactions
where tipo = 'c' and numero_cuenta between '22001' and '22004';

select t.*
from transactions t
where t.codigo in (select codigo_transaccion from banco where codigo_banco = 1);
__________________________
select v.nombre, v.descripcion, v.valoracion, p.nombre_plataforma
from videojuegos v, plataformas p
where (v.descripcion like '%guerra%' and v.valoracion > 7)
   or (v.nombre like 'c%' and v.valoracion > 8)
   or (v.nombre like 'd%' and v.valoracion > 8);

select p.*
from plataformas p
where p.codigo_videojuego = (select codigo from videojuegos where lower(nombre) = 'god of war');
________________________
select r.cedula_empleado, r.fecha, e.nombre
from registros_entrada r, empleado e
where (r.fecha between '2023-08-01' and '2023-08-31')
   or (r.cedula_empleado like '17%' and r.hora between '08:00' and '12:00')
   or (r.fecha between '2023-10-06' and '2023-10-20' 
       and r.cedula_empleado like '08%' 
       and r.hora between '09:00' and '13:00');

select e.*
from empleado e
where e.codigo_empleado = '2201';
