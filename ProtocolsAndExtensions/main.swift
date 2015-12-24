//
//  main.swift
//  ProtocolsAndExtensions
//
//  Created by GE on 15/12/24.
//  Copyright © 2015年 GE. All rights reserved.
//

import Foundation

protocol ExampleProtocol
    {
        var simpleDescription: String{ get }
        mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
//print(aDescription)

struct SimpleStructure: ExampleProtocol{
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
//print(bDescription)


//使用extension来为现有的类型添加功能，比如新的方法和计算属性。你可以使用扩展在别处修改定义，甚至是从外部库或者框架引入的一个类型，使得这个类型遵循某个协议。
extension Int:ExampleProtocol
{
    var simpleDescription: String{
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

//print(7.simpleDescription)

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)



