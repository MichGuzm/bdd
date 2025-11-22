drop table if exists transacciones
create table banco (
    codigo_banco serial primary key,
    codigo_transaccion int not null,
    detalle varchar(100) not null
);

create table transactions (
    codigo int primary key,
    numero_cuenta char(5) not null,
    monto money not null,
    tipo char(1) not null,
    fecha date not null,
    hora time not null
);
insert into transactions (codigo, numero_cuenta, monto, tipo, fecha, hora) values
(1, '22001', 150.00, 'C', '2024-01-15', '09:00:00'),
(2, '22002', 250.50, 'D', '2024-01-16', '10:15:00'),
(3, '22001', 350.75, 'C', '2024-01-17', '11:30:00'),
(4, '22003', 450.25, 'C', '2024-01-18', '08:45:00'),
(5, '22004', 550.00, 'D', '2024-01-19', '14:20:00'),
(6, '22002', 650.80, 'D', '2024-01-20', '15:10:00'),
(7, '22003', 750.40, 'C', '2024-01-21', '16:30:00'),
(8, '22001', 850.60, 'D', '2024-01-22', '09:50:00'),
(9, '22004', 950.90, 'C', '2024-01-23', '13:40:00'),
(10, '22002', 999.99, 'D', '2024-01-24', '12:25:00');

insert into banco (codigo_transaccion, detalle) values
(1, 'depósito en efectivo'),
(2, 'retiro por cajero automático'),
(5, 'transferencia recibida'),
(4, 'pago de nómina'),
(4, 'compra con tarjeta débito'),
(3, 'pago de servicios'),
(7, 'depósito de cheque'),
(5, 'retiro en ventanilla'),
(9, 'transferencia enviada'),
(10, 'pago de préstamo');

select * from transacciones
select * from banco