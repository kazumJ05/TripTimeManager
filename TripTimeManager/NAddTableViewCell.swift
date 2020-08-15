//
//  NAddTableViewCell.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/08/13.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class NAddTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet var areaN : UILabel!
    @IBOutlet var timeN : UILabel!
    @IBOutlet var dayN: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
