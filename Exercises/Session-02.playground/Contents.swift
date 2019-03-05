/** WWCode Manila iOS Study Group
 *  https://www.meetup.com/Women-Who-Code-Manila/
 *  Session 02 - 2017/05/15
 *  Introduction to Swift
 **/

import UIKit

/** While Loop
 *  A while loop will continue to loop until its specified condition is no longer true.
 **/

var names : [String] = ["Anna","Bert","Calvin","Dexter","Einstein"]

//Serves us our while loop counter
var countWhile = 0
//Statements will execute as long as count is less than the total number of values in our array – names.
while (countWhile < names.count){
    print("While result: \(names[countWhile])")
    //Increment - If ommitted we will have an infinite loop
    countWhile = countWhile + 1
}


/** Repeat While
 *  Unlike While - on Repeat While the statement will be executed first before the condition is evaluated.
 **/

var test = false
repeat{
    print("Hello!!")
    test = true
} while (test != true)

//COLLECTIONS
/** Array
 *  Stores an ordered list of same-typed values
 **/

var sampleArray : [String] = ["a","b","c"]

/** Set
 *  Similar with Array but it stores an UN-ORDERED list of same-typed values
 **/
var sampleSet : Set<Int> = [1,2,3,4,5]
print(sampleSet)

for (index, value) in sampleSet.enumerated(){
    print("\(index) : \(value)")
}

/** Dictionary
 *  It is a list of keys, each with an associated value. Each key must be unique, 
 *  just like each word in the dictionary is unique.
 **/

var professions : [String : (String, Int)] = ["Joey" : ("Doctor",8) , "Andrea" : ("Nurse",10), "Eugene" : ("Engineer",9)]
print(professions)
print(professions["Joey"]!)

