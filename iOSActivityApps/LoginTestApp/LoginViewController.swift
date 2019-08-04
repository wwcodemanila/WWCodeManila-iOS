//
//  LoginViewController.swift
//  LoginTestApp
//
//  Created by Ma. Ciela Salazar on 8/3/19.
//  Copyright © 2019 Ciela Salazar. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var hidePasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var textFieldView: UIView!
    
    private var isPasswordHidden = true
    private var isVerifiedUser = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.textFieldView.backgroundColor = UIColor.white
        
        isPasswordHidden = true
        isVerifiedUser = false
    }
    
    @IBAction func togglePasswordAppearance(_ sender: Any) {
        isPasswordHidden = !isPasswordHidden
        hidePasswordButton.setImage(isPasswordHidden ? UIImage(imageLiteralResourceName: "eye_hide_password") : UIImage(imageLiteralResourceName: "eye_show_password"), for: .normal)
        passwordTextField.isSecureTextEntry = isPasswordHidden
    }
    
    @IBAction func loginToApp(_ sender: Any) {
        if self.usernameTextField.text == "" || self.passwordTextField.text == "" {
            self.createOkAlert(title: "Error", message: "Please fill all textFields")
            return
        }
        
        if self.usernameTextField.text != MockUser.TEST_DATA.USERNAME || self.passwordTextField.text != MockUser.TEST_DATA.PASSWORD {
            self.createOkAlert(title: "Error", message: "Please enter your username and/or password")
            return
        }
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let logoutVc = storyBoard.instantiateViewController(withIdentifier: "logoutViewController") as! LogoutViewController
        self.navigationController?.pushViewController(logoutVc, animated: true)
    }
    
    private func createOkAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
