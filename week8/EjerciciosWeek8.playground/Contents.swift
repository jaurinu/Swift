import UIKit

var str = "Hello, playground"

//Closures

//Bloques de codigo que puedo pasar como parámetros
//Trailing closure syntax

func performRequest(url: String, response: (_ _code: Int) -> Void){
    //haz algo con la info
}
performRequest(url: "https://www.apple.com"){
    
    (code) in
    return"\(code)"
}

//Syntactic sugar
let url = "https://www.apple.com"
performRequest(url: url){"\($0)"}

//high order functions
//Map transformar un confjunto de datos
let names = ["Eli","Julio","America","Adriana","Yocelin"]
//output Eli @ ECC-Laboratoria
//parametros tipo t son genericos, que regresan lo que tu quieras
let fullNames = names.map{(name)-> String in
return name + "ECC-Laboratoria"
}

//otra forma
let fullNames1 = names.map{"\($0) @ ECC-Laboratoria" }




//reduce reducir un conjunto en otro conjunto
var numbers = [1,12,45,145,325]
var sum = numbers.reduce(0) { (a, b) -> Int in
    return a+b
}


//filter filtrar una condicion
var filteredNumbres = numbers.filter{(value)->
    Bool in
return value < 50
}
print(filteredNumbres.sort())
