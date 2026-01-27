/*2. Muestra los nombres de todas las películas con una clasificación por
edades de ‘R’.
 */

select "title", "rating"
from "film" f 
where "rating" = 'R';

/*3. Encuentra los nombres de los actores que tengan un “actor_id” entre 30
y 40.
*/

select "actor_id", "first_name"
from "actor" a 
where "actor_id" between 30 and 40;

/* 4. Obtén las películas cuyo idioma coincide con el idioma original.
*/

select "title",
		"language_id",
		"original_language_id" 
from "film" f 
where "language_id" = "original_language_id";

/*5. Ordena las películas por duración de forma ascendente.
*/

select "title", "length"
from "film" f
order by "length" asc;

/*6. Encuentra el nombre y apellido de los actores que tengan ‘Allen’ en su
apellido.
*/

select "first_name", "last_name"
from "actor" a 
where "last_name" = 'ALLEN';

/*7. Encuentra la cantidad total de películas en cada clasificación de la tabla
“film” y muestra la clasificación junto con el recuento.
*/

select "rating", 
  count("rating") as "cantidad_total"
from "film"
group by "rating";

/*8. Encuentra el título de todas las películas que son ‘PG-13’ o tienen una
duración mayor a 3 horas en la tabla film.
*/

select "title",
		"rating",
		"length"
from "film"
where "rating" = 'PG-13' or "length" > 180; 

/*9. Encuentra la variabilidad de lo que costaría reemplazar las películas.
  */

select variance("replacement_cost") as "varianza_reemplazo"
from "film";

/* 10. Encuentra la mayor y menor duración de una película de nuestra BBDD.
  */

select MAX("length") as "duración_máxima",
		MIN("length") as "duración_mínima"
from "film";

/*11. Encuentra lo que costó el antepenúltimo alquiler ordenado por día.
 * 
 */

select p."amount" as "precio",
		r.rental_date
from "payment" p 
join "rental" r 
		on p."rental_id" = r."rental_id" 
order by r."rental_date" desc
limit 1 offset 2;

/*12. Encuentra el título de las películas en la tabla “film” que no sean ni ‘NC-
17’ ni ‘G’ en cuanto a su clasificación.
*/

select "title", "rating"
from "film" f 
where "rating" not in ('NC-17', 'G');

/* 13. Encuentra el promedio de duración de las películas para cada
clasificación de la tabla film y muestra la clasificación junto con el
promedio de duración.
*/

select "rating", 
  AVG("length")
from "film"
group by "rating";

/*14. Encuentra el título de todas las películas que tengan una duración mayor
a 180 minutos.
*/

select "title", "length"
from "film"
where "length" > 180;

/* 15. ¿Cuánto dinero ha generado en total la empresa?
  */

select sum("amount")
from "payment";


/* 16. Muestra los 10 clientes con mayor valor de id.
*/

select "customer_id",
	concat("first_name", ' ', "last_name") as "nombre_cliente"
from "customer" c 
order by "customer_id" desc
limit 10;


/* 17. Encuentra el nombre y apellido de los actores que aparecen en la
película con título ‘Egg Igby’.
*/

select a."first_name", a."last_name" 
from "actor" a 
join "film_actor" fa 
	on a."actor_id" = fa."actor_id"
join "film" f 
	on fa."film_id" = f."film_id" 
where "title" = 'EGG IGBY';


/*18. Selecciona todos los nombres de las películas únicos.
*/

select distinct "title"
from "film" f ;


/*19. Encuentra el título de las películas que son comedias y tienen una
duración mayor a 180 minutos en la tabla “film”.
*/

select f."title",
	f."length",
	c."name" 
from "film" f 
join "film_category" fc 
	on f."film_id" = fc."film_id"
join category c 
	on fc.category_id = c.category_id
where c."name" = 'Comedy' and f.length > 180; 


/*20. Encuentra las categorías de películas que tienen un promedio de
duración superior a 110 minutos y muestra el nombre de la categoría
junto con el promedio de duración.
*/

select 	c."name" as "categoría",
	AVG(f."length") as "duración_promedio"
from "film" f 
join "film_category" fc 
	on f."film_id" = fc."film_id"
join "category" c 
	on fc."category_id" = c."category_id"
group by c."name" 
having avg(f."length") > 110;

/*21. ¿Cuál es la media de duración del alquiler de las películas?
*/

select avg("return_date" - "rental_date") as "media_duración_alquiler"
from "rental";

/*22. Crea una columna con el nombre y apellidos de todos los actores y
actrices.
*/

select concat("first_name", ' ', "last_name") as "nombre_actores"
from "actor";

/*23. Números de alquiler por día, ordenados por cantidad de alquiler de
forma descendente.
*/

select count("rental_id") as "número_alquiler_día",
	date("rental_date") 
from "rental" r 
group by date ("rental_date")
order by "número_alquiler_día" desc;

/*24. Encuentra las películas con una duración superior al promedio.
  */

select "title"
from "film"
where "length" > 
	(select AVG("length")
	from "film" f) ;

/*25. Averigua el número de alquileres registrados por mes.
  */

select count("rental_id") as "número_alquiler_mes",
	date_trunc('month', "rental_date") as mes
from "rental" r 
group by date_trunc('month', "rental_date");

/*26. Encuentra el promedio, la desviación estándar y varianza del total
pagado.
*/

select AVG("amount") as "promedio",
	stddev("amount") as "desviacion_estandar",
	variance("amount") as "varianza"
from "payment" p;


