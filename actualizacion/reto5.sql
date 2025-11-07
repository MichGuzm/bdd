select * from productos

update productos set stock=0
where stock is null

select * from cuentas
update cuentas set saldo=money(10)
where cedula_propietario like '17%'

select * from estudiantes
update estudiantes set apellido='Hernandez'
where cedula like '17%'

select * from registros_entrada
update registros_entrada set cedula_empleado='082345679'
where fecha between '01/08/2025' and '31/08/2025'

select * from videojuegos
update videojuegos set descripcion='Mejor puntuado'
where valoracion > 9

select * from transacciones
update transacciones set tipo='T'
where monto >money(100) and monto <money(500)
and fecha between '01/09/2025' and '30/09/2025'
and hora between '14:00' and '20:00'