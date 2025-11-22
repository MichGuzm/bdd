drop table if exists clientes
create table clientes (
    cedula CHAR(10) primary key,
    nombre VARCHAR(50) not null,
    apellido VARCHAR(50) not null
);

create table compras (
    id_compra SERIAL primary key,
    cedula CHAR(10) not null,
    fecha_compra DATE not null,
    monto DECIMAL(10,2) not null,
    constraint fk_cliente_compra 
    foreign key (cedula) 
    references clientes(cedula)
);

insert into clientes (cedula, nombre, apellido) values
('1712345678', 'Monica', 'López'),       
('0912378901', 'Carlos', 'Martínez'),    
('0807654321', 'Ana', 'Gómez'),           
('1234567890', 'Roberto', 'Díaz'),
('1776543210', 'Martha', 'Rodríguez'),   
('1274509876', 'Laura', 'Castillo'),    
('0912345678', 'Patricia', 'Morales'),
('1701234567', 'Gabriela', 'Vargas'),     
('1234509876', 'Maria', 'Silva');    

insert into compras (cedula, fecha_compra, monto) values
('1712345678', '2024-01-15', 150.75),       
('0912378901', '2024-01-16', 250.50),    
('0807654321', '2024-01-17', 350.25),           
('1234567890', '2024-01-18', 450.80),
('1776543210', '2024-01-19', 550.90),   
('1274509876', '2024-01-21', 750.60),    
('0912345678', '2024-01-22', 850.40),
('1701234567', '2024-01-23', 950.20),     
('1234509876', '2024-01-24', 1050.10); 

select * from clientes
select * from compras