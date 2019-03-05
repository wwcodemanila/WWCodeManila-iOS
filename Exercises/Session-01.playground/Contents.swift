/** WWCode Manila iOS Study Group
 *  https://www.meetup.com/Women-Who-Code-Manila/
 *  Session 01 - 2017/05/01
 *  Introduction to Swift
 **/


import UIKit

/** VARIABLE
 *  When you want to name a value that may change during the lifetime of the app, you'll use a variable.
 *  You define variables using the 'var' keyword.
 **/

var str = "Hello, I'm a variable"


/** CONSTANT
 *  When you want to name a value that won't change during the lifetime of the program, you'll use a constant
 *  You define constants in Swift using the 'let' keyword.
 *  NOTE: You can't give it a new value once it has been assigned.
 **/
let newstr = "Hello, I'm a constant"


//Cute! You can even use emojis as your variable name.
var 🐶 = "Dog"


/** TYPE ANNOTATION
 *  Explicitly specify the type of the constant or variable.
 *  To specify a type, add a colon (:), a space, and the type name following the constant or variable name.
 */

var integer : Int = 1

/** TYPE INFERENCE
 *  Swift makes assumptions about the type based on the value assigned.
 */
var typeInfered = "This variable is assumed by Swift to be of type String"


//IMPORTANT : Constant and Variable names can't contain – Mathematical Symbols, Spaces, and when it begins with a number.



//Re-assigning our 'str' variable
str = "Hello again"

//Prints the values
print("\(str) Ciela \(integer)")
print(newstr)
print(🐶)
print(integer)


/** 
 *
 *  IF ELSE
 *
 **/

//Set boolean variables
var choice = true
var choice2 = false

//In swift, there's no need to enclose conditions in parenthesis()
if choice == true || choice2 == true{
    print("Test succeeded")
} else if choice == true && choice2 == false{
    print("Yehey")
} else {
    print("Else goes here")
}

/**
 *
 *  SWITCH CASE
 *
 **/

let switchtest = "$"

switch switchtest {
    //IMPORTANT: NO MORE BREAKS!
case "A":
    print("Switch case catch letter \(switchtest)")
//Evaluate multiple conditions by simply separating with commas
case "B","C":
    print("Switch case catch letter \(switchtest)")
    //FALLTHROUGH - falls through to the next case, not to the next matching case
    fallthrough
default:
    print("\(switchtest) not in Switch Case")
}


/**
 *  FOR LOOP
 *  A for-in loop executes a set of statements for each item
 *  within a range, sequence, or collection.
 **/

//1...5 range of the loop.
//the value of index starts with the first value in range - 1
for index in 1...5 {
    print("This is number \(index)")
}

//Creates an array of Strings
var names : [String] = ["Anna","Bert","Calvin","Dexter","Einstein"]
print(names)

//You can use the enumerated() method of an array to return a tuple containing both the index and the value of each item
for (index, name) in names.enumerated(){
    print("\(name) is at index \(index)")
}



/**
 *  TUPLE
 *  A special type that can hold an ordered list of values wrapped
 *  in parentheses– that holds the key and value of each entry
 **/

var person = (name: "Ciela",age: 20)
print(person.name)



/**
 *  FUNCTION
 *  A function is the idea of taking something that is complex
 *  and defining a simpler way to refer to it is an abstraction.
 **/

//A function is made up of three things: its name, an optional
//list of parameters, and an optional return type.

func printName(name: String) -> (String, Int){
    return ("Hello \(name)", 20)
}

//Calling printName function with passed parameter name 'Ciela'
printName(name: "Ciela")



