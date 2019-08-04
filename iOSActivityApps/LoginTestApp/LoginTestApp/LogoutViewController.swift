//
//  LogoutViewController.swift
//  LoginTestApp
//
//  Created by Ma. Ciela Salazar on 7/28/19.
//  Copyright © 2019 Ciela Salazar. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
    }

    @IBAction func logutApp(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}

