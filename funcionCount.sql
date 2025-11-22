select count (apellido) from personas
where estado_civil_codigo='C'

select count(ec.codigo) from personas per, estado_civil ec
where per.estado_civil_codigo=ec.codigo

--AVG

select AVG(cast (cantidad_ahorrada as numeric)) from personas

select AVG(cast (cantidad_ahorrada as numeric)) from personas per, estado_civil ec
where per.estado_civil_codigo=ec.codigo

--SUM, MAX Y MIN

select SUM(cast (cantidad_ahorrada as numeric)) from personas

select MAX(cast (cantidad_ahorrada as numeric)) from personas

select MIN(cast (cantidad_ahorrada as numeric)) from personas

--group by
select * from persona

select numero_hijos, count(*) from persona
group by numero_hijos

select numero_hijos, sum(numero_hijos) from persona
group by numero_hijos