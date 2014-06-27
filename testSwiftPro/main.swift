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


/*
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
*/
/*
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
*/


/*
// closures

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}


// closure expression
/**
{ (parameters) -> return type in statements}
*/
var reversed = sort(names, backwards)

reversed = sort(names, { (s1: String, s2: String) -> Bool in return s1 > s2})

func someFunctionThatTakesAClosure(closure: () -> ()) {
    
}

someFunctionThatTakesAClosure({
    // closure's body
    })

someFunctionThatTakesAClosure() {
    // trailing closure's body
}

reversed = sort(names) { $0 > $1 }

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]
let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

println(strings)

func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)
//println(incrementByTen())

var c = incrementByTen()
println(c)

c = incrementByTen()
println(c)

c = incrementByTen()
println(c)

*/

/*
enum SomeEnumeration {
    
}

enum CompassPoint {
    case North
    case South
    case East
    case West
}

enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Uranus,
    Neptune
}

var directionToHead = CompassPoint.West
directionToHead = .East

enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85909_51226, 3)

productBarcode = .QRCode("ABCDEFGHIJKLMNOP")


struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

let vga = Resolution(width: 640, height: 480)
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

var arrayA = [1,2,3,4,5]
var arrayB = Array(arrayA)
arrayB[0] = 8

println("\(arrayA[0]),\(arrayB[0])")

var dictionaryA = ["A": 1, "B": 2]
var dictionaryB = dictionaryA
dictionaryB["A"] = 3

println("\(dictionaryA)")

// test properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue:0, length: 3)
rangeOfThreeItems.firstValue = 6

//let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6

class DataImporter {
    /*
        DataImporter is a class to import data from an external file
        The class is assumed to take a non-trivial amount of time to initialize
    */
    var fileName = "data.txt"
    //  the DataImporter class would provide data importing functionality here

}

class DataManager {
    @lazy var importer = DataImporter()
    var data = String[]()
    // the DataManager class would provide data management functionality here
}
//
let manager = DataManager()
manager.data += "Some data"
manager.data += "Some more data"

//println(manager.importer.fileName)




struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
    get {
        let centerX = origin.x + (size.width / 2)
        let centerY = origin.y + (size.height / 2)
        return Point(x: centerX, y: centerY)
    }
    set(newCenter) {
        origin.x = newCenter.x - (size.width / 2)
        origin.y = newCenter.y - (size.height / 2)
    }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
println("square.origin is now at (\(square.origin.x), \(square.origin.y))")


