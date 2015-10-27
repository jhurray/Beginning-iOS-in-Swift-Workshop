#Beginning iOS development in Swift

Welcome to the Swift iOS development crash course, sponsored by Yahoo. In the next 2 hours you will create an iOS application written in Swift, Apple's new programming language.

###Prerequisites
Please have the latest Version of XCode (7.0) installed. You will need an Apple computer so if you don't have one please borrow one from a friend and make sure you have XCode installed.

Xcode takes about 15 minutes to install so please don't wait until we start to install it.

### The Project
We will be createing an anonymous social network that lets you post and read other peoples posts. It will be very basic and bare bones, but it wil be a functional app. 


#Swift Cheat Sheet

##Declaring Variables
Swift variables are either mutable or immutable. Variables are declared with ```let``` and ```var``` respectively.

```swift

let myContstantInt = 1
var myMutableInt = 1

myMutableInt++ // this works
myContstantInt++ // Error: myContstantInt is immutable

let myConstantArray = ["hello"] 
var myMutableArray = ["hello"] 

myMutableArray.append("world") // this works
myConstantArray.append("world") // Error: myConstantArray is immutable

```

##Casting
Casting in swift is done with ```:```

```swift
let myNumber1 = 12.0 // this is implicityly typed as a Float
let myNumber2 = 12 // this is implicitly typed as an Int
let myFloat : Float = 12 // this is explicityly typed as a Float
let myInt : Int = 12.0 // this is explicitly typed as an Int
```

You can also cast from one type to another with the ```as``` operator.

```swift
let arrayOfFloats = [12.5, 1.4, 2.0] as Array<Float> 
```

##Low level Data Types
  * Int
  * Float
  * Double
  * String
  * Array
  * Dictionary
  * Closure

###Int, Float, Double
These all are pretty basic. You can cast from one to the other using constructors.

```swift
let myFloat : Float = 12.5
let myInt : Int = Int(myFloat) // 12

let sum : Double = Double(myFloat) = Double(myInt) // 24.5
```

###String
Strings in swift are super flexible and extendible.

```swift
var greetings = "hello " + "world"

greetings += ". Whatsup party people?!?"
```
You can add variables in strings by wrapping them with ```\()```

```swift
let myAge = 21
let myString = "I am \(myAge) years old."
```

###Array
Arrays in swift can be casted in 2 ways:

```swift
var myArray : [String] = [String]()
var myOtherArray : Array<String> = Array<String>()

myArray.dynamicType == myOtherArray.dynamicType // True
```

Add to an array with ```append()``` and get / set elements with the ```[]``` operator.

```swift
myArray.append("hello")

myArray[0] = "world"

print(myArray) // ["world"]

```

###Dictionary
Dictionarys in swift can be casted in 2 ways as well:

```swift
class MyObject {}

var myDict : [String : MyObject] = [String : MyObject]()
var myOtherDict : Dictionary<String, MyObject> = Dictionary<String, MyObject>()

myDict.dynamicType == myOtherDict.dynamicType // True
```

Get and set objects with the ```[]``` operator.

```swift
myDict["myKey"] = MyObject()
```

###Closures

Closures are very similar to those in Javascript. They are usually used as completion blocks in functions to control execution flow but can also be used as for calculation and building UI elements. In this case they act like functions but they can be passed around as variables!

```swift
let doubleMyInt : (Int) -> Int = { (n) -> Int in
    return n * 2
}

let tenTimesMyInt : (Int) -> Int = { (n) -> Int in
    return 10 * n
}

let shouldBe6 = doubleMyInt(3)

func doSomething(n : Int, mutator : (Int)->(Int)) -> Int {
    return mutator(n)
}

let shouldBe6Again = doSomething(3, mutator: doubleMyInt)

let shouldBe30 = doSomething(3, mutator: tenTimesMyInt)
```

You can declare a closure as a type using ```typealias```

```swift
typealias IntToIntClosure = (Int) -> Int

func doSomething(n : Int, mutator : IntToIntClosure) -> Int {
	return mutator(n)
}
```

