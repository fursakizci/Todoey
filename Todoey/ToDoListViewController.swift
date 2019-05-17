//
//  ViewController.swift
//  Todoey
//
//  Created by Furkan sakızcı on 17.05.2019.
//  Copyright © 2019 Furkan sakızcı. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController{

    let itemArray = ["furkan","zeynep","ahmet"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Bu yontem ile yeni hucreler olusturulur.
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel!.text = itemArray[indexPath.row]
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else{
            //tikladigi hucreye checkmark ekler.
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        // secilen hucrenin yanip sonmesini saglar
        tableView.deselectRow(at: indexPath, animated: true)
    }
   
}

