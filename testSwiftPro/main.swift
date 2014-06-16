//
//  main.swift
//  testSwiftPro
//
//  Created by Perry on 14-6-16.
//  Copyright (c) 2014年 Perrychen. All rights reserved.
//

import Foundation

let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("The message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
println("The Status code is \(justTheStatusCode)")

println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")
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


