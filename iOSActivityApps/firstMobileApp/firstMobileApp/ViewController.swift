//
//  ViewController.swift
//  firstMobileApp
//
//  Created by Ma. Ciela Salazar on 6/26/17.
//  Copyright © 2017 Ciela Salazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!
    @IBOutlet weak var outputTxtField: UITextView!
    
    var message = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func printName(_ sender: Any) {
        let firstName = self.firstNameTxt.text ?? ""
        let lastName = self.lastNameTxt.text ?? ""
        
        message = "Hello " + firstName + " " + lastName
        
        self.outputTxtField.text = message
        
    }

}