##Functions

Functions are very flexible in swift.

```swift
// In this case a and b are parameters. b can not be defined, and if it is left black it will default to the value that is set after it.
func myFunction(a : Int, b : String = "My Default String") {
	print("a = \(a) and b = \(b)")
}

myFunction(12, b: "Hello World") // "a = 12 and b = Hello World"

myFunction(12) // "a = 12 and b = My Default String"

```

To set a return value from a function use ```->``` followed by the value you want returned. You can even return tuples in Swift.

```swift
func returnsAnArray() -> [Any] {
	return []
}

func returnsAnArrayOfStrings() -> [String] {
	return ["Hello", "World"]
}

func returnsATuple() -> (Int, String, [Float]) {
    return (3, "a", [12.0, 9.0])
}
```


#iOS Cheat Sheet - An overview of Apples API

##UIKit

UIKit is a library written by Apple that provides developers with basic UI Elements for iOS development. Thes classes can be customized, extended, and subclassed. Examples of view classes include **UIView, UIImageView, UIlabel, UITextField, and UIButton**

####UIViewController
Any screen you see on an iOS app is held in a UIViewController. Its purpose is to control all the views in the screen and handle the passing of data into views.

####UINavigationController
UINavigationControllers hold view controllers and control their navigation. When you press a button and you switch screens on an iOS app this is almost lways done through a UINavigationController

####UITableView
UITableView is the most basic way to display data sets. Most iOS applications use table views. TableViews use **UITableViewCells** to display data. If you have an array of 50 strings you can use a tableView to display those strings in 50 rows.

##Delegate Pattern
A widely used design pattern in iOS development is the Delegate pattern. 

####Protocols
A protocol is a set of functions that an class must conform to. An example of this is the **UITableViewDelegate**.

```swift
protocol HasNickname {
    func nickname() -> String
}

class Person : HasNickname {
    
    func greeting() -> String {
        return "Hi you can call me \(self.nickname())"
    }
    
    func nickname() -> String {
        return ""
    }
}

class Teacher : Person {
    
    override func nickname() -> String {
        return "Mr. Jones"
    }
    
}

class Friend : Person {
    override func nickname() -> String {
        return "Buddy"
    }
}

let teacher = Teacher()
let friend = Friend()

// Prints: "Hi you can call me Mr. Jones"
print(teacher.greeting())

// Prints: "Hi you can call me Buddy"
print(friend.greeting())

```

####Delegates 
Delegates can be used to do things for your class. UITableView uses its delegate to control when a row is tapped, and many other things. UITextView uses its delegate to know if it should begin editing, end editing, and whether to change its text. 

```swift

protocol PersonGreetingDelegate {
    func personDidSayHello()
    func personDidSayGoodbye()
}

class Person {
    
    var greetingDelegate : PersonGreetingDelegate?
    
    func sayHello() {
        print("hello!")
        self.greetingDelegate!.personDidSayHello()
    }
    
    func sayGoodbye() {
        print("goodbye!")
        self.greetingDelegate!.personDidSayGoodbye()
    }
}

class Robot : PersonGreetingDelegate {
    var companion : Person?
    
    func setPerson(person : Person) {
        companion = person
        companion!.greetingDelegate = self
    }
    
    func personDidSayHello() {
        print("Greetings I am a robot")
    }
    
    func personDidSayGoodbye() {
        print("Goodbye my human friend")
    }
}

class Dog : PersonGreetingDelegate {
    var owner : Person?
    
    func setPerson(person : Person) {
        owner = person
        owner!.greetingDelegate = self
    }
    
    func personDidSayHello() {
        print("Woof woof!")
    }
    
    func personDidSayGoodbye() {
        print("Bark bark!")
    }
}

let person = Person()
let robot = Robot()
let dog = Dog()

robot.setPerson(person)
dog.setPerson(person)

person.sayHello()
// Prints:
// hello! 
// Greetings I am a robot
// Woof woof

person.sayGoodbye()
//Prints:
// goodbye!
// Goodbye my human friend
// Bark bark!

```