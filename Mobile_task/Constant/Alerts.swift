//
//  AppDelegate.swift
//  Mobile_task
//
//  Created by Macbook on 07/07/2022.
//

import Foundation
import SwiftMessages

class Alerts{
    
    static func showErrorMessage(title:String, body: String){
        let error = MessageView.viewFromNib(layout: .cardView)
        error.configureTheme(.error)
        error.makeShadow()
        error.configureContent(title: title, body: body)
        error.button?.isHidden = true
        //SwiftMessages.defaultConfig.presentationStyle = .center
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: error)
    }
    
    static func showSuccessMessage(title:String, body: String){
        let success = MessageView.viewFromNib(layout: .cardView)
        success.configureTheme(.success)
        success.makeShadow()
        success.configureContent(title: title, body: body)
        success.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: success)
    }
    
    static func showInternetMessage(){
        let error = MessageView.viewFromNib(layout: .cardView)
        error.configureTheme(.warning)
        error.makeShadow()
        error.configureContent(title: "No internet", body: "No internet connection")
        error.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: error)
    }
    
    static func showServerErrorMessage(){
        let error = MessageView.viewFromNib(layout: .cardView)
        error.configureTheme(.warning)
        error.makeShadow()
        error.configureContent(title: "Sorry", body: "Slow internet or database error")
        error.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: error)
    }
    
    
    
    
    static func warningMessage(title:String, body: String){
        let success = MessageView.viewFromNib(layout: .cardView)
        success.configureTheme(.warning)
        success.makeShadow()
        success.configureContent(title: title, body: body)
        success.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: success)
    }
    
    

}
