
# Introduction to Swift
Building apps, and programming in general, is all about working with data. As a developer, you'll need to understand how to handle and store data using clearly defined types.

#  Constants
When you want to name a value that won't change during the lifetime of the program, you'll use a constant.
You define constants in Swift using the _**let**_ keyword.

```sh 
let newstr = "Hello, I'm a constant"
```
**Note**: You can't give a constant a new value once it has been assigned.

# Variables
When you want to name a value that may change during the lifetime of the app, you'll use a variable.
You define variables using the **_var_** keyword.

```sh 
var str = "Hello, I'm a variable"
```

> **Type Inference**
> Swift makes assumptions about the type based on the value assigned.
#
```sh
var infered = "This var is assumed as type String"
```

> **Type Annotation**
> Explicitly specify the type of the constant or variable.
> To specify a type, **add a colon (:), a space, and the type name** following the constant or variable name.
#
```sh
var integer : Int = 1
```

**IMPORTANT : Constant and Variable names can't contain – Mathematical Symbols, Spaces, and when it begins with a number.**

# Control Flow

## Logical Operators
![alt text](http://i.imgur.com/XEbfzAj.png "Logical Operators")
##  If else
Specify a block of code to execute if the condition is not true.

```sh 
//Set boolean variables
var choice = true
var choice2 = false

if choice == true || choice2 == true{
    print("Test succeeded")
} else if choice == true && choice2 == false{
    print("Yehey")
} else {
    print("Else goes here")
}
```
**Note**: In Swift, there's no need to enclose conditions in parenthesis().

##  Switch Case
A basic switch statement takes a value with multiple options and allows you to run separate code based on each option, or case. You can also provide a default case to specify a block of code that will run in all the cases you haven't specifically defined.

```sh 
let switchtest = "A"

switch switchtest {
case "A":
    print("Switch case catch letter \(switchtest)")
case "B","C":
    print("Switch case catch letter \(switchtest)")
    fallthrough
default:
    print("\(switchtest) not in Switch Case")
}
```
> **Multiple Conditions**
> Evaluate multiple conditions by simply separating with commas
#
> **Fallthrough**
> Falls through to the next case, not to the next matching case
#
#
##  For Loop
A for loop is useful for repeating something a set number of times or for performing work across a collection of values. It executes a set of statements for each item within a range, sequence, or collection.

```sh 
for index in 1...5 {
    print("This is number \(index)")
}
```
> 1...5 range of the loop.
> The value of index starts with the first value in range
>

```sh 
//Creates an array of Strings
var names : [String] = ["Anna","Bert","Calvin","Dexter","Einstein"]
print(names)

for (index, name) in names.enumerated(){
    print("\(name) is at index \(index)")
}
```
> **enumerated()**
> returns a tuple containing both the index and the value of each item


## Tuple
A special type that can hold an ordered list of values wrapped in parentheses– that holds the key and value of each entry
```sh 
var person = (name: "Ciela",age: 20)
print(person.name)
```


## Function
A function is the idea of taking something that is complex and defining a simpler way to refer to it is an abstraction.

```sh 
func printName(name: String) -> (String, Int){
    return ("Hello \(name)", 20)
}
printName(name: "Ciela")
```
>A function is made up of three things: its **name**, an optional list of **parameters**, and an optional **return type**.


##  While Loop
A while loop will continue to loop until its specified condition is no longer true.

```sh 
var names : [String] = ["Anna","Bert","Calvin","Dexter","Einstein"]
var countWhile = 0
while (countWhile < names.count){
    print("While result: \(names[countWhile])")
    countWhile = countWhile + 1
}
```
>**Important**: Avoid infinite loop by making sure the condition will be satifisfied at some point. In the above example, we increment our countWhile variable which serves as our loop counter.


### Repeat While
Unlike While - on Repeat While the statement will be executed first before the condition is evaluated.

```sh 
var test = false
repeat{
    print("Hello!!")
    test = true
} while (test != true)
```

# Collections

##  Array
Stores an ordered list of same-typed values. When you declare an array, you can specify what type of values will be held in the collection, or you can let the type inference system discover the type

```sh 
var names : [String] = ["Anna","Bert","Calvin","Dexter","Einstein"]
```
> An array is like a basket: It can start out empty and you can fill it with values at a later time. 
>
```sh
var myArray: [Int] = []
```

##  Dictionary
It is a list of keys, each with an associated value. Each key must be unique, just like each word in the dictionary is unique.
```sh 
var professions : [String : (String, Int)] = ["Joey" : ("Doctor",8) , "Andrea" : ("Nurse",10), "Eugene" : ("Engineer",9)]
print(professions)
print(professions["Joey"]!)
```
>[key1 : value1, key2: value2, key3: value3]
#
> Empty Dictionaries
```sh
var myDictionaryOne = Dictionary<String, Int>()
var myDictionaryTwo : [String: Int] = [:]”
```

##  Set
Similar with Array but it stores an UN-ORDERED list of same-typed values
```sh 
var sampleSet : Set<Int> = [1,2,3,4,5]
print(sampleSet)

for (index, value) in sampleSet.enumerated(){
    print("\(index) : \(value)")
}
```

###### References:  
[_App Development with Swift_](https://itun.es/ph/SoKQib.l) Apple Inc. - Education, 2017.
###### Discussions:
[_WWCodeManila-iOS Study Group_](https://www.meetup.com/Women-Who-Code-Manila/messages/boards/thread/50790558)
