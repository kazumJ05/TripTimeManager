//
//  TViewController.swift
//  TripTimeManager
//
//  Created by 大原一倫 on 2020/08/15.
//  Copyright © 2020 oharakazumasa. All rights reserved.
//

import UIKit

class TViewController: UIViewController{
    
    private var area: UITextField?
    
    private var Nview: UIView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        area?.resignFirstResponder()
         
         return true
     }
     
     internal func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
         self.area = textField
         return true
     }
     
     internal func setUpNotificationForTextField(){
         let notificationCenter = NotificationCenter.default
         notificationCenter.addObserver(self, selector: #selector(self.handleKeyboardWillShowNotification(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
         notificationCenter.addObserver(self, selector: #selector(self.handleKeyboardWillHideNotification(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
     }
     
     @objc private func handleKeyboardWillShowNotification(_ notification: Notification) {
           let userInfo = notification.userInfo //この中にキーボードの情報がある
           let keyboardSize = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
           let keyboardY = self.Nview.frame.size.height - keyboardSize.height //画面全体の高さ - キーボードの高さ = キーボードが被らない高さ
        let editingTextFieldY: CGFloat = (self.area?.frame.origin.y as! CGFloat)
           if editingTextFieldY > keyboardY - 60 {
               UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseIn, animations: {
                   self.Nview.frame = CGRect(x: 0, y: self.Nview.frame.origin.y - (editingTextFieldY - (keyboardY - 60)), width: self.Nview.bounds.width, height: self.Nview.bounds.height)
               }, completion: nil)

           }
       }

       @objc private func handleKeyboardWillHideNotification(_ notification: Notification) {
           UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseIn, animations: {
               self.Nview.frame = CGRect(x: 0, y: 0, width: self.Nview.bounds.width, height: self.Nview.bounds.height)
           }, completion: nil)
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
