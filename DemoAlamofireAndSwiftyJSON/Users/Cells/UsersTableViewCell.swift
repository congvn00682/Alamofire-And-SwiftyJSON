//
//  UsersTableViewCell.swift
//  DemoAlamofireAndSwiftyJSON
//
//  Created by nws on 7/31/18.
//  Copyright © 2018 nws. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
