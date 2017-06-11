//: Playground - noun: a place where people can play


import UIKit

//一般形式: {
//    (partmeters) -> returnType in
//    statements
//}

let addFunc:(Int, Int)->Int =  {
    (a:Int, b:Int) -> Int in
    return a + b
}
print(addFunc(10, 10))
//根据上下文自动推断参数和返回值类型
let addFunc2:(Int, Int) -> Int = {
    a, b in
    return a+b
}
print(addFunc2(20, 20))
//单行表达式闭包可隐式返回，可省略return
let addFunc3 :(Int, Int) -> Int =  {a,b in a+b}
print(addFunc3(30, 30))

//没有参数可省略 "in"
let addFunc4:()->Int = {40+40}
print(addFunc4())


//MARK: typealias 取别名
typealias AddBlock = (Int,Int)->Int

let add:AddBlock = {
    a,b in
    return a + b
}

print(add(1,2))
//MARK:尾随闭包
func testFunc(){
    print("尾随闭包")
}


testFunc()

//MARK:值捕获
func captureValue(sums amount:Int)->()->Int {
    var total = 0
    func inCrementer()->Int {
        total += amount
        return total
    }
    return inCrementer
}

//闭包形式
func captureValue2(sums amount:Int)->()->Int {
    var total = 0
    let addBlock:()->Int = {
        total += amount
        return total
    }
    return addBlock
}
let referenceFunc = captureValue2(sums: 10)
print(referenceFunc())
print(referenceFunc())
print(referenceFunc())

//MARK:逃逸闭包
func doSomething(some:@escaping ()->Void) {
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
        some()
    }
}
doSomething {
    print("逃逸闭包")
}

var comletionHandler: ()->String = { "Hello "}
func doSomething2(some:@escaping ()->String) {
    comletionHandler = some
}
doSomething2 {
    return "你好"
}
print(comletionHandler())

