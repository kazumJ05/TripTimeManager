//
//  ViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/01/11.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let saveData = UserDefaults.standard
    var information: [Dictionary<String,String>] = []
    var getdataArray: Int = 0
    var timer = Timer()
    var timeCount: Int = 0
    var i: Int = 0
    var j: Int = 0
    
    @IBOutlet var dateText1: UILabel!
    @IBOutlet var dateText2: UILabel!
    @IBOutlet var dateText3: UILabel!
    @IBOutlet var dateText4: UILabel!
    @IBOutlet var dateText5: UILabel!
    @IBOutlet var dateText6: UILabel!
    @IBOutlet var dateText7: UILabel!
    @IBOutlet var dateText8: UILabel!
    @IBOutlet var dateText9: UILabel!
    @IBOutlet var dateText10: UILabel!
    
    @IBOutlet var nowtime: UILabel!
    @IBOutlet var nowminute: UILabel!
    @IBOutlet var setDay: UILabel!
    
    @IBOutlet var mokuteki1: UILabel!
    @IBOutlet var mokuteki2: UILabel!
    @IBOutlet var mokuteki3: UILabel!
    @IBOutlet var mokuteki4: UILabel!
    @IBOutlet var mokuteki5: UILabel!
    @IBOutlet var mokuteki6: UILabel!
    @IBOutlet var mokuteki7: UILabel!
    @IBOutlet var mokuteki8: UILabel!
    @IBOutlet var mokuteki9: UILabel!
    @IBOutlet var mokuteki10: UILabel!
    
    @IBOutlet var addButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCheck), userInfo: nil, repeats: true)
        RunLoop.main.add(timer, forMode: .default)
        // ダークモード判定分岐
        // ダークモードのとき
        if UITraitCollection.isDarkMode {
            addButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else {
        // ライトモードのとき
            addButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        addButton.layer.borderWidth = 1
        addButton.layer.cornerRadius = 9
    }
    
    @IBAction func selectToaddView(){
        performSegue(withIdentifier: "toaddView", sender: nil)
    }
    
    @objc func time(){
        timeCount = timeCount + 1
        nowtime.text = String(format: "%.2f",timeCount)
    }
    
    @objc func timeCheck() {
        let date = NSDate()
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)

        let hour = calendar?.component(.hour, from: date as Date)
        let minute = calendar?.component(.minute, from: date as Date)

        nowtime.text = String(format: "%02d", hour!)
        nowminute.text = String(format: "%02d", minute!)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if saveData.array(forKey: "settimedata") != nil{
            information = saveData.array(forKey: "settimedata") as! [Dictionary<String,String>]
            display()
        }
    }
    
    @objc func display(){
        var mokutekiArray = [mokuteki1,mokuteki2,mokuteki3,mokuteki4,mokuteki5,mokuteki6,mokuteki7,mokuteki8,mokuteki9,mokuteki10]
        var dateArray = [dateText1, dateText2, dateText3, dateText4, dateText5, dateText6, dateText7, dateText8, dateText9, dateText10]
        for i in 0 ... 9{
            mokutekiArray[i]?.text = information[getdataArray]["mokutekiti\(i + 1)"]
            dateArray[i]?.text = information[getdataArray]["time\(i + 1)"]
            j = j + 1
        }
        setDay.text = information[getdataArray]["date"]
    }
}

extension UITraitCollection {

    public static var isDarkMode: Bool {
        if #available(iOS 13, *), current.userInterfaceStyle == .dark {
            return true
        }
        return false
    }

}

