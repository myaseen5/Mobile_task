//
//  ViewController.swift
//  Mobile_task
//
//  Created by Macbook on 07/07/2022.
//

import UIKit

class ViewController: UIViewController {

    // UITextFields
    @IBOutlet weak var email_txtField: UITextField!
    @IBOutlet weak var password_txtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Buttons Action Started

    @IBAction func forgotBtnAction(_ sender: UIButton) {
        
    }
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        
        let vc = RegistrationVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func loginBtnAction(_ sender: UIButton) {
        
    }
    
    
}