/*27. ¿Qué películas se alquilan por encima del precio medio?
  */

select "title"
from "film"
where "rental_rate" > 
	(select AVG("rental_rate")
	from "film" f) ;

/*28. Muestra el id de los actores que hayan participado en más de 40
películas.
*/

select "actor_id"
from "film_actor"
group by "actor_id"
having count("actor_id") > 40;


/*29. Obtener todas las películas y, si están disponibles en el inventario,
mostrar la cantidad disponible.
*/

select f."title",
	count()
from "film" f
left join "inventory" i
	on f.film_id =i.film_id 
group by f."title"
having count()

/*30. Obtener los actores y el número de películas en las que ha actuado.
  */

select concat(a."first_name", ' ', a."last_name" ) as "nombre_actor",
	count(fa."actor_id") as "número_películas"
from "film_actor" fa 
inner join "actor" a 
	on fa."actor_id" = a."actor_id"
group by "nombre_actor";

/*31. Obtener todas las películas y mostrar los actores que han actuado en
ellas, incluso si algunas películas no tienen actores asociados.
*/

select f."title",
	concat(a."first_name", ' ', a."last_name" ) as "nombre_actor"
from "film" f
left join "film_actor" fa
	on f.film_id = fa.film_id
inner join "actor" a
	on fa.actor_id = a.actor_id
order by f."title";


/*32. Obtener todos los actores y mostrar las películas en las que han
actuado, incluso si algunos actores no han actuado en ninguna película.
*/

select f."title",
	concat(a."first_name", ' ', a."last_name" ) as "nombre_actor"
from "film" f
right join "film_actor" fa
	on f.film_id = fa.film_id
inner join "actor" a
	on fa.actor_id = a.actor_id
order by "nombre_actor";

/*33. Obtener todas las películas que tenemos y todos los registros de
alquiler.
*/

select f."title",
	r."rental_date"
from "film" f 
inner join "inventory" i 
	on f."film_id" = i."film_id" 
inner join "rental" r
	on i.inventory_id = r.inventory_id
order by f.title ;

/*34. Encuentra los 5 clientes que más dinero se hayan gastado con nosotros.
  */

select concat(c."first_name", ' ', c."last_name" ) as "nombre_cliente",
	sum (p."amount")
from customer c
inner join rental r
	on r.customer_id = c.customer_id 
inner join payment p 
	on r.customer_id = p.customer_id 
group by c."customer_id"
order by sum(p."amount") desc
limit 5;

/*35. Selecciona todos los actores cuyo primer nombre es 'Johnny'.
*/

select "first_name", "last_name"
from "actor" a 
where "first_name" = 'JOHNNY';

/*36. Renombra la columna “first_name” como Nombre y “last_name” como
Apellido.
*/

select "first_name" as "nombre", "last_name" as "apellido"
from "actor" a;

/* 37. Encuentra el ID del actor más bajo y más alto en la tabla actor.
  */

select MIN("actor_id"), MAX("actor_id") 
from "actor";

/*38. Cuenta cuántos actores hay en la tabla “actor”.
  */

select count("actor_id") as "número_actores"
from "actor";

/*39. Selecciona todos los actores y ordénalos por apellido en orden
ascendente.
*/

select "first_name", "last_name"
from "actor"
order by "last_name" asc;

/* 40. Selecciona las primeras 5 películas de la tabla “film”.
  */

select "title"
from "film"
limit 5;

/*41. Agrupa los actores por su nombre y cuenta cuántos actores tienen el
mismo nombre. ¿Cuál es el nombre más repetido?
*/

select "first_name",
	count("first_name")
from "actor"
group by "first_name"
order by count("first_name") desc;

-- Respuesta: Kenneth, Penelope y Julia.

/*42. Encuentra todos los alquileres y los nombres de los clientes que los
realizaron.
*/

select r."rental_id",
	concat(c."first_name", ' ', c."last_name" ) as "nombre_cliente"
from customer c
inner join rental r
	on r.customer_id = c.customer_id;

/*43. Muestra todos los clientes y sus alquileres si existen, incluyendo
aquellos que no tienen alquileres.
*/

select 	concat(c."first_name", ' ', c."last_name" ) as "nombre_cliente",
	r."rental_id"
from "customer" c
left join "rental" r
	on r."customer_id" = c."customer_id"
order by "nombre_cliente" ;

/*44. Realiza un CROSS JOIN entre las tablas film y category. ¿Aporta valor
esta consulta? ¿Por qué? Deja después de la consulta la contestación.
*/

select *
from "film" f
cross join "category" c ;

-- Respuesta: No nos aporta valor porque no nos da datos reales sobre las películas, solo posibilidades.

/*45. Encuentra los actores que han participado en películas de la categoría
'Action'.
*/

select concat(a."first_name", ' ', a."last_name" ) as "nombre_actor"
from "actor" a 
inner join "film_actor" fa 
	on a."actor_id" = fa."actor_id" 
inner join "film" f 
	on fa."film_id" = f."film_id" 
inner join film_category fc 
	on f.film_id = fc.film_id
inner join category c 
	on fc.category_id = c.category_id 
where c."name" = 'Action';

/*46. Encuentra todos los actores que no han participado en películas.
*/

select concat(a."first_name", ' ', a."last_name" ) as "nombre_actor"
from actor a 
left join film_actor fa 
	on a.actor_id = fa.actor_id 
inner join "film" f 
	on fa."film_id" = f."film_id"
where f."title" = 'NULL';
