//
//  NMainViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/07/19.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit
import UserNotifications
import NotificationCenter

class NMainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var getdataArray: Int = 0
    var timer = Timer()
    var timeCount: Int = 0
    var information: [Dictionary<String,String>] = []
    var setNotifiIde =  String()
    
    let saveData = UserDefaults.standard
    let center = UNUserNotificationCenter.current()
    let setSaveData = UserDefaults.standard
    let StringSaveData = UserDefaults.standard
    
    @IBOutlet var nowTime : UILabel!
    @IBOutlet var nowMinute: UILabel!
    @IBOutlet var table: UITableView!
    
    @IBOutlet var addBut: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if UITraitCollection.isDarkMode {
            addBut.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
               // ライトモードのとき
            addBut.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        addBut.layer.borderWidth = 1
        addBut.layer.cornerRadius = 9
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCheck), userInfo: nil, repeats: true)
        RunLoop.main.add(timer, forMode: .default)
        
        table.dataSource = self
               
        table.delegate = self
        
         table.register(UINib(nibName: "SceduleTableViewCell", bundle: nil), forCellReuseIdentifier: "Hcell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if saveData.array(forKey: "DATA") != nil{
            information = saveData.array(forKey: "DATA") as! [Dictionary<String,String>]
        }
        
        if StringSaveData.object(forKey: "OLDNUM") != nil{
            setNotifiIde = StringSaveData.object(forKey: "OLDNUM") as! String
        }
        
        table.reloadData()
    }
    
    @IBAction func selectToNAddView(){
        performSegue(withIdentifier: "toNAddView", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return information.count
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Hcell") as! SceduleTableViewCell
        
        cell.place.text = information[indexPath.row]["place"]
        cell.day.text = information[indexPath.row]["day"]
        cell.time.text = information[indexPath.row]["time"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            
            center.removePendingNotificationRequests(withIdentifiers: [setNotifiIde])
            information.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            saveData.set(information, forKey: "DATA")
            tableView.reloadData()
            
        }
    }
    
    @objc func time(){
        timeCount = timeCount + 1
        nowTime.text = String(format: "%.2f",timeCount)
    }
    
    @objc func timeCheck() {
        let date = NSDate()
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)

        let hour = calendar?.component(.hour, from: date as Date)
        let minute = calendar?.component(.minute, from: date as Date)

        nowTime.text = String(format: "%02d", hour!)
        nowMinute.text = String(format: "%02d", minute!)
        
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
