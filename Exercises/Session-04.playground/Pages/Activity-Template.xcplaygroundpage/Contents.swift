
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


import Foundation
/*:
 ### Activity
 1. Print your new account's username.
 2. If user try to recover their account and question is existing, print _Your security question: {question}_.
 3. If not print _Sorry but you haven't set your recovery question._
 4. If security question hint is available, print _You are now fully setup for account recovery_.If not print _It might be helpful to set a hint in case you forgot the answer to your security question._*/

//: >Below is a template you could use as guide.
//:
//: [Go to Overview](Overview)
//:
//: [View Answer](Activity-Answer)

class UserAccount{
    //Specify the appropriate type.
    //var username
    //var password
    //var userDetails - required
    //var recover
    //Set to true if user wants to recover the account.
    var willRecover = false
    
    /*init(uname:, pass:, details:) {
     
     
     }*/
}

class UserDetails{
    //var name:
    //var age: - not required
    
    /*init(yourName:, yourAge:) {
     name = yourName
     age = yourAge
     }*/
}

class AccountRecovery{
    //var question:
    //var answer:
    
    //user can decide whether to set an hint or not.
    //var hint:
    
    /*init(q:, a:, h:) {
     question = q
     answer = a
     hint = h
     }*/
}




