//
//  AppDelegate.swift
//  Mobile_task
//
//  Created by Macbook on 07/07/2022.
//

import UIKit
import Alamofire

class Connectivity {
    class var isConnectedToInternet:Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    
}
