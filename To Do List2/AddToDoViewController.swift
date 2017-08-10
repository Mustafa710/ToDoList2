//
//  AddToDoViewController.swift
//  To Do List2
//
//  Created by Mostafa Taha on 8/7/17.
//  Copyright © 2017 Mostafa Taha. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
//        
//        let toDo = ToDo()
//        
//        if let titleText = titleTextField.text {
//        toDo.name = titleText
//        toDo.important = importantSwitch.isOn
//        previousVC.toDos.append(toDo)
//        previousVC.tableView.reloadData()
//        
//        navigationController?.popViewController(animated: true)
//        }
    }
        
    
}
