//
//  NAddViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/07/19.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class NAddViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    
    var timePic0: UIDatePicker = UIDatePicker()
    var timePic1: UIDatePicker = UIDatePicker()
    var timePic2: UIDatePicker = UIDatePicker()
    var timePic3: UIDatePicker = UIDatePicker()
    var timePic4: UIDatePicker = UIDatePicker()
    var timePic5: UIDatePicker = UIDatePicker()
    var timePic6: UIDatePicker = UIDatePicker()
    var timePic7: UIDatePicker = UIDatePicker()
    var timePic8: UIDatePicker = UIDatePicker()
    var timePic9: UIDatePicker = UIDatePicker()
    
    var cellCount: Int = 2
    
    var datePicker: UIDatePicker = UIDatePicker()
    
    @IBOutlet var table: UITableView!
    
    @IBOutlet var setDy: UITextField!
    @IBOutlet var setNoBe: UITextField!
    
    @IBOutlet var NtableView: UITableView!
    
    @IBOutlet var area0: UITextField!
    @IBOutlet var area1: UITextField!
    @IBOutlet var area2: UITextField!
    @IBOutlet var area3: UITextField!
    @IBOutlet var area4: UITextField!
    @IBOutlet var area5: UITextField!
    @IBOutlet var area6: UITextField!
    @IBOutlet var area7: UITextField!
    @IBOutlet var area8: UITextField!
    @IBOutlet var area9: UITextField!
    
    @IBOutlet var time0: UITextField!
    @IBOutlet var time1: UITextField!
    @IBOutlet var time2: UITextField!
    @IBOutlet var time3: UITextField!
    @IBOutlet var time4: UITextField!
    @IBOutlet var time5: UITextField!
    @IBOutlet var time6: UITextField!
    @IBOutlet var time7: UITextField!
    @IBOutlet var time8: UITextField!
    @IBOutlet var time9: UITextField!
    
    @IBOutlet var BackBut: UIButton!
    @IBOutlet var AddBut: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        table.dataSource = self
               
        table.delegate = self
        
        table.register(UINib(nibName: "NAddTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
    
    @IBAction func selectBack(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectAdd(){
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! NAddTableViewCell
        
        cell.areaN?.delegate = self
        cell.timeN?.delegate = self
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))

        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)

        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))

        toolBar.setItems([spacelItem, doneItem], animated: true)

        datePicker.datePickerMode = UIDatePicker.Mode.time
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        
        cell.timeN.inputAccessoryView = toolBar
        cell.areaN?.delegate = self as? UITextFieldDelegate
        cell.timeN?.inputView = datePicker

        
        return cell
    }
    
    @objc func done(){
        
        let cell = NtableView.dequeueReusableCell(withIdentifier: "cell") as! NAddTableViewCell
        
        
        cell.timeN.endEditing(true)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        cell.timeN.text = "\(formatter.string(from: datePicker.date))"
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        table.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//extension UITraitCollection {
//
//    public static var isDarkMode: Bool {
//
//        if #available(iOS 13, *), current.userInterfaceStyle == .dark {
//            return true
//        }
//        return false
//    }
//
//}

