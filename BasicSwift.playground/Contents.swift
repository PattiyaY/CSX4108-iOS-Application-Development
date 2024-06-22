import UIKit

//Implicit type declaration
//changable variable
var greeting = "Hello, playground"

//constant variable
let name = "Pattiya"

greeting = "Hello, \(name)!"

let n1 = 6
let n2 = 18
var result = "The result is \(n1+n2)"


//Explicit type declaration

var greetings: String = "Hello, playground"
let d1: Double = 4.00
let n3: Int = 5

result = "The result is \(Double(n3) / d1)"

let b1: Bool = true

//If-Else
if b1 {
    print("B1 is true")
} else {
    print("B1 is false")
}

//For-Loop
for i in 0...10 {
    print(i)
}

//Array
//Array contains only 1 type
var arr = ["Tonkhaw", "Inchy", "Guitar"]
for name in arr {
    print("Hello, \(name)!")
}

//for empty array, you need to specify type.
var arr1: [String] = []

//Tuple
//tuple contains more than 1 type
var t1 = ("Tonkhaw", 20)

//Array of tuple
var t2: [(String, Int)] = [("Tonkhaw", 20), ("Inchy", 1), ("Guitar", 100)]
for person in t2 {
    let message = String(format: "%@ %d", person.0, person.1)
    print("This is tuple \(person)")
    print("This is message : \(message)")
}

//Create new type
typealias Tonkhaw = String
let message: Tonkhaw = "YO jud pai nong chai!"

typealias person = (String, Int)
var t3: [person] = [("Tonkhaw", 20), ("Inchy", 1), ("Guitar", 100)]


//While-Loop
var i = 0
while i < 3 {
    print("While loop \(i)")
    i += 1
}



//Declare class
class Student {
    var name: String
    var id: String
    var totalGpa: Double
    var totalCredit: Int
    
    //Constructor
    init(name: String, id: String, totalGpa: Double, totalCredit: Int) {
        self.name = name
        self.id = id
        self.totalGpa = totalGpa
        self.totalCredit = totalCredit
    }
    
    //Methods
    func detailPrint(){
        print("\(id) \(name) GPA: \(totalGpa) with \(totalCredit) credits")
    }
}


let s1 = Student(name: "Tonkhaw", 
                 id: "U6510359",
                 totalGpa: 5.00,
                 totalCredit: 500)

print(s1.id)
print(s1.totalGpa)
s1.name = "Pattiya"
print(s1.name)
s1.detailPrint()


//Optional Type for Type Safety
//add question mark after type to set it to optional
var number: Int? = nil
number = 10
//number = nil

//you have to unwrapped it by putting ! after variable
//due to no one know that what's inside optional type
var calculationResult = number! + 2

//Good practice way to handle optional type
if let numberAfterChecked = number {
    var calculationResult = numberAfterChecked + 2
}

//or

if number != nil {
    var calculationResult = number! + 2
}


func guardDemo() {
    number = 10
    //check if variable is ok or not if not return nothing
    guard let numberCheckedByGuard = number else {
        return
    }
    //if number is ok, it will come here and print
    print(numberCheckedByGuard + 2)
}

guardDemo()


//Specify type of output
func calculate(n1:Int, n2:Int) -> (String, Int) {
    return ("result is okay",n1 + n2)
}

print(calculate(n1: 5, n2: 4))
