import UIKit

var str = "Hello, playground"


//las clases se pasan por referencia, las ESTRUCTURAS por VALOR
//ESTRUCTURAS
//las estructuras tienen un INICIALIZADOR POR DEFECTO
//las estructuras NO pueden tener HERENCIA
// tiene que ser var
//Se crea el tipo de estructura que guarda el nombre en un string
//es una estructura con una propiedad
//================
struct Sport {
    var name: String
}
//================
//ahora se puede crear y usar una instancia de la estructura
var tennis = Sport(name: "Tennis")
print(tennis.name)

//creamos dos variables NAME Y TENNIS por lo que podemos cambiarlas como
//una variable regular
tennis.name = "Lawn tennis"
print(tennis.name)

//PROPIEDADES COMPUTADAS
//la propiedad var name: String se llama una propiedad almacenada
//las propiedades computadas corren codigo para descifrar el valor
//vamos a poner una propiedad almacenada y otra calculada
struct Sport1{
    var name: String //propiedad almacenada
    var isOlympicSport: Bool //propiedad almacendada
    
    var olympicStatus: String{
        if isOlympicSport{
            return "\(name) is an Olympic sport"
        }else {
            return "\(name) is not an Olympic sport"
        }
    }
}
//crearemos una nueva instancia
let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//PROPERTY OBSERVERS
//te permite correr codigo antes o despues de que alguna propiedad cambie
//en la siguiente estructura seguira el rastro de una tarea y el porcentaje de terminacion

//lo que queremos es que Swift imprima un mensaje cada que amount cambie y podemos
//usar la PROPIEDAD didSet que observara eso.
//correra el codigo cada que "amount" cambie
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
//crearemos una instancia de la estructura y ajustar el progreso en el tiempo
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
//willSet realiza la accion antes de que la propiedad cambie

//METHODS
//Las estructuras pueden tener metodos dentro y esas funciones pueden
//usar las propiedades que necesiten de la estructura.
//La siguiente estructura llamada City, tiene una propiedad "population"
//que guarda cuantas personas hay en la ciudad + el metodo "collectTaxes()"
//que retorna population count multiplicada por 1000
//porque el metodo pertenece a City puede leer la propiedad "population".
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
//crearemos una instancia
let london = City(population: 9_000_000)
london.collectTaxes()

//MUTATING METHODS
//Si la estructura tiene una propiedad variable pero la instancia de la estructura
//fue creada como constante, la propiedad no puede ser cambiada


