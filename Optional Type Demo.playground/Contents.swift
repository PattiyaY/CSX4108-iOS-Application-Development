import UIKit

var greeting = "Hello, playground"
var explicitText: String = "Hello"
var implicitText = "Hello"

//Default value is nil -> if you put ? right after the type
var value: String?
print(value)

var value2: String? = "Tonkhaw"
print(value2)

//Unwrapped it to see only the value, if there's value it won't crash but if there's no value it will crash
print(value2!)

//Solutions to cope with optional type
//1st Approach, set default
var name: String? = "Tonkhaw"
print(value2 ?? "No Value")


//2nd Approach, create new variable to handle
var totalScore: Int? = 100
if totalScore != nil {
    totalScore! += 100
    print(totalScore)
}

//This 3rd approach is safer to use
//it is check whether that totalScore is nil or not, yes, it'll assign value to x
if var x = totalScore {
   x += 100
   print(x)
}

//OR

if var totalScore = totalScore, let name = name {
    totalScore += 100
    print("Name: \(name)")
    print("Score: \(totalScore)")
}

//Check if name is nil and if it's nil it won't return anything
if let _ = name {
    print("The name is not nil")
} else {
    print("The name is nil")
}

