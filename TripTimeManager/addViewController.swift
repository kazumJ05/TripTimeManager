//
//  addViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/01/11.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit
import UserNotifications

class addViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var information: [Dictionary<String,String>] = []
    var datePicker: UIDatePicker = UIDatePicker()
    var date1Picker: UIDatePicker = UIDatePicker()
    var date2Picker: UIDatePicker = UIDatePicker()
    var date3Picker: UIDatePicker = UIDatePicker()
    var date4Picker: UIDatePicker = UIDatePicker()
    var date5Picker: UIDatePicker = UIDatePicker()
    var date6Picker: UIDatePicker = UIDatePicker()
    var date7Picker: UIDatePicker = UIDatePicker()
    var date8Picker: UIDatePicker = UIDatePicker()
    var date9Picker: UIDatePicker = UIDatePicker()
    var date10Picker: UIDatePicker = UIDatePicker()
    var dataPicker: UIPickerView = UIPickerView()
    var cheakInputData :Int = 0
    var setNotifiIde: Int = 0
    
    
    let saveData = UserDefaults.standard
    let setSaveData = UserDefaults.standard
    let list = ["出発時刻の3分前", "出発時刻の5分前", "出発時刻の10分前"]
    let content = UNMutableNotificationContent()
    let center = UNUserNotificationCenter.current()
    
    @IBOutlet var dateTextField1: UITextField!
    @IBOutlet var dateTextField2: UITextField!
    @IBOutlet var dateTextField3: UITextField!
    @IBOutlet var dateTextField4: UITextField!
    @IBOutlet var dateTextField5: UITextField!
    @IBOutlet var dateTextField6: UITextField!
    @IBOutlet var dateTextField7: UITextField!
    @IBOutlet var dateTextField8: UITextField!
    @IBOutlet var dateTextField9: UITextField!
    @IBOutlet var dateTextField10: UITextField!
    
    @IBOutlet var mokutekiField1: UITextField!
    @IBOutlet var mokutekiField2: UITextField!
    @IBOutlet var mokutekiField3: UITextField!
    @IBOutlet var mokutekiField4: UITextField!
    @IBOutlet var mokutekiField5: UITextField!
    @IBOutlet var mokutekiField6: UITextField!
    @IBOutlet var mokutekiField7: UITextField!
    @IBOutlet var mokutekiField8: UITextField!
    @IBOutlet var mokutekiField9: UITextField!
    @IBOutlet var mokutekiField10: UITextField!
    
    @IBOutlet var alertBeforeTextField: UITextField!
    
    @IBOutlet var dayTextField: UITextField!
    
    @IBOutlet var addButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if setSaveData.object(forKey: "ID") != nil{
            setNotifiIde = setSaveData.object(forKey: "ID") as! Int
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar1 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar2 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar3 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar4 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar5 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar6 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar7 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar8 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar9 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let toolBar10 = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let extoolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        
        let doneItem1 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done1))
        let doneItem2 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done2))
        let doneItem3 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done3))
        let doneItem4 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done4))
        let doneItem5 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done5))
        let doneItem6 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done6))
        let doneItem7 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done7))
        let doneItem8 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done8))
        let doneItem9 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done9))
        let doneItem10 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done10))
        let exdoneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(exdone))
        
        toolBar.setItems([spacelItem, doneItem], animated: true)
        
        toolBar1.setItems([spacelItem, doneItem1], animated: true)
        toolBar2.setItems([spacelItem, doneItem2], animated: true)
        toolBar3.setItems([spacelItem, doneItem3], animated: true)
        toolBar4.setItems([spacelItem, doneItem4], animated: true)
        toolBar5.setItems([spacelItem, doneItem5], animated: true)
        toolBar6.setItems([spacelItem, doneItem6], animated: true)
        toolBar7.setItems([spacelItem, doneItem7], animated: true)
        toolBar8.setItems([spacelItem, doneItem8], animated: true)
        toolBar9.setItems([spacelItem, doneItem9], animated: true)
        toolBar10.setItems([spacelItem, doneItem10], animated: true)
        extoolBar.setItems([spacelItem, exdoneItem], animated: true)
        
        alertBeforeTextField.inputAccessoryView = toolBar
        
        
        dateTextField1.inputAccessoryView = toolBar1
        dateTextField2.inputAccessoryView = toolBar2
        dateTextField3.inputAccessoryView = toolBar3
        dateTextField4.inputAccessoryView = toolBar4
        dateTextField5.inputAccessoryView = toolBar5
        dateTextField6.inputAccessoryView = toolBar6
        dateTextField7.inputAccessoryView = toolBar7
        dateTextField8.inputAccessoryView = toolBar8
        dateTextField9.inputAccessoryView = toolBar9
        dateTextField10.inputAccessoryView = toolBar10
        dayTextField.inputAccessoryView = extoolBar
        
        mokutekiField1.delegate = self as? UITextFieldDelegate
        mokutekiField2.delegate = self as? UITextFieldDelegate
        mokutekiField3.delegate = self as? UITextFieldDelegate
        mokutekiField4.delegate = self as? UITextFieldDelegate
        mokutekiField5.delegate = self as? UITextFieldDelegate
        mokutekiField6.delegate = self as? UITextFieldDelegate
        mokutekiField7.delegate = self as? UITextFieldDelegate
        mokutekiField8.delegate = self as? UITextFieldDelegate
        mokutekiField9.delegate = self as? UITextFieldDelegate
        mokutekiField10.delegate = self as? UITextFieldDelegate
        
        
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        
        dataPicker.delegate = self
        dataPicker.dataSource = self
        
        date1Picker.datePickerMode = UIDatePicker.Mode.time
        date1Picker.timeZone = NSTimeZone.local
        date1Picker.locale = Locale.current
        
        date2Picker.datePickerMode = UIDatePicker.Mode.time
        date2Picker.timeZone = NSTimeZone.local
        date2Picker.locale = Locale.current
        
        date3Picker.datePickerMode = UIDatePicker.Mode.time
        date3Picker.timeZone = NSTimeZone.local
        date3Picker.locale = Locale.current
        
        date4Picker.datePickerMode = UIDatePicker.Mode.time
        date4Picker.timeZone = NSTimeZone.local
        date4Picker.locale = Locale.current
        
        date5Picker.datePickerMode = UIDatePicker.Mode.time
        date5Picker.timeZone = NSTimeZone.local
        date5Picker.locale = Locale.current
        
        date6Picker.datePickerMode = UIDatePicker.Mode.time
        date6Picker.timeZone = NSTimeZone.local
        date6Picker.locale = Locale.current
        
        date7Picker.datePickerMode = UIDatePicker.Mode.time
        date7Picker.timeZone = NSTimeZone.local
        date7Picker.locale = Locale.current
        
        date8Picker.datePickerMode = UIDatePicker.Mode.time
        date8Picker.timeZone = NSTimeZone.local
        date8Picker.locale = Locale.current
        
        date9Picker.datePickerMode = UIDatePicker.Mode.time
        date9Picker.timeZone = NSTimeZone.local
        date9Picker.locale = Locale.current
        
        date10Picker.datePickerMode = UIDatePicker.Mode.time
        date10Picker.timeZone = NSTimeZone.local
        date10Picker.locale = Locale.current
        
        dateTextField1.inputView = date1Picker
        dateTextField2.inputView = date2Picker
        dateTextField3.inputView = date3Picker
        dateTextField4.inputView = date4Picker
        dateTextField5.inputView = date5Picker
        dateTextField6.inputView = date6Picker
        dateTextField7.inputView = date7Picker
        dateTextField8.inputView = date8Picker
        dateTextField9.inputView = date9Picker
        dateTextField10.inputView = date10Picker
        dayTextField.inputView = datePicker
        alertBeforeTextField.inputView = dataPicker
        
        
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        addButton.layer.cornerRadius = 9
    
    }
    
    @IBAction func selectsave(){
        
        if dayTextField.text == ""{
            let alert = UIAlertController(title: "エラー", message: "行動日を入力してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        if alertBeforeTextField.text == "選択してください"{
            let alert = UIAlertController(title: "エラー", message: "通知時刻を設定してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else if mokutekiField1.text == "" && dateTextField1.text == "" && mokutekiField2.text == "" && dateTextField2.text == "" && mokutekiField3.text == "" && dateTextField3.text == "" && mokutekiField4.text == "" && dateTextField4.text == "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == nil && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 1
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text == "" && dateTextField2.text == "" && mokutekiField3.text == "" && dateTextField3.text == "" && mokutekiField4.text == "" && dateTextField4.text == "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 2
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text == "" && dateTextField3.text == "" && mokutekiField4.text == "" && dateTextField4.text == "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 3
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2 != nil && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text == "" && dateTextField4.text == "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 4
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 5
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 6
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 7
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 8
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text != "" && dateTextField8.text != "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 9
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text != "" && dateTextField8.text != "" && mokutekiField9.text != "" && dateTextField9.text != "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 10
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text != "" && dateTextField8.text != "" && mokutekiField9.text != "" && dateTextField9.text != "" && mokutekiField10.text != "" && dateTextField10.text != ""{
            cheakInputData = 11
        }else{
            cheakInputData = 12
        }
        
        switch cheakInputData {
            
        case 0:
            let alert = UIAlertController(title: "エラー", message: "行動予定を正しく入力してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        case 1:
            
            let alert = UIAlertController(title: "エラー", message: "行動予定を入力してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        case 2:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            
                if #available(iOS 10.0, *){
                    let center = UNUserNotificationCenter.current()
                    center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                        if error != nil{
                            return
                        }
                        
                        if granted{
                            DispatchQueue.main.async {
                               let dayPi = self.datePicker.date
                                let datePi = self.date1Picker.date
                                let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                               let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                var pickhour = compornents.hour!
                                var pickminute = compornents.minute!
                               let pickmonth = compo.month!
                               let pickday = compo.day!
                                let center = UNUserNotificationCenter.current()
                                
                                if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                    if pickminute < 3{
                                        pickhour = pickhour - 1
                                        pickminute = pickminute - 3
                                        pickminute = 60 + pickminute
                                    }else{
                                        pickminute = pickminute - 3
                                    }
                                }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                    if pickminute < 5{
                                        pickhour = pickhour - 1
                                        pickminute = pickminute - 5
                                        pickminute = 60 + pickminute
                                    }else{
                                        pickminute = pickminute - 5
                                    }
                                }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                    if pickminute < 10{
                                        pickhour = pickhour - 1
                                        pickminute = pickminute - 10
                                        pickminute = 60 + pickminute
                                    }else{
                                        pickminute = pickminute - 10
                                    }
                                }
                                
                                center.delegate = self as? UNUserNotificationCenterDelegate
                               self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                                self.content.sound = UNNotificationSound.default
                                
                                var notificationTime = DateComponents()
                                var trigger: UNNotificationTrigger
                                
                               notificationTime.month = pickmonth
                               notificationTime.day = pickday
                                notificationTime.hour = pickhour
                                notificationTime.minute = pickminute
                                trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                
                                let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                               
                                UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                self.setNotifiIde = self.setNotifiIde + 1
                                self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                            }
                        }else{
                            //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                            //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                            //                                    self.present(aleat, animated: true, completion: nil)
                        }
                    })
                }else{
                    let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                    UIApplication.shared.registerUserNotificationSettings(settings)
                }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 3:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date1Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                                       let center = UNUserNotificationCenter.current()
                                       center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                           if error != nil{
                                               return
                                           }
                                           
                                           if granted{
                                               DispatchQueue.main.async {
                                                  let dayPi = self.datePicker.date
                                                   let datePi = self.date2Picker.date
                                                   let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                                  let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                                   var pickhour = compornents.hour!
                                                   var pickminute = compornents.minute!
                                                  let pickmonth = compo.month!
                                                  let pickday = compo.day!
                                                   let center = UNUserNotificationCenter.current()
                                                
                                                if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                    if pickminute < 3{
                                                        pickhour = pickhour - 1
                                                        pickminute = pickminute - 3
                                                        pickminute = 60 + pickminute
                                                    }else{
                                                        pickminute = pickminute - 3
                                                    }
                                                }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                    if pickminute < 5{
                                                        pickhour = pickhour - 1
                                                        pickminute = pickminute - 5
                                                        pickminute = 60 + pickminute
                                                    }else{
                                                        pickminute = pickminute - 5
                                                    }
                                                }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                    if pickminute < 10{
                                                        pickhour = pickhour - 1
                                                        pickminute = pickminute - 10
                                                        pickminute = 60 + pickminute
                                                    }else{
                                                        pickminute = pickminute - 10
                                                    }
                                                }
                                                
                                                   center.delegate = self as? UNUserNotificationCenterDelegate
                                                  self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                                                   self.content.sound = UNNotificationSound.default
                                                   
                                                   var notificationTime = DateComponents()
                                                   var trigger: UNNotificationTrigger
                                                   
                                                  notificationTime.month = pickmonth
                                                  notificationTime.day = pickday
                                                   notificationTime.hour = pickhour
                                                   notificationTime.minute = pickminute
                                                   trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                                   
                                                   let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                                  
                                                   UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                                self.setNotifiIde = self.setNotifiIde + 1
                                                self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                               }
                                           }else{
                                               
                                           }
                                       })
                                   }else{
                                       let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                                       UIApplication.shared.registerUserNotificationSettings(settings)
                                   }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 4:
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date1Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            center.delegate = self as? UNUserNotificationCenterDelegate
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                           self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
        
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date2Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date3Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            center.delegate = self as? UNUserNotificationCenterDelegate
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                           self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 5:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "mokutekiti4": mokutekiField4.text!, "time4": dateTextField4.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
    
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date1Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            center.delegate = self as? UNUserNotificationCenterDelegate
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                           self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date2Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            center.delegate = self as? UNUserNotificationCenterDelegate
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                           self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date3Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date4Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField4.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 6:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "mokutekiti4": mokutekiField4.text!, "time4": dateTextField4.text!, "mokutekiti5": mokutekiField5.text!, "time5": dateTextField5.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date1Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date2Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date3Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date4Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField4.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date5Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField5.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 7:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "mokutekiti4": mokutekiField4.text!, "time4": dateTextField4.text!, "mokutekiti5": mokutekiField5.text!, "time5": dateTextField5.text!, "mokutekiti6": mokutekiField6.text!, "time6": dateTextField6.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date1Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date2Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date3Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date4Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField4.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date5Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField5.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date6Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                            var pickminute = compornents.minute!
                           let pickmonth = compo.month!
                           let pickday = compo.day!
                            let center = UNUserNotificationCenter.current()
                            
                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                if pickminute < 3{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 3
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 3
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                if pickminute < 5{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 5
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 5
                                }
                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                if pickminute < 10{
                                    pickhour = pickhour - 1
                                    pickminute = pickminute - 10
                                    pickminute = 60 + pickminute
                                }else{
                                    pickminute = pickminute - 10
                                }
                            }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField6.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 8:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "mokutekiti4": mokutekiField4.text!, "time4": dateTextField4.text!, "mokutekiti5": mokutekiField5.text!, "time5": dateTextField5.text!, "mokutekiti6": mokutekiField6.text!, "time6": dateTextField6.text!, "mokutekiti7": mokutekiField7.text!, "time7": dateTextField7.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date1Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date2Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                           var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date3Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date4Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField4.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date5Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField5.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date6Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField6.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date7Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField7.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 9:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "mokutekiti4": mokutekiField4.text!, "time4": dateTextField4.text!, "mokutekiti5": mokutekiField5.text!, "time5": dateTextField5.text!, "mokutekiti6": mokutekiField6.text!, "time6": dateTextField6.text!, "mokutekiti7": mokutekiField7.text!, "time7": dateTextField7.text!, "mokutekiti8": mokutekiField8.text!, "time8": dateTextField8.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date1Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date2Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date3Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date4Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                      var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField4.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date5Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField5.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date6Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                    
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField6.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date7Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField7.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date8Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField8.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 10:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "mokutekiti4": mokutekiField4.text!, "time4": dateTextField4.text!, "mokutekiti5": mokutekiField5.text!, "time5": dateTextField5.text!, "mokutekiti6": mokutekiField6.text!, "time6": dateTextField6.text!, "mokutekiti7": mokutekiField7.text!, "time7": dateTextField7.text!, "mokutekiti8": mokutekiField8.text!, "time8": dateTextField8.text!, "mokutekiti9": mokutekiField9.text!, "time9": dateTextField9.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date1Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date2Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date3Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date4Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField4.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date5Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField5.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date6Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField6.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
                       
                       if #available(iOS 10.0, *){
                           let center = UNUserNotificationCenter.current()
                           center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                               if error != nil{
                                   return
                               }
                               
                               if granted{
                                   DispatchQueue.main.async {
                                      let dayPi = self.datePicker.date
                                       let datePi = self.date7Picker.date
                                       let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                      let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                       var pickhour = compornents.hour!
                                        var pickminute = compornents.minute!
                                       let pickmonth = compo.month!
                                       let pickday = compo.day!
                                        let center = UNUserNotificationCenter.current()
                                        
                                        if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                            if pickminute < 3{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 3
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 3
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                            if pickminute < 5{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 5
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 5
                                            }
                                        }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                            if pickminute < 10{
                                                pickhour = pickhour - 1
                                                pickminute = pickminute - 10
                                                pickminute = 60 + pickminute
                                            }else{
                                                pickminute = pickminute - 10
                                            }
                                        }
                                       center.delegate = self as? UNUserNotificationCenterDelegate
                                      self.content.title = "\(self.dateTextField7.text!)の出発時間だよ！"
                                       self.content.sound = UNNotificationSound.default
                                       
                                       var notificationTime = DateComponents()
                                       var trigger: UNNotificationTrigger
                                       
                                      notificationTime.month = pickmonth
                                      notificationTime.day = pickday
                                       notificationTime.hour = pickhour
                                       notificationTime.minute = pickminute
                                       trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                       
                                       let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                      
                                       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                    self.setNotifiIde = self.setNotifiIde + 1
                                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                   }
                               }else{
                                   //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                   //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   //                                    self.present(aleat, animated: true, completion: nil)
                               }
                           })
                       }else{
                           let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                           UIApplication.shared.registerUserNotificationSettings(settings)
                       }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                    
                    if granted{
                        DispatchQueue.main.async {
                           let dayPi = self.datePicker.date
                            let datePi = self.date8Picker.date
                            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                           let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                            var pickhour = compornents.hour!
                             var pickminute = compornents.minute!
                            let pickmonth = compo.month!
                            let pickday = compo.day!
                             let center = UNUserNotificationCenter.current()
                             
                             if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                 if pickminute < 3{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 3
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 3
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                 if pickminute < 5{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 5
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 5
                                 }
                             }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                 if pickminute < 10{
                                     pickhour = pickhour - 1
                                     pickminute = pickminute - 10
                                     pickminute = 60 + pickminute
                                 }else{
                                     pickminute = pickminute - 10
                                 }
                             }
                            center.delegate = self as? UNUserNotificationCenterDelegate
                           self.content.title = "\(self.dateTextField8.text!)の出発時間だよ！"
                            self.content.sound = UNNotificationSound.default
                            
                            var notificationTime = DateComponents()
                            var trigger: UNNotificationTrigger
                            
                           notificationTime.month = pickmonth
                           notificationTime.day = pickday
                            notificationTime.hour = pickhour
                            notificationTime.minute = pickminute
                            trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                            
                            let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                           
                            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                            self.setNotifiIde = self.setNotifiIde + 1
                            self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                        }
                    }else{
                        //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                        //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                        //                                    self.present(aleat, animated: true, completion: nil)
                    }
                })
            }else{
                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                UIApplication.shared.registerUserNotificationSettings(settings)
            }
            
            if #available(iOS 10.0, *){
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                if error != nil{
                    return
                }
                                          
            if granted{
            DispatchQueue.main.async {
             let dayPi = self.datePicker.date
             let datePi = self.date9Picker.date
             let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
             let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
             var pickhour = compornents.hour!
             var pickminute = compornents.minute!
             let pickmonth = compo.month!
             let pickday = compo.day!
              let center = UNUserNotificationCenter.current()
              
              if self.alertBeforeTextField.text == "出発時刻の3分前"{
                  if pickminute < 3{
                      pickhour = pickhour - 1
                      pickminute = pickminute - 3
                      pickminute = 60 + pickminute
                  }else{
                      pickminute = pickminute - 3
                  }
              }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                  if pickminute < 5{
                      pickhour = pickhour - 1
                      pickminute = pickminute - 5
                      pickminute = 60 + pickminute
                  }else{
                      pickminute = pickminute - 5
                  }
              }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                  if pickminute < 10{
                      pickhour = pickhour - 1
                      pickminute = pickminute - 10
                      pickminute = 60 + pickminute
                  }else{
                      pickminute = pickminute - 10
                  }
              }
             center.delegate = self as? UNUserNotificationCenterDelegate
             self.content.title = "\(self.dateTextField9.text!)の出発時間だよ！"
             self.content.sound = UNNotificationSound.default
                                                  
             var notificationTime = DateComponents()
             var trigger: UNNotificationTrigger
                                                  
             notificationTime.month = pickmonth
             notificationTime.day = pickday
             notificationTime.hour = pickhour
             notificationTime.minute = pickminute
             trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                                  
             let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                                 
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                self.setNotifiIde = self.setNotifiIde + 1
                self.setSaveData.set(self.setNotifiIde, forKey: "ID")
        }
         }else{
                                              //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                              //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                              //                                    self.present(aleat, animated: true, completion: nil)
                                          }
                                      })
                                  }else{
                                      let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                                      UIApplication.shared.registerUserNotificationSettings(settings)
                                  }
            
            let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            
        case 11:
            
            let input = ["mokutekiti1": mokutekiField1.text!, "time1": dateTextField1.text!, "mokutekiti2": mokutekiField2.text!, "time2": dateTextField2.text!, "mokutekiti3": mokutekiField3.text!, "time3": dateTextField3.text!, "mokutekiti4": mokutekiField4.text!, "time4": dateTextField4.text!, "mokutekiti5": mokutekiField5.text!, "time5": dateTextField5.text!, "mokutekiti6": mokutekiField6.text!, "time6": dateTextField6.text!, "mokutekiti7": mokutekiField7.text!, "time7": dateTextField7.text!, "mokutekiti8": mokutekiField8.text!, "time8": dateTextField8.text!, "mokutekiti9": mokutekiField9.text!, "time9": dateTextField9.text!, "mokutekiti10": mokutekiField10.text!, "time10": dateTextField10.text!, "date": dayTextField.text!]
            information.append(input)
            saveData.set(information, forKey: "settimedata")
            
            if #available(iOS 10.0, *){
                               let center = UNUserNotificationCenter.current()
                               center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                   if error != nil{
                                       return
                                   }
                                   
                                   if granted{
                                       DispatchQueue.main.async {
                                          let dayPi = self.datePicker.date
                                           let datePi = self.date1Picker.date
                                           let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                          let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                           var pickhour = compornents.hour!
                                            var pickminute = compornents.minute!
                                           let pickmonth = compo.month!
                                           let pickday = compo.day!
                                            let center = UNUserNotificationCenter.current()
                                            
                                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                if pickminute < 3{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 3
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 3
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                if pickminute < 5{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 5
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 5
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                if pickminute < 10{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 10
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 10
                                                }
                                            }
                                           center.delegate = self as? UNUserNotificationCenterDelegate
                                          self.content.title = "\(self.dateTextField1.text!)の出発時間だよ！"
                                           self.content.sound = UNNotificationSound.default
                                           
                                           var notificationTime = DateComponents()
                                           var trigger: UNNotificationTrigger
                                           
                                          notificationTime.month = pickmonth
                                          notificationTime.day = pickday
                                           notificationTime.hour = pickhour
                                           notificationTime.minute = pickminute
                                           trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                           
                                           let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                          
                                           UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                        self.setNotifiIde = self.setNotifiIde + 1
                                        self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                       }
                                   }else{
                                       //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                       //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                       //                                    self.present(aleat, animated: true, completion: nil)
                                   }
                               })
                           }else{
                               let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                               UIApplication.shared.registerUserNotificationSettings(settings)
                           }
                           
                           if #available(iOS 10.0, *){
                               let center = UNUserNotificationCenter.current()
                               center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                   if error != nil{
                                       return
                                   }
                                   
                                   if granted{
                                       DispatchQueue.main.async {
                                          let dayPi = self.datePicker.date
                                           let datePi = self.date2Picker.date
                                           let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                          let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                           var pickhour = compornents.hour!
                                            var pickminute = compornents.minute!
                                           let pickmonth = compo.month!
                                           let pickday = compo.day!
                                            let center = UNUserNotificationCenter.current()
                                            
                                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                if pickminute < 3{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 3
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 3
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                if pickminute < 5{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 5
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 5
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                if pickminute < 10{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 10
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 10
                                                }
                                            }
                                           center.delegate = self as? UNUserNotificationCenterDelegate
                                          self.content.title = "\(self.dateTextField2.text!)の出発時間だよ！"
                                           self.content.sound = UNNotificationSound.default
                                           
                                           var notificationTime = DateComponents()
                                           var trigger: UNNotificationTrigger
                                           
                                          notificationTime.month = pickmonth
                                          notificationTime.day = pickday
                                           notificationTime.hour = pickhour
                                           notificationTime.minute = pickminute
                                           trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                           
                                           let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                          
                                           UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                       }
                                   }else{
                                       //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                       //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                       //                                    self.present(aleat, animated: true, completion: nil)
                                   }
                               })
                           }else{
                               let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                               UIApplication.shared.registerUserNotificationSettings(settings)
                           }
                           
                           if #available(iOS 10.0, *){
                               let center = UNUserNotificationCenter.current()
                               center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                   if error != nil{
                                       return
                                   }
                                   
                                   if granted{
                                       DispatchQueue.main.async {
                                          let dayPi = self.datePicker.date
                                           let datePi = self.date3Picker.date
                                           let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                          let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                           var pickhour = compornents.hour!
                                            var pickminute = compornents.minute!
                                           let pickmonth = compo.month!
                                           let pickday = compo.day!
                                            let center = UNUserNotificationCenter.current()
                                            
                                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                if pickminute < 3{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 3
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 3
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                if pickminute < 5{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 5
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 5
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                if pickminute < 10{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 10
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 10
                                                }
                                            }
                                           center.delegate = self as? UNUserNotificationCenterDelegate
                                          self.content.title = "\(self.dateTextField3.text!)の出発時間だよ！"
                                           self.content.sound = UNNotificationSound.default
                                           
                                           var notificationTime = DateComponents()
                                           var trigger: UNNotificationTrigger
                                           
                                          notificationTime.month = pickmonth
                                          notificationTime.day = pickday
                                           notificationTime.hour = pickhour
                                           notificationTime.minute = pickminute
                                           trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                           
                                           let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                          
                                           UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                        self.setNotifiIde = self.setNotifiIde + 1
                                        self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                       }
                                   }else{
                                       //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                       //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                       //                                    self.present(aleat, animated: true, completion: nil)
                                   }
                               })
                           }else{
                               let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                               UIApplication.shared.registerUserNotificationSettings(settings)
                           }
                           
                           if #available(iOS 10.0, *){
                               let center = UNUserNotificationCenter.current()
                               center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                   if error != nil{
                                       return
                                   }
                                   
                                   if granted{
                                       DispatchQueue.main.async {
                                          let dayPi = self.datePicker.date
                                           let datePi = self.date4Picker.date
                                           let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                          let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                           var pickhour = compornents.hour!
                                            var pickminute = compornents.minute!
                                           let pickmonth = compo.month!
                                           let pickday = compo.day!
                                            let center = UNUserNotificationCenter.current()
                                            
                                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                if pickminute < 3{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 3
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 3
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                if pickminute < 5{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 5
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 5
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                if pickminute < 10{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 10
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 10
                                                }
                                            }
                                           center.delegate = self as? UNUserNotificationCenterDelegate
                                          self.content.title = "\(self.dateTextField4.text!)の出発時間だよ！"
                                           self.content.sound = UNNotificationSound.default
                                           
                                           var notificationTime = DateComponents()
                                           var trigger: UNNotificationTrigger
                                           
                                          notificationTime.month = pickmonth
                                          notificationTime.day = pickday
                                           notificationTime.hour = pickhour
                                           notificationTime.minute = pickminute
                                           trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                           
                                           let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                          
                                           UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                       }
                                   }else{
                                       //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                       //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                       //                                    self.present(aleat, animated: true, completion: nil)
                                   }
                               })
                           }else{
                               let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                               UIApplication.shared.registerUserNotificationSettings(settings)
                           }
                           
                           if #available(iOS 10.0, *){
                               let center = UNUserNotificationCenter.current()
                               center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                   if error != nil{
                                       return
                                   }
                                   
                                   if granted{
                                       DispatchQueue.main.async {
                                          let dayPi = self.datePicker.date
                                           let datePi = self.date5Picker.date
                                           let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                          let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                           var pickhour = compornents.hour!
                                            var pickminute = compornents.minute!
                                           let pickmonth = compo.month!
                                           let pickday = compo.day!
                                            let center = UNUserNotificationCenter.current()
                                            
                                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                if pickminute < 3{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 3
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 3
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                if pickminute < 5{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 5
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 5
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                if pickminute < 10{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 10
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 10
                                                }
                                            }
                                           center.delegate = self as? UNUserNotificationCenterDelegate
                                          self.content.title = "\(self.dateTextField5.text!)の出発時間だよ！"
                                           self.content.sound = UNNotificationSound.default
                                           
                                           var notificationTime = DateComponents()
                                           var trigger: UNNotificationTrigger
                                           
                                          notificationTime.month = pickmonth
                                          notificationTime.day = pickday
                                           notificationTime.hour = pickhour
                                           notificationTime.minute = pickminute
                                           trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                           
                                           let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                          
                                           UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                        self.setNotifiIde = self.setNotifiIde + 1
                                        self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                       }
                                   }else{
                                       //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                       //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                       //                                    self.present(aleat, animated: true, completion: nil)
                                   }
                               })
                           }else{
                               let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                               UIApplication.shared.registerUserNotificationSettings(settings)
                           }
                           
                           if #available(iOS 10.0, *){
                               let center = UNUserNotificationCenter.current()
                               center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                   if error != nil{
                                       return
                                   }
                                   
                                   if granted{
                                       DispatchQueue.main.async {
                                          let dayPi = self.datePicker.date
                                           let datePi = self.date6Picker.date
                                           let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                          let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                           var pickhour = compornents.hour!
                                            var pickminute = compornents.minute!
                                           let pickmonth = compo.month!
                                           let pickday = compo.day!
                                            let center = UNUserNotificationCenter.current()
                                            
                                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                if pickminute < 3{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 3
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 3
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                if pickminute < 5{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 5
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 5
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                if pickminute < 10{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 10
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 10
                                                }
                                            }
                                           center.delegate = self as? UNUserNotificationCenterDelegate
                                          self.content.title = "\(self.dateTextField6.text!)の出発時間だよ！"
                                           self.content.sound = UNNotificationSound.default
                                           
                                           var notificationTime = DateComponents()
                                           var trigger: UNNotificationTrigger
                                           
                                          notificationTime.month = pickmonth
                                          notificationTime.day = pickday
                                           notificationTime.hour = pickhour
                                           notificationTime.minute = pickminute
                                           trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                           
                                           let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                          
                                           UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                        self.setNotifiIde = self.setNotifiIde + 1
                                        self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                       }
                                   }else{
                                       //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                       //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                       //                                    self.present(aleat, animated: true, completion: nil)
                                   }
                               })
                           }else{
                               let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                               UIApplication.shared.registerUserNotificationSettings(settings)
                           }
                           
                           if #available(iOS 10.0, *){
                               let center = UNUserNotificationCenter.current()
                               center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                                   if error != nil{
                                       return
                                   }
                                   
                                   if granted{
                                       DispatchQueue.main.async {
                                          let dayPi = self.datePicker.date
                                           let datePi = self.date7Picker.date
                                           let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                                          let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                           var pickhour = compornents.hour!
                                            var pickminute = compornents.minute!
                                           let pickmonth = compo.month!
                                           let pickday = compo.day!
                                            let center = UNUserNotificationCenter.current()
                                            
                                            if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                                if pickminute < 3{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 3
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 3
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                                if pickminute < 5{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 5
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 5
                                                }
                                            }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                                if pickminute < 10{
                                                    pickhour = pickhour - 1
                                                    pickminute = pickminute - 10
                                                    pickminute = 60 + pickminute
                                                }else{
                                                    pickminute = pickminute - 10
                                                }
                                            }
                                           center.delegate = self as? UNUserNotificationCenterDelegate
                                          self.content.title = "\(self.dateTextField7.text!)の出発時間だよ！"
                                           self.content.sound = UNNotificationSound.default
                                           
                                           var notificationTime = DateComponents()
                                           var trigger: UNNotificationTrigger
                                           
                                          notificationTime.month = pickmonth
                                          notificationTime.day = pickday
                                           notificationTime.hour = pickhour
                                           notificationTime.minute = pickminute
                                           trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                           
                                           let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                          
                                           UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                        self.setNotifiIde = self.setNotifiIde + 1
                                        self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                                       }
                                   }else{
                                       //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                       //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                       //                                    self.present(aleat, animated: true, completion: nil)
                                   }
                               })
                           }else{
                               let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                               UIApplication.shared.registerUserNotificationSettings(settings)
                           }
                
                if #available(iOS 10.0, *){
                    let center = UNUserNotificationCenter.current()
                    center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                        if error != nil{
                            return
                        }
                        
                        if granted{
                            DispatchQueue.main.async {
                               let dayPi = self.datePicker.date
                                let datePi = self.date8Picker.date
                                let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                               let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                                var pickhour = compornents.hour!
                                 var pickminute = compornents.minute!
                                let pickmonth = compo.month!
                                let pickday = compo.day!
                                 let center = UNUserNotificationCenter.current()
                                 
                                 if self.alertBeforeTextField.text == "出発時刻の3分前"{
                                     if pickminute < 3{
                                         pickhour = pickhour - 1
                                         pickminute = pickminute - 3
                                         pickminute = 60 + pickminute
                                     }else{
                                         pickminute = pickminute - 3
                                     }
                                 }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                                     if pickminute < 5{
                                         pickhour = pickhour - 1
                                         pickminute = pickminute - 5
                                         pickminute = 60 + pickminute
                                     }else{
                                         pickminute = pickminute - 5
                                     }
                                 }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                                     if pickminute < 10{
                                         pickhour = pickhour - 1
                                         pickminute = pickminute - 10
                                         pickminute = 60 + pickminute
                                     }else{
                                         pickminute = pickminute - 10
                                     }
                                 }
                                center.delegate = self as? UNUserNotificationCenterDelegate
                               self.content.title = "\(self.dateTextField8.text!)の出発時間だよ！"
                                self.content.sound = UNNotificationSound.default
                                
                                var notificationTime = DateComponents()
                                var trigger: UNNotificationTrigger
                                
                               notificationTime.month = pickmonth
                               notificationTime.day = pickday
                                notificationTime.hour = pickhour
                                notificationTime.minute = pickminute
                                trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                
                                let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                               
                                UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                                self.setNotifiIde = self.setNotifiIde + 1
                                self.setSaveData.set(self.setNotifiIde, forKey: "ID")
                            }
                        }else{
                            //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                            //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                            //                                    self.present(aleat, animated: true, completion: nil)
                        }
                    })
                }else{
                    let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                    UIApplication.shared.registerUserNotificationSettings(settings)
                }
                
                if #available(iOS 10.0, *){
                    let center = UNUserNotificationCenter.current()
                    center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                                              
                if granted{
                DispatchQueue.main.async {
                 let dayPi = self.datePicker.date
                 let datePi = self.date9Picker.date
                 let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                 let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                 var pickhour = compornents.hour!
                  var pickminute = compornents.minute!
                 let pickmonth = compo.month!
                 let pickday = compo.day!
                  let center = UNUserNotificationCenter.current()
                  
                  if self.alertBeforeTextField.text == "出発時刻の3分前"{
                      if pickminute < 3{
                          pickhour = pickhour - 1
                          pickminute = pickminute - 3
                          pickminute = 60 + pickminute
                      }else{
                          pickminute = pickminute - 3
                      }
                  }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                      if pickminute < 5{
                          pickhour = pickhour - 1
                          pickminute = pickminute - 5
                          pickminute = 60 + pickminute
                      }else{
                          pickminute = pickminute - 5
                      }
                  }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                      if pickminute < 10{
                          pickhour = pickhour - 1
                          pickminute = pickminute - 10
                          pickminute = 60 + pickminute
                      }else{
                          pickminute = pickminute - 10
                      }
                  }
                 center.delegate = self as? UNUserNotificationCenterDelegate
                 self.content.title = "\(self.dateTextField9.text!)の出発時間だよ！"
                 self.content.sound = UNNotificationSound.default
                                                      
                 var notificationTime = DateComponents()
                 var trigger: UNNotificationTrigger
                                                      
                 notificationTime.month = pickmonth
                 notificationTime.day = pickday
                 notificationTime.hour = pickhour
                 notificationTime.minute = pickminute
                 trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                                      
                 let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                                     
                UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                    self.setNotifiIde = self.setNotifiIde + 1
                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
            }
             }else{
                                              }
                                          })
                                      }else{
                                          let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                                          UIApplication.shared.registerUserNotificationSettings(settings)
                                      }
            
            if #available(iOS 10.0, *){
                    let center = UNUserNotificationCenter.current()
                    center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                    if error != nil{
                        return
                    }
                                              
                if granted{
                DispatchQueue.main.async {
                 let dayPi = self.datePicker.date
                 let datePi = self.date10Picker.date
                 let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
                 let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
                 var pickhour = compornents.hour!
                  var pickminute = compornents.minute!
                 let pickmonth = compo.month!
                 let pickday = compo.day!
                  let center = UNUserNotificationCenter.current()
                  
                  if self.alertBeforeTextField.text == "出発時刻の3分前"{
                      if pickminute < 3{
                          pickhour = pickhour - 1
                          pickminute = pickminute - 3
                          pickminute = 60 + pickminute
                      }else{
                          pickminute = pickminute - 3
                      }
                  }else if self.alertBeforeTextField.text == "出発時刻の5分前"{
                      if pickminute < 5{
                          pickhour = pickhour - 1
                          pickminute = pickminute - 5
                          pickminute = 60 + pickminute
                      }else{
                          pickminute = pickminute - 5
                      }
                  }else if self.alertBeforeTextField.text == "出発時刻の10分前"{
                      if pickminute < 10{
                          pickhour = pickhour - 1
                          pickminute = pickminute - 10
                          pickminute = 60 + pickminute
                      }else{
                          pickminute = pickminute - 10
                      }
                  }
                 center.delegate = self as? UNUserNotificationCenterDelegate
                 self.content.title = "\(self.dateTextField10.text!)の出発時間だよ！"
                 self.content.sound = UNNotificationSound.default
                                                      
                 var notificationTime = DateComponents()
                 var trigger: UNNotificationTrigger
                                                      
                 notificationTime.month = pickmonth
                 notificationTime.day = pickday
                 notificationTime.hour = pickhour
                 notificationTime.minute = pickminute
                 trigger = UNCalendarNotificationTrigger(dateMatching: notificationTime, repeats: false)
                                                      
                 let request = UNNotificationRequest(identifier: String(self.setNotifiIde), content: self.content, trigger: trigger)
                                                     
                UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                    self.setNotifiIde = self.setNotifiIde + 1
                    self.setSaveData.set(self.setNotifiIde, forKey: "ID")
            }
             }else{
                                                  //                                    let aleat = UIAlertController(title: "エラー",message: "設定で通知を許可してください",preferredStyle: .alert)
                                                  //                                    aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                                  //                                    self.present(aleat, animated: true, completion: nil)
                                              }
                                          })
            }else{
                                          let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                                          UIApplication.shared.registerUserNotificationSettings(settings)
                                      }
                
            self.dismiss(animated: true, completion: nil)
            
        case 12:
            let alert = UIAlertController(title: "エラー", message: "行動予定を正しく入力してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        default:
            break
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        mokutekiField1.resignFirstResponder()
        mokutekiField2.resignFirstResponder()
        mokutekiField3.resignFirstResponder()
        mokutekiField4.resignFirstResponder()
        mokutekiField5.resignFirstResponder()
        mokutekiField6.resignFirstResponder()
        mokutekiField7.resignFirstResponder()
        mokutekiField8.resignFirstResponder()
        mokutekiField9.resignFirstResponder()
        mokutekiField10.resignFirstResponder()
        return true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        alertBeforeTextField.text = list[row]
    }
    
    @objc func done(){
        alertBeforeTextField.endEditing(true)
        alertBeforeTextField.text = "\(list[dataPicker.selectedRow(inComponent: 0)])"
    }
    
    @objc func done1(){
        dateTextField1.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField1.text = "\(formatter.string(from: date1Picker.date))"
    }
    
    @objc func done2(){
        dateTextField2.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField2.text = "\(formatter.string(from: date2Picker.date))"
    }
    
    @objc func done3(){
        dateTextField3.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField3.text = "\(formatter.string(from: date3Picker.date))"
    }
    
    @objc func done4(){
        dateTextField4.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField4.text = "\(formatter.string(from: date4Picker.date))"
    }
    
    @objc func done5(){
        dateTextField5.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField5.text = "\(formatter.string(from: date5Picker.date))"
    }
    
    @objc func done6(){
        dateTextField6.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField6.text = "\(formatter.string(from: date6Picker.date))"
    }
    
    @objc func done7(){
        dateTextField7.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField7.text = "\(formatter.string(from: date7Picker.date))"
    }
    
    @objc func done8(){
        dateTextField8.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField8.text = "\(formatter.string(from: date8Picker.date))"
    }
    
    @objc func done9(){
        dateTextField9.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField9.text = "\(formatter.string(from: date9Picker.date))"
    }
    
    @objc func done10(){
        dateTextField10.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        dateTextField10.text = "\(formatter.string(from: date10Picker.date))"
    }
    
    @objc func exdone(){
        dayTextField.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "MM月dd日"
        dayTextField.text = "\(formatter.string(from: datePicker.date))"
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
