/** WWCode Manila iOS Study Group
 *  https://www.meetup.com/Women-Who-Code-Manila/
 *  Session 04 - 2017/06/24
 *  Swift - Optionals
 *  Acitivity 04
 **/

//: ## iOS Study Group
//: [WWCodeManila](https://www.meetup.com/Women-Who-Code-Manila/)
//:
//: _Session 04 - 2017/06/24_
//:
//: Topic: **Optionals**
//:
//:


import UIKit


class UserAccount{
    //It's safe to set as unwrapped optional since the variables will have default values when initialized
    var username:String!
    var password:String!
    var userDetails:UserDetails!
    var recover:AccountRecovery?
    var willRecover = false
    
    init(uname:String, pass:String, details:UserDetails) {
        username = uname
        password = pass
    }
}

class UserDetails{
    var name:String!
    var age:Int?
    
    init(yourName:String, yourAge:Int?) {
        name = yourName
        age = yourAge
    }
}

class AccountRecovery{
    var question:String
    var answer:String
    var hint:String?
    
    init(q:String, a:String, h:String?) {
        question = q
        answer = a
        hint = h
    }
}

let myDetails = UserDetails(yourName: "Steffi", yourAge: 23)
let myAccount = UserAccount(uname:"iamsteffi",pass:"steffi123",details:myDetails);
let security = AccountRecovery(q: "What is the name of your first pet?", a: "Xander", h: nil)

print("You've successfully registered your account with username" + myAccount.username)

myAccount.recover = security

if let hint = myAccount.recover?.hint{
    print("You are now fully setup for account recovery")
}else{
    print("Reminder: Set an hint in case you forgot the answer to your security question.")
}

myAccount.willRecover = true

if(myAccount.willRecover){
    if let accountRecovery = myAccount.recover{
        print("Your security question: \(accountRecovery.question)")
    }else{
        print("Sorry but you haven't set your recovery questions.")
    }
}
