//
//  ToDoTableViewController.swift
//  To Do List2
//
//  Created by Mostafa Taha on 8/6/17.
//  Copyright © 2017 Mostafa Taha. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos: [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = creatToDos()
    }
    
    func creatToDos()->[ToDo]{
        
        let eggs = ToDo()
        eggs.name = "Buy eggs"
        eggs.important = true
        
        let dog = ToDo()
        dog.name = "Walk dog"
        
        let cheese = ToDo()
        cheese.name = "Eat cheese"
        
        
        return [eggs, dog, cheese]
    }
    
    

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
        cell.textLabel?.text = "\(toDo.name) !"
        } else {
             cell.textLabel?.text = toDo.name
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDo = toDos[indexPath.row]
        
        performSegue(withIdentifier: "moveTocomplete", sender: toDo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddToDoViewController {
         addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as? CompleteViewController {
            if let toDo = sender as? ToDo {
            completeVC.selectToDo = toDo
            completeVC.previousVC2 = self
                
            }
        }
    }
    

}
