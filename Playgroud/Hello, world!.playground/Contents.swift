//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array = [1,7,3,2,9]

array.map { (element) -> String in
     String(element)
}

array.map { (element) -> Int in
    2 * element
}

let sum = array.reduce(0) { (partialResult, element) -> Int in
    partialResult + element
}

let sum2 = array.reduce(0) { $0 + $1}
sum2


print(str)
