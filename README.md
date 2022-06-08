# movi

A new Flutter project.

## Aplicacion de peliculas

Este proyecto està construido en flutter con la version 3.0.0 y dart 2.17. 
tiene la finalidad de buscar peliculas con el nombre y tiene dos Feets principales el uno muestra
las peliculas que te recomienda y el otro es un top de las peliculas clasificadas. cada feet te mostrarà detalles de la pelicula al hacer un OnTap.
## Arquitectura
En esta ocasión usamos la arquitectura de 3 capas la vista, controlador y data. 
la primera es la que maneja las interacciones de los usuarios, mientras que el contralador maneja la lògica de la data
es decir que de acuerdo a las interacciones del usuario con la pantalla estos se emiten como eventos y cada evento llama a la data. por ùltimo la data, aquì se encuentra alojado las llamadas al servidor. 
## Herramientas eligidas para implementar la Arquitectura
Como gestor de estados usamos Flutter_Bloc y se debe por la capacidad de manejar la reactividad de manera adecuada e intuitiva y la parte
màs importante que se puede testear està reactividad.por lo tanto tenemos sòlidez, seguridad al testear, un paquete intuitivo y la escalabilidad. 
Para las llamadas al servidor usamos Http, un paquete poderosos, rico en muchas funciones y que nos da mucha facilidad para configurar las llamadas y tambièn por la faciilidad de probar estas funcionalidades, es decir simular las llamdas, para verificar si el còdigo està bien implementado.Para serializiar y descerializar usamos json_serialziable pero necesita de el generador de còdigo buil_runner  y por ùltimo freezed. con estos 3 paquetes nos da mucha ventaja al crear un objeto dart, ya que nos da haciendo el trabajo al crear un objeto Dart. Pero tiene una ligera curva de aprendizaje, debemos tener claro como configurarlo y una vez hecho esto, podemos aprovechar las ricas funciones de freezed, ya que admite copyWith, equtable, manejo de valores nulos cuando un objeto json viene con valores nulos, y la gran capacidade de agregar otro elemento al objeto Dart  cuando ya tenemos un Objeto Dart gigante.
## Estructura de Carpertas
La siguiente estructrua de còdigo tiene 3 carpertas: Core,Feature,App. La priemra almacena partes del còdigo que seràn utiles como estilos de letra, los colores, el manejo de las excepciones, funciones. El segundo Feature, almacena la funcionalidad principal que es consumir lso servicios de la Apì de peliculas,  dentro de ella, tenemos la capa domain que tiene los objetos del negocio, de ahì tenemos data_Sorucesm que almacena las llamdas a la api. en la carpeta movil tenemos cubit como manejador de estados y cada cubit tiene asignado consumir un servicio especifico de la Api. y en la carpeta  View Cubit son los Widgets que maneja cada Cubit. La otra carpeta Widgets_Custom son los, widgets que son reutilizables.
Por ùltimo la capa App que almacena la paàgina de inicio. 
## Refactorizar
Refactorizar los cubits, he pensado que hay otra forma de reutilizar lso Cubit de tener a 4 a tener solo 1
 
## Test 
En nuestro caso implementamos los test unitarios y los test_bloc, con ello ya tenemos la seguridad de que nuestro còdigo ha sido probado y tranquilamente puede ir a producciòn. Pero por què  no manejamos los test Widgets, y se debe  por cuestiones de tiempo al  configuar y simular los comportamientos que estàn definidos en la capa UI que interactura con la capa Controlador y ahì con la capa Service.Pero lo haremos, en estos dias.
## Responsive
el proyecto no està definido para la parte Web e Escritorio, en nuestro no amerita realizar para dichas plataformas.


- 
