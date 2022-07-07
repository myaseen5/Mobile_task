//
//  UIViewController+Extension.swift
//  Mobile_task
//  Created by Macbook on 07/07/2022.
//

import Foundation
import UIKit

extension  UIViewController {
    
    @IBAction func backButton () {
        self.navigationController?.popViewController(animated: true)
    }
    
    func emailValidation(user_email: String) -> Bool {
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        var valid = NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: user_email)
        if valid {
            valid = !user_email.contains("..")
        }
        return valid
    }
    
    
    //func startLoader(){
    //    DispatchQueue.main.async {
    //        ProgressHUD.animationType = .circleSpinFade
    //        ProgressHUD.colorAnimation = UIColor.appColors(color: .GreenColor) ?? .blue
    //        ProgressHUD.show()
    //    }
    //
    //}
    //
    //func stopLoader(){
    //    ProgressHUD.dismiss()
    //}
    
    /// to format date ////
    func convertDateFormaterWithTime(_ date: String) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "dd/MM/yyyy - hh:mm aa"
        dateFormatter.locale = Locale(identifier: "en")
        return  dateFormatter.string(from: date!)
        
    }
    ///END///
    
    
    /// to format simple  date ////
    func convertDate(_ date: String) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "dd-MM-yyyy"
        dateFormatter.locale = Locale(identifier: "en")
        return  dateFormatter.string(from: date!)
        
    }
    ///END///
    
    /// to format simple  date ////
    func convertDateDerived(_ date: String) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "dd-MM-yyyy - hh:mm aa"
        dateFormatter.locale = Locale(identifier: "en")
        return  dateFormatter.string(from: date ?? Date())
        
    }
    ///END///
    ///
    
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
//    func startLoading(message:String){
//
//        DispatchQueue.main.async {
//            let size = CGSize(width: 65, height:65)
//            self.startAnimating(size, message: message , type:.ballTrianglePath, color: UIColor.appColors(color: .Yellow))
//        }
//
//    }
//
//    func stopLoading(){
//        stopAnimating()
//    }
}
