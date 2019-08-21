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
    private var touchId = TouchIDAuth()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.textFieldView.backgroundColor = UIColor.white
        
        isPasswordHidden = true
        
        let touchBool = touchId.canEvaluatePolicy()
        if touchBool {
            self.createTouchIdAlert()
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func togglePasswordAppearance(_ sender: Any) {
        isPasswordHidden = !isPasswordHidden
        hidePasswordButton.setImage(isPasswordHidden ? UIImage(imageLiteralResourceName: "eye_hide_password") : UIImage(imageLiteralResourceName: "eye_show_password"), for: .normal)
        passwordTextField.isSecureTextEntry = isPasswordHidden
    }
    
    @IBAction func loginToApp(_ sender: Any) {
        
        guard let username = self.usernameTextField.text as? String,
        let password = self.passwordTextField.text as? String
            else {
                self.createOkAlert(title: "Error", message: "Please fill all textFields")
                return

        }
        
        let hasLoginKey = UserDefaults.standard.bool(forKey: "hasLoginKey")
        if !hasLoginKey && usernameTextField.hasText {
            UserDefaults.standard.setValue(usernameTextField.text, forKey: "username")
            do {
                
                // This is a new account, create a new keychain item with the account name.
                let passwordItem = KeychainPasswordItem(service: KeychainConfiguration.serviceName,
                                                        account: username,
                                                        accessGroup: KeychainConfiguration.accessGroup)
                
                // Save the password for the new item.
                try passwordItem.savePassword(password)
                UserDefaults.standard.set(true, forKey: "hasLoginKey")
            } catch {
                fatalError("Error updating keychain - \(error)")
            }
        }
        
        if self.checkLogin(username: username, password: password) {
            self.goToNext()
        } else {
            self.createOkAlert(title: "Error", message: "Please enter your username and/or password")
        }
        
    }
    
    private func useTouchId() {
        touchId.authenticateUser() { [weak self] message in
            if let message = message {
                self?.createOkAlert(title: "Error", message: message)
                return
                
            }
            
            if let storedUsername = UserDefaults.standard.value(forKey: "username") as? String,
                let keychainPassword = self?.setKeychainPassword(user: storedUsername){
                self?.usernameTextField.text = storedUsername
                self?.passwordTextField.text = keychainPassword
                self?.goToNext()
            } else {
                self?.createOkAlert(title: "Error", message: "No stored username!")
            }
            
        }
    }
    
    private func checkLogin(username: String, password: String) -> Bool {
        guard username == UserDefaults.standard.value(forKey: "username") as? String,
            let keychainPassword = setKeychainPassword(user: username)
        else {
            return false
        }
        
        return password == keychainPassword
    }
    
    private func goToNext() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let logoutVc = storyBoard.instantiateViewController(withIdentifier: "logoutViewController") as! LogoutViewController
        self.navigationController?.pushViewController(logoutVc, animated: true)
    }
    
    private func setKeychainPassword(user: String) -> String? {
        do {
            let passwordItem = KeychainPasswordItem(service: KeychainConfiguration.serviceName,
                                                    account: user,
                                                    accessGroup: KeychainConfiguration.accessGroup)
            return try passwordItem.readPassword()
        } catch {
            fatalError("Error reading password from keychain - \(error)")
        }
        return nil
    }
    
    private func createOkAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func createTouchIdAlert() {
        let alert = UIAlertController(title: "", message: "Do yo want to use touch id?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in self.useTouchId()}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
