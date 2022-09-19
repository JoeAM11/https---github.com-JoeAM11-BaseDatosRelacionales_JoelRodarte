# Bases de Datos Relacionales 
#### Nombre: Joel Alejandro Rodarte Rivera  
#### Matricula: 2173260
#### Fecha: 19/09/2022
<br/>


**Tarea 1**
------
El repositorio donde se podrá encontrar todas las tareas de esta clase se encuentran en al siguiente liga: 
> https://github.com/JoeAM11/https---github.com-JoeAM11-BaseDatosRelacionales_JoelRodarte

La base de datos a utilizar sera la siguiente: 
> https://www.kaggle.com/datasets/paradisejoy/top-hits-spotify-from-20002019

Descripcion base de datos: 

    La base datos contiene información de las 2000 canciones más reproducidas en Spotify y que hayan sido lanzadas entre los años 1999 y 2019. A continuación una descripcion de la informacion disponoble de cada cancion, su significado y su clasificacion de tipo de datos para la base de datos. Para cada una de estas variables, considero que es importante hacer un esfuerzo por entender como fue la metodología para dictaminar su valor de variable; Esto es especialemente cierto para popualrity, energy and valence. 

    La mayoria de las variables tienen relacion directa con la cancion. Si se deseara entender cuales son las caracteristicas que hacen que una cancion sea popular tendriamos que evualuar las variables mencionadas en la Siguiente tabla. Una cancion le pertenece a un artista y fue lanzada en un año ese especifico. Cada cancion pertenece a un único valir de duracion y album. Para cada cancion tendria como atributo las variable de explicito, popularidad, bailavilidad, energia, llave, ruidosa, modo, speechiness, acustica, instrumentalismo, liveness, valencia, tempo y genero. A esta informacion tengo planeado agregar pais y ciudad relacionada con el artista. Al mismo artista agregarle seguidores en spotify/Instagram/ Facebook.  Al genero planeo agregar subgenero. A la fecha de salida agregarle una fecha de salida por dia de la semana (1-7) asi como numero de semana (1-4). Añadiré review de Metacritic (0-100) relacionado a la cancion. 



| Variable     | Tipo de Variable | Descripcion Variable    | 
| :---        |    :----:   |          :--- |
| **artist**     | Title       | Nombre del artista  |
|**Song**   | Text        | Nombre de la cancion      |
| **Duracion**   | Text        | Duracion canción en milisegundos    |
| **Explicit**   | Text        | Clasifica si la cancion o video musical contiene una o mas referencias a contenido que puede ser considerada ofensiva o no apropiada para niños    |
| **Year**   | Text        | Año en que fue lanzada la cancion      |
| **Popularity**   | Text        | Valor numero en el cual entre más alto sea, mayor es su popularidad.      |
| **Dancability**   | Text        | Describe que tan bailable es una cancion. Entre mayor sea su valor, más bailable. Algunos factores que afectan son el tempo, sensibilidad de ritmo, fuerza del beat, y regularidad. Entre 0 y 1.     |
| **Energy**   | Text        | Medida entre 0 y 1 que representa la percepcion de inetensidad y actididad de la cancion.     |
| **Key**   | Text        | Mapas para intepretar el pitch de una cacion. Los valores pueden tomar por ejemplo : E.g. 0 = C, 1 = C♯/D♭, 2 = D, and so on. y -1 si no se detecta ninguna llave musical.      |
| **Loudness**   | Text        | Nivel de ruido de la pista medida en decibeles. Este valor promedia el valor de decibeles en la pista completa.      |
| **Mode**   | Text        | Modalidad de la pista (Escala mayor o menor). Mayor = 1 y Menor = 0.      |
| **speechiness**   | Text        | Medida de la presencia de palabras en la cancion. Entre mayor sea el numero significa que es una pista que se basa mas en cantar o samples. Valores bajos indican que el alma de la cancion es más musical.      |
| **Acousticness**   | Text        | Medida de que tan acustica es una pista. Valor = 1 representra una cancion acustica.     |
| **Instrumentallness**   | Text        |  Prediccion si la cancion NO contiene o no vocales. "Ooh" "Aah" es considerada vocales. Rap es considerada vocal por lo que tendria un valor alto. Morat por ejemplo tendria un valor bajo.      |
| **Liveness**  | Text        |     Detecta la presencia de audiencia en la pista. ALtos numeros represntan que la pista proabblemente este grabada en vivo.     |
| **Valencia**   | Text        | Medidad de 0 a 1 que mide que tan positva es la cancion. Entre mayor sea el numero se asocia a sentimientos de felicidad y euforia. Una valor bajo representa una cancion triste,deprimida o enojada.       |
| **Tempo**   | Text        |     Tempo de la cancion en BPM (Beats per minute)
| **genre**   | Text        |     Genero de la caciones. 


