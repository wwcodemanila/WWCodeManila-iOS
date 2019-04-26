
### Session 02
# Introduction to Swift
Building apps, and programming in general, is all about working with data. As a developer, you'll need to understand how to handle and store data using clearly defined types.

####  While Loop
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


#### Repeat While
Unlike While - on Repeat While the statement will be executed first before the condition is evaluated.

```sh 
var test = false
repeat{
    print("Hello!!")
    test = true
} while (test != true)
```

### Collections

####  Array
Stores an ordered list of same-typed values. When you declare an array, you can specify what type of values will be held in the collection, or you can let the type inference system discover the type

```sh 
var names : [String] = ["Anna","Bert","Calvin","Dexter","Einstein"]
```
> An array is like a basket: It can start out empty and you can fill it with values at a later time. 
>
```sh
var myArray: [Int] = []
```

####  Dictionary
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

####  Set
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
