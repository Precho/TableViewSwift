//
//  ViewController.swift
//  TableViewSwift
//
//  Created by Preszko on 10.09.2019.
//  Copyright © 2019 Preszko. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    var itemArray = ["Data1","Data2","Data3","Data4","Data5","Data6","Data7","Data8","Data9","Data10","Data11","Data12"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
       
    }

    @IBAction func addButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Dodaj item", message: "", preferredStyle: .alert)
        var temp = UITextField()
        let action = UIAlertAction(title: "Dodaj", style: .default) { (action) in
            //coo sie stanie po kliknieciu add button w alercie
            print("done")
            print(temp)
            self.itemArray.append(temp.text!)
            self.tableView.reloadData() //Ważne!
            
            
        }
        // dodanie texfield do alertu
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Tutaj wpisz nazwe"
            temp = alertTextField
            
            print("eloelo320")
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    
    

}
}
