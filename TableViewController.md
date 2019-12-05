La celda tiene dos elementos 

los palnos son para elementos dinámicos 

los estilos de la celda estan en UIKit pero se pueden personalizar

la celda tiene tres atributos

text label son elementos definidos

-----

operaciones que se pueden hacer en la celda

se puede ver informacion de cada elemento de una celda 

index path

table view tiene protocolos de dos categorias

Appledelegate que es opcional porque es apariencia, para mover las celdas para arriba o para abajo se usan métodos

el datasource es obligatorio

x que el table view siempre tiene información 

----------LOS PROTOCOLOS SE LLAMAN

UITableViewDataSource

cada que quiero usar un table view controler debo usar un DATASOURCE

DELEGATE...tienen diferentes metodos

-----------

Se abre un proyecto de xCode 

Empezamos con la interfaz 

Se agrega un navigation controler que tiene por defecto un table view controler 



Por default Se agrego un root view controler al que se le cambia el titulo

Al navigation controller se le pone el entry point activando la casilla Is initial View Controller en los atributos

Para agregar datos a la tabla:

Se borra la clase view controller.swift



================ESTO NO SE HACE

-Se necesita agregar un controlador para manejar al table view controller 

-command "n" para agregar un nuevo archivo, se selecciona Cocoa touch Class, que es un framework que tiene incluido diferentes clases y va a dar una especie de biolerplate 

-NExt

-Se selecciona la subclase UITableViewController

-La clase creada hereda los metodos de UITableViewController que esta conformando tres protocolos. UIViewController porque es una vista, UITableViewDelegate y UITableViewDataSource

==========================================

-Se crea un archivo de Swift

-Se importa UIKit

-Se crea una clase con el mismo nombre del archivo, y que hereda del UITableViewController

======codigo

Se conecta la clase con el mainStoryBoard, en los atributos de clase se pone la clase correspondiente 

===============

**import** UIKit



**class** EmojiTableViewController: UITableViewController {

 *//some code*

}

==============

Dentro de la clase se manda llamar el metodo viewDidLoad (este método lo esta sobrecargando de la clase UIViewController) es uno de los metodos del ciclo de vida de la aplicacion

La primera vez que carga mi vista se va mandar a llamar este metodo por eso es que todas las vistas o todos los ViewController.swift tienen este metodo

===============

Dart soft subject ???? checar

Tiene tres metodos:

-numberOfSections, solo se va a crear una seccion

el siguiente metodo es:

-tableview con el argumento numberOfRowsInSection, este metodo recibe un tableView de tipo UITableView y recibe una variable que dice cuantos renglones quieres que te ponga en el table

-ahora se van a cargar las celdas, que celdas queremos que vallan en los renglones con el metodo cellForRowAt indexPath, es decir celda para que renglon, aquí aparece un indexPath y es cuando te pide que regreses un UITableViewCell.

Se siguen tres pasos:

1Crear celda

let cell = .....

la celda va a tener un identificador

todas las celdas son la misma celda, lo unico que varia es el indexPath, (diferente  contenido) cada identificador unico se comparte en todas las celdas

El indexPath lo toma del metodo anterior



El tableView es el que esta como argumento en la funcion (min 1.44)

Lo que estoy haciendo es instanciar una celda con ese identificador para ese indexPath, ese indexPath es el identificador para ver que ontenido le voy a dar a mi celda

Para mi celda voy a tener tres atributos generales:

Cell.textlable.text = indexpath

===========

Se debe asociar el identificador "EmojiCell" en el main storyboard con la celda "TableViewCell"

*foto*



resultado foto





=============

En el main storyboard se selecciona la celda y en el selector de atributos la celda Style se selecciona Subtitle 

==============

Se crea la estructura min 2:20



Se crea una instancia de emoji

======codigo

 **let** emoji = emojis[indexPath.row]

==================



se especifica el contenido del texto de la celda

=========codigo

cell.textLabel?.text = ("\(emoji.symbol) - \(emoji.name)")

================

2Contenido de la celda

3Regresar celda