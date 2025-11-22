drop table if exists registros_entrada
create table empleado (
    codigo_empleado int primary key,
    nombre varchar(25) not null,
    fecha date not null,
    hora time not null
);
create table registros_entrada (
    codigo_registro serial primary key,
    cedula_empleado char(10) not null,
    fecha date not null,
    hora time not null,
    codigo_empleado int not null,
    constraint fk_registro_empleado 
    foreign key (codigo_empleado) 
    references empleado(codigo_empleado)
);

insert into empleado (codigo_empleado, nombre, fecha, hora) values
(2201, 'carlos gómez', '2023-09-15', '08:30:00'),
(2202, 'maría lópez', '2023-10-20', '09:15:00'),
(2203, 'juan martínez', '2023-08-25', '10:00:00'),
(2204, 'ana rodríguez', '2023-11-10', '08:45:00'),
(2205, 'pedro hernández', '2023-12-05', '11:30:00'),
(2206, 'laura torres', '2023-09-30', '12:15:00'),
(2207, 'diego castillo', '2023-10-15', '09:00:00'),
(2208, 'sofía morales', '2023-11-20', '10:45:00'),
(2209, 'andrés díaz', '2023-12-25', '08:20:00'),
(2210, 'isabel suárez', '2023-08-10', '11:00:00');

insert into registros_entrada (cedula_empleado, fecha, hora, codigo_empleado) values
('1234567890', '2023-08-15', '08:30:00', 2201),
('2345678901', '2023-09-20', '09:15:00', 2202),
('3456789012', '2023-10-25', '10:00:00', 2203),
('4567890123', '2023-11-05', '08:45:00', 2204),
('5678901234', '2023-12-10', '11:30:00', 2205),
('6789012345', '2023-08-30', '12:15:00', 2206),
('7890123456', '2023-09-10', '09:00:00', 2207),
('8901234567', '2023-10-15', '10:45:00', 2208),
('9012345678', '2023-11-25', '08:20:00', 2209),
('0123456789', '2023-12-30', '11:00:00', 2210);

select * from registros_entrada
select * from empleado 