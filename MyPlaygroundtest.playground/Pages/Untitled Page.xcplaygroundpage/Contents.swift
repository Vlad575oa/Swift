import UIKit
import CoreGraphics

var greeting = "Hello, playground"

var z = 3

class Greeting {
    static let number = 5
    static let french = "salut"
    static let german = "halo"
    
    let rus: String
    
    class func plus(num: Int) -> Int {
       let sum = num + num
        return sum
    }
    
    static func minus(num: Int) -> Int {
       let sum = num - 1
        return sum
    }
    init(rus: String) {
        self.rus = rus
    }
}
class Parent {
    final func finalFunc() -> String { // Final Function, cannot be redeclared.
        return "Parent Final Function."
    }
    static func staticFunc() -> String { // Static Function, can be redeclared.
        return "Parent Static Function."
    }
    func staticFunc() -> String { // Above function redeclared as Normal function.
        return "Parent Static Function, redeclared with same name but as non-static(normal) function."
    }
    class func classFunc() -> String { // Class Function, can be redeclared.
        return "Parent Class Function."
    }
    func classFunc() -> String { // Above function redeclared as Normal function.
        return "Parent Class Function, redeclared with same name but as non-class(normal) function."
    }
    func normalFunc() -> String { // Normal function, obviously cannot be redeclared.
        return "Parent Normal Function."
    }
}
class Child:Parent {

    // Final functions cannot be overridden.

    override func staticFunc() -> String { // This override form is of the redeclared version i.e: "func staticFunc()" so just like any other function of normal type, it can be overridden.
        return "Child Static Function redeclared and overridden, can simply be called Child Normal Function."
    }

    override class func classFunc() -> String { // Class function, can be overidden.
        return "Child Class Function."
    }

    override func classFunc() -> String { // This override form is of the redeclared version i.e: "func classFunc()" so just like any other function of normal type, it can be overridden.
        return "Child Class Function, redeclared and overridden, can simply be called Child Normal Function."
    }

    override func normalFunc() -> String { // Normal function, can be overridden.
        return "Child Normal Function."
    }
}

let parent = Parent()
let child = Child()

// Final
print("1. " + parent.finalFunc())   // 1. Can be called by object.
print("2. " + child.finalFunc())    // 2. Can be called by object, parent(final) function will be called.
// Parent.finalFunc()               // Cannot be called by class name directly.
// Child.finalFunc()                // Cannot be called by class name directly.

// Static
print("3. " + parent.staticFunc())  // 3. Cannot be called by object, this is redeclared version (i.e: a normal function).
print("4. " + child.staticFunc())   // 4. Cannot be called by object, this is override form redeclared version (normal function).
print("5. " + Parent.staticFunc())  // 5. Can be called by class name directly.
print("6. " + Child.staticFunc())   // 6. Can be called by class name direcly, parent(static) function will be called.

// Class
print("7. " + parent.classFunc())   // 7. Cannot be called by object, this is redeclared version (i.e: a normal function).
print("8. " + child.classFunc())    // 8. Cannot be called by object, this is override form redeclared version (normal function).
print("9. " + Parent.classFunc())   // 9. Can be called by class name directly.
print("10. " + Child.classFunc())   // 10. Can be called by class name direcly, child(class) function will be called.

// Normal
print("11. " + parent.normalFunc())  // 11. Can be called by object.
print("12. " + child.normalFunc())   // 12. Can be called by object, child(normal) function will be called.
// Parent.normalFunc()               // Cannot be called by class name directly.
// Child.normalFunc()                // Cannot be called by class name directly.



func f1(out a: Int) -> Int {
   a + a }
func f2(_ a: Int) -> Int {
    a + a
}

func f3(a: Int) -> Int {
    a + a
}

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

printAndCount(string: "privet")
let aa = printAndCount(string: "fff")
aa
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[0..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}


var a = [1,3,344,45,246,2,62,3,3443,2]

minMax(array: a)

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill!  Glad you could visit from Cupertino."



func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3)

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(44,55,66,556,66,77)

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

addTwoInts(5, 6)

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let inc = makeIncrementer(forIncrement: 5)

func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

stepForward(5)
stepBackward(4)
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
chooseStepFunction(backward: true)


let set: Set<Int> = []
let setOne = Set<String>()

let array: [Int] = []
