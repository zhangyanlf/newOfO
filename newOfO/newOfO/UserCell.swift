//
//  UserCell.swift
//  newOfO
//
//  Created by 张彦林 on 2018/8/17.
//  Copyright © 2018年 zhangyanlf. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    @IBOutlet weak var menuImageView: UIImageView!
    
    @IBOutlet weak var neunLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
