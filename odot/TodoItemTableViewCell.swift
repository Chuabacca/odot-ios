//
//  TodoItemTableViewCell.swift
//  odot
//
//  Created by Jonathan Chua on 10/21/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {

    @IBOutlet weak var todoItemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
