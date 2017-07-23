//
//  ViewController.swift
//  firstMobileApp
//
//  Created by Ma. Ciela Salazar on 6/26/17.
//  Copyright © 2017 Ciela Salazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    
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
        let firstName = self.firstNameTextField.text ?? ""
        let lastName = self.lastNameTextField.text ?? ""
        
        message = "Hello " + firstName + " " + lastName
        
        self.outputTextView.text = message
        
    }

}

