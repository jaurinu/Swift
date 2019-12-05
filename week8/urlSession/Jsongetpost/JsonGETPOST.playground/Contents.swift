import UIKit

let json = """
{
"car_maker":"Dodge",
"car_model":"Intrepid",
"car_model_year":2000
}
""".data(using: .utf8)!

//print(json as? NSData)

//GET -> decodificar la informacion
//POST -> codificar la informacion

//CODABLE es un type alias
//typealias es un protocolo
//typealias Codable = Decoder & Encoder

struct Car : Decodable, Encodable {
    //lowerCamelCase
    var maker: String
    var model: String
    var year: Int

    enum CodingKeys: String, CodingKey {
        case maker = "car_maker"
        case model = "car_model"
        case year = "car_model_year"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.maker = try container.decode(String.self, forKey: .maker)
        self.model = try container.decode(String.self, forKey: .model)
        self.year = try container.decode(Int.self, forKey: .year)
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.maker, forKey: .maker)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.year, forKey: .year)
    }
}

//para decodificar un json hay una clase:

let jsonDecoder = JSONDecoder()
let car = try! jsonDecoder.decode(Car.self, from: json)
print(car)
print(car.maker)
print(car.model)
print(car.year)

let jsonEncoder = JSONEncoder()
let reencodedJSON = try! jsonEncoder.encode(car)
print(String(data: reencodedJSON, encoding: .utf8)!)



import UIKit

let json = """
{
"car_maker":"Dodge",
"car_model":"Intrepid",
"car_model_year":2000
}
""".data(using: .utf8)!

//print(json as? NSData)

//GET -> decodificar la informacion
//POST -> codificar la informacion

//CODABLE es un type alias
//typealias es un protocolo
//typealias Codable = Decoder & Encoder

struct Car : Codable {
    //lowerCamelCase
    var carMaker: String
    var carModel: String
    var carModelYearear: Int
}
//    enum CodingKeys: String, CodingKey {
//        case maker = "car_maker"
//        case model = "car_model"
//        case year = "car_model_year"
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.maker = try container.decode(String.self, forKey: .maker)
//        self.model = try container.decode(String.self, forKey: .model)
//        self.year = try container.decode(Int.self, forKey: .year)
//    }
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.maker, forKey: .maker)
//        try container.encode(self.model, forKey: .model)
//        try container.encode(self.year, forKey: .year)
//    }
//}

//para decodificar un json hay una clase:

//let jsonDecoder = JSONDecoder()
//jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
//let car = try! jsonDecoder.decode(Car.self, from: json)
//print(car)
//print(car.carMaker)
//print(car.carModel)
//print(car.carModelYearear)
//
//let jsonEncoder = JSONEncoder()
//let reencodedJSON = try! jsonEncoder.encode(car)
//print(String(data: reencodedJSON, encoding: .utf8)!)

let moreCarsJSON = """
[{"car_maker":"Dodge","car_model":"Intrepid","car_model_year":2000},
{"car_maker":"BMW","car_model":"M6","car_model_year":2009},
{"car_maker":"Acura","car_model":"RSX","car_model_year":2004},
{"car_maker":"Land Rover","car_model":"LR2","car_model_year":2010},
{"car_maker":"Lincoln","car_model":"Town Car","car_model_year":1999}]
""".data(using: .utf8)!




