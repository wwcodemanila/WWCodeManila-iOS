/** WWCode Manila iOS Study Group
 *  https://www.meetup.com/Women-Who-Code-Manila/
 *  Session 04 - 2017/06/24
 *  Swift - Optionals
 **/

//: ## iOS Study Group
//: [WWCodeManila](https://www.meetup.com/Women-Who-Code-Manila/)
//:
//: _Session 04 - 2017/06/24_
//:
//: Topic: **Optionals**

import UIKit

struct Book{
    var name: String
    var publicationYear : Int?
}

let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)

let secondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets", publicationYear: 1998)

let books = [firstHarryPotter,secondHarryPotter]

let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)

var serverResponseCode : Int?
serverResponseCode = nil
serverResponseCode = 404

//Unwrapping Optionals

//Optional can't be assigned when its nil. Returns an error
//var a = unannouncedBook.publicationYear!

//WAYS TO UNWRAP

//1 - Manual checking if nil
if unannouncedBook.publicationYear != nil{
    
}

//2- Optional Binding - Swift way
if let unpublishedYear = unannouncedBook.publicationYear{
    print("The book was published in \(unpublishedYear)")
}else{
    print("The book is not yet published")
}


//---------------------
/**
 *  Optionals in Functions
 **/

//void Function
func printFullname(firstName:String,middleName:String?,lastName:String){
    if let mName = middleName{
        print(firstName+" "+mName+" "+lastName)
    }else{
        print(firstName+" "+lastName)
    }
}

printFullname(firstName: "Steffi", middleName: nil, lastName: "Tan")

//Non-void function
func textFromURL(url : URL) -> String?{
    return url.absoluteString
}

if let urlString = textFromURL(url: URL.init(fileURLWithPath: "urlpath")){
    print(urlString)
}

//---------------------
/**
 *  Optionals in Initializers
 **/

struct Toddler{
    var birthName : String {
        get{
            return name
        }
    }
    var ageInMonths : Int {
        get{
            return monthsOld
        }
    }
    
    private var name : String
    private var monthsOld : Int
    
    init?(name: String, monthsOld: Int){
        if monthsOld < 12 || monthsOld > 36{
            return nil
        }else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

//Failable initializer always returns an optional

let possibleToddler = Toddler(name:"Saber", monthsOld:32)

if let toddler = possibleToddler{
    print("\(toddler.birthName) is now \(toddler.ageInMonths/12) years old. She's already a toddler!")
}else{
    print("Not a toddler")
}

//Optional Chaining - Nested Optionals

class Person{
    var pAge:Int
    var pResidence:Residence?
    var pName:String
    
    init(name:String, age:Int, residence:Residence?) {
        pAge = age
        pResidence = residence
        pName = name;
    }
}

class Residence{
    var rAddress : Address?
    
    init(address:Address?) {
        rAddress = address
    }
}

class Address{
    var aBuildingName:String
    var aStreetName:String
    var aApartmentNumber:String?
    
    init(buildingName:String, streetName:String, apartmentNumber:String?){
        aBuildingName = buildingName
        aStreetName = streetName
        aApartmentNumber = apartmentNumber
    }
    
}

var homeAddress = Address(buildingName: "Sapphire Residences", streetName: "5th Street", apartmentNumber: nil)
var homeResidence = Residence(address:homeAddress)
var person = Person(name: "Steffi", age: 23, residence: homeResidence)

var addressStr = ""

//without Optional Chaining
if let p = person.pResidence{
    if let a = p.rAddress{
        if let aptNo = a.aApartmentNumber{
            print("\(person.pName) lives in \(a.aBuildingName) unit \(aptNo) at \(a.aStreetName)")
        }else{
            print("\(person.pName) lives in \(a.aBuildingName) at \(a.aStreetName)")
        }
    }
}

//with Optional Chaining
//If a nil value breaks the chain at any point, the if-let statement fails

if let aptNo = person.pResidence?.rAddress?.aApartmentNumber{
    print("Person lives in apartment \(aptNo)")
}


//with Optional Chaining + Unwrapping
if let aptNo = person.pResidence?.rAddress?.aApartmentNumber{
    print("via Optional Chaining - \(person.pName) lives in \(person.pResidence!.rAddress!.aBuildingName) unit \(aptNo) at \(person.pResidence!.rAddress!.aStreetName)")
}else{
    print("via Optional Chaining - \(person.pName) lives in \(person.pResidence!.rAddress!.aBuildingName) at \(person.pResidence!.rAddress!.aStreetName)")
}

//Implicitly Unwrapped Optional
//As the name suggests, this type of optional unwraps automatically, whenever it's used in code
//Used when you need to initialize an object without supplying the value, but you know you'll be giving the object a value very soon afterwards

class UserAccount{
    //It's safe to set as unwrapped optional since the variables will have default values when initialized
    var username:String!
    var password:String!
    
    init() {
        username = "wwcode"
        password = "manila"
    }
}

print("Your username is" + UserAccount().username)


//: [Try this Activity](Activity-Template)
