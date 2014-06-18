//
//  main.swift
//  testSwiftPro
//
//  Created by Perry on 14-6-16.
//  Copyright (c) 2014年 Perrychen. All rights reserved.
//

import Foundation

//let http404Error = (404, "Not Found")
//
//let (statusCode, statusMessage) = http404Error
//println("The status code is \(statusCode)")
//println("The message is \(statusMessage)")
//
//let (justTheStatusCode, _) = http404Error
//println("The Status code is \(justTheStatusCode)")
//
//println("The status code is \(http404Error.0)")
//println("The status message is \(http404Error.1)")

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

//if convertedNumber {
//    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
//} else {
//    println("\(possibleNumber) could not be converted to an integer")
//}

//if let actualNumber = possibleNumber.toInt() {
//    println("\(possibleNumber) has an integer value of \(actualNumber)")
//} else {
//    println("\(possibleNumber) could not be converted to an integer")
//}
//
//var serverResponseCode: Int? = 404
//serverResponseCode = nil


//let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")

//let three = 3
//let minusThree = -three
//let plusThree = -minusThree
//println("the plus three is\(minusThree) \(plusThree)")


/*
@objc protocol HasArea {
var area: Double { get }
}

class Circle: HasArea {
let pi = 3.1415927
var radius: Double
var area: Double { return pi * radius * radius}
init(radius: Double) {self.radius = radius}
}

class Country: HasArea {
var area: Double
init(area: Double) { self.area = area }
}

class Animal {
var legs: Int
init(legs: Int) { self.legs = legs }
}

let objects: AnyObject[] = [
Circle(radius: 2.0),
Country(area: 243_610),
Animal(legs: 4)
]

for object in objects {
if let objectWithArea = object as? HasArea {
println("Area is \(objectWithArea.area)")
} else {
println("Something that doesn't have an area")
}
}

@objc protocol CounterDataSource {
@optional func incrementForCount(count: Int) -> Int
@optional var fixedIncrement: Int { get }
}

@objc class Counter {
var count = 0
var dataSource: CounterDataSource?
func increment() {
if let amount = dataSource?.incrementForCount?(count) {
count += amount
} else if let amount = dataSource?.fixedIncrement? {
count += amount
}
}
}

class ThreeSource: CounterDataSource {
let fixedIncrement = 3
}


var counter = Counter()
counter.dataSource = ThreeSource()
for i in 1...4 {
//    println("\(i)")
counter.increment()
println(counter.count)
}

class TowardsZeroSource: CounterDataSource {
func incrementForCount(count: Int) -> Int {
if count == 0 {
return 0
} else if count < 0 {
return 1
} else {
return -1
}
}
}
counter.count = -4
counter.dataSource = TowardsZeroSource()
for _ in 1...5 {
counter.increment()
println(counter.count)
}
*/

//let wiseWords = "\"Imagination is more importatnt than knowledge\" - Einstein"
//let dollarSign = "\x24"
//let blackHeart = "\u2665"
//let sparklingHeart = "\U0001F496"
//
//println(wiseWords, dollarSign, blackHeart, sparklingHeart)

//let dogString = "Dog!🐶"
//for codeUnit in dogString.utf8 {
//    print("\(codeUnit) ")
//}
//print("\n")
//
//for codeUnit in dogString.utf16 {
//
//}

/**
// test array
var shoppingList = ["Eggs", "Milk"]
shoppingList.append("Flour")
shoppingList+="Baking Powder"
shoppingList+=["Chocolate Spread", "Cheese","Butter"]
shoppingList[0] = "Six eggs"
shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.insert("Maple Syrup", atIndex: 0)

let mapleSyrup = shoppingList.removeAtIndex(0)
let apples = shoppingList.removeLast()

for (index, value) in enumerate(shoppingList) {
println("Item \(index + 1): \(value)")
}

var anotherThreeDoubles = Array(count: 3, repeatedValue:"a")
println("the arr is \(anotherThreeDoubles)")
*/

