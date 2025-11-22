create table persona (
    cedula char(10) primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    estatura decimal(10,2),
    fecha_nacimiento date not null,
    hora_nacimiento time,
    cantidad_ahorrada money,
    numero_hijos int
);
create table prestamo (
    cedula char(10) not null,
    monto money not null,
    fecha_prestamo date not null,
    hora_prestamo time not null,
    garante varchar(40),
    constraint fk_prestamo_persona 
    foreign key (cedula) 
    references persona(cedula)
);
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) values
('1234567890', 'sean', 'connery', 1.85, '1980-05-15', '08:30:00', 5000.00, 2),
('2345678901', 'maría', 'gómez', 1.65, '1985-08-20', '14:15:00', 3000.00, 1),
('3456789012', 'carlos', 'lópez', 1.78, '1990-03-10', '10:45:00', 2500.00, 0),
('4567890123', 'ana', 'martínez', 1.60, '1988-12-05', '09:20:00', 4000.00, 3),
('5678901234', 'juan', 'rodríguez', 1.75, '1992-07-30', '16:30:00', 1500.00, 1),
('6789012345', 'laura', 'hernández', 1.68, '1987-11-25', '11:10:00', 3500.00, 2),
('7890123456', 'pedro', 'torres', 1.82, '1995-04-18', '07:45:00', 2000.00, 0),
('8901234567', 'sofía', 'díaz', 1.63, '1993-09-12', '13:25:00', 4500.00, 1),
('9012345678', 'diego', 'castillo', 1.77, '1989-06-08', '15:50:00', 2800.00, 2),
('0123456789', 'isabel', 'morales', 1.70, '1991-02-14', '12:05:00', 3200.00, 1);
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) values
('1234567890', 150.00, '2024-01-15', '09:00:00', 'maría gómez'),
('2345678901', 250.50, '2024-01-16', '10:15:00', 'carlos lópez'),
('3456789012', 350.75, '2024-01-17', '11:30:00', 'ana martínez'),
('4567890123', 450.25, '2024-01-18', '08:45:00', 'juan rodríguez'),
('5678901234', 550.00, '2024-01-19', '14:20:00', 'laura hernández'),
('6789012345', 650.80, '2024-01-20', '15:10:00', 'pedro torres'),
('7890123456', 750.40, '2024-01-21', '16:30:00', 'sofía díaz'),
('8901234567', 850.60, '2024-01-22', '09:50:00', 'diego castillo'),
('9012345678', 950.90, '2024-01-23', '13:40:00', 'isabel morales'),
('0123456789', 999.99, '2024-01-24', '12:25:00', 'sean connery');
select * from persona
select * from prestamo