//: A UIKit based Playground for presenting user interface

import Darwin



var name = "Sania"

print(MemoryLayout<Bool>.size)// 1
print(MemoryLayout<Int>.size) // 8
print(MemoryLayout<Character>.size) // 16
print(MemoryLayout<String>.size) // 16
// print(MemoryLayout<Bool>.stride)
// print(MemoryLayout<Bool>.alignment)
print(MemoryLayout<Double>.size)
print(MemoryLayout<Float>.size)

//var a1: UInt = 0b00000000
//var b1: UInt = 0b11111111
//
//// print(a1)
//
//struct Demo {
//    var size: Int
//    var size2: Int
//    var isBool: Bool
//}
//
//print(MemoryLayout<UInt>.size)
//print("bytes")
//print(a1)
//print(b1)
//
//print("------------------------------------")
//
//// printTraingle(n: 8)
//// printPrimeNumber(n: 10)
//// printPrimeUptill(n: 100)
//// printFactorial(n: 6)
//
//// public func pascalTriangle(_ numRows: Int) -> [[Int]] {
////    var first = [[1]]
////    var second = [[1,1]]
////    var third = [[Int]]()
////
////
////    if numRows == 1 {
////        return first
////    } else if numRows == 2 {
////        return second
////    } else {
////
////    }
////
//// }
//
//
//













var name1: String  = "KUNAL"
let name2: String = "SANIA"
print(name1)
print(name2)
name1 = "seltos"
print(name1)

var name3: Character = "l"
print(name3)

var age: Int = 4
var height: Double = 1.00000000888000000000000000000000099
var length: Float = 1.000000008880088877666556555555545444
var isBig: Bool = true


print(age)
print(height)
print(length)
print(isBig)
print(!isBig)
class Kunal {
    func test() {
        print("test")
    }

//    var description: String {
//        "in Kunal Class"
//    }
}


var kk = Kunal()

kk.test()



let apples = 3
let oranges = 77


let appleSummary: String = "I have \(apples) apples."
let orangeSummary: String = "I have \(oranges) oranges."

print(appleSummary)
print(orangeSummary)



// print my name is __. My age is _. My height is _.
print("my name is \(name2). my age is \(age). my height is \(height)") ;

let nameSummary = "my name is \(name2). "
let ageSummary = "my age is \(age). "
let heightSummary = "my height is \(height)."


let completeSummary: String = nameSummary + ageSummary + heightSummary
print(completeSummary)

// logical operators >, < , >=, <=, !, !=, ==
// airthematic operators +, -, /, *, =
// bitwise operators - ❌

print("❤️")

print("Hello world")

let label = "The text is"
let text =  10
let textLabel = label + String(text)

print (textLabel)

let peaches = 10
let kiwis = 20

let peachsummary = "I have \(peaches) peaches."
let kiwisummary = "I have \(kiwis) kiwis."
let fruitsummary: String = peachsummary + kiwisummary
print(fruitsummary)

print(peachsummary)
print(kiwisummary)
print(fruitsummary)

let quotation = """
I said "I have \(peaches) peaches."
and then I said "I have \(kiwis) kiwis."
and finally "I have \(peaches + kiwis) type of fruit.
"""

/// String Mutability
///  Mutability means change kr sakde jiven k var
///  Immutability means jeda change nahi hi sakda jiven k let
var namuna = "sania"
namuna += "rahat"
print(namuna)


/// String and Character Equality

var string1: String = "Kunal"
var string2 = "Sania"
print(6 < 4)

var nameArray : [String] = [String]()
print(nameArray.count == 0)
nameArray.append("Kunal")
print(nameArray.count)
print(nameArray)
nameArray.append("Sania")
print(nameArray.count)
print(nameArray)

print("nameArray is of type [String] with \(nameArray.count) items.")


let subjectArray : [String] = ["Math" , "Science" , "Art" , "History" , "English"]
print(subjectArray)


/// HW
/// marks : Int type array / mutable
///
/// Age Array : Double / immutable
///

var sex: [Bool] = []

var color : String = "White"
print(color)

var height1 : Int = 10
print(height1)


var length1 : Character = "1"
print(length1)

var weight1 : Double = 1.235
print(weight1)

var breadth : Float = 1.0003
print(breadth)

var question : Bool = false
print(question)

var colorArray : [String] = ["white" , "black" , "red" , "black" , "green"]
print(colorArray)

var heightArray : [Int] = [10, 20, 30, 40, 50]
print(heightArray)

var lengthArray : [Character] = ["1", "2" , "3" , "4" , "5"]
print(lengthArray)

var weightArray : [Double] = [1.25687977 , 2.8768979 , 4.8659976]
print(weightArray)

var breadthArray : [Float] = [1.3450001 , 2.678909 , 4.899765]
print(breadthArray)

var questionArray : [Bool] = [true]
print(questionArray)

print(nameArray + colorArray)






let exampleName = "Sania"
let secondName = "Kunal Ji"

let saniaAge = 26
let kunalAge = 31

let isSaniaPagal = true


if (saniaAge == 6 && exampleName == "Sania") || (kunalAge == 1 && secondName == "Kunal Ji") {
    print("inside if statement")
} else if !isSaniaPagal {
    print("sania is pagal")
} else {
    print("inside else statement")
}
