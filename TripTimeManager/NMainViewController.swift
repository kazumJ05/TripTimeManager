//
//  NMainViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/07/19.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class NMainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var getdataArray: Int = 0
    var timer = Timer()
    var timeCount: Int = 0
    var information: [Dictionary<String,String>] = []
    
    @IBOutlet var nowTime : UILabel!
    @IBOutlet var nowMinute: UILabel!
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if UITraitCollection.isDarkMode {
            
               } else {
               // ライトモードのとき
               }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCheck), userInfo: nil, repeats: true)
        RunLoop.main.add(timer, forMode: .default)
        
        table.dataSource = self
               
        table.delegate = self
        
         table.register(UINib(nibName: "SceduleTableViewCell", bundle: nil), forCellReuseIdentifier: "Hcell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        table.reloadData()
    }
    
    @IBAction func selectToNAddView(){
        performSegue(withIdentifier: "toNAddView", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
//        完成時に変更
//        return information.count
    }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Hcell") as! SceduleTableViewCell
        
        cell.place.text = "AREA!"
        cell.day.text = "01/01"
        cell.time.text = "12:00"
        
        return cell
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

//extension UITraitCollection {
//
//    public static var isDarkMode: Bool {
//        if #available(iOS 13, *), current.userInterfaceStyle == .dark {
//            return true
//        }
//        return false
//    }
//
//}
