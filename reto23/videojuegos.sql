drop table if exists videojuegos
create table videojuegos (
    codigo int primary key,
    nombre varchar(100) not null,
    descripcion varchar(300),
    valoracion int not null
);

create table plataformas (
    id_plataforma serial primary key,
    nombre_plataforma varchar(50) not null,
    codigo_videojuego int not null,
    constraint fk_videojuego_plataforma 
    foreign key (codigo_videojuego) 
    references videojuegos(codigo)
);

insert into videojuegos (codigo, nombre, descripcion, valoracion) values
(1, 'call of duty', 'juego de guerra moderna', 9),
(2, 'god of war', 'aventura épica con dioses', 10),
(3, 'civilization', 'estrategia por turnos', 8),
(4, 'doom', 'disparos en primera persona', 9),
(5, 'dark souls', 'rpg de acción difícil', 9),
(6, 'counter strike', 'juego de guerra táctico', 8),
(7, 'mario bros', 'aventura plataformas', 10),
(8, 'world of warcraft', 'mmorpg de fantasía', 8),
(9, 'dragon age', 'rpg de fantasía épica', 9),
(10, 'command & conquer', 'juego de guerra de estrategia', 8);

insert into plataformas (nombre_plataforma, codigo_videojuego) values
('playstation', 1),
('xbox', 1),
('pc', 2),
('playstation', 2),
('nintendo switch', 3),
('pc', 4),
('xbox', 5),
('playstation', 6),
('pc', 7),
('mobile', 8);

select * from videojuegos
select * from plataformas