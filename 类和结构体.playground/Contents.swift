//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"

//共同点

//定义属性用于存储值
//定义方法用于提供功能
//定义下标操作使得可以通过下标语法来访问实例所包含的值
//定义构造器用于生成初始化值
//通过扩展以增加默认实现的功能
//实现协议以提供某种标准功能


//不同点
//结构体和枚举是值类型
//类是引用类型

//与结构体相比，类还有如下的附加功能：
//继承允许一个类继承另一个类的特征
//类型转换允许在运行时检查和解释一个类实例的类型
//析构器允许一个类实例释放任何其所被分配的资源
//引用计数允许对一个类的多次引用

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}


//MARK:恒等运算符

//等价于（===）
//不等价于（!==）
//运用这两个运算符检测两个常量或者变量是否引用同一个实例


//MARK:字符串、数组、和字典类型的赋值与复制行为
