# Logica_SQL

Pasos:

1. Creación de la base de datos "Lógica_SQL" en DBeaver.
2. Abrir el archivo que contiene la base de datos del proyecto.
3. Ejecutar todo el código del archivo para que se creen las tablas dentro de la BBDD "Lógica_SQL" y refrescar.
4. Crear el esquema de relación de entidades y familizarizarse con el contenido.
5. Crear el script donde se realizarán las consultas.

Ejercicio 2: utilizamos WHERE = para seleccionar la clasificación 'R'.
Ejercicio 3: utilizamos WHERE junto a BETWEEN para establecer un rango en el "actor_id".
Ejercicio 4: los resultados salen vacíos porque, si vemos la tabla con la información de las películas, los valores de idioma original aparecen como NULL.
Ejercicio 5: utilizamos ORDER BY para ordenar las películas por duración añadiendo asc para que lo haga de forma ascendente.
Ejercicio 6: utilizamos WHERE para buscar el apellido 'Allen'. 
Ejercicio 7: utilizamos GROUP BY para agrupar por los valores de clasificación y count para calcular el total en cada clasificación. Asignamos un alias al total.
8: utilizamos WHERE junto a OR para filtrar por las dos opciones.
9: utilizamos la función VARIANCE para obtener la variabilidad de lo que costaría reemplazar las películas.
10: utilizamos las funciones MAX y MIN para obtener la mayor y menor duración de las películas.
11: utilizamos JOIN para unir las tablas "payment" y "rental". Usamos ORDER BY junto con DESC para ordenar por fecha de alquiler. Con OFFSET omitimos los dos primeros resultados y con LIMIT nos quedamos solo con el dato que nos interesa. Al haber 182 películas alquiladas al mismo tiempo, puede haber un problema al momento de decidir con cuál se queda.
12: utilizamos WHERE junto a NOT IN para descartar las clasificaciones que no nos interesan.
13: utilizamos la función AVG para calcular el promedio de la duración y agrupamos por clasificación con GROUP BY.
14: utilizamos WHERE > para filtrar las películas con una duración mayor.
15: utilizamos la función SUM para calcular el total ganado.
16: utilizamos ORDER BY para ordenar los id de forma descendente y nos quedamos con los 10 primeros usando LIMIT.
17: utilizamos la función DISTINCT para que nos devuelva los valores únicos.
18: utilizamos JOIN para poder filtrar por categoría. Utilizamos WHERE AND para filtrar por dos valores, categoría y duración.
19: utilizamos JOIN para poder filtrar por categoría. Utilizamos GROUP BY para agrupar por categoría y HAVING AVG > para calcular el promedio y filtrar aquellas superiores a 110 minutos.
20: utilizamos JOIN para sacar información de distintas tablas. Agrupamos usando GROUP BY y filtramos con HAVING >. Calculamos el promedio con AVG.
21: utilizamos AVG para calcular la media y restamos la fecha de alquiler a la fecha de devolución para calcular la duración de alquiler.
22: utilizamos CONCAT para unir el nombre y el apellido en un único valor.
23: utilizamos GROUP BY DATE para agrupar por fecha sin tener en cuenta la hora. Para saber el número de películas alquiladas, usamos COUNT con el id de alquiler. Finalmente ordenamos usamos ORDER BY DESC.
24: utilizamos una subconsulta en WHERE para calcular la duración promedio y filtramos quedándonos con aquellas que duran más.
25: utilizamos DATE_TRUNC('MONTH') junto  GROUP BY para agrupar por mes. Para saber el número de películas alquiladas, usamos COUNT con el id de alquiler.
26: utilizamos las funciones de agregación AVG, STDDEV y VARIANCE.
27: utilizamos una subconsulta en WHERE para calcular el precio promedio y filtramos quedándonos con un precio mayor.
28: utilizamos GROUP BY para agrupar por el id del actor y HAVING COUNT > para contar las veces que aparece y quedarnos con aquellas que estén más de 40 veces.
29 - POR HACER
30: utilizamos INNER JOIN para unir las tablas "film_actor" y "actor" para poder saber el número de películas en el que ha aparecido cada actor y su nombre. Usamos GROUP BY para agrupar por el nombre del actor y COUNT para contar el número de películas en las que ha aparecido.

