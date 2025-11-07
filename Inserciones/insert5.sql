create table videojuegos(
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint videojuegos_pk primary key(codigo) 
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(01,'Zelda','MPROG',9)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(02,'MINECRAFT','Sandbox',8)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(03,'No mans sky','Open wolrd',9.2)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(04,'The farmer was replace','Phyton programming',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(05,'Love and deepspace','Otome',10)

insert into videojuegos(codigo,nombre,valoracion)
values(06,'Roblox',4)

insert into videojuegos(codigo,nombre,valoracion)
values(07,'Valorant',7)

insert into videojuegos(codigo,nombre,valoracion)
values(08,'SuperSmashbros',8)

select * from videojuegos