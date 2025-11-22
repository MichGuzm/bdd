drop table if exists productos;

create table productos (
    codigo int primary key,
    nombre varchar(50) not null,
    descripcion varchar(200),
    precio money not null,
    stock int not null
);

drop table if exists ventas;
create table ventas (
    id_venta serial primary key,
    codigo_producto int not null,
    fecha_venta date not null,
    cantidad int not null,
    constraint fk_producto_venta 
    foreign key (codigo_producto) 
    references productos(codigo)
);

insert into productos (codigo, nombre, descripcion, precio, stock) values
(1, 'camisa', 'prenda de vestir', 25.50, 100),
(2, 'mouse', 'dispositivo de computadora', 15.00, 50),
(3, 'monitor', 'pantalla para computadora', 200.00, 30),
(4, 'zapatos', 'calzado para pies', 45.00, 80),
(5, 'lampara', null, 35.00, 40),  
(6, 'mesa', 'mueble para comer', 120.00, 25),
(7, 'telefono', 'dispositivo móvil', 300.00, 60),
(8, 'computadora', 'equipo de computación', 800.00, 20),
(9, 'mochila', null, 40.00, 70), 
(10, 'libro', 'material de lectura', 20.00, 150);

insert into ventas (codigo_producto, fecha_venta, cantidad) values
(1, '2024-01-15', 2),
(2, '2024-01-16', 1),
(3, '2024-01-17', 5),
(4, '2024-01-18', 3),
(5, '2024-01-19', 1),
(6, '2024-01-20', 5),
(7, '2024-01-21', 2),
(8, '2024-01-22', 1),
(9, '2024-01-23', 4),
(10, '2024-01-24', 5);

select * from productos
select * from ventas