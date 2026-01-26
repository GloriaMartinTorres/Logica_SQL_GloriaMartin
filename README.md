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