31. Obtener todas las películas y mostrar los actores que han actuado en ellas, incluso si algunas películas no tienen actores asociados.
Utilizamos LEFT JOIN poniendo a la izquierda la tabla "film" para poder sacar de esta todos los datos de las películas e INNER JOIN entre "film_actor" y "actor" para obtener los datos de los actores. He utilizado ORDER BY con la columna "title" para ver todos los actores que hay en cada película más fácilmente.

32. Obtener todos los actores y mostrar las películas en las que han actuado, incluso si algunos actores no han actuado en ninguna película.
Utilizamos RIGHT JOIN poniendo a la derecha la tabla "film_actor" para poder sacar de esta todos los datos de los actores e INNER JOIN entre "film_actor" y "actor". Además, he utilizado ORDER BY con la columna "nombre_actor" para que sea más fácil ver las películas en las que ha actuado cada uno.

33. Obtener todas las películas que tenemos y todos los registros de alquiler.
Utilizamos INNER JOIN para obtener el nombre de las pleículas que se han alquilado y los registros de alquiler. Además, he utilizado ORDER BY con la columna "title" para que sea más fácil ver cuándo y cuántas veces se ha alquilado cada película.

34. Encuentra los 5 clientes que más dinero se hayan gastado con nosotros.
Utilizamos INNER JOIN para unir las tablas "rental" y "CUSTOMER". Usamos la función SUM para sumar lo que ha gastado cada cliente. Con ORDER BY DESC ordenamos de forma descendiente para saber quiénes se han gastado más dinero y con LIMIT nos quedamos con los 5 primeros.

35. Selecciona todos los actores cuyo primer nombre es 'Johnny'.
Utilizamos WHERE para quedarnos con aquellos actores que se llamen Johnny.

36. Renombra la columna “first_name” como Nombre y “last_name” como Apellido.
Utilizamos AS para dar un alias.

37. Encuentra el ID del actor más bajo y más alto en la tabla actor.
Utilizamos las funciones MIN y MAX.

38. Cuenta cuántos actores hay en la tabla “actor”.
Utilizamos COUNT con la columna "actor_id".

39. Selecciona todos los actores y ordénalos por apellido en orden ascendente.
Utilizamos ORDER BY ASC.

40. Selecciona las primeras 5 películas de la tabla “film”.
Utilizamos la función LIMIT.

41. Agrupa los actores por su nombre y cuenta cuántos actores tienen el mismo nombre. ¿Cuál es el nombre más repetido?
Agrupamos por nombre con GROUP BY. Contamos los actores con el mismo nombre con COUNT. Usamos ORDER BY DESC para saber los nombres más repetidos.
Respuesta: Kenneth, Penelope y Julia.

42. Encuentra todos los alquileres y los nombres de los clientes que los realizaron.
Utilizamos INNER JOIN para unir la información de los alquileres y los clientes.

43. Muestra todos los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres.
Utilizamos LEFT JOIN para obtener la información de todos los clientes y saber los alquileres.

44. Realiza un CROSS JOIN entre las tablas film y category. ¿Aporta valor esta consulta? ¿Por qué? Deja después de la consulta la contestación.
Respuesta: No nos aporta valor porque no nos da datos reales sobre las películas, solo posibilidades.

45. Encuentra los actores que han participado en películas de la categoría 'Action'.
Utilizamos INNER JOIN para unir todas las tablas desde "actor" a "category" y filtramos con WHERE.

46. Encuentra todos los actores que no han participado en películas.
Utilizamos LEFT JOIN para obtener todos los nombres de la tabla "actor" y unir con "film_actor". Usamos INNER JOIN para unir "film_actor" con "film" para poder filtrar por títulos de película con WHERE.
El resultado aparece en blanco porque todos los actores han participado en alquna película.

47. Selecciona el nombre de los actores y la cantidad de películas en las que han participado.
Unimos las tablas Actor y Film_actor mediante un INNER JOIN. Agrupamos con GROUP BY por el nombre de los actores y usamos COUNT con el id de las películas.

48. Crea una vista llamada “actor_num_peliculas” que muestre los nombres de los actores y el número de películas en las que han participado.
Utilizamos CREATE VIEW actor_num_peliculas AS con la búsqueda anterior.

