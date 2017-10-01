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
    var firstName = String()
    var lastName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func printName(_ sender: Any) {
        
        self.stringSetup()
        message = "Hello " + firstName + " " + lastName
        
        self.outputTextView.text = message
        
    }
    
    @IBAction func toSecondVC(_ sender: UIButton) {
        
        self.stringSetup()
        performSegue(withIdentifier: "segueSecond", sender: nil)
        
        //        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondVC")
//        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecond"{
            let secondVC = segue.destination as? SecondViewController
            secondVC?.getFirstName = firstName
            secondVC?.getLastName = lastName
        }

    }
    
    func stringSetup(){
        firstName = self.firstNameTextField.text ?? ""
        lastName = self.lastNameTextField.text ?? ""
    }

}

