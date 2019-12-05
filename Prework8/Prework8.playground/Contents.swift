//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


//==================
//     CLOSURES
//==================
//We can use functions as any other type such as String and Integers.
//You can assign in to a variable a function, call that function using that variable and even pass that function into other function as parameters. In this way is called CLOSURES.
let driving = { print ("I'm driving in my car")}
 //call the function
driving()

//ACCEPTING PARAMETERS IN A CLOSURE
//CLOSURES don't have a name or space to write any parameters, but they can accept them listed inside the open braces, inside parenthesis, the write in {(parameters) in}
let driving2 = { (place: String) in print("I'm going to \(place) in my car")}
driving2("London")

//RETURNING VALUES FROM A CLOSURE
//CLOSURES can return values (parameter) -> TypeValue in

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//CLOSURES AS PARAMETERS

let driving3 = {
    print("I'm driving in my car")
}
//To pass that closure into a function so it can be run inside that function, we would specify the parameter type as () -> void. That means "accepts no parameters, and return Void"

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I'm arrived!")
}

//calling driving3
travel(action: driving3)

//TRAILING CLOSURE SYNTAX
//If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax, rather than pass in your closure as a parameter, you pass it directly after the function inside braces.
travel() {
    print("I'm driving in my car")
}
travel {
    print("I'm driving in my car")
}

//USING CLOSURE AS PARAMETERS WHEN THEY ACCEPT PARAMETERS

func travel1(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived")
}

travel1 { (place: String) in
    print("I'm going to \(place) in my car")
}

//USING CLOSURES AS PARAMETERS WHEN THEY CAN RETURN VALUES
//() -> VOID we can replace Void with any type of data to force to closure to return a value.

func travel2(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2{ (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//SHORTHAND PARAMETER NAMES

func travel3(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I arrived!")
}
//We can remove the parameter to that closure, and the return as String, and the word return, and place in, and let Swift provide automatic names for the closure's paramters. These are named with a dollar sign, then a number counting from 0
// travel{(place: String) -> String in
// return "I'm going to \(place) in my car"
//}
travel3{ "I'm going to \($0) in my car"}

//CLOSURES WITH MULTIPLE PARAMETERS

func travel5(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description = action("London", 60)
    print(description)
    print("I'm arrived!")
}

travel5 {
    "I'm going to \($0) at \($1) miles per hour"
}

//RETURNING CLOSURES FROM FUNCTIONS
//You can get closures returned from a function it uses -> twice

func travel6() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel6()
result("London")

//CAPTURING VALUES
//If you use any external values inside your closure, Swift captures them -stores them alongside the closure, so they can be modified even if they don't exist any more.

func travel7() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
result("London")
result("London")
result("London")
result("London")

//===================
//    OPTIONALS
//===================
//OPTIONALS  represent data that may or not be there
//HANDLING MISSING DATA

var age: Int? = nil

//UNWRAPPING OPTIONALS
//if let syntax, if there was a value inside the optional then you can use it
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
}else{
    print("Missing name")
}

//UNWRAPPING WITH GUARD

// guard let also unwraps optionals

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)")
}
greet("Peter")

//FORCE UNWRAPPING
//Sometimes you know that value isn't nil, in this case Swift lets you force unwrap the optional: convert in from an optional type to a non-optional type.

let str = "5"
let num = Int(str)!
//Swift unwrap the optional and make num a regular Int rather than an Int?

//IMPLICITLY UNWRAPPED OPTIONALS
//Like regular optionals, implicity unwrapped optionals might contain a value or they might be nil. however you don't need to unwrap them in order to use them, you can use them like if they weren't optional at all.
let age1: Int! = nil
//They behave as if they were already unwrappped

//NIL COALESCING
//Nil coalescing unwraps an optional and returns the value inside if there is one. If there isn't a value - if the optional was nil - then a default values is used instead.

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    }else{
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"
print(user)

//OPTIONAL CHAINING

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()
print(beatle)

//OPTIONAL TRY

enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "pssword" {
        throw PasswordError.obvious
    }
    return true
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
}else{
    print("D'oh")
}

//FAILABLE INITIALIZERS

//Is an initializer that might work or might not

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        }else{
            return nil
        }
    }
}

//TYPECASTING

class Animal {}
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woolf!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog{
        dog.makeNoise()
    }
}













