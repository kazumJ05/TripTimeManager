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
    var repeatCount: Int = 0
    var i: Int = 0
    
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
        
        let mokutekitiA = [mokutekiField1,mokutekiField2,mokutekiField3,mokutekiField4,mokutekiField5,mokutekiField6,mokutekiField7,mokutekiField8,mokutekiField9,mokutekiField10]
        let dateA = [dateTextField1,dateTextField2,dateTextField3,dateTextField4,dateTextField5,dateTextField6,dateTextField7,dateTextField8,dateTextField9,dateTextField10]
        let datePickerA = [date1Picker,date2Picker,date3Picker,date4Picker,date5Picker,date6Picker,date7Picker,date8Picker,date9Picker,date10Picker]
        let toolBarA = [toolBar,toolBar1,toolBar2,toolBar3,toolBar4,toolBar5,toolBar6,toolBar7,toolBar8,toolBar9,toolBar10, extoolBar]
        let doneItemA = [doneItem, doneItem1,doneItem2,doneItem3,doneItem4,doneItem5,doneItem6,doneItem7,doneItem8,doneItem9,doneItem10,exdoneItem]

        for i in 0 ... 11{
            toolBarA[i].setItems([spacelItem, doneItemA[i]], animated: true)
        }
        
        for i in 0 ... 9{
            dateA[i]?.inputAccessoryView = toolBarA[i + 1]
            mokutekitiA[i]?.delegate = self as? UITextFieldDelegate
            datePickerA[i].datePickerMode = UIDatePicker.Mode.time
            datePickerA[i].timeZone = NSTimeZone.local
            datePickerA[i].locale = Locale.current
            dateA[i]?.inputView = datePickerA[i]
        }
        
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        
        dataPicker.delegate = self
        dataPicker.dataSource = self
        
        dayTextField.inputAccessoryView = extoolBar
        
        alertBeforeTextField.inputAccessoryView = toolBar

        dayTextField.inputView = datePicker
        alertBeforeTextField.inputView = dataPicker
        
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        addButton.layer.cornerRadius = 9
    
    }
    
    @objc func save(){
        
        let mokutekitiA = [mokutekiField1,mokutekiField2,mokutekiField3,mokutekiField4,mokutekiField5,mokutekiField6,mokutekiField7,mokutekiField8,mokutekiField9,mokutekiField10]
        let dateA = [dateTextField1,dateTextField2,dateTextField3,dateTextField4,dateTextField5,dateTextField6,dateTextField7,dateTextField8,dateTextField9,dateTextField10]
        let datePickerA = [date1Picker,date2Picker,date3Picker,date4Picker,date5Picker,date6Picker,date7Picker,date8Picker,date9Picker,date10Picker]
        
        if cheakInputData <= 9{
            for i in cheakInputData ... 9{
                    mokutekitiA[i]?.text = "ーーーー"
                    dateA[i]?.text = "ーーーー"
            }
        }
        
        let input = ["mokutekiti1": mokutekiField1.text!,"mokutekiti2": mokutekiField2.text!,"mokutekiti3": mokutekiField3.text!,"mokutekiti4": mokutekiField4.text!,"mokutekiti5": mokutekiField5.text!,"mokutekiti6": mokutekiField6.text!,"mokutekiti7": mokutekiField7.text!, "mokutekiti8": mokutekiField8.text!,"mokutekiti9": mokutekiField9.text!,"mokutekiti10": mokutekiField10.text!,"time1": dateTextField1.text!,"time2": dateTextField2.text!,"time3": dateTextField3.text!,"time4": dateTextField4.text!,"time5": dateTextField5.text!,"time6": dateTextField6.text!,"time7": dateTextField7.text!,"time8": dateTextField8.text!,"time9": dateTextField9.text!,"time10": dateTextField10.text!, "date": dayTextField.text!]
        information.append(input)
        saveData.set(information, forKey: "settimedata")
        
        for i in 0 ... cheakInputData - 1{
            
        let dayPi = self.datePicker.date
         let datePi = datePickerA[i].date
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
        
        if #available(iOS 10.0, *){
            let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.badge, .sound, .alert], completionHandler: {(granted, error) in
                if error != nil{
                    return
                }
                if granted{
                    DispatchQueue.main.async {
                        center.delegate = self as? UNUserNotificationCenterDelegate
                        self.content.title = "まもなく出発時間だよ！"
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
                }
            })
        }else{
            let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
            UIApplication.shared.registerUserNotificationSettings(settings)
        }
        }
        
        let alert = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func selectsave(){
        let mokutekitiA = [mokutekiField1,mokutekiField2,mokutekiField3,mokutekiField4,mokutekiField5,mokutekiField6,mokutekiField7,mokutekiField8,mokutekiField9,mokutekiField10]
        let dateA = [dateTextField1,dateTextField2,dateTextField3,dateTextField4,dateTextField5,dateTextField6,dateTextField7,dateTextField8,dateTextField9,dateTextField10]
        
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
            let alert = UIAlertController(title: "エラー", message: "情報を入力してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text == "" && dateTextField2.text == "" && mokutekiField3.text == "" && dateTextField3.text == "" && mokutekiField4.text == "" && dateTextField4.text == "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 1
            repeatCount = 9
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text == "" && dateTextField3.text == "" && mokutekiField4.text == "" && dateTextField4.text == "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 2
            repeatCount = 8
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2 != nil && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text == "" && dateTextField4.text == "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 3
            repeatCount = 7
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text == "" && dateTextField5.text == "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 4
            repeatCount = 6
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text == "" && dateTextField6.text == "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 5
            repeatCount = 5
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text == "" && dateTextField7.text == "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 6
            repeatCount = 4
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text == "" && dateTextField8.text == "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 7
            repeatCount = 3
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text != "" && dateTextField8.text != "" && mokutekiField9.text == "" && dateTextField9.text == "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 8
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text != "" && dateTextField8.text != "" && mokutekiField9.text != "" && dateTextField9.text != "" && mokutekiField10.text == "" && dateTextField10.text == ""{
            cheakInputData = 9
            save()
        }else if mokutekiField1.text != "" && dateTextField1.text != "" && mokutekiField2.text != "" && dateTextField2.text != "" && mokutekiField3.text != "" && dateTextField3.text != "" && mokutekiField4.text != "" && dateTextField4.text != "" && mokutekiField5.text != "" && dateTextField5.text != "" && mokutekiField6.text != "" && dateTextField6.text != "" && mokutekiField7.text != "" && dateTextField7.text != "" && mokutekiField8.text != "" && dateTextField8.text != "" && mokutekiField9.text != "" && dateTextField9.text != "" && mokutekiField10.text != "" && dateTextField10.text != ""{
            cheakInputData = 10
            save()
        }else{
            let alert = UIAlertController(title: "エラー", message: "情報の入力間違いがないか確認してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let mokutekitiA = [mokutekiField1,mokutekiField2,mokutekiField3,mokutekiField4,mokutekiField5,mokutekiField6,mokutekiField7,mokutekiField8,mokutekiField9,mokutekiField10]
        for i in 0 ... 9{
            mokutekitiA[i]?.resignFirstResponder()
        }
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
