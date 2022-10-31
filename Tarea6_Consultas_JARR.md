# Bases de Datos Relacionales 
#### Nombre: Joel Alejandro Rodarte Rivera  
#### Matricula: 2173260
#### Fecha: 30/10/2022
<br/>

# Tarea 6 - Consultas
<br/>

Usar funciones de segregacion para calcular 

1. **Conteo de frecuencias o media**
    <br/> 1.1 Encontrar el promedio de duracion de las canciones hits. 
    
~~~~sql
SELECT AVG(duration_ms) AS Promedio_duracion_ms FROM song;
SELECT sum(duration_ms)/count(song_id) AS Promedio_duracion_ms FROM song ;
~~~~

2. **Maximos y minimos**
<br/> 2.1 Encontrar la cancion de maxima y minima calsificacion de bailabilidad

~~~~sql
SELECT song_id, song, Danceability,artist_id FROM song ORDER BY danceability DESC;
SELECT song_id, song, Danceability,artist_id FROM song ORDER BY danceability ASC;

SELECT max(Danceability),song_id FROM song;
SELECT min(Danceability),song_id FROM song;
~~~~

3. **Cuantil diferente de media**
<br/> 3.1 Encontrar 1 y 3  cuantil para el dato de popularidad de su año de todas las canciones 

Se sabe la cantidad de datos es 1519. Si el conjunto de datos es impar se puede lizar la forumla  Q = K* (n+1)/4 en donde k es el cuartil de interes, y n el numero de datos. Si hubiera sido par se usaría Q = (K * n)/4.

Primero hay que obtener la posicion dentro del conjunto de datos en donde se encuentra el respectivo quartil. Despues se oredena la lista por popularidad y se muestra unicamente la linea donde se enecuentra el quartil. En el caso del Q1 se sabe que su posicion está en la linea 380 por lo que se utiliza un LIMIT para sacar esa linea. 

~~~~sql
SELECT FLOOR(1*(count(song_id)+1)/4) FROM SONG;
SELECT song_id,popularity FROM song ORDER BY popularity ASC LIMIT 379,1; 

SELECT FLOOR(2*(count(song_id)+1)/4) FROM SONG;
SELECT song_id,popularity FROM song ORDER BY popularity ASC LIMIT 659,1; 

SELECT FLOOR(3*(count(song_id)+1)/4) FROM SONG;
SELECT song_id,popularity FROM song ORDER BY popularity ASC LIMIT 1139,1; 
~~~~

4. **Moda**
<br/> Encontrar cual es el genero que mas veces se repite dentro de las canciones populares del los 2000s a la fecha.

~~~~sql
SELECT genre_id,COUNT(*) as freq from song group by genre_id; -- generar una tabla de frecuencias 
SELECT genre_id,COUNT(*) as freq from song group by genre_id ORDER BY freq DESC LIMIT 1 ; -- Ordenar y solo imprimir la que mas se repita
~~~~


5. Hallazgos, dificultades e implementación de soluciones encontradas en linea. 

    a. La forma de colocar bloques de codigo para cualquier lenguaje de programación es muy sencillo. Solo es necesario insertar tres ~ acompañado del lenjuage deseado, escribir el codigo y al final cerrar con otros tres ~.
    b. No encuentro porque con la expresion <br/> 
    SELECT max(Danceability),song_id FROM song;<br/> 
    Si saca la cancion con mas danceability pero NO coincide con el song_id que deberia de ser. <br/> 
    c. En Internet es fácils copiar y pegar codigo de lo que necesitas hacer pero siempre es recomendable entender que es lo que realiza para así poder hacer adecuaciones al mismo. Además tambien es preferible no copiar codigo sin saber que es lo que contiene por cuestiones de seguridad. 
    d. Tener bien comentado cualquier instruccion es muy utilil porque así se vuelve más fácil reutilizar codigo y ahorrar algo de tiempo y evitar errores. 



