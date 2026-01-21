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
where "last_name" = 'Allen';

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







