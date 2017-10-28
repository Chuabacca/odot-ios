//
//  ViewController.swift
//  odot
//
//  Created by Jonathan Chua on 10/21/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var addTaskTextField: UITextField!
    @IBOutlet weak var todoTableView: UITableView!

    var tasks = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        todoTableView.separatorStyle = .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Configure Table View
    ////////////////////////////

    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoItem", for: indexPath) as! TodoItemTableViewCell
        // not sure why this was required in the example
        //cell.delegate = self
        cell.cardView.layer.cornerRadius = 5.0
        cell.todoItemLabel.text = tasks[indexPath.row]
        cell.todoStatusButton.layer.cornerRadius = 10.0
        cell.todoStatusButton.addTarget(self, action: #selector(self.toggleTodoStatus), for: UIControlEvents.touchUpInside)
        cell.todoStatusButton.tag = indexPath.row
        tableView.separatorStyle = .none
        return cell
    }


    //MARK: Button Action
    /////////////////////


    @IBAction func addTask(_ sender: UIButton) {
        guard addTaskTextField.text != "" else { return }
        tasks.append(addTaskTextField.text!)
        todoTableView.reloadData()
        addTaskTextField.text = ""
        //TODO: Clear the text field after todo item is added
    }

    @IBAction func toggleTodoStatus(_ sender: UIButton) {
        let buttonTag = sender.tag
        
    }

    func displayCells(cell: TodoItemTableViewCell, indexPath: IndexPath) {
        cell.cardView.layer.cornerRadius = 5.0
        cell.todoItemLabel.text = tasks[indexPath.row]
    }

}

