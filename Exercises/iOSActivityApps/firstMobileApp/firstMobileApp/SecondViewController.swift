//
//  SecondViewController.swift
//  firstMobileApp
//
//  Created by Ma. Ciela Salazar on 8/21/17.
//  Copyright © 2017 Ciela Salazar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondVCLabel: UILabel!
    
    var getFirstName = String()
    var getLastName = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        secondVCLabel.text = "Hi I'm " + getFirstName + " " + getLastName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toThirdVC(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "thirdVC")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
