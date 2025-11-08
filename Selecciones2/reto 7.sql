select * from productos
where stock=10 and precio<money(10)

select nombre, stock from productos
where nombre like '%m%' or descripcion is null

select nombre from productos
where descripcion is null or stock=0

select numero_cuenta, saldo from cuentas
where saldo>money(100) and saldo<money(1000)

select * from cuentas
where fecha_creacion between '07/11/2025' and '07/11/2024'

select * from cuentas
where saldo=money(0) or cedula_propietario like '%2'

select nombre, apellido from estudiantes
where nombre like 'M%' or apellido like '%z'

select * from estudiantes
where cedula like '18%' and cedula like '%32%'

select nombre, apellido from estudiantes
where cedula like '%06' or cedula like '17%'

select * from registros_entrada
where fecha between '01/09/2025' and '30/09/2025' or cedula_empleado like '17%'

select * from registros_entrada
where (fecha between '01/08/2025' and '31/08/2025') and cedula_empleado like '17%' and (hora between '08:00' and '12:00')

select * from registros_entrada
where ((fecha between '01/08/2025' and '31/08/2025') and cedula_empleado like '17%' and (hora between '08:00' and '12:00'))
or ((fecha between '01/09/2025' and '30/09/2025') and cedula_empleado like '08%' and (hora between '09:00' and '3:00'))

select * from videojuegos
where nombre like '%m%' or valoracion=7

select * from videojuegos
where (codigo between '3' and '7') or valoracion=7

select * from videojuegos
where (descripcion='juego de guerra' and valoracion>7 and nombre like 'C%')
or (valoracion>8 and nombre like 'D%')

select * from transacciones
where tipo='C' and numero_cuenta between '22001' and '22004'

select * from transacciones
where (tipo='D' and fecha='25/05/2025') and numero_cuenta between '22007' and '22010'

select * from transacciones
where (codigo between '1' and 5) and (numero_cuenta='22002' or numero_cuenta='22004') and (fecha between '26/05/2025' and '29/05/2025')