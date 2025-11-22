DROP TABLE IF EXISTS cuentas;

CREATE TABLE cuentas (
    numero_cuenta CHAR(5) PRIMARY KEY,
    cedula_propietario CHAR(5) NOT NULL,
    fecha_creacion DATE NOT NULL,
    saldo MONEY NOT NULL
);

select * from cuentas

create table usuario (
    cedula CHAR(5) PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    tipo_cuenta VARCHAR(20),
    limite_credito DECIMAL(10,5)
);

alter table cuentas
add constraint usuario_cuenta_fk
foreign key (cedula_propietario)
references usuario(cedula);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values('12345', 'Juan', 'Pérez', 'Ahorros', 1000.00),
('12346', 'María', 'Gómez', 'Corriente', 2000.00),
('12347', 'Carlos', 'López', 'Ahorros', 1500.00),
('12348', 'Ana', 'Martínez', 'Corriente', 3000.00),
('12349', 'Pedro', 'Rodríguez', 'Ahorros', 1200.00),
('12350', 'Laura', 'García', 'Corriente', 2500.00),
('12351', 'Diego', 'Hernández', 'Ahorros', 1800.00),
('12352', 'Sofía', 'Díaz', 'Corriente', 2200.00),
('12353', 'Miguel', 'Torres', 'Ahorros', 1300.00),
('12354', 'Elena', 'Ramírez', 'Corriente', 2800.00);

insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values('10001', '12345', '2022-09-15', 150.00),
('10002', '12346', '2022-10-20', 250.50),
('10003', '12347', '2022-11-10', 350.75),
('10004', '12348', '2022-12-05', 450.25),
('10005', '12349', '2023-01-15', 550.00),
('10006', '12350', '2023-02-28', 650.80),
('10007', '12351', '2023-03-12', 750.40),
('10008', '12352', '2023-04-18', 850.60),
('10009', '12353', '2023-05-22', 950.90),
('10010', '12354', '2023-06-30', 999.99);
select * from cuentas
select * from usuario