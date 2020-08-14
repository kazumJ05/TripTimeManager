//
//  NAddTableViewCell.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/08/13.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class NAddTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet var areaN : UITextField!
    @IBOutlet var timeN : UITextField!
    
    var datePicker: UIDatePicker = UIDatePicker()
    var view: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
//        
//        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
//        
//        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
//        
//        toolBar.setItems([spacelItem, doneItem], animated: true)
//        
//        timeN.inputAccessoryView = toolBar
//        areaN?.delegate = self as? UITextFieldDelegate
//        datePicker.datePickerMode = UIDatePicker.Mode.time
//        datePicker.timeZone = NSTimeZone.local
//        datePicker.locale = Locale.current
//        timeN?.inputView = timeN
//        
//        datePicker.datePickerMode = UIDatePicker.Mode.date
//        datePicker.timeZone = NSTimeZone.local
//        datePicker.locale = Locale.current
               
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        
    }
    
//    @objc func done(){
//           timeN.endEditing(true)
//           let formatter = DateFormatter()
//           formatter.dateFormat = "HH:mm"
//           timeN.text = "\(formatter.string(from: datePicker.date))"
//       }
    
}
