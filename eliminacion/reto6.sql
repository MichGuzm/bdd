select * from productos

delete from productos
where descripcion is null

select * from cuentas

delete from cuentas
where cedula_propietario like '10%'

select * from estudiantes

delete from estudiantes
where cedula like '%05'

select * from registros_entrada

delete from registros_entrada
where fecha between '01/06/2025' and '30/06/2025'

select * from videojuegos

delete from videojuegos
where valoracion < 7

select * from transacciones

delete from transacciones
where fecha between '01/08/2025' and '31/08/2025'
and hora between '14:00' and '18:00'