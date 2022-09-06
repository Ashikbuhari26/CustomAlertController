//
//  ViewController.swift
//  customAlertController
//
//  Created by Mohamed Ashik Buhari on 05/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let alertService = AlertService()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
       
    @IBAction func alertAction1(_ sender: Any) {
        
        
        
        let alertVC = alertService.alert(title: "Alert", body: "Are You Sure Want To Make This Changes?", buttonTitle: "Yes", secondTitle: "No") {
            //completion1
            //YES button Action
           //execution code comes here
        } completion2: {
        
            //if NO button action needed
           //execution code comes here
            print("No data")
        }
               
        
        present( alertVC, animated: true)
        
        
        
    }
    
    
    
    
    @IBAction func alertAction2(_ sender: Any) {
        
        let alertOk = alertService.alert2(title: "Invalid", body: "Enter a Valid Phone Number", buttonTitle: "OK"){
            //completion handler
            //if Ok button Action needed
           //execution code comes here
        }
        present( alertOk, animated: true)
        
        
    }
    

    @IBAction func alertAction3(_ sender: Any) {
        
        let offlineRefresh = self.alertService.refresh{
            //completion handler
            //if Try Again button Action needed
            //execution code comes here
        }
        self.present(offlineRefresh,animated: true)
    }
      
}

/*
 for learning purpose only, these code only execute when you have language translation code file's,
 
 
 #Create Variable
 
var message = ""
var messageTitle = ""
var completion1 = ""
var completion2 = ""

#Create language translation's
 
if languagecode == "en" {
    message = "Hey! Are you really going to remove it?"
    messageTitle = "Delete"
    completion1 = "Yes"
    completion2 = "No"
    
}
else if languagecode == "ta" {
    message = "நீங்கள் உண்மையில் இதை அகற்றப் போகிறீர்களா?"
    messageTitle = "அகற்ற"
    completion1 = "ஆம்"
    completion2 = "இல்லை"
    
}
else if languagecode == "hi" {
    message = "क्या आप वाकई इसे हटाने जा रहे हैं?"
    messageTitle = "हटाना"
    completion1 = "हां"
    completion2 = "नहीं"
    
}
 
 # And finally put the variable in every alert button title's
 [title: "messageTitle
 body: "messageTitle"
 buttonTitle: "completion1"
 secondTitle: "completion2"]
   
 */
