USE SAKILA;
/* 4 Contar y consultar todos los actores que existen en la BD usando sentencias SQL*/
select count(actor_id) from actor;
select * from actor;

/* 5 Consultar cuáles actores participan en las películas ACADEMY DINOSAUR, BERETS
AGENT*/
select
	f.title as "NOMBRE DE LA PELICULA", a.first_name AS "NOMBRE", a.last_name AS "APELLIDO"
from 
	film f inner join film_actor f_a on f.film_id = f_a.film_id
    inner join actor a on f_a.actor_id = a.actor_id
where 
	f.title = "ACADEMY DINOSAUR" or f.title = "BERETS AGENT";

/* 6 Consultar en cuáles películas ha participado KARL BERRY y cual es la categoría de
dichas película*/
select
	f.title as Titulo, c.name as Categoria
from 
	actor a inner join film_actor f_a on a.actor_id = f_a.actor_id
    inner join film f on f_a.film_id = f.film_id
    inner join film_category f_c on f.film_id = f_c.film_id
    inner join category c on f_c.category_id = c.category_id
where 
	a.first_name = "KARL" and  a.last_name = "BERRY";
    
/* 7 Consultar el costo promedio de (replacement_cost) para las películas cuya
categoría sea Drama*/
select
	sum(f.replacement_cost) as "TOTAL COSTOS DE REMPLAZO",
    count(f.replacement_cost) as "CANTIDAD DE REGISTROS",
	sum(f.replacement_cost)/count(f.replacement_cost) as "PROMEDIO COSTOS DE REMPLAZO",
    c.name as "NOMBRE DE LA CATEGORIA"
from 
	film f inner join film_category f_c on f.film_id = f_c.film_id
    inner join category c on f_c.category_id = c.category_id
    where c.name = "drama";
    
/* 8 Consultar el total de ventas de cada store por categoría de película */
select
	i.store_id as "Nº TIENDA",
	sum(p.amount) as "MONTO TOTAL",
	c.name as GENERO
from 
	category c inner join film_category f_c on c.category_id = f_c.category_id
    inner join film f on f.film_id = f_c.film_id
    inner join inventory i on i.film_id = f.film_id
    inner join rental r on r.inventory_id = i.inventory_id
    inner join payment p on p.rental_id = r.rental_id
group by
	c.name 
    order by i.store_id
;

SELECT
	CONCAT (ct.city, ",", cy.country) AS "Tienda",
	c.name AS "Categoría",
    SUM(p.amount) AS "Total Ventas"
FROM payment p
INNER JOIN rental r ON p.rental_id = r.rental_id
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN store s ON i.store_id = s.store_id
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city ct ON a.city_id = ct.city_id
INNER JOIN country cy ON ct.country_id = cy.country_id
INNER JOIN film f ON i.film_id = f.film_id
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY s.store_id, c.name;


/* 9 Contar todos los clientes existentes por País */
select 
	co.country_id as "ID DEL PAIS",
    co.country as "NOMBRE DEL PAIS",
	count(co.country_id) as "Nº CLIENTES POR PAIS"
from 
	country co inner join city ci on co.country_id = ci.country_id
    inner join address ad on ci.city_id = ad.city_id
    inner join customer cu on ad.address_id = cu.address_id
    group by co.country_id;
    
/* 10 Crear una tabla temporal que contenga las películas que cada cliente ha alquilado.*/

CREATE TEMPORARY TABLE Peliculas_Por_Persona (   
select 
	CONCAT(first_name, ' ', last_name) As "NOMBRE COMPLETO" , f.title as "NOMBRE DE LA PELICULA"
from
	customer co inner join rental r on co.customer_id = r.customer_id
    inner join inventory i on r.inventory_id = i.inventory_id
    inner join film f on i.film_id = f.film_id
    order by first_name
);

/* 11 Consulte el tiempo máximo en días que cada cliente ha tenido una película.*/

select
r.return_date,
r.rental_date,
CONCAT(c.first_name, ' ', c.last_name) As "NOMBRE COMPLETO",
datediff (r.return_date , r.rental_date)as "resultado" ,
f.title

from
	customer c inner join rental r on c.customer_id = r.customer_id
    inner join inventory i on r.inventory_id = i.inventory_id
    inner join film f on i.film_id = f.film_id;
    
