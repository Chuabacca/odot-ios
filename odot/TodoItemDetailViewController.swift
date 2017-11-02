//
//  TodoItemDetailViewController.swift
//  odot
//
//  Created by Jonathan Chua on 11/1/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import UIKit

class TodoItemDetailViewController: UIViewController {

    @IBOutlet weak var todoItemDetailView: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        todoItemDetailView.layer.cornerRadius = 5.0


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func doneWithTodoItemDetail(_ sender: UIButton) {
    }

}