49. Calcula el número total de alquileres realizados por cada cliente.
Unimos las tablas Customer y Rental mediante un INNER JOIN. Agrupamos con GROUP BY por el nombre de los clientes y usamos COUNT con el id de los alquileres.

50. Calcula la duración total de las películas en la categoría 'Action'.
Unimos las tablas Film y Film_category con un inner join, y luego unimos Film_category y Category con INNER JOIN. Utilizamos WHERE para filtrar por género y SUM para sumar las duración.

51. Crea una tabla temporal llamada “cliente_rentas_temporal” para almacenar el total de alquileres por cliente.
Utilizamos CREATE TEMPORARY TABLE cliente_rentas_temporal AS con la búsqueda del ejercicio 49.

52. Crea una tabla temporal llamada “peliculas_alquiladas” que almacene las películas que han sido alquiladas al menos 10 veces.
Usamos dos INNER JOIN para unir las tablas Film, Inventory y Rental. Agrupamos con gROUP BY por título de película y filtramos con HAVING COUNT > 10 usando el rental id. Creamos la tabla con CREATE TEMPORARY TABLE.

53. Encuentra el título de las películas que han sido alquiladas por el cliente con el nombre ‘Tammy Sanders’ y que aún no se han devuelto. Ordena los resultados alfabéticamente por título de película.
Unimos mediante INNER JOIN las tablas Customer, Rental, Inventory y Film. Filtramos usando WHERE con el nombre y la fecha de devolución. Ordenamos los resultados con ORDER BY.

54. Encuentra los nombres de los actores que han actuado en al menos una película que pertenece a la categoría ‘Sci-Fi’. Ordena los resultados alfabéticamente por apellido.
Unimos con JOIN las tablas Actor, Film_actor, Film, Film-category y Category. Filtramos con WHERE para quedarnos solo con las películas de la categoría Sci-Fi. Ordenamos con ORDER BY.

55. Encuentra el nombre y apellido de los actores que han actuado en películas que se alquilaron después de que la película ‘Spartacus Cheaper’ se alquilara por primera vez. Ordena los resultados alfabéticamente por apellido.
--> Por hacer

56. Encuentra el nombre y apellido de los actores que no han actuado en ninguna película de la categoría ‘Music’.
Unimos con JOIN las tablas Actor, Film_actor, Film, Film-category y Category. Filtramos con WHERE <> para excluir las películas del género Music. Además, he usado GROUP BY para agrupar por el nombre de los actores y evitar que se repitan.

57. Encuentra el título de todas las películas que fueron alquiladas por más de 8 días.
--> Por hacer


58. Encuentra el título de todas las películas que son de la misma categoría que ‘Animation’.
Unimos las tablas Film y Film_category con un INNER JOIN, y luego unimos Film_category y Category con INNER JOIN. Utilizamos WHERE para filtrar por género.


59. Encuentra los nombres de las películas que tienen la misma duración que la película con el título ‘Dancing Fever’. Ordena los resultados alfabéticamente por título de película.
Hacemos una subconsulta en el WHERE para saber la duración de la película Dancing Fever y encontrar aquellas películas que duren lo mismo. Ordenamos usando ORDER BY.

60. Encuentra los nombres de los clientes que han alquilado al menos 7 películas distintas. Ordena los resultados alfabéticamente por apellido.
Usamos INNER JOIN para unir las tablas Customer e Inventory. Agrupamos con GROUP BY con el customer id y filtramos usando HAVING COUNT > 7 con el film id. Ordenamos usando ORDER BY por el apellido dfe los clientes.

61. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.
Usamos JOIN para unir las tablas desde Rental hasta Category. Agrupamos con GROUP BY por el nombre de la categoría. Contamos la cantidad de películas alquiladas con COUNT y el rental id.

62. Encuentra el número de películas por categoría estrenadas en 2006.
Usamos INNER JOIN para unir las tablas Film, Film category y Category. Filtramos por año con WHERE. Agrupamos por nombre de categoría con GROUP BY.

63. Obtén todas las combinaciones posibles de trabajadores con las tiendas que tenemos.
Utilizamos CROSS JOIN con las tablas Staff y Store.

64. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
Usamos INNER JOIN para unir las tablas Customer y Rental. Agrupamos con GROUP BY por customer id. Contamos el total de películas alquiladas con COUNT y el rental id.