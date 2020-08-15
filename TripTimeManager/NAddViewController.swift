//
//  NAddViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/07/19.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit
import UserNotifications
import NotificationCenter

class NAddViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate {
    
    
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
    var information: [Dictionary<String,String>] = []
    
    var cellCount: Int = 0
    var setNotifiIde: Int = 0
    
    var datePicker: UIDatePicker = UIDatePicker()
    var DyPicker :UIDatePicker = UIDatePicker()
    var dataPicker: UIPickerView = UIPickerView()
    
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
    
    @IBOutlet var area: UITextField!
    @IBOutlet var time: UITextField!
    
    @IBOutlet var Nview : UIView!
    @IBOutlet var NTimeSet : UIDatePicker!
    
    let saveData = UserDefaults.standard
    let content = UNMutableNotificationContent()
    let center = UNUserNotificationCenter.current()
    let setSaveData = UserDefaults.standard
    
    let list = ["出発時刻の3分前", "出発時刻の5分前", "出発時刻の10分前"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let extoolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let exdoneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(exdone))
        
        let noBeToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let noBeDoneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(noBeDone))
        
        extoolBar.setItems([spacelItem, exdoneItem], animated: true)
        noBeToolBar.setItems([spacelItem,noBeDoneItem], animated: true)
        
        DyPicker.datePickerMode = UIDatePicker.Mode.date
        DyPicker.timeZone = NSTimeZone.local
        DyPicker.locale = Locale.current
    
        
        setNoBe.inputAccessoryView = noBeToolBar
        
        setNoBe.inputView = dataPicker
        
        setDy.inputAccessoryView = extoolBar
        
        setDy.inputView = DyPicker
        
        table.dataSource = self
               
        table.delegate = self
        
        dataPicker.delegate = self
        dataPicker.dataSource = self
        
        table.register(UINib(nibName: "NAddTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
    
     override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
    //        self.setUpNotificationForTextField()
            
            if saveData.array(forKey: "DATA") != nil{
                information = saveData.array(forKey: "DATA") as! [Dictionary<String,String>]
            }
            
            if setSaveData.object(forKey: "ID") != nil{
                       setNotifiIde = setSaveData.object(forKey: "ID") as! Int
            }
            
            table.reloadData()
            
        }
    
    @IBAction func selectBack(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func selectEnter(){
        time.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        time.text = "\(formatter.string(from: datePicker.date))"
    }
    

    @IBAction func selectAdd(){
        Nview.isHidden = false
    }
    
    
    @IBAction func selectdone(){
        
        let indexPath: IndexPath
        let cell = NtableView.dequeueReusableCell(withIdentifier: "cell") as! NAddTableViewCell
        
        time.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        time.text = "\(formatter.string(from: datePicker.date))"
        
        Nview.isHidden = true
        
        
        
        if area.text == ""{
            
            let aleat = UIAlertController(title: "エラー",message: "場所を入力してください",preferredStyle: .alert)
                                              aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                              self.present(aleat, animated: true, completion: nil)
            
        }else{
            let dayPi = self.datePicker.date
            let datePi = datePicker.date
            let compornents = Calendar.current.dateComponents([.hour, .minute], from: datePi)
            let compo = Calendar.current.dateComponents([.month, .day], from: dayPi)
            var pickhour = compornents.hour!
            var pickminute = compornents.minute!
            let pickmonth = compo.month!
            let pickday = compo.day!
            let center = UNUserNotificationCenter.current()
            
            if self.setNoBe.text == "出発時刻の3分前"{
                if pickminute < 3{
                    pickhour = pickhour - 1
                    pickminute = pickminute - 3
                    pickminute = 60 + pickminute
                }else{
                    pickminute = pickminute - 3
                }
            }else if self.setNoBe.text == "出発時刻の5分前"{
                if pickminute < 5{
                    pickhour = pickhour - 1
                    pickminute = pickminute - 5
                    pickminute = 60 + pickminute
                }else{
                    pickminute = pickminute - 5
                }
            }else if self.setNoBe.text == "出発時刻の10分前"{
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
                                            self.setSaveData.set(String(self.setNotifiIde), forKey: "NUM")
                                        }
                                    }
                                })
                            }else{
                                let settings = UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil)
                                UIApplication.shared.registerUserNotificationSettings(settings)
                            }
            
            let  informationIn = ["place":area.text!,"time":time.text!, "day": setDy.text!]
                                   information.append(informationIn)
                                   saveData.set(information, forKey: "DATA")
            
            let aleat = UIAlertController(title: "保存完了",message: "保存が完了しました",preferredStyle: .alert)
                                   aleat.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
                                   self.present(aleat, animated: true, completion: nil)
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return information.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! NAddTableViewCell
        
        cell.areaN?.text = "aaa"
        cell.timeN?.text = "00:00"
        cell.dayN?.text = "00/00"
        
//        cell.areaN?.text = information[indexPath.row]["place"]!
//        cell.timeN?.text = information[indexPath.row]["time"]!
//        cell.dayN?.text = information[indexPath.row]["day"]!
        
        return cell
    }
    
 
    
    
    @objc func noBeDone(){
        setNoBe.endEditing(true)
        setNoBe.text = "\(list[dataPicker.selectedRow(inComponent: 0)])"
    }
    
    
    @objc func exdone(){
           setDy.endEditing(true)
           let formatter = DateFormatter()
           formatter.dateFormat = "MM/dd"
           setDy.text = "\(formatter.string(from: datePicker.date))"
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.Nview.endEditing(true)
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
        setNoBe.text = list[row]
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

