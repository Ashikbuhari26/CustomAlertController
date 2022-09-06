//
//  AlertService.swift
//  TabBarApp
//
//  Created by Mohamed Ashik Buhari on 03/08/22.
//


import UIKit


class AlertService{
    
    func alert(title: String,body: String,buttonTitle: String,secondTitle: String, completion: @escaping() -> Void,completion2: @escaping() -> Void) -> AlertViewController {
        let storyboard = UIStoryboard(name: "AlertViewController", bundle: .main)
        
        let alertVC = storyboard.instantiateViewController(withIdentifier: "AlertVC") as!
        AlertViewController
        
        
        alertVC.alertTitle = title
        alertVC.alertBody = body
        alertVC.actionButtonTitle = buttonTitle
        alertVC.cancelActionTitle = secondTitle
        alertVC.buttonAction = completion
        alertVC.cancelAction = completion2
        
        return alertVC
        }
    
    
    
    func alert2(title: String,body: String, buttonTitle: String, completion: @escaping() -> Void) -> AlertController {
        let storyboard = UIStoryboard(name: "AlertController", bundle: .main)

        let alertOk = storyboard.instantiateViewController(withIdentifier: "AlertOk") as!
        AlertController


        alertOk.alertTitle = title
        alertOk.alertBody = body
        alertOk.actionButtonTitle = buttonTitle
        alertOk.buttonAction = completion
        return alertOk
        }
    func refresh(completion: @escaping() -> Void) -> OfflineViewController {
        
        let storyboard = UIStoryboard(name: "OfflineViewController", bundle: .main)
        
        let offlineRefresh = storyboard.instantiateViewController(withIdentifier: "OfflineViewController") as! OfflineViewController
        
        
        offlineRefresh.buttonAction = completion
        return offlineRefresh
    }
    
}
    
    
    
    
