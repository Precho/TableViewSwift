//
//  ViewController.swift
//  TableViewSwift
//
//  Created by Preszko on 10.09.2019.
//  Copyright © 2019 Preszko. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    let itemArray = ["Data1","Data2","Data3","Data4","Data5","Data6","Data7","Data8","Data9","Data10","Data11","Data12"]
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


}

