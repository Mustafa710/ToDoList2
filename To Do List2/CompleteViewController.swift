//
//  CompleteViewController.swift
//  To Do List2
//
//  Created by Mostafa Taha on 8/9/17.
//  Copyright © 2017 Mostafa Taha. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
     var previousVC2 = ToDoTableViewController()
     var selectToDo = ToDo()
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectToDo.name
      
    }

    
    @IBAction func completeTapped(_ sender: Any) {
        
        var index = 0
        for todo in previousVC2.toDos {
            if todo.name == selectToDo.name {
                
                previousVC2.toDos.remove(at: index)
                previousVC2.tableView.reloadData()
                break
            }
            index += 1
        }
    }
    
}
