select * from pregunta;
/*Programacion Web*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES 
("¿Qué significa el acrónimo HTTP?","Programacion Web","HyperText Transfer Protocol","HypertText Translation Protocol", "HyperText Transport Protocol", "HyperText Transfer Protocol", "Ninguna de las anteriores", false),
("¿Cual de estos SI es un método de petición?","Programacion Web","GET","REMOVE","UPDATE","REFRESH","GET",false),
("En una URL, después del signo de interrogación van los:","Programacion Web","Parámetros","Parámetros","Etiquetas","Rutas","Ninguna de las anteriores", false),
("Usualmente usamos el método POST en, ¿qué etiqueta HTML?", "Programacion Web","<form>","<ul>","<form>","<table>","<input>",false),
("¿Qué indica el código HTTP 200?","Programacion Web","OK, petición procesada correctamente","OK, petición procesada correctamente","Indica al browser que visite otra dirección","Indica al browser que visite otra dirección","No encontrado, cuando el documento no existe",false),
("¿Qué indica el código HTTP 500?","Programacion Web","Error interno en el servidor","Indica al browser que visite otra dirección","Acceso prohibido, por falta de permisos","No encontrado, cuando el documento no existe","Error interno en el servidor",false),
("Maven:","Programacion Web","Ninguna de las anteriores","Es una herramienta para formatear código","Es una herramienta para automatizar tareas","Es un IDE para construir aplicaciones web","Ninguna de las anteriores",false),
("¿Cuál es el nombre del archivo donde de encuentran las dependencias de Maven?","Programacion Web","Pom.xml","Application-context.xml","Dependencies-xml","Maven.xml","Pom.xml",false),
("Spring Framework es:","Programacion Web","Un framework para el desarrollo de aplicaciones Java","Un framework para el desarrollo de aplicaciones PHP","Un framework para el desarrollo de aplicaciones .net","Un framework para el desarrollo de aplicaciones Java","Todas las anteriores",false),
("¿Spring Framework utiliza qué patrón de diseño?","Programacion Web","Patrón MVC","Patrón DAO","Patrón DTO","Patrón MVC","Patrón EVC",false),
("¿Qué significa el acrónimo MVC?","Programacion Web","Modelo Vistas Controlador","Modelo Vistas Controlar","Modelo Vistas Controlador","Mostrar Vistas Controlador","Modelo Ver Controlador",false),
("¿Cuál de estas NO es una anotación de Spring?","Programacion Web","@Table","@Component","@Repository","@Table","@Autowired",false),
("¿Qué anotación usamos para marcar una clase como Controlador?","Programacion Web","@Controller","@Service","@Controller","@Repository","@Component",false),
("¿Qué anotación usamos para marcar una clase como Servicio?","Programacion Web","@Service","@Service","@Controller","@Repository","@Component",false),
("¿Qué anotación usamos para marcar una clase como Repositorio?","Programacion Web","@Repository","@Service","@Controller","@Repository","@Component",false),
("¿Qué anotación usamos para inyectar una clase?","Programacion Web","@Autowired","@Qualifier","@Autowired","@Repository","@Component",false),
("¿Qué anotación usamos marcar que un método de una clase controlador, va a recibir peticiones GET?","Programacion Web","@GetMapping","@PostMapping","@GetMapping","@MappingGet","@GetPetition",false),
("La etiqueta RequestParam nos permite obtener datos del URL, pero, ¿de que parte?","Programacion Web","Parámetros","Parámetros","Etiqueta","Ruta","Ninguna de las anteriores",false),
("¿Qué es Thymeleaf?","Programacion Web","Un motor de plantillas","Un motor de vistas","Un lenguaje de programación basado en Java","Un motor de plantillas","Ninguna de las anteriores",false),
("¿Cuál de estos NO es un atributo de Thymeleaf?","Programacion Web","th:else","th:text","th:each","th:if","th:else",false);
/* INTRO JAVA*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES
("El archivo de texto plano en Java debe terminar con la extensión de archivo:","JAVA",".java",".class",".java",".jar","Ninguna de las anteriores",false),
("Cuando se compila un programa en Java, el archivo producido por el compilador termina con la extensión:","JAVA",".class",".class",".java",".jar","Ninguna de las anteriores",false),
("¿Qué es el bytecode en Java?","JAVA","El formato que obtenemos tras compilar un código fuente .java","El formato de intercambio de datos","El formato que obtenemos tras compilar un código fuente .java","Un tipo de variable","Un depurador de código",false),
("Una aplicación ejecutable que representa un procesador genérico sobre el cual se ejecutan los bytecodes de Java es:","JAVA","La máquina virtual de Java (JVM)","La máquina virtual de Java (JVM)","Ambiente de ejecución de Java","Librerías de clases Java","Ninguna de las anteriores",false),
("¿Con qué se comienza la ejecución de un programa Java?","JAVA","Con el programa o método main()","Con package","Con códigos","Con el programa o método main()","Todas las anteriores",false),
("Teniendo en cuenta que los paquetes y las clases son análogos a las carpetas y archivos utilizados por el sistema operativo, ¿el nombre de la clase debe ser diferente al del paquete?","JAVA","No importa","Siempre","Nunca","No importa","Ninguna de las anteriores",false),
("El llamado a una librería se hace haciendo uso de la sentencia:","JAVA","Import","String","Continue","Package","Import",false),
("El double se aplica para datos tipo:","JAVA","Decimal","Entero","Decimal","Carácter","Ninguno de los anteriores",false),
("Para mostrar mensajes por pantalla se usa:","JAVA","System.out.println()","System.out.printer()","System.out.prin()","System.out.println()","Ninguna de las anteriores",false),
("¿Cuáles son las sentencias de iteración?","JAVA","El Bucle for, while y do/while","El Bucle for, while y do/while","Bucle for e if/else","Bucle while y switch","Ninguna de las anteriores",false),
("¿Cuáles son las sentencias de salto?","JAVA","Break y continue","Try y break","Break y continue","Continue y switch","While y break",false),
("¿Qué diferencia hay entre un bucle while y un bucle for?","JAVA","El bucle for se ejecuta un número determinado de veces y el while un número indeterminado de veces","El bucle for puede llegar a ejecutarse nunca pero el while siempre se ejecuta al menos una vez","El bucle for se ejecuta un número determinado de veces y el while un número indeterminado de veces","El bucle for no puede convertirse en un bucle while, pero sí al contrario","El bucle while permite su inicialización, pero el bucle for no lo permite",false);
/*JDBC*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES
("¿Que significa el acrónimo JDBC?","JDBC","Java DataBase Connectivity","Java DataBase Connectivity","Java DataBase Conection","Java DataBag Connectivity","Ninguna de las anteriores",false),
("La API de JDBC es un conjunto de:","JDBC","Clases e Interfaces","Objetos","Clases e Interfaces","Métodos","Solo Clases",false),
("El encargado de implementar las clases de JDBC es:","JDBC","El JDBC Driver","El JDBC Driver","Java","La base de datos","Ninguna de las anteriores",false),
("El paquete de la API de JDBC es:","JDBC","java.jdbc.sql.*;","java.jdbc.sql.*;","java.mysql.*;","java.sql.jdbc*;","java.sql*;",false),
("Cual de estas no es una clase de la API JDBC:","JDBC","MetaData","Statement","ResultSet","Connection","MetaData",false),
("¿Cual es la clase encarga de conectarse con la base de datos?","JDBC","Connection","Statement","ResultSet","Connection","DriverManager",false),
("¿Que datos necesita el objeto Connection para conectarse?","JDBC","url, username y password","url, username y password","username y password","url, username y nombre BD","nombre BD, username, password",false),
("¿Cual es la clase encarga de ejecutar las a la base de datos?","JDBC","Statement","Statement","ResultSet","Connection","DriverManager",false),
("¿Cual es la clase encarga de obtener los datos de la base de datos?","JDBC","ResultSet","Statement","ResultSet","Connection","DriverManager",false),
("¿Cual de estas es la excepción de SQL?","JDBC","SQLException","MysqlException","SQLException","DataBaseExcepction","ConnectionException",false);
/*Excepciones*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES
("La clase Error maneja errores:","Excepciones","De la Maquina Virtual de Java","Del código","De la Maquina Virtual de Java","De Netbeans","Ninguna de las anteriores",false),
("La clase Exception maneja errores:","Excepciones","Del código","Del código","De la Maquina Virtual de Java","De Netbeans","Ninguna de las anteriores",false),
("Las excepciones se manejan con el bloque:","Excepciones","Try Catch","Finally","Throws","Try Catch","Throw",false),
("Para cerrar recursos después de una operación usamos el bloque:","Excepciones","Finally","Finally","Throws","Try Catch","Throw",false),
("Cuando queremos informar que un método puede tirar una excepción usamos el bloque:","Excepciones","Throws","Finally","Throws","Try Catch","Throw",false),
("Cuando queremos lanzar una excepción de manera explicita usamos el bloque:","Excepciones","Throw","Finally","Throws","Try Catch","Throw",false),
("En Java la diferencia entre throws y throw es:","Excepciones","throws arroja una excepción y throw indica el tipo de excepción que no maneja el método","throws arroja una excepción y throw indica el tipo de excepción que no maneja el método","throws se usa en los metodos y throw en los constructores ","throws indica el tipo de excepcición que no maneja el método y throw arroja una excepción","Ninguna de las anteriores",false);
/*MySQL*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES
("En una cláusula LIKE, ¿cómo se obtienen todos los nombres de personas que tienen exactamente cuatro caracteres?","MySql", "LIKE '____'","LIKE `????`","LIKE '....'","LIKE '____'", "Ninguna de las anteriores", false),
("Una sentencia SELECT sin la cláusula WHERE devuelve", "MySql", "Todos los registros existentes en la tabla que no estén relacionados con otra tabla","Todos los registros existentes en la tabla que no estén relacionados con otra tabla","Todos los registros existentes en la tabla","No se puede ejecutar una sentencia SELECT sin la cláusula WHERE","Las anteriores respuestas no son correctas", false),
("¿Cuál de las siguientes no es una función de agregación?","MySql", "FLOOR()","AVG()","FLOOR()","SUM()","LIKE `____`", false),
("En una cláusula LIKE, ¿cómo se obtienen todos los nombres de personas que comienzan con Juan?","MySql", "LIKE `Juan%`","LIKE `Juan%`","LIKE `Juan*`","LIKE `Juan$`","LIKE `Juan&`", false),
("¿Qué instrucción se emplea para eliminar todo el contenido de una tabla, pero conservando la tabla?","MySql", "TRUNCATE TABLE","DELETE TABLE","DROP TABLE","TRUNCATE TABLE","Las anteriores respuestas no son correctas", false),
("En SQL, para ordenar los datos devueltos por una sentencia SELECT se emplea la cláusula","MySql", "ORDER BY","ORDER BY","ORDERED BY","SORT BY","SORTED BY", false),
("¿En cuál de las siguientes sentencias del lenguaje SQL se emplea la cláusula SET?","MySql", "UPDATE","DELETE","DROP","SELECT","UPDATE", false),
("En SQL, para modificar la estructura de una tabla de una base de datos se emplea la instrucción.","MySql", "ALTER TABLE","ALTER TABLE","CHANGE TABLE","MODIFY TABLE","Las anteriores respuestas no son correctas", false),
("¿Cuál de las siguientes no es una función de agregación?","MySql", "LIMIT()","COUNT()","LIMIT()","MAX()","MIN()", false),
("En SQL, ¿cuál de estas sentencias añade una fila a una tabla en una base de datos?","MySql", "INSERT","ADD","INSERT","UPDATE","INCLUDE", false),
("¿Cómo se borra toda una base de datos con SQL?","MySql", "DROP DATABASE","DELETE DATABASE","DROP DATABASE","ERASE DATABASE","Las anteriores respuestas no son correctas", false),
("En SQL, para eliminar las filas duplicadas del resultado de una sentencia SELECT se emplea.","MySql", "DISTINCT","NO DUPLICATE","UNIQUE","DISTINCT","Las anteriores respuestas no son correctas", false),
("¿Qué establece un primary key de una tabla?","MySql", "Integridad de los registros","Integridad Referencial","Integridad de los registros","Integridad de las columnas","Constrainsts de identidad", false),
("¿Cuál de las siguientes sentencias es cierta sobre las relaciones?","MySql", "Las relaciones explícitamente definen una asociación entre 2 tablas.","Las relaciones son entidades","Las relaciones son enlaces lógicos entre las tablas implementadas a través de primary y foreign keys.","Las relaciones son almacenadas como atributos en la base de datos.","Las relaciones explícitamente definen una disociasion entre 2 tablas.", false);
/*POO*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES
("¿Cuál es la descripción que crees que define mejor el concepto clase en la programación orientada a objetos?","POO", "Es un modelo o plantilla a partir de la cual creamos objetos","Es un concepto similar al de array","Es un tipo particular de variable","Es un modelo o plantilla a partir de la cual creamos objetos","Es una categoría de datos ordenada secuencialmente", false),
("¿Qué elementos crees que definen a un objeto?","POO", "Sus atributos y sus metodos","Su cardinalidad y su tipo","Sus atributos y sus metodos","La forma en que establece comunicación e intercambia mensajes","Su interfaz y los eventos asociados", false),
("Una clase es:","POO", "Un molde para crear múltiples objetos","Un molde para crear múltiples objetos","Un tipo de variable","Un tipo de modificador de acceso","Ninguna de las anteriores", false),
("El modificador de acceso private, hace que los datos puedan ser accedidos por","POO", "La clase donde se encuentran","Cualquier clase","La clase donde se encuentran","El método main","Ninguna de las anteriores", false),
("¿Qué significa instanciar una clase?","POO", "Crear un objeto a partir de la clase","Duplicar una clase","Eliminar una clase","Crear un objeto a partir de la clase","Conectar dos clases entre sí", false),
("Queremos crear una clase Java con atributos que puedan ser accedidos, ¿qué opción elegirías como la mejor?","POO", "Atributos privados con getters y setters","Atributos públicos","Atributos static","Atributos privados con getters y setters","Ninguna de las anteriores", false),
("Se crean anteponiendo la palabra static a su declaración:","POO", "Variables finales","Atributos de objeto","Atributos de clase estáticos","Variables finales","Ninguna de las anteriores", false),
("No puede cambiar su valor durante la ejecución del programa:","POO", "Variables finales","Atributos de objeto","Atributos de clase","Variables finales","Todas las anteriores", false);
/*HTML y CSS*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES 
("¿Qué significa el acrónimo HTML?","HTML y CSS","Hyper Text Markup Language","Hyper Text Mask Language","Hard Text Markup Language","Hyper Text Markup Language","Hard Text Mask Language",false),
("HTML es un lenguaje", "HTML Y CSS", "De marcado","De programación", "De marcado", "Hablado", "Ninguno de los anteriores", false),
("La etiqueta que encierra todo el contenido de una página es:", "HTML Y CSS","<html> </html>","<head> </head>", "<body> </body>", "!DOCTYPE", "<html> </html>", false),
("La etiqueta que encierra todo el contenido visible al usuario es:", "HTML Y CSS","<body> </body>","<head> </head>", "<body> </body>", "!DOCTYPE", "<html> </html>", false),
("¿Cuál de estos no es un atributo básico?", "HTML Y CSS","align", "id", "class", "style", "align", false),
("En relación a HTML cual de estas es verdadera:", "HTML Y CSS", "HTML5 es la ultima versión de HTML","Todas las etiquetas deben ir en minúsculas", " Todas las etiquetes tienen apertura y cierre", "HTML5 es la ultima versión de HTML", "Ninguna es cierta",false),
("¿Cuál es la etiqueta para indicar un salto de línea?", "HTML Y CSS","<br>","</br>", "<breakLine>", "<br>", "<hr>", false),
("¿Cuál es la etiqueta para poner texto en negrita?", "HTML Y CSS","<bold> </bold>","<strong> </strong>", "<bold> </bold>", "<i> </i>", "<u> </u>", false),
("¿Qué etiqueta se usa para escribir una lista no ordenada?", "HTML Y CSS", "<ul>","<ol>","<ul>","<li>","<list>", false),
("¿Qué etiqueta se usa para denominar cada fila en una tabla html?", "HTML Y CSS","<tr>","<tr>", "<td>", "<th>","<li>", false),
("¿Qué atributo debe ir siempre en la etiqueta <a>?", "HTML Y CSS","href","src","align","href","alt", false),
("¿Qué significa CSS?", "HTML Y CSS","Cascading Style Sheets","Cascading Style Sheets","Coded Style Sheets","Color Style Sheets","Carrot Soup Sauce", false),
("En que parte del HTML podemos agregar la hoja de estilos", "HTML Y CSS", "<Head>","<Body>", "<Head>", "<Nav>", "<Footer>", false),
("La etiqueta para agregar el archivo CSS a el archivo HTML es:", "HTML Y CSS","<link>","<head>","<link>", "<css>", "<meta>", false),
("Para delimitar un bloque de CSS usamos:", "HTML Y CSS","Llaves {}","Llaves {}", "Parentesis ()", "Comas ,,", "Corchetes []", false),
("¿Cual de estos no es un tipo de selector?", "HTML Y CSS","Selector de Cascada","Selector de Clase","Selector de Etiqueta","Selector Universal","Selector de Cascada", false),
("En relación al atributo class cual es cierta:", "HTML Y CSS","Es reutilizable","No se puede repetir en dos elementos","Es reutilizable","Debe ir siempre","Ninguna es cierta", false),
("¿Cuál de estas no es una unidad de medida en CSS?", "HTML Y CSS","Pies","Puntos", "Pulgadas", "Pies", "Milimetros",false),
("¿Cuál de estas no es una manera de especificar colores en CSS?", "HTML Y CSS","Binario","RGB","Binario","Nombre","Hexadecimal", false),
("¿Cuál de estos atributos no es parte del modelo de caja?", "HTML Y CSS","Longitud","Margen", "Relleno", "Borde", "Longitud", false);
/*Relaciones*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES 
("La relación es entre:", "Relaciones","Clases","Clases", "Interfaces", "Métodos","Ninguna de las anteriores",false),
("La relación se representa en una clase con un:", "Relaciones","Atributo objeto de esa clase","Método", "Constructor", "Atributo objeto de esa clase", "Ninguna de las anteriores", false),
("El modificador de acceso public en los UML se representa con un: ", "Relaciones","Más (+)","Menos (-)","Más (+)","Numeral (#)","Ninguna de las anteriores",false),
("El modificador de acceso private en los UML se representa con un: ", "Relaciones","Menos (-)", "Menos (-)","Más (+)","Numeral (#)","Ninguna de las anteriores",false),
("La relación más fuerte es la", "Relaciones", "Composición", "Agregación","Composición","Dependencia","Ninguna de las anteriores",false),
("La relación más debil es la", "Relaciones", "Ninguna de las anteriores", "Agregación","Composición","Dependencia","Ninguna de las anteriores",false);
/*JPA*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`)
VALUES("¿Que significa el acrónimo JPA?","JPA","Java Persitence API","Java Practise API","Java Persitence API","Java Persist API","Ninguna de las anteriores",false),
("El ORM nos permite interactuar con la base de datos mediante:","JPA","Objetos","Objetos","Clases e Interfaces","Métodos","Solo Clases",false),
("La anotación @Entity:","JPA","Declara la clase como entidad","Declara la clave primaria de una entidad","Declara la clase como entidad","Declara que el atributo es una columna de la tabla","Ninguna de las anteriores",false),
("La anotación @Id:","JPA","Declara la clave primaria de una entidad","Declara la clave primaria de una entidad","Declara la clase como entidad","Declara que el atributo es una columna de la tabla","Ninguna de las anteriores",false),
("La anotación @Column:","JPA","Declara que el atributo es una columna de la tabla","Declara la clave primaria de una entidad","Declara la clase como entidad","Declara que el atributo es una columna de la tabla","Ninguna de las anteriores",false),
("La anotación @Temporal:","JPA","Declara que se está tratando de un atributo que va a trabajar con fechas","Declara que se está tratando de un atributo que va a trabajar con fechas","Declara la clase como entidad","Declara que el atributo es una columna de la tabla","Ninguna de las anteriores",false),
("¿Cuál de estos no es un tipo de la anotación @Temporal?","JPA","DATETIME","DATE","TIME","DATETIME","TIMESTAMP",false),
("Elegir que anotación se aplica a la siguiente relación, un Perro pertenece a un Dueño:","JPA","@OneToOne","@OneToOne","@ManyToMany","@ManyToOne","@OneToMany",false),
("Elegir que anotación se aplica a la siguiente relación, un Cliente tiene muchas Facturas:","JPA","@OneToMany","@OneToOne","@ManyToMany","@ManyToOne","@OneToMany",false),
("Elegir  que  anotación  se  aplica  a  la  siguiente  relación,  muchos  Alumnos  tienen  un Profesor:","JPA","@ManyToOne","@OneToOne","@ManyToMany","@ManyToOne","@OneToMany",false),
("Elegir que anotación se aplica a la siguiente relación, muchos Alumnos tienen muchas Clases: ","JPA","@ManyToMany","@OneToOne","@ManyToMany","@ManyToOne","@OneToMany",false),
("¿Qué interfaz se encargar de persistir, actualizar y borrar las entidades?","JPA","EntityManager","Persistence","EntityManagerFactory","EntityManager","DriverManager",false),
("El método que se encarga de persistir las entidades es el método:","JPA","Persist()","Persist()","Merge()","Remove()","Find()",false),
(" ¿Cuál es el lenguaje de consultas en JPA?","JPA","JPQL","SQL","MYSQL","JPQL","MONGO",false);
/*COLECCIONES*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES
("Cual de estos paquetes es el contenedor de las colecciones:","COLECCIONES","java.util","java.lang","java.util","java.net","java.awt",false),
("Las colecciones en Java son:","COLECCIONES","Un grupo de objetos.","Un grupo de objetos.","Un grupo de clases.","Un grupo de interfaces.","Ninguna de las anteriores.",false),
("En el framework de colecciones de Java un Set es:","COLECCIONES","Una colección que no puede contener elementos duplicados","Una colección que no puede contener elementos duplicados","Una colección ordenada que puede contener elementos duplicados","Un  objeto  que  mapea  conjuntos  de  clave  valor  y  no  puede  contener  valores duplicados","Ninguna de las anteriores",false),
("Cual, de estos métodos, borra un elemento de una colección:","COLECCIONES",".clear();",".clear();",".delete();",".remove();",".reset();",false),
("Para agregar elementos en una lista se usa la función:","COLECCIONES","lista.add();","lista.lenght();","lista.size();","lista.add();","lista.iterator();",false),
("En Java un Iterator es:","COLECCIONES","Una  interface  que  proporciona  los  métodos  para  recorrer  los  elementos  de  una colección y posibilita el borrado de elementos","Una interface que proporciona los métodos para borrar elementos de una colección","Una  interface  que  proporciona  los  métodos  para  recorrer  los  elementos  de  una colección y posibilita el borrado de elementos","Una  interface  que  proporciona  los  métodos  para  ordenar  los  elementos  de  la colección","Ninguna de las anteriores",false);
/*HERENCIA*/
INSERT INTO pregunta (`enunciado`,`categoria`,`respuesta_correcta`,`respuesta1`,`respuesta2`,`respuesta3`,`respuesta4`,`usada`) VALUES
("¿Qué palabra se usa para generar la herencia entre clases?","HERENCIA","extends","implements","super","this","extends",false),
("¿Qué código de los siguientes tiene que ver con la herencia?","HERENCIA","public class Componente extends Producto","public class Componente extends Producto","public class Componente inherit Producto","public class Componente implements Producto","public class Componente belong to Producto",false),
("¿La superclase es la clase?","HERENCIA","Madre","Madre","Hija","Nieta","Es una interfaz",false),
("Cual de estos componentes de la superclase no hereda la subclase","HERENCIA","Constructores","Atributos","Métodos","Getter/Setters","Constructores",false),
("La superclase debe ser abstracta","HERENCIA","Depende de la situación","Siempre","Nunca","Depende de la situación","Cuando implementa una interfaz",false),
("¿Cuál tipo de clase debe tener al menos un método abstracto?","HERENCIA","abstract","final","abstract","public","Todas las anteriores",false),
("¿De cuántas clases se puede derivar Java?","HERENCIA","Una clase","Tres clases","Dos clases","Una clase","Cinco clases",false),
("Una clase que termina la cadena de una herencia se la puede declarar como:","HERENCIA","final","final","abstract","public","Ninguna de las anteriores",false),
("¿Qué palabra se usa para implementar una interfaz?","HERENCIA","implements","implements","super","this","extends",false),
("¿Qué código asociarías a una Interfaz en Java?","HERENCIA","public class Componente implements Printable","public class Componente interface Product","Componente cp = new Componente (interfaz)","public class Componente implements Printable","Componente cp = new Componente.interfaz",false);