class StepCounter {
    var totalSteps: Int = 0 {
    willSet {
        println("About to set totalSteps to \(newValue)")
    }
    didSet {
        if totalSteps > oldValue {
            println("Added \(totalSteps - oldValue) steps")
        }
    }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896


struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        get {
            return 1
    }
        set {
            
    }
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some Value."
    static var computedTypeProperty: Int {
        get {
            return 2
    }
    }
}

class SomeClass {
    class var computedTypeProperty: Int {
        get {
            return 3
    }
    }
}

//println(SomeClass.computedTypeProperty)
//println(SomeStructure.storedTypeProperty)
//SomeStructure.storedTypeProperty = "Another value."
//println(SomeStructure.storedTypeProperty)

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
    didSet {
        if currentLevel > AudioChannel.thresholdLevel {
            currentLevel = AudioChannel.thresholdLevel
        }
        if currentLevel > AudioChannel.maxInputLevelForAllChannels {
            AudioChannel.maxInputLevelForAllChannels = currentLevel
        }
    }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()
leftChannel.currentLevel = 7
println(leftChannel.currentLevel)
println(AudioChannel.maxInputLevelForAllChannels)
println(rightChannel.currentLevel)

*/



/*
// Methods
class Counter {
    var count: Int = 0
    func increment() {
        self.count++
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
    func incrementBy(#amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}
let counter = Counter()
counter.increment()
counter.incrementBy(5)
counter.reset()

counter.incrementBy(amount: 5, numberOfTimes: 3)

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(1.0) {
    println("This point is to the right of the line where x == 1.0")
}
somePoint.moveByX(2.0, y: 3.0)

enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
    }
}
var ovenLight = TriStateSwitch.Low
ovenLight.next()
ovenLight.next()

class SomeClass {
    class func someTypeMethod() {
        
    }
}
SomeClass.someTypeMethod()

struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    var currentLevel = 1
    mutating func advanceToLevel(level: Int ) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel(level: Int) {
        LevelTracker.unlockLevel(level+1)
        tracker.advanceToLevel(level+1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Argyrios")
player.completedLevel(1)
println("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")


player = Player(name: "Beto")
if player.tracker.advanceToLevel(6) {
    
} else {
    
}

//subscript(index: Int) -> Int {
//    get {
//        return 2
//    }
//    set {
//        
//    }
//}

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
println("six times three is \(threeTimesTable[6])")

struct Matrix {
    let rows: Int, columns: Int
    var grid: Double[]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
*/

/*
// class  inheritance
class Vehicle {
    var numberOfWheels: Int
    var maxPassengers: Int
    func description() -> String {
        return "\(numberOfWheels) wheels; up to \(maxPassengers) passengers"
    }
    init() {
        numberOfWheels = 0
        maxPassengers = 1
    }
}

let someVehicle = Vehicle()

class Bicycle: Vehicle {
    init() {
        super.init()
        numberOfWheels = 2
    }
}
let bicycle = Bicycle()
println("Bicycle: \(bicycle.description())")

class Tandem: Bicycle {
    init() {
        super.init()
        maxPassengers = 2
    }
}

let tandem = Tandem()
println("Tandem: \(tandem.description())")

class Car: Vehicle {
    var speed: Double = 0.0
    init() {
        super.init()
        maxPassengers = 5
        numberOfWheels = 4
    }
    override func description() -> String {
        return super.description() + "; " + "traveling at \(speed) mph"
    }
}

let car = Car()
println("Car: \(car.description())")

class SpeedLimitedCar: Car {
    override var speed: Double {
    get {
        return super.speed
    }
    set {
        super.speed = min(newValue, 40.0)
    }
    }
}

class AutomaticCar: Car {
    var gear = 1
    override var speed: Double {
    didSet {
        gear = Int(speed / 10.0) + 1
    }
    }
    override func description() -> String {
        return super.description() + " in gear \(gear)"
    }
}
*/

/*
// initialization
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
println("The default temperature is \(f.temperature) Fahrenheit")

struct Celsius {
    var temperatureInCelsius: Double = 0.0
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)

struct Color {
    let red = 0.0, green = 0.0, blue = 0.0
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)

class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        println(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like cheese."

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
        
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let twoByTwo = Size(width: 2.0, height: 2.0)

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}
let namedMeat = Food(name: "Bacon")
let mysteryMeat = Food()

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
    var output = "\(quantity) x \(name.lowercaseString)"
        output += purchased ? " gou" : " cha"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6)
]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    println(item.description)
}


struct Checkerboard {
    let boardColors: Bool[] = {
        var temporaryBoard = Bool[]()
        var isBlack = false
        for i in 1...10 {
            for j in 1...10 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
        }()
    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColors[(row * 10) + column]
    }
}
let board = Checkerboard()

*/

// Deinitialization

/*
struct Bank {
    static var coinsInBank = 10_000
    static func vendCoins(var numberOfCoinsToVend: Int) -> Int {
        numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receiveCoins(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.vendCoins(coins)
    }
    func winCoins(coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    deinit {
        Bank.receiveCoins(coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)
println("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
println("There are now \(Bank.coinsInBank) coins left in the bank")

playerOne!.winCoins(2_000)
println("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
println("The bank now only has \(Bank.coinsInBank) coins left")

playerOne = nil
println("PlayerOne has left the game")
println("The bank now has \(Bank.coinsInBank) coins")
*/

// Automatic Reference Counting
/*
//class Person {
//    let name: String
//    init(name: String) {
//        self.name = name
//        println("\(name) is being initialized")
//    }
//    deinit {
//        println("\(name) is being deinitialized")
//    }
//}
//
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//reference1 = Person(name: "John Appleseed")
//reference2 = reference1
//reference3 = reference1
//
//reference1 = nil
//reference2 = nil
//reference3 = nil

//class Person {
//    let name: String
//    init(name: String) {self.name = name}
//    var apartment: Apartment?
//    deinit { println("\(name) is being deinitialized")}
//    
//}
//
//class Apartment {
//    let number: Int
//    init(number: Int) {self.number = number}
//    weak var tenant: Person?
//    deinit { println("Apartment #\(number) is being deinitialized")}
//}
//
//var john: Person?
//var number73: Apartment?
//
//john = Person(name: "John Appleseed")
//number73 = Apartment(number: 73)
//
//john!.apartment = number73
//number73!.tenant = john
//
//john = nil
//number73 = nil

//class Customer {
//    let name: String
//    var card: CreditCard?
//    init(name: String) {
//        self.name = name
//    }
//    deinit { println("\(name) is being deinitialized") }
//}
//
//class CreditCard {
//    let number: Int
//    unowned let customer: Customer
//    init(number: Int, customer: Customer) {
//        self.number = number
//        self.customer = customer
//    }
//    deinit {
//        println("Card #\(number) is being deinitialized")
//    }
//}
//
//var jason: Customer?
//
//jason = Customer(name: "John Appleseed")
//jason!.card = CreditCard(number: 1234_5678_9012_3456, customer: jason!)
//jason = nil
//
//class Country {
//    let name: String
//    let capitalCity: City!
//    init(name: String, capitalName: String) {
//        self.name = name
//        self.capitalCity = City(name: capitalName, country: self)
//    }
//    deinit {
//        println("\(name) isdeinit")
//    }
//}
//
//class City {
//    let name: String
//    unowned let country: Country
//    init(name: String, country: Country) {
//        self.name = name
//        self.country = country
//    }
//    deinit {
//        println("\(name) isdeinit")
//    }
//}
//
//if 1 + 1 == 2 {
//    var country = Country(name: "Canada", capitalName: "Ottawa")
//    println("\(country.name)'s capital city is called \(country.capitalCity.name)")
//}
//println("deinit should be called before this")


class HTMLElement {
    let name: String
    let text: String?
    
    @lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        println("\(name) is being deinitialized")
    }
}
var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello ,world")
println(paragraph!.asHTML())
paragraph = nil
*/

// optional chaining

/*

//class Person {
//    var residence: Residence?
//}
//
//class Residence {
//    var numberOfRooms = 1
//}
//


class Person {
    var residence: Residence?
}

class Residence {
    var rooms = Room[]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        return rooms[i]
    }
    func printNumberOfRooms() {
        println("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {self.name = name}
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName {
            return buildingName
        } else if buildingNumber {
            return buildingNumber
        } else {
            return nil
        }
    }

}
let john = Person()
john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    println("John's residence has \(roomCount) room(s).")
} else {
    println("Unable to retrieve the number of rooms.")
}

if john.residence?.printNumberOfRooms() {
    println("It was possible to print the number of rooms")
} else {
    println("It was not possible to print the number of rooms")
}

let johnsHouse = Residence()
johnsHouse.rooms += Room(name: "Living Room")
johnsHouse.rooms += Room(name: "Kitchen")
john.residence = johnsHouse

if let firstRoomName = john.residence?[0].name {
    println("The first room name is \(firstRoomName)")
} else {
    println("Unable to retrieve the first room name.")
}

let johnsAddress = Address()
johnsAddress.buildingName = "The Larches"
johnsAddress.street = "Laurel Street"
john.residence!.address = johnsAddress

if let johnsStreet = john.residence?.address?.street {
    println("John's street name is \(johnsStreet).")
} else {
    println("Unable to retrieve the address.")
}

if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    println("John's building identifier is \(buildingIdentifier)")
}

*/

/*
// Type Casting

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

//let library = [
//    Movie(name: "Casablanca", director: "Michael Curtiz"),
//    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
//    Movie(name: "Citizen Kane", director: "Orson Welles"),
//    Song(name: "The One And Only", artist: "Chesney Hawkes"),
//    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
//]
//
//var movieCount = 0
//var songCount = 0
//
//for item in library {
//    if item is Movie {
//        ++movieCount
//    } else if item is Song {
//        ++songCount
//    }
//}
//println("Media library contains \(movieCount) movies and \(songCount) songs")
//
//for item in library {
//    if let movie = item as? Movie {
//        println("Movie: '\(movie.name)', dir. \(movie.director)")
//    } else if let song = item as? Song {
//        println("Song: '\(song.name)', by \(song.artist)")
//    }
//}

let someObjects: AnyObject[] = [
    Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]

for object in someObjects {
    let movie = object as Movie
    println("Movie: '\(movie.name)', dir. \(movie.director)")
}

for movie in someObjects as Movie[] {
    println("Movie: '\(movie.name)', dir. \(movie.director)")
}

var things = Any[]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))

for thing in things {
    switch thing {
    case 0 as Int:
        println("zero as an Int")
    case 0 as Double:
        println("zero as a Double")
    case let someInt as Int:
        println("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        println("a positive double value of \(someDouble)")
    case is Double:
        println("some other double value that I don't want to print")
    case let someString as String:
        println("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        println("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        println("a movie called '\(movie.name)', dir. \(movie.director)")
    default:
        println("something else")
    }
}
*/

/*
// Nested Types
struct BlackjackCard {
    // nested Suit enumeration
    enum Suit: String {
        case Spades = "♠︎", Hearts = "♡", Diamonds = "♢", Clubs = "♣︎"
    }
    
    // nested Rank enumeration
    enum Rank: Int {
        case Tow = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Ace
        struct Values {
            let first: Int, second: Int?
        }
        var values: Values {
            switch self {
            case .Ace:
                return Values(first: 1, second: 11)
            case .Jack, .Queen, .King:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.toRaw(), second: nil)
            }
        }
    }
    let rank: Rank, suit: Suit
    var description: String {
    var output = "suit is \(suit.toRaw()),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output
     }
}
let theAceOfSpades = BlackjackCard(rank: .Ace, suit: .Spades)
println("theAceOfSpades: \(theAceOfSpades.description)")
let heartsSymbol = BlackjackCard.Suit.Hearts.toRaw()
println("the symbol is \(heartsSymbol)")
*/

/*
// extension
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let aMarathon = 42.km + 195.m
println("A marathon is \(aMarathon) meters long")

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}
let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
println("the center is \(centerRect)")

extension Int {
    func repetitions(task: () -> ()) {
        for i in 0..self {
            task()
        }
    }
}

3.repetitions({
        println("Hello")
    })

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
println("\(someInt)")

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
            for _ in 1...digitIndex {
                decimalBase *= 10
            }
            return (self / decimalBase) % 10
    }
}

//extension Character {
//    enum Kind {
//        case Vowel, Consonant, Other
//    }
//    var Kind: Kind {
//        switch String(self).lowercaseString {
//            case "a", "e", "i", "o", "u":
//                return .Vowel
//            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
//            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
//                return .Consonant
//            default:
//                return .Other
//        }
//    }
//}
*/






