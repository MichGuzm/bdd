--funcion 1 cuentas
select avg(cast (saldo as numeric))
from cuentas
where cedula_propietario = '12345';

--funcion2 cuentas
select tipo_cuenta, count(*)
from usuario
group by tipo_cuenta;

---------------
--funcion1 clientes y compras
select c.cedula, c.nombre, sum(co.monto)
from clientes c, compras co 
group by c.cedula, c.nombre;

--funcion2
select count(*) from compras
where fecha_compra = '2024-01-15';
_________________
--funcion1 estudiantes/profesores

select codigo_profesor, count(*) from estudiantes
group by codigo_profesor;
--funcion2
select round(avg(extract(year from current_date) - extract(year from fecha_nacimiento))) as edad_promedio
from estudiantes;
__________________
--funcion1 personas/prestamos
select p.cedula, p.nombre, sum(cast (pr.monto as numeric))
from persona p, prestamo pr
group by p.cedula, p.nombre;
--funcion2
select count(*)from persona
where numero_hijos > 1;
__________________
--funcion1 producto/
select max(cast (precio as numeric))
from productos;
--funcion2
select sum(cantidad) from ventas;
_________________
--funcion1 transacciones
select count(*) from transactions
where tipo = 'C';
--funcion2
select numero_cuenta, round(avg(cast(monto as numeric)), 2) from transactions
group by numero_cuenta;
_________________
--funcion1 videojuegos
select codigo_videojuego, count(*) from plataformas
group by codigo_videojuego;
--funcion2
select round(avg(valoracion), 2) from videojuegos;
_________________
--funcion1 registros
select codigo_empleado, count(*) from registros_entrada
group by codigo_empleado;
--funcion 2 
select min(fecha), max(fecha) from registros_entrada;


