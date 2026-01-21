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
Ejercicio 6: utilizamos WHERE para buscar el apellido 'Allen'. El resultado sale vacío porque no hay ningún actor con ese apellido.
Ejercicio 7: utilizamos GROUP BY para agrupar por los valores de clasificación y count para calcular el total en cada clasificación. Asignamos un alias al total.
8: utilizamos WHERE junto a OR para filtrar por las dos opciones.
9: utilizamos la función VARIANCE para obtener la variabilidad de lo que costaría reemplazar las películas.
10: utilizamos las funciones MAX y MIN para obtener la mayor y menor duración de las películas.
11: utilizamos JOIN para unir las tablas "payment" y "rental". Usamos ORDER BY junto con DESC para ordenar por fecha de alquiler. Con OFFSET omitimos los dos primeros resultados y con LIMIT nos quedamos solo con el dato que nos interesa. Al haber 182 películas alquiladas al mismo tiempo, puede haber un problema al momento de decidir con cuál se queda.
