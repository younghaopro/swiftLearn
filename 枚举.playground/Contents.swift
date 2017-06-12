//: Playground - noun: a place where people can play

import UIKit


//MARK:枚举语法
enum CompassPoint {
    case north
    case south
    case east
    case west
}

//var  directionToHead:CompassPoint = .north
var  directionToHead = CompassPoint.north
directionToHead = .west

//MARK:使用Switch语句匹配枚举值
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

//MARK:关联值
enum Barcode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}
var productBarCode = Barcode.upc(8, 85909, 51226, 3)

switch productBarCode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
        print("QR code: \(productCode).")
}

//MARK:原始值
enum CompassPoint2:String {
    case north
    case south
    case east
    case west
}
let eastDirection = CompassPoint2.east.rawValue
//使用原始值初始化枚举实例
let southDirection = CompassPoint2(rawValue: "south")
//MARK:递归枚举
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression,ArithmeticExpression)
    case mutiplication(ArithmeticExpression,ArithmeticExpression)
}

//表达式(5 + 4) * 2

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let mutiple = ArithmeticExpression.mutiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression:ArithmeticExpression)->Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .mutiplication(left, right):
        return evaluate(left) + evaluate(right)
        
    }
}

