//
//  ViewController.swift
//  Mobile_task
//
//  Created by Macbook on 07/07/2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    
    var LOGIN_DATA : LoginModel?
    
    // UITextFields
    @IBOutlet weak var email_txtField: UITextField!
    @IBOutlet weak var password_txtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func isAllDataValid()->Bool{
        
        if email_txtField.text!.isEmpty || password_txtField.text!.isEmpty{
            Alerts.showErrorMessage(title: "", body: "Please fill the fields")
            return false
        }
//        else if emailValidation(user_email: email_txtField.text!){
//            return false
//        }
                    
        
        return true
    }
    
    // Buttons Action Started

    @IBAction func forgotBtnAction(_ sender: UIButton) {
        
    }
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        
        let vc = RegistrationVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func loginBtnAction(_ sender: UIButton) {
        if isAllDataValid(){
            if Connectivity.isConnectedToInternet{
                self.userLoginRequest()
            }else{
                Alerts.showInternetMessage()
            }
        }
    }
    
    
}

extension ViewController {
    
    //MARK: User Login API
    func userLoginRequest(){
        self.startLoading(message: "")
        let parameters : Parameters = [
            "email":email_txtField.text!,
            "password":password_txtField.text!,
            "role":"admin",
        ]
        print(parameters)
        AF.request(API_Manager.login_API, method: .post, parameters: parameters, headers: nil).responseDecodable(of: LoginModel.self) { (response) in
            switch response.result{
            case .success(let value):
                self.stopLoading()
                if response.response?.statusCode == 200{
                    self.LOGIN_DATA = value
                    self.setUserLoginData()
                }
            case .failure(let error):
                print(error.localizedDescription)
                self.stopLoading()
                Alerts.showServerErrorMessage()
            }
        }
        
    }
    
    //set user data
    func setUserLoginData(){
        
        if LOGIN_DATA?.error == true{
           print("sucess")
            
        }
        else{
            Alerts.showErrorMessage(title: "", body: LOGIN_DATA?.message ?? "")
        }
    }
    
}
