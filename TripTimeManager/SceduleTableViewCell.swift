//
//  SceduleTableViewCell.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/05/07.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class SceduleTableViewCell: UITableViewCell {
    
    @IBOutlet var place : UILabel!
    @IBOutlet var time : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
