//
//  ThirdViewController.swift
//  firstMobileApp
//
//  Created by Ma. Ciela Salazar on 8/21/17.
//  Copyright © 2017 Ciela Salazar. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    let sectionList = ["Fruits", "Vegetables"]
    let rowsFruitsList = ["Apple", "Pineapple", "Grapes", "Banana", "Stawberry", "Rambutan", "Lanzones", "Papaya", "Calamansi", "Lemon", "Kamias", "Mango", "Orange", "Blueberry"]
    let rowsVegetablesList = ["Spinach", "Broccoli", "Cabbage", "String Beans", "Squash", "Eggplant", "Cauliflower", "Okra", "Asparagus", "Red Peper", "Chili Pepper", "Onion", "Garlic"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableview.delegate = self
//        tableview.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: UITableView Methods

extension ThirdViewController: UITableViewDelegate, UITableViewDataSource{
    
    //Section creation
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionList[section]
    }
    
    //Rows creation
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0{
            cell.textLabel?.text = rowsFruitsList[indexPath.row]
        }else{
            cell.textLabel?.text = rowsVegetablesList[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return rowsFruitsList.count
        } else{
            return rowsVegetablesList.count
        }
    }

}


