drop table if exists estudiantes
create table profesores (
    codigo_profesor serial primary key,
    nombre varchar(50) not null
);
create table estudiantes (
    cedula char(10) primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(100),
    fecha_nacimiento date,
    codigo_profesor int,
    constraint fk_estudiante_profesor 
    foreign key (codigo_profesor) 
    references profesores(codigo_profesor)
);

create table colegios (
    nombre varchar(100) not null,
    direccion varchar(200) not null,
    telefono varchar(15) not null
);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) values
('1234567890', 'juan', 'gonzález', 'juan@email.com', '2005-03-15', 1),
('2345678901', 'maría', 'hernández', 'maria@email.com', '2006-07-22', 2),
('3456789012', 'carlos', 'martínez', 'carlos@email.com', '2005-11-30', 3),
('4567890123', 'laura', 'rodríguez', 'laura@email.com', '2007-01-10', 4),
('5678901234', 'pedro', 'suárez', 'pedro@email.com', '2006-09-05', 5),
('6789012345', 'ana', 'torres', 'ana@email.com', '2005-12-18', 2);
insert into profesores (codigo_profesor, nombre) values
(1,'francisco'),
(2,'maría'),
(3,'carlos'),
(4,'ana'),
(5,'luis');

select * from estudiantes
select * from profesores