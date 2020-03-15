//
//  noteViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/01/11.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class noteViewController: UIViewController,UITextViewDelegate {
    
    @IBOutlet var noteTextView: UITextView!
    
    let noteSaveData = UserDefaults.standard
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if noteSaveData.object(forKey: "note") != nil{
            noteTextView.text = noteSaveData.object(forKey: "note") as? String
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextView.delegate = self
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(close))
        
        toolBar.setItems([spacelItem, doneItem], animated: true)
        
        noteTextView.inputAccessoryView = toolBar
        // Do any additional setup after loading the view.
    }
    
    @objc func close() {
        if (self.noteTextView.isFirstResponder){
            self.noteTextView.resignFirstResponder()
            noteSaveData.set(noteTextView.text!, forKey: "note")
        }
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