/**
// test dictionary
var airports: Dictionary<String, String> = ["TYO": "Tokyo",
"DUB": "Dublin"]

airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey:"DUB") {
println("The old value for DUB was \(oldValue).")
}
*/

/** test while
let finalSquare = 25
var board = Int[](count: finalSquare+1, repeatedValue: 0)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02;
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08;

var square = 0
var diceRoll = 0
while square < finalSquare {
// roll the dice
if ++diceRoll == 7 { diceRoll = 1 }
square += diceRoll
if square < board.count {
square += board[square]
}
}

println("Game over!")
*/

/**
let somePoint = (0, 1)
switch somePoint {
case (0, 0):
println("(0, 0) is at the origin")
case (_, 0):
println("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
println("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
println("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}


let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
println("on the x-axis with an x value of \(x)")
case (0, let y):
println("on the y-axis with an y value of \(y)")
case let (x, y):
println("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
println("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
println("(\(x), \(y)) is one the line x == -y")
case let (x, y):
println("(\(x), \(y)) is just some arbitrary point")

}



let numberSymbol: Character = "三"  // Simplified Chinese for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
possibleIntegerValue = 1
case "2", "٢", "二", "๒":
possibleIntegerValue = 2
case "3", "٣", "三", "๓":
possibleIntegerValue = 3
case "4", "٤", "四", "๔":
possibleIntegerValue = 4
default:
break
}
if let integerValue = possibleIntegerValue {
println("The integer value of \(numberSymbol) is \(integerValue).")
} else {
println("An integer value could not be found for \(numberSymbol).")
}


let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
description += " a prime number, and also"
fallthrough
case 1, 6:
description += " a a"
fallthrough
default:
description += " an integer."
}
println(description)
*/



func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}

func count(string: String) -> (vowels: Int, consonants: Int, others: Int) {
    var vowels = 0, consonants = 0, others = 0
    for character in string {
        switch String(character).lowercaseString {
        case "a", "e", "i", "o", "u":
            ++vowels
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m","n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            ++consonants
        default:
            ++others
        }
    }
    return (vowels, consonants, others)
}

let total = count("some arbitrary string!")
//println("\(total.vowels) vowels and \(total.consonants) consonants")

func join(s1: String, s2: String, joiner: String) -> String {
    return s1 + joiner + s2
}

func join(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
    return s1 + joiner + s2
}

let ss = join("hello", "world", ", ")

let sss = join(string: "hello", toString: "Perry", withJoiner: ", ")

//println(ss)
//println(sss)


func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character  == characterToFind {
            return true
        }
    }
    return false
}

let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")

func joina(string s1: String = "aaa", toString s2: String, withJoiner joiner: String = " ") -> String {
    return s1 + joiner + s2
}


let ess = joina(toString: "good")
//println(ess)

func joinb(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}

let pss = joinb("a", "b", joiner: "-joine")


func arithmeticMean(numbers: Double... ) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

//println("\(arithmeticMean(1, 2, 3, 4, 6))")


func alignRight(var string: String, count: Int, pad: Character) -> String {
    let amoountToPad = count - countElements(string)
    for _ in 1...amoountToPad
    {
        string = pad + string
    }
    return string
}

func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
//println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

func printHelloWorld() {
    println("hello, world")
}

var mathFunction: (Int, Int) -> Int = addTwoInts

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    println("Result: \(mathFunction(a, b))")
}

//printMathResult(addTwoInts, 3, 5)

//func stepForward(input: Int) -> Int {
//    return input + 1
//}
//
//func stepBackward(input: Int) -> Int {
//    return input - 1
//}
//
//func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
//    return backwards ? stepBackward : stepForward
//}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1}
    func stepBackward(input: Int) -> Int {return input - 1}
    return backwards ? stepBackward : stepForward
}



var currentValue = -2
let moveNearerToZero = chooseStepFunction(currentValue > 0)

println("Counting to zero:")
while currentValue != 0 {
    println("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
println("zero!")